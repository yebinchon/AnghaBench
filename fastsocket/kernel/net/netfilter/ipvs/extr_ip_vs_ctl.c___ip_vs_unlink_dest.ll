; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_ctl.c___ip_vs_unlink_dest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_ctl.c___ip_vs_unlink_dest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_service = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.ip_vs_service*)* }
%struct.ip_vs_dest = type { i32, i32 }

@IP_VS_DEST_F_AVAILABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_vs_service*, %struct.ip_vs_dest*, i32)* @__ip_vs_unlink_dest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ip_vs_unlink_dest(%struct.ip_vs_service* %0, %struct.ip_vs_dest* %1, i32 %2) #0 {
  %4 = alloca %struct.ip_vs_service*, align 8
  %5 = alloca %struct.ip_vs_dest*, align 8
  %6 = alloca i32, align 4
  store %struct.ip_vs_service* %0, %struct.ip_vs_service** %4, align 8
  store %struct.ip_vs_dest* %1, %struct.ip_vs_dest** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @IP_VS_DEST_F_AVAILABLE, align 4
  %8 = xor i32 %7, -1
  %9 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %10 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, %8
  store i32 %12, i32* %10, align 4
  %13 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %14 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %13, i32 0, i32 0
  %15 = call i32 @list_del(i32* %14)
  %16 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %17 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %17, align 8
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %3
  %23 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %24 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.ip_vs_service*)*, i32 (%struct.ip_vs_service*)** %26, align 8
  %28 = icmp ne i32 (%struct.ip_vs_service*)* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %22
  %30 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %31 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (%struct.ip_vs_service*)*, i32 (%struct.ip_vs_service*)** %33, align 8
  %35 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %36 = call i32 %34(%struct.ip_vs_service* %35)
  br label %37

37:                                               ; preds = %29, %22, %3
  ret void
}

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
