; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_netprio_cgroup.c_write_priomap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_netprio_cgroup.c_write_priomap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup = type { i32 }
%struct.cftype = type { i32 }
%struct.net_device = type { i32 }
%struct.netprio_map = type { i64* }
%struct.netdev_priomap_info = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.netdev_priomap_info }

@GFP_KERNEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@ENODEV = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cgroup*, %struct.cftype*, i8*)* @write_priomap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_priomap(%struct.cgroup* %0, %struct.cftype* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cgroup*, align 8
  %6 = alloca %struct.cftype*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.net_device*, align 8
  %15 = alloca %struct.netprio_map*, align 8
  %16 = alloca %struct.netdev_priomap_info*, align 8
  store %struct.cgroup* %0, %struct.cgroup** %5, align 8
  store %struct.cftype* %1, %struct.cftype** %6, align 8
  store i8* %2, i8** %7, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i8* @kstrdup(i8* %17, i32 %18)
  store i8* %19, i8** %8, align 8
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %9, align 4
  %22 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %23 = call %struct.TYPE_4__* @cgrp_netprio_state(%struct.cgroup* %22)
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %10, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %110

31:                                               ; preds = %3
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @strlen(i8* %32)
  %34 = icmp slt i32 %33, 3
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %106

36:                                               ; preds = %31
  %37 = load i8*, i8** %8, align 8
  %38 = call i8* @strstr(i8* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %38, i8** %12, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  br label %106

42:                                               ; preds = %36
  %43 = load i8*, i8** %12, align 8
  store i8 0, i8* %43, align 1
  %44 = load i8*, i8** %12, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %12, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %106

51:                                               ; preds = %42
  %52 = load i8*, i8** %12, align 8
  %53 = call i64 @simple_strtoul(i8* %52, i8** %13, i32 10)
  store i64 %53, i64* %11, align 8
  %54 = load i8*, i8** %13, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 32
  br i1 %57, label %58, label %69

58:                                               ; preds = %51
  %59 = load i8*, i8** %13, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 10
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load i8*, i8** %13, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %106

69:                                               ; preds = %63, %58, %51
  %70 = load i32, i32* @ENODEV, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %9, align 4
  %72 = load i8*, i8** %8, align 8
  %73 = call %struct.net_device* @dev_get_by_name(i32* @init_net, i8* %72)
  store %struct.net_device* %73, %struct.net_device** %14, align 8
  %74 = load %struct.net_device*, %struct.net_device** %14, align 8
  %75 = icmp ne %struct.net_device* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %69
  br label %106

77:                                               ; preds = %69
  %78 = load %struct.net_device*, %struct.net_device** %14, align 8
  %79 = call i32 @write_update_netdev_table(%struct.net_device* %78)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %103

83:                                               ; preds = %77
  %84 = call i32 (...) @rcu_read_lock()
  %85 = load %struct.net_device*, %struct.net_device** %14, align 8
  %86 = call %struct.TYPE_3__* @netdev_extended(%struct.net_device* %85)
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  store %struct.netdev_priomap_info* %87, %struct.netdev_priomap_info** %16, align 8
  %88 = load %struct.netdev_priomap_info*, %struct.netdev_priomap_info** %16, align 8
  %89 = getelementptr inbounds %struct.netdev_priomap_info, %struct.netdev_priomap_info* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call %struct.netprio_map* @rcu_dereference(i32 %90)
  store %struct.netprio_map* %91, %struct.netprio_map** %15, align 8
  %92 = load %struct.netprio_map*, %struct.netprio_map** %15, align 8
  %93 = icmp ne %struct.netprio_map* %92, null
  br i1 %93, label %94, label %101

94:                                               ; preds = %83
  %95 = load i64, i64* %11, align 8
  %96 = load %struct.netprio_map*, %struct.netprio_map** %15, align 8
  %97 = getelementptr inbounds %struct.netprio_map, %struct.netprio_map* %96, i32 0, i32 0
  %98 = load i64*, i64** %97, align 8
  %99 = load i64, i64* %10, align 8
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  store i64 %95, i64* %100, align 8
  br label %101

101:                                              ; preds = %94, %83
  %102 = call i32 (...) @rcu_read_unlock()
  br label %103

103:                                              ; preds = %101, %82
  %104 = load %struct.net_device*, %struct.net_device** %14, align 8
  %105 = call i32 @dev_put(%struct.net_device* %104)
  br label %106

106:                                              ; preds = %103, %76, %68, %50, %41, %35
  %107 = load i8*, i8** %8, align 8
  %108 = call i32 @kfree(i8* %107)
  %109 = load i32, i32* %9, align 4
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %106, %28
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local %struct.TYPE_4__* @cgrp_netprio_state(%struct.cgroup*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i64 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local %struct.net_device* @dev_get_by_name(i32*, i8*) #1

declare dso_local i32 @write_update_netdev_table(%struct.net_device*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.TYPE_3__* @netdev_extended(%struct.net_device*) #1

declare dso_local %struct.netprio_map* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
