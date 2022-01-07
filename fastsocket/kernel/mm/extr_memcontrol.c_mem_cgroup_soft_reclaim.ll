; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_soft_reclaim.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_soft_reclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup = type { i32, i32 }
%struct.zone = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mem_cgroup_reclaim_cookie = type { i32, %struct.zone* }

@MEM_CGROUP_MAX_RECLAIM_LOOPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_cgroup*, %struct.zone*, i32)* @mem_cgroup_soft_reclaim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mem_cgroup_soft_reclaim(%struct.mem_cgroup* %0, %struct.zone* %1, i32 %2) #0 {
  %4 = alloca %struct.mem_cgroup*, align 8
  %5 = alloca %struct.zone*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mem_cgroup*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.mem_cgroup_reclaim_cookie, align 8
  store %struct.mem_cgroup* %0, %struct.mem_cgroup** %4, align 8
  store %struct.zone* %1, %struct.zone** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.mem_cgroup* null, %struct.mem_cgroup** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %13 = call i64 @mem_cgroup_get_excess(%struct.mem_cgroup* %12)
  store i64 %13, i64* %10, align 8
  %14 = getelementptr inbounds %struct.mem_cgroup_reclaim_cookie, %struct.mem_cgroup_reclaim_cookie* %11, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = getelementptr inbounds %struct.mem_cgroup_reclaim_cookie, %struct.mem_cgroup_reclaim_cookie* %11, i32 0, i32 1
  %16 = load %struct.zone*, %struct.zone** %5, align 8
  store %struct.zone* %16, %struct.zone** %15, align 8
  br label %17

17:                                               ; preds = %3, %44, %50, %72
  %18 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %19 = load %struct.mem_cgroup*, %struct.mem_cgroup** %7, align 8
  %20 = call %struct.mem_cgroup* @mem_cgroup_iter(%struct.mem_cgroup* %18, %struct.mem_cgroup* %19, %struct.mem_cgroup_reclaim_cookie* %11)
  store %struct.mem_cgroup* %20, %struct.mem_cgroup** %7, align 8
  %21 = load %struct.mem_cgroup*, %struct.mem_cgroup** %7, align 8
  %22 = icmp ne %struct.mem_cgroup* %21, null
  br i1 %22, label %45, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* %9, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp sge i32 %26, 2
  br i1 %27, label %28, label %44

28:                                               ; preds = %23
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  br label %73

32:                                               ; preds = %28
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* %10, align 8
  %36 = lshr i64 %35, 2
  %37 = icmp uge i64 %34, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @MEM_CGROUP_MAX_RECLAIM_LOOPS, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38, %32
  br label %73

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %43, %23
  br label %17

45:                                               ; preds = %17
  %46 = load %struct.mem_cgroup*, %struct.mem_cgroup** %7, align 8
  %47 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %46, i32 0, i32 1
  %48 = call i32 @mem_cgroup_local_usage(i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  br label %17

51:                                               ; preds = %45
  %52 = load %struct.mem_cgroup*, %struct.mem_cgroup** %7, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.mem_cgroup*, %struct.mem_cgroup** %7, align 8
  %55 = call i32 @get_swappiness(%struct.mem_cgroup* %54)
  %56 = load %struct.zone*, %struct.zone** %5, align 8
  %57 = load %struct.zone*, %struct.zone** %5, align 8
  %58 = getelementptr inbounds %struct.zone, %struct.zone* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @mem_cgroup_shrink_node_zone(%struct.mem_cgroup* %52, i32 %53, i32 0, i32 %55, %struct.zone* %56, i32 %61)
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %62
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %8, align 4
  %67 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %68 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %67, i32 0, i32 0
  %69 = call i64 @res_counter_check_under_soft_limit(i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %51
  br label %73

72:                                               ; preds = %51
  br label %17

73:                                               ; preds = %71, %42, %31
  %74 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %75 = load %struct.mem_cgroup*, %struct.mem_cgroup** %7, align 8
  %76 = call i32 @mem_cgroup_iter_break(%struct.mem_cgroup* %74, %struct.mem_cgroup* %75)
  %77 = load i32, i32* %8, align 4
  ret i32 %77
}

declare dso_local i64 @mem_cgroup_get_excess(%struct.mem_cgroup*) #1

declare dso_local %struct.mem_cgroup* @mem_cgroup_iter(%struct.mem_cgroup*, %struct.mem_cgroup*, %struct.mem_cgroup_reclaim_cookie*) #1

declare dso_local i32 @mem_cgroup_local_usage(i32*) #1

declare dso_local i64 @mem_cgroup_shrink_node_zone(%struct.mem_cgroup*, i32, i32, i32, %struct.zone*, i32) #1

declare dso_local i32 @get_swappiness(%struct.mem_cgroup*) #1

declare dso_local i64 @res_counter_check_under_soft_limit(i32*) #1

declare dso_local i32 @mem_cgroup_iter_break(%struct.mem_cgroup*, %struct.mem_cgroup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
