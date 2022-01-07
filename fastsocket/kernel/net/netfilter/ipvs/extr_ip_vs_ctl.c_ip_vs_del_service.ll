; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_del_service.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_del_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_service = type { i32 }

@EEXIST = common dso_local global i32 0, align 4
@__ip_vs_svc_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_vs_service*)* @ip_vs_del_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_del_service(%struct.ip_vs_service* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ip_vs_service*, align 8
  store %struct.ip_vs_service* %0, %struct.ip_vs_service** %3, align 8
  %4 = load %struct.ip_vs_service*, %struct.ip_vs_service** %3, align 8
  %5 = icmp eq %struct.ip_vs_service* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i32, i32* @EEXIST, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %2, align 4
  br label %22

9:                                                ; preds = %1
  %10 = call i32 @write_lock_bh(i32* @__ip_vs_svc_lock)
  %11 = load %struct.ip_vs_service*, %struct.ip_vs_service** %3, align 8
  %12 = call i32 @ip_vs_svc_unhash(%struct.ip_vs_service* %11)
  %13 = load %struct.ip_vs_service*, %struct.ip_vs_service** %3, align 8
  %14 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %13, i32 0, i32 0
  %15 = call i32 @atomic_read(i32* %14)
  %16 = icmp sgt i32 %15, 1
  %17 = zext i1 %16 to i32
  %18 = call i32 @IP_VS_WAIT_WHILE(i32 %17)
  %19 = load %struct.ip_vs_service*, %struct.ip_vs_service** %3, align 8
  %20 = call i32 @__ip_vs_del_service(%struct.ip_vs_service* %19)
  %21 = call i32 @write_unlock_bh(i32* @__ip_vs_svc_lock)
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %9, %6
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @ip_vs_svc_unhash(%struct.ip_vs_service*) #1

declare dso_local i32 @IP_VS_WAIT_WHILE(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @__ip_vs_del_service(%struct.ip_vs_service*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
