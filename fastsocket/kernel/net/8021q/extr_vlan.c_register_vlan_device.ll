; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/8021q/extr_vlan.c_register_vlan_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/8021q/extr_vlan.c_register_vlan_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i8*, i32*, i32 }
%struct.net = type { i32 }
%struct.vlan_net = type { i32 }
%struct.TYPE_2__ = type { i32, i32*, %struct.net_device*, i64 }

@vlan_net_id = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@VLAN_VID_MASK = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s.%.4i\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"vlan%i\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s.%i\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"vlan%.4i\00", align 1
@vlan_setup = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@VLAN_FLAG_REORDER_HDR = common dso_local global i32 0, align 4
@vlan_link_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i64)* @register_vlan_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_vlan_device(%struct.net_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.vlan_net*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.net* @dev_net(%struct.net_device* %13)
  store %struct.net* %14, %struct.net** %7, align 8
  %15 = load %struct.net*, %struct.net** %7, align 8
  %16 = load i32, i32* @vlan_net_id, align 4
  %17 = call %struct.vlan_net* @net_generic(%struct.net* %15, i32 %16)
  store %struct.vlan_net* %17, %struct.vlan_net** %8, align 8
  %18 = load i32, i32* @IFNAMSIZ, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %9, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @VLAN_VID_MASK, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @ERANGE, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %109

28:                                               ; preds = %2
  %29 = load %struct.net_device*, %struct.net_device** %4, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @vlan_check_real_dev(%struct.net_device* %29, i64 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %109

36:                                               ; preds = %28
  %37 = load %struct.vlan_net*, %struct.vlan_net** %8, align 8
  %38 = getelementptr inbounds %struct.vlan_net, %struct.vlan_net* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %61 [
    i32 129, label %40
    i32 130, label %48
    i32 128, label %52
    i32 131, label %60
  ]

40:                                               ; preds = %36
  %41 = load i32, i32* @IFNAMSIZ, align 4
  %42 = load %struct.net_device*, %struct.net_device** %4, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = ptrtoint i8* %44 to i64
  %46 = load i64, i64* %5, align 8
  %47 = call i32 (i8*, i32, i8*, i64, ...) @snprintf(i8* %21, i32 %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %45, i64 %46)
  br label %65

48:                                               ; preds = %36
  %49 = load i32, i32* @IFNAMSIZ, align 4
  %50 = load i64, i64* %5, align 8
  %51 = call i32 (i8*, i32, i8*, i64, ...) @snprintf(i8* %21, i32 %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %50)
  br label %65

52:                                               ; preds = %36
  %53 = load i32, i32* @IFNAMSIZ, align 4
  %54 = load %struct.net_device*, %struct.net_device** %4, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = ptrtoint i8* %56 to i64
  %58 = load i64, i64* %5, align 8
  %59 = call i32 (i8*, i32, i8*, i64, ...) @snprintf(i8* %21, i32 %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 %57, i64 %58)
  br label %65

60:                                               ; preds = %36
  br label %61

61:                                               ; preds = %36, %60
  %62 = load i32, i32* @IFNAMSIZ, align 4
  %63 = load i64, i64* %5, align 8
  %64 = call i32 (i8*, i32, i8*, i64, ...) @snprintf(i8* %21, i32 %62, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i64 %63)
  br label %65

65:                                               ; preds = %61, %52, %48, %40
  %66 = load i32, i32* @vlan_setup, align 4
  %67 = call %struct.net_device* @alloc_netdev(i32 4, i8* %21, i32 %66)
  store %struct.net_device* %67, %struct.net_device** %6, align 8
  %68 = load %struct.net_device*, %struct.net_device** %6, align 8
  %69 = icmp eq %struct.net_device* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i32, i32* @ENOBUFS, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %109

73:                                               ; preds = %65
  %74 = load %struct.net_device*, %struct.net_device** %6, align 8
  %75 = load %struct.net*, %struct.net** %7, align 8
  %76 = call i32 @dev_net_set(%struct.net_device* %74, %struct.net* %75)
  %77 = load %struct.net_device*, %struct.net_device** %4, align 8
  %78 = getelementptr inbounds %struct.net_device, %struct.net_device* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.net_device*, %struct.net_device** %6, align 8
  %81 = getelementptr inbounds %struct.net_device, %struct.net_device* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = load i64, i64* %5, align 8
  %83 = load %struct.net_device*, %struct.net_device** %6, align 8
  %84 = call %struct.TYPE_2__* @vlan_dev_info(%struct.net_device* %83)
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 3
  store i64 %82, i64* %85, align 8
  %86 = load %struct.net_device*, %struct.net_device** %4, align 8
  %87 = load %struct.net_device*, %struct.net_device** %6, align 8
  %88 = call %struct.TYPE_2__* @vlan_dev_info(%struct.net_device* %87)
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  store %struct.net_device* %86, %struct.net_device** %89, align 8
  %90 = load %struct.net_device*, %struct.net_device** %6, align 8
  %91 = call %struct.TYPE_2__* @vlan_dev_info(%struct.net_device* %90)
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  store i32* null, i32** %92, align 8
  %93 = load i32, i32* @VLAN_FLAG_REORDER_HDR, align 4
  %94 = load %struct.net_device*, %struct.net_device** %6, align 8
  %95 = call %struct.TYPE_2__* @vlan_dev_info(%struct.net_device* %94)
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  store i32 %93, i32* %96, align 8
  %97 = load %struct.net_device*, %struct.net_device** %6, align 8
  %98 = getelementptr inbounds %struct.net_device, %struct.net_device* %97, i32 0, i32 1
  store i32* @vlan_link_ops, i32** %98, align 8
  %99 = load %struct.net_device*, %struct.net_device** %6, align 8
  %100 = call i32 @register_vlan_dev(%struct.net_device* %99)
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %73
  br label %105

104:                                              ; preds = %73
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %109

105:                                              ; preds = %103
  %106 = load %struct.net_device*, %struct.net_device** %6, align 8
  %107 = call i32 @free_netdev(%struct.net_device* %106)
  %108 = load i32, i32* %11, align 4
  store i32 %108, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %109

109:                                              ; preds = %105, %104, %70, %34, %25
  %110 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %110)
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local %struct.vlan_net* @net_generic(%struct.net*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @vlan_check_real_dev(%struct.net_device*, i64) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64, ...) #1

declare dso_local %struct.net_device* @alloc_netdev(i32, i8*, i32) #1

declare dso_local i32 @dev_net_set(%struct.net_device*, %struct.net*) #1

declare dso_local %struct.TYPE_2__* @vlan_dev_info(%struct.net_device*) #1

declare dso_local i32 @register_vlan_dev(%struct.net_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
