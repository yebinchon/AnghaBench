; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_igmp.c_ip_mc_inc_group.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_igmp.c_ip_mc_inc_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_device = type { i32, i32, i32, %struct.ip_mc_list* }
%struct.ip_mc_list = type { i32, i64, i32*, i32, %struct.ip_mc_list*, i64, i64, i64, i32, i32, i64, i32, i32, i64, i32*, i32*, %struct.in_device* }

@MCAST_EXCLUDE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@MCAST_INCLUDE = common dso_local global i64 0, align 8
@IGMP_Unsolicited_Report_Count = common dso_local global i32 0, align 4
@igmp_timer_expire = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip_mc_inc_group(%struct.in_device* %0, i32 %1) #0 {
  %3 = alloca %struct.in_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_mc_list*, align 8
  store %struct.in_device* %0, %struct.in_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 (...) @ASSERT_RTNL()
  %7 = load %struct.in_device*, %struct.in_device** %3, align 8
  %8 = getelementptr inbounds %struct.in_device, %struct.in_device* %7, i32 0, i32 3
  %9 = load %struct.ip_mc_list*, %struct.ip_mc_list** %8, align 8
  store %struct.ip_mc_list* %9, %struct.ip_mc_list** %5, align 8
  br label %10

10:                                               ; preds = %28, %2
  %11 = load %struct.ip_mc_list*, %struct.ip_mc_list** %5, align 8
  %12 = icmp ne %struct.ip_mc_list* %11, null
  br i1 %12, label %13, label %32

13:                                               ; preds = %10
  %14 = load %struct.ip_mc_list*, %struct.ip_mc_list** %5, align 8
  %15 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  %20 = load %struct.ip_mc_list*, %struct.ip_mc_list** %5, align 8
  %21 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 8
  %24 = load %struct.in_device*, %struct.in_device** %3, align 8
  %25 = load i64, i64* @MCAST_EXCLUDE, align 8
  %26 = call i32 @ip_mc_add_src(%struct.in_device* %24, i32* %4, i64 %25, i32 0, i32* null, i32 0)
  br label %104

27:                                               ; preds = %13
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.ip_mc_list*, %struct.ip_mc_list** %5, align 8
  %30 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %29, i32 0, i32 4
  %31 = load %struct.ip_mc_list*, %struct.ip_mc_list** %30, align 8
  store %struct.ip_mc_list* %31, %struct.ip_mc_list** %5, align 8
  br label %10

32:                                               ; preds = %10
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.ip_mc_list* @kmalloc(i32 120, i32 %33)
  store %struct.ip_mc_list* %34, %struct.ip_mc_list** %5, align 8
  %35 = load %struct.ip_mc_list*, %struct.ip_mc_list** %5, align 8
  %36 = icmp ne %struct.ip_mc_list* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  br label %104

