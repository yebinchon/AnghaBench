; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_rtnetlink.c_rtnl_vfinfo_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_rtnetlink.c_rtnl_vfinfo_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@RTEXT_FILTER_VF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @rtnl_vfinfo_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtnl_vfinfo_size(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %53

13:                                               ; preds = %2
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @dev_is_pci(i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %53

20:                                               ; preds = %13
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @RTEXT_FILTER_VF, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %53

25:                                               ; preds = %20
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @dev_num_vf(i64 %29)
  store i32 %30, i32* %6, align 4
  %31 = call i32 @nla_total_size(i32 4)
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %7, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 4
  %36 = trunc i64 %35 to i32
  %37 = call i32 @nla_total_size(i32 %36)
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* %7, align 8
  %40 = add i64 %39, %38
  store i64 %40, i64* %7, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @nla_total_size(i32 4)
  %43 = call i32 @nla_total_size(i32 4)
  %44 = add nsw i32 %42, %43
  %45 = call i32 @nla_total_size(i32 4)
  %46 = add nsw i32 %44, %45
  %47 = mul nsw i32 %41, %46
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* %7, align 8
  %50 = add i64 %49, %48
  store i64 %50, i64* %7, align 8
  %51 = load i64, i64* %7, align 8
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %3, align 4
  br label %54

53:                                               ; preds = %20, %13, %2
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %25
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i64 @dev_is_pci(i64) #1

declare dso_local i32 @dev_num_vf(i64) #1

declare dso_local i32 @nla_total_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
