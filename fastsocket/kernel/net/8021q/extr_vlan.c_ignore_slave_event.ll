; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/8021q/extr_vlan.c_ignore_slave_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/8021q/extr_vlan.c_ignore_slave_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.net_device* }
%struct.vlan_group = type { i32 }

@IFF_BONDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @ignore_slave_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ignore_slave_event(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vlan_group*, align 8
  %7 = alloca %struct.vlan_group*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 1
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  %13 = icmp ne %struct.net_device* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %57

15:                                               ; preds = %2
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 1
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @IFF_BONDING, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %57

25:                                               ; preds = %15
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = call %struct.vlan_group* @__vlan_find_group(%struct.net_device* %26)
  store %struct.vlan_group* %27, %struct.vlan_group** %6, align 8
  %28 = load %struct.net_device*, %struct.net_device** %4, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 1
  %30 = load %struct.net_device*, %struct.net_device** %29, align 8
  %31 = call %struct.vlan_group* @__vlan_find_group(%struct.net_device* %30)
  store %struct.vlan_group* %31, %struct.vlan_group** %7, align 8
  %32 = load %struct.vlan_group*, %struct.vlan_group** %6, align 8
  %33 = icmp ne %struct.vlan_group* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load %struct.vlan_group*, %struct.vlan_group** %7, align 8
  %36 = icmp ne %struct.vlan_group* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %34, %25
  store i32 0, i32* %3, align 4
  br label %57

38:                                               ; preds = %34
  %39 = load %struct.vlan_group*, %struct.vlan_group** %6, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call %struct.net_device* @vlan_group_get_device(%struct.vlan_group* %39, i32 %40)
  store %struct.net_device* %41, %struct.net_device** %8, align 8
  %42 = load %struct.vlan_group*, %struct.vlan_group** %7, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call %struct.net_device* @vlan_group_get_device(%struct.vlan_group* %42, i32 %43)
  store %struct.net_device* %44, %struct.net_device** %9, align 8
  %45 = load %struct.net_device*, %struct.net_device** %8, align 8
  %46 = icmp ne %struct.net_device* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load %struct.net_device*, %struct.net_device** %9, align 8
  %49 = icmp ne %struct.net_device* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %47, %38
  store i32 0, i32* %3, align 4
  br label %57

51:                                               ; preds = %47
  %52 = load %struct.net_device*, %struct.net_device** %8, align 8
  %53 = load %struct.net_device*, %struct.net_device** %9, align 8
  %54 = icmp eq %struct.net_device* %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 1, i32* %3, align 4
  br label %57

56:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %55, %50, %37, %24, %14
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.vlan_group* @__vlan_find_group(%struct.net_device*) #1

declare dso_local %struct.net_device* @vlan_group_get_device(%struct.vlan_group*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