38:                                               ; preds = %32
  %39 = load %struct.ip_mc_list*, %struct.ip_mc_list** %5, align 8
  %40 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = load %struct.in_device*, %struct.in_device** %3, align 8
  %42 = load %struct.ip_mc_list*, %struct.ip_mc_list** %5, align 8
  %43 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %42, i32 0, i32 16
  store %struct.in_device* %41, %struct.in_device** %43, align 8
  %44 = load %struct.in_device*, %struct.in_device** %3, align 8
  %45 = call i32 @in_dev_hold(%struct.in_device* %44)
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.ip_mc_list*, %struct.ip_mc_list** %5, align 8
  %48 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 8
  %49 = load i64, i64* @MCAST_EXCLUDE, align 8
  %50 = load %struct.ip_mc_list*, %struct.ip_mc_list** %5, align 8
  %51 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  %52 = load %struct.ip_mc_list*, %struct.ip_mc_list** %5, align 8
  %53 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* @MCAST_INCLUDE, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32 0, i32* %56, align 4
  %57 = load %struct.ip_mc_list*, %struct.ip_mc_list** %5, align 8
  %58 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* @MCAST_EXCLUDE, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  store i32 1, i32* %61, align 4
  %62 = load %struct.ip_mc_list*, %struct.ip_mc_list** %5, align 8
  %63 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %62, i32 0, i32 15
  store i32* null, i32** %63, align 8
  %64 = load %struct.ip_mc_list*, %struct.ip_mc_list** %5, align 8
  %65 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %64, i32 0, i32 14
  store i32* null, i32** %65, align 8
  %66 = load %struct.ip_mc_list*, %struct.ip_mc_list** %5, align 8
  %67 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %66, i32 0, i32 13
  store i64 0, i64* %67, align 8
  %68 = load %struct.ip_mc_list*, %struct.ip_mc_list** %5, align 8
  %69 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %68, i32 0, i32 12
  %70 = call i32 @atomic_set(i32* %69, i32 1)
  %71 = load %struct.ip_mc_list*, %struct.ip_mc_list** %5, align 8
  %72 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %71, i32 0, i32 11
  %73 = call i32 @spin_lock_init(i32* %72)
  %74 = load %struct.ip_mc_list*, %struct.ip_mc_list** %5, align 8
  %75 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %74, i32 0, i32 5
  store i64 0, i64* %75, align 8
  %76 = load %struct.in_device*, %struct.in_device** %3, align 8
  %77 = getelementptr inbounds %struct.in_device, %struct.in_device* %76, i32 0, i32 1
  %78 = call i32 @write_lock_bh(i32* %77)
  %79 = load %struct.in_device*, %struct.in_device** %3, align 8
  %80 = getelementptr inbounds %struct.in_device, %struct.in_device* %79, i32 0, i32 3
  %81 = load %struct.ip_mc_list*, %struct.ip_mc_list** %80, align 8
  %82 = load %struct.ip_mc_list*, %struct.ip_mc_list** %5, align 8
  %83 = getelementptr inbounds %struct.ip_mc_list, %struct.ip_mc_list* %82, i32 0, i32 4
  store %struct.ip_mc_list* %81, %struct.ip_mc_list** %83, align 8
  %84 = load %struct.ip_mc_list*, %struct.ip_mc_list** %5, align 8
  %85 = load %struct.in_device*, %struct.in_device** %3, align 8
  %86 = getelementptr inbounds %struct.in_device, %struct.in_device* %85, i32 0, i32 3
  store %struct.ip_mc_list* %84, %struct.ip_mc_list** %86, align 8
  %87 = load %struct.in_device*, %struct.in_device** %3, align 8
  %88 = getelementptr inbounds %struct.in_device, %struct.in_device* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 8
  %91 = load %struct.in_device*, %struct.in_device** %3, align 8
  %92 = getelementptr inbounds %struct.in_device, %struct.in_device* %91, i32 0, i32 1
  %93 = call i32 @write_unlock_bh(i32* %92)
  %94 = load %struct.ip_mc_list*, %struct.ip_mc_list** %5, align 8
  %95 = call i32 @igmp_group_added(%struct.ip_mc_list* %94)
  %96 = load %struct.in_device*, %struct.in_device** %3, align 8
  %97 = getelementptr inbounds %struct.in_device, %struct.in_device* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %38
  %101 = load %struct.in_device*, %struct.in_device** %3, align 8
  %102 = call i32 @ip_rt_multicast_event(%struct.in_device* %101)
  br label %103

103:                                              ; preds = %100, %38
  br label %104

104:                                              ; preds = %103, %37, %19
  ret void
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @ip_mc_add_src(%struct.in_device*, i32*, i64, i32, i32*, i32) #1

declare dso_local %struct.ip_mc_list* @kmalloc(i32, i32) #1

declare dso_local i32 @in_dev_hold(%struct.in_device*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @igmp_group_added(%struct.ip_mc_list*) #1

declare dso_local i32 @ip_rt_multicast_event(%struct.in_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
