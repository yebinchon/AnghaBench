; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/8021q/extr_vlan_netlink.c_vlan_newlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/8021q/extr_vlan_netlink.c_vlan_newlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.nlattr = type { i32 }
%struct.vlan_dev_info = type { i32, i32, %struct.net_device* }
%struct.net = type { i32 }
%struct.TYPE_2__ = type { %struct.net* }

@IFLA_VLAN_ID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IFLA_LINK = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@VLAN_FLAG_REORDER_HDR = common dso_local global i32 0, align 4
@IFLA_MTU = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.nlattr**, %struct.nlattr**)* @vlan_newlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlan_newlink(%struct.net_device* %0, %struct.nlattr** %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.nlattr**, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.vlan_dev_info*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.net*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.vlan_dev_info* @vlan_dev_info(%struct.net_device* %12)
  store %struct.vlan_dev_info* %13, %struct.vlan_dev_info** %8, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct.TYPE_2__* @netdev_extended(%struct.net_device* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.net*, %struct.net** %16, align 8
  store %struct.net* %17, %struct.net** %10, align 8
  %18 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %19 = load i64, i64* @IFLA_VLAN_ID, align 8
  %20 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %19
  %21 = load %struct.nlattr*, %struct.nlattr** %20, align 8
  %22 = icmp ne %struct.nlattr* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %107

26:                                               ; preds = %3
  %27 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %28 = load i64, i64* @IFLA_LINK, align 8
  %29 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %28
  %30 = load %struct.nlattr*, %struct.nlattr** %29, align 8
  %31 = icmp ne %struct.nlattr* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %107

35:                                               ; preds = %26
  %36 = load %struct.net*, %struct.net** %10, align 8
  %37 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %38 = load i64, i64* @IFLA_LINK, align 8
  %39 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %38
  %40 = load %struct.nlattr*, %struct.nlattr** %39, align 8
  %41 = call i32 @nla_get_u32(%struct.nlattr* %40)
  %42 = call %struct.net_device* @__dev_get_by_index(%struct.net* %36, i32 %41)
  store %struct.net_device* %42, %struct.net_device** %9, align 8
  %43 = load %struct.net_device*, %struct.net_device** %9, align 8
  %44 = icmp ne %struct.net_device* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %35
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %107

48:                                               ; preds = %35
  %49 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %50 = load i64, i64* @IFLA_VLAN_ID, align 8
  %51 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %49, i64 %50
  %52 = load %struct.nlattr*, %struct.nlattr** %51, align 8
  %53 = call i32 @nla_get_u16(%struct.nlattr* %52)
  %54 = load %struct.vlan_dev_info*, %struct.vlan_dev_info** %8, align 8
  %55 = getelementptr inbounds %struct.vlan_dev_info, %struct.vlan_dev_info* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.net_device*, %struct.net_device** %9, align 8
  %57 = load %struct.vlan_dev_info*, %struct.vlan_dev_info** %8, align 8
  %58 = getelementptr inbounds %struct.vlan_dev_info, %struct.vlan_dev_info* %57, i32 0, i32 2
  store %struct.net_device* %56, %struct.net_device** %58, align 8
  %59 = load i32, i32* @VLAN_FLAG_REORDER_HDR, align 4
  %60 = load %struct.vlan_dev_info*, %struct.vlan_dev_info** %8, align 8
  %61 = getelementptr inbounds %struct.vlan_dev_info, %struct.vlan_dev_info* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.net_device*, %struct.net_device** %9, align 8
  %63 = load %struct.vlan_dev_info*, %struct.vlan_dev_info** %8, align 8
  %64 = getelementptr inbounds %struct.vlan_dev_info, %struct.vlan_dev_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @vlan_check_real_dev(%struct.net_device* %62, i32 %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %48
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %4, align 4
  br label %107

71:                                               ; preds = %48
  %72 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %73 = load i64, i64* @IFLA_MTU, align 8
  %74 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %72, i64 %73
  %75 = load %struct.nlattr*, %struct.nlattr** %74, align 8
  %76 = icmp ne %struct.nlattr* %75, null
  br i1 %76, label %83, label %77

77:                                               ; preds = %71
  %78 = load %struct.net_device*, %struct.net_device** %9, align 8
  %79 = getelementptr inbounds %struct.net_device, %struct.net_device* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.net_device*, %struct.net_device** %5, align 8
  %82 = getelementptr inbounds %struct.net_device, %struct.net_device* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  br label %95

83:                                               ; preds = %71
  %84 = load %struct.net_device*, %struct.net_device** %5, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.net_device*, %struct.net_device** %9, align 8
  %88 = getelementptr inbounds %struct.net_device, %struct.net_device* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp sgt i64 %86, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %83
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %4, align 4
  br label %107

94:                                               ; preds = %83
  br label %95

95:                                               ; preds = %94, %77
  %96 = load %struct.net_device*, %struct.net_device** %5, align 8
  %97 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %98 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %99 = call i32 @vlan_changelink(%struct.net_device* %96, %struct.nlattr** %97, %struct.nlattr** %98)
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %95
  %103 = load i32, i32* %11, align 4
  store i32 %103, i32* %4, align 4
  br label %107

104:                                              ; preds = %95
  %105 = load %struct.net_device*, %struct.net_device** %5, align 8
  %106 = call i32 @register_vlan_dev(%struct.net_device* %105)
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %104, %102, %91, %69, %45, %32, %23
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local %struct.vlan_dev_info* @vlan_dev_info(%struct.net_device*) #1

declare dso_local %struct.TYPE_2__* @netdev_extended(%struct.net_device*) #1

declare dso_local %struct.net_device* @__dev_get_by_index(%struct.net*, i32) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @nla_get_u16(%struct.nlattr*) #1

declare dso_local i32 @vlan_check_real_dev(%struct.net_device*, i32) #1

declare dso_local i32 @vlan_changelink(%struct.net_device*, %struct.nlattr**, %struct.nlattr**) #1

declare dso_local i32 @register_vlan_dev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
