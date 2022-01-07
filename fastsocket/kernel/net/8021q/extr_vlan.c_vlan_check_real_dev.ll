; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/8021q/extr_vlan.c_vlan_check_real_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/8021q/extr_vlan.c_vlan_check_real_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i8*, i32, %struct.net_device_ops* }
%struct.net_device_ops = type { i32, i32, i32 }

@NETIF_F_VLAN_CHALLENGED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"8021q: VLANs not supported on %s\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_RX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"8021q: device %s has buggy VLAN hw accel\0A\00", align 1
@NETIF_F_HW_VLAN_FILTER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"8021q: Device %s has buggy VLAN hw accel\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlan_check_real_dev(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.net_device_ops*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 2
  %13 = load %struct.net_device_ops*, %struct.net_device_ops** %12, align 8
  store %struct.net_device_ops* %13, %struct.net_device_ops** %7, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @NETIF_F_VLAN_CHALLENGED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %21)
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %73

25:                                               ; preds = %2
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @NETIF_F_HW_VLAN_RX, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %25
  %33 = load %struct.net_device_ops*, %struct.net_device_ops** %7, align 8
  %34 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @pr_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  %40 = load i32, i32* @EOPNOTSUPP, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %73

42:                                               ; preds = %32, %25
  %43 = load %struct.net_device*, %struct.net_device** %4, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @NETIF_F_HW_VLAN_FILTER, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %42
  %50 = load %struct.net_device_ops*, %struct.net_device_ops** %7, align 8
  %51 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load %struct.net_device_ops*, %struct.net_device_ops** %7, align 8
  %56 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %54, %49
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 @pr_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* %60)
  %62 = load i32, i32* @EOPNOTSUPP, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %73

64:                                               ; preds = %54, %42
  %65 = load %struct.net_device*, %struct.net_device** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32* @__find_vlan_dev(%struct.net_device* %65, i32 %66)
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i32, i32* @EEXIST, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %73

72:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %69, %59, %37, %20
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @pr_info(i8*, i8*) #1

declare dso_local i32* @__find_vlan_dev(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
