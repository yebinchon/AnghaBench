; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_bitmap_ipmac.c_bitmap_ipmac_exist.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_bitmap_ipmac.c_bitmap_ipmac_exist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmac_telem = type { i64, i32 }

@MAC_UNSET = common dso_local global i64 0, align 8
@MAC_FILLED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipmac_telem*)* @bitmap_ipmac_exist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bitmap_ipmac_exist(%struct.ipmac_telem* %0) #0 {
  %2 = alloca %struct.ipmac_telem*, align 8
  store %struct.ipmac_telem* %0, %struct.ipmac_telem** %2, align 8
  %3 = load %struct.ipmac_telem*, %struct.ipmac_telem** %2, align 8
  %4 = getelementptr inbounds %struct.ipmac_telem, %struct.ipmac_telem* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @MAC_UNSET, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %23, label %8

8:                                                ; preds = %1
  %9 = load %struct.ipmac_telem*, %struct.ipmac_telem** %2, align 8
  %10 = getelementptr inbounds %struct.ipmac_telem, %struct.ipmac_telem* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MAC_FILLED, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %8
  %15 = load %struct.ipmac_telem*, %struct.ipmac_telem** %2, align 8
  %16 = getelementptr inbounds %struct.ipmac_telem, %struct.ipmac_telem* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @ip_set_timeout_expired(i32 %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br label %21

21:                                               ; preds = %14, %8
  %22 = phi i1 [ false, %8 ], [ %20, %14 ]
  br label %23

23:                                               ; preds = %21, %1
  %24 = phi i1 [ true, %1 ], [ %22, %21 ]
  %25 = zext i1 %24 to i32
  ret i32 %25
}

declare dso_local i32 @ip_set_timeout_expired(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
