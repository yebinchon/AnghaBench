; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/8021q/extr_vlan.c_vlan_group_prealloc_vid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/8021q/extr_vlan.c_vlan_group_prealloc_vid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlan_group = type { %struct.net_device*** }
%struct.net_device = type { i32 }

@VLAN_GROUP_ARRAY_PART_LEN = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlan_group_prealloc_vid(%struct.vlan_group* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vlan_group*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.net_device**, align 8
  %7 = alloca i32, align 4
  store %struct.vlan_group* %0, %struct.vlan_group** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = call i32 (...) @ASSERT_RTNL()
  %9 = load %struct.vlan_group*, %struct.vlan_group** %4, align 8
  %10 = getelementptr inbounds %struct.vlan_group, %struct.vlan_group* %9, i32 0, i32 0
  %11 = load %struct.net_device***, %struct.net_device**** %10, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @VLAN_GROUP_ARRAY_PART_LEN, align 8
  %14 = udiv i64 %12, %13
  %15 = getelementptr inbounds %struct.net_device**, %struct.net_device*** %11, i64 %14
  %16 = load %struct.net_device**, %struct.net_device*** %15, align 8
  store %struct.net_device** %16, %struct.net_device*** %6, align 8
  %17 = load %struct.net_device**, %struct.net_device*** %6, align 8
  %18 = icmp ne %struct.net_device** %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %41

20:                                               ; preds = %2
  %21 = load i64, i64* @VLAN_GROUP_ARRAY_PART_LEN, align 8
  %22 = mul i64 8, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.net_device** @kzalloc(i32 %24, i32 %25)
  store %struct.net_device** %26, %struct.net_device*** %6, align 8
  %27 = load %struct.net_device**, %struct.net_device*** %6, align 8
  %28 = icmp eq %struct.net_device** %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load i32, i32* @ENOBUFS, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %41

32:                                               ; preds = %20
  %33 = load %struct.net_device**, %struct.net_device*** %6, align 8
  %34 = load %struct.vlan_group*, %struct.vlan_group** %4, align 8
  %35 = getelementptr inbounds %struct.vlan_group, %struct.vlan_group* %34, i32 0, i32 0
  %36 = load %struct.net_device***, %struct.net_device**** %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @VLAN_GROUP_ARRAY_PART_LEN, align 8
  %39 = udiv i64 %37, %38
  %40 = getelementptr inbounds %struct.net_device**, %struct.net_device*** %36, i64 %39
  store %struct.net_device** %33, %struct.net_device*** %40, align 8
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %32, %29, %19
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local %struct.net_device** @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
