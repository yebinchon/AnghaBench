; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_rtnetlink.c_rtnl_link_get_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_rtnetlink.c_rtnl_link_get_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.rtnl_link_ops* }
%struct.rtnl_link_ops = type { i64 (%struct.net_device.0*)*, i64 (%struct.net_device.1*)*, i32 }
%struct.net_device.0 = type opaque
%struct.net_device.1 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.net_device*)* @rtnl_link_get_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rtnl_link_get_size(%struct.net_device* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rtnl_link_ops*, align 8
  %5 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 0
  %8 = load %struct.rtnl_link_ops*, %struct.rtnl_link_ops** %7, align 8
  store %struct.rtnl_link_ops* %8, %struct.rtnl_link_ops** %4, align 8
  %9 = load %struct.rtnl_link_ops*, %struct.rtnl_link_ops** %4, align 8
  %10 = icmp ne %struct.rtnl_link_ops* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %52

12:                                               ; preds = %1
  %13 = call i64 @nlmsg_total_size(i32 4)
  %14 = load %struct.rtnl_link_ops*, %struct.rtnl_link_ops** %4, align 8
  %15 = getelementptr inbounds %struct.rtnl_link_ops, %struct.rtnl_link_ops* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @strlen(i32 %16)
  %18 = add nsw i32 %17, 1
  %19 = call i64 @nlmsg_total_size(i32 %18)
  %20 = add i64 %13, %19
  store i64 %20, i64* %5, align 8
  %21 = load %struct.rtnl_link_ops*, %struct.rtnl_link_ops** %4, align 8
  %22 = getelementptr inbounds %struct.rtnl_link_ops, %struct.rtnl_link_ops* %21, i32 0, i32 1
  %23 = load i64 (%struct.net_device.1*)*, i64 (%struct.net_device.1*)** %22, align 8
  %24 = icmp ne i64 (%struct.net_device.1*)* %23, null
  br i1 %24, label %25, label %36

25:                                               ; preds = %12
  %26 = call i64 @nlmsg_total_size(i32 4)
  %27 = load %struct.rtnl_link_ops*, %struct.rtnl_link_ops** %4, align 8
  %28 = getelementptr inbounds %struct.rtnl_link_ops, %struct.rtnl_link_ops* %27, i32 0, i32 1
  %29 = load i64 (%struct.net_device.1*)*, i64 (%struct.net_device.1*)** %28, align 8
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = bitcast %struct.net_device* %30 to %struct.net_device.1*
  %32 = call i64 %29(%struct.net_device.1* %31)
  %33 = add i64 %26, %32
  %34 = load i64, i64* %5, align 8
  %35 = add i64 %34, %33
  store i64 %35, i64* %5, align 8
  br label %36

36:                                               ; preds = %25, %12
  %37 = load %struct.rtnl_link_ops*, %struct.rtnl_link_ops** %4, align 8
  %38 = getelementptr inbounds %struct.rtnl_link_ops, %struct.rtnl_link_ops* %37, i32 0, i32 0
  %39 = load i64 (%struct.net_device.0*)*, i64 (%struct.net_device.0*)** %38, align 8
  %40 = icmp ne i64 (%struct.net_device.0*)* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = load %struct.rtnl_link_ops*, %struct.rtnl_link_ops** %4, align 8
  %43 = getelementptr inbounds %struct.rtnl_link_ops, %struct.rtnl_link_ops* %42, i32 0, i32 0
  %44 = load i64 (%struct.net_device.0*)*, i64 (%struct.net_device.0*)** %43, align 8
  %45 = load %struct.net_device*, %struct.net_device** %3, align 8
  %46 = bitcast %struct.net_device* %45 to %struct.net_device.0*
  %47 = call i64 %44(%struct.net_device.0* %46)
  %48 = load i64, i64* %5, align 8
  %49 = add i64 %48, %47
  store i64 %49, i64* %5, align 8
  br label %50

50:                                               ; preds = %41, %36
  %51 = load i64, i64* %5, align 8
  store i64 %51, i64* %2, align 8
  br label %52

52:                                               ; preds = %50, %11
  %53 = load i64, i64* %2, align 8
  ret i64 %53
}

declare dso_local i64 @nlmsg_total_size(i32) #1

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
