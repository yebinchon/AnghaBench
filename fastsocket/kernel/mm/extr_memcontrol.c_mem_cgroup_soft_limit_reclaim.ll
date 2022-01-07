; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_soft_limit_reclaim.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_soft_limit_reclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zone = type { i32 }
%struct.mem_cgroup_per_zone = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.mem_cgroup_tree_per_zone = type { i32 }

@MEM_CGROUP_MAX_SOFT_LIMIT_RECLAIM_LOOPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mem_cgroup_soft_limit_reclaim(%struct.zone* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.zone*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.mem_cgroup_per_zone*, align 8
  %14 = alloca %struct.mem_cgroup_per_zone*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.mem_cgroup_tree_per_zone*, align 8
  %18 = alloca i64, align 8
  store %struct.zone* %0, %struct.zone** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64 0, i64* %12, align 8
  store %struct.mem_cgroup_per_zone* null, %struct.mem_cgroup_per_zone** %14, align 8
  store i32 0, i32* %16, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  store i64 0, i64* %6, align 8
  br label %125

22:                                               ; preds = %5
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %11, align 4
  %25 = call %struct.mem_cgroup_tree_per_zone* @soft_limit_tree_node_zone(i32 %23, i32 %24)
  store %struct.mem_cgroup_tree_per_zone* %25, %struct.mem_cgroup_tree_per_zone** %17, align 8
  br label %26

26:                                               ; preds = %110, %22
  %27 = load %struct.mem_cgroup_per_zone*, %struct.mem_cgroup_per_zone** %14, align 8
  %28 = icmp ne %struct.mem_cgroup_per_zone* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load %struct.mem_cgroup_per_zone*, %struct.mem_cgroup_per_zone** %14, align 8
  store %struct.mem_cgroup_per_zone* %30, %struct.mem_cgroup_per_zone** %13, align 8
  br label %34

31:                                               ; preds = %26
  %32 = load %struct.mem_cgroup_tree_per_zone*, %struct.mem_cgroup_tree_per_zone** %17, align 8
  %33 = call %struct.mem_cgroup_per_zone* @mem_cgroup_largest_soft_limit_node(%struct.mem_cgroup_tree_per_zone* %32)
  store %struct.mem_cgroup_per_zone* %33, %struct.mem_cgroup_per_zone** %13, align 8
  br label %34

34:                                               ; preds = %31, %29
  %35 = load %struct.mem_cgroup_per_zone*, %struct.mem_cgroup_per_zone** %13, align 8
  %36 = icmp ne %struct.mem_cgroup_per_zone* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  br label %114

38:                                               ; preds = %34
  %39 = load %struct.mem_cgroup_per_zone*, %struct.mem_cgroup_per_zone** %13, align 8
  %40 = getelementptr inbounds %struct.mem_cgroup_per_zone, %struct.mem_cgroup_per_zone* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load %struct.zone*, %struct.zone** %7, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i64 @mem_cgroup_soft_reclaim(%struct.TYPE_4__* %41, %struct.zone* %42, i32 %43)
  store i64 %44, i64* %15, align 8
  %45 = load i64, i64* %15, align 8
  %46 = load i64, i64* %12, align 8
  %47 = add i64 %46, %45
  store i64 %47, i64* %12, align 8
  %48 = load %struct.mem_cgroup_tree_per_zone*, %struct.mem_cgroup_tree_per_zone** %17, align 8
  %49 = getelementptr inbounds %struct.mem_cgroup_tree_per_zone, %struct.mem_cgroup_tree_per_zone* %48, i32 0, i32 0
  %50 = call i32 @spin_lock(i32* %49)
  store %struct.mem_cgroup_per_zone* null, %struct.mem_cgroup_per_zone** %14, align 8
  %51 = load i64, i64* %15, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %70, label %53

53:                                               ; preds = %38
  br label %54

54:                                               ; preds = %68, %53
  %55 = load %struct.mem_cgroup_tree_per_zone*, %struct.mem_cgroup_tree_per_zone** %17, align 8
  %56 = call %struct.mem_cgroup_per_zone* @__mem_cgroup_largest_soft_limit_node(%struct.mem_cgroup_tree_per_zone* %55)
  store %struct.mem_cgroup_per_zone* %56, %struct.mem_cgroup_per_zone** %14, align 8
  %57 = load %struct.mem_cgroup_per_zone*, %struct.mem_cgroup_per_zone** %14, align 8
  %58 = load %struct.mem_cgroup_per_zone*, %struct.mem_cgroup_per_zone** %13, align 8
  %59 = icmp eq %struct.mem_cgroup_per_zone* %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load %struct.mem_cgroup_per_zone*, %struct.mem_cgroup_per_zone** %14, align 8
  %62 = getelementptr inbounds %struct.mem_cgroup_per_zone, %struct.mem_cgroup_per_zone* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = call i32 @css_put(i32* %64)
  store %struct.mem_cgroup_per_zone* null, %struct.mem_cgroup_per_zone** %14, align 8
  br label %67

66:                                               ; preds = %54
  br label %69

67:                                               ; preds = %60
  br label %68

68:                                               ; preds = %67
  br i1 true, label %54, label %69

69:                                               ; preds = %68, %66
  br label %70

70:                                               ; preds = %69, %38
  %71 = load %struct.mem_cgroup_per_zone*, %struct.mem_cgroup_per_zone** %13, align 8
  %72 = getelementptr inbounds %struct.mem_cgroup_per_zone, %struct.mem_cgroup_per_zone* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = load %struct.mem_cgroup_per_zone*, %struct.mem_cgroup_per_zone** %13, align 8
  %75 = load %struct.mem_cgroup_tree_per_zone*, %struct.mem_cgroup_tree_per_zone** %17, align 8
  %76 = call i32 @__mem_cgroup_remove_exceeded(%struct.TYPE_4__* %73, %struct.mem_cgroup_per_zone* %74, %struct.mem_cgroup_tree_per_zone* %75)
  %77 = load %struct.mem_cgroup_per_zone*, %struct.mem_cgroup_per_zone** %13, align 8
  %78 = getelementptr inbounds %struct.mem_cgroup_per_zone, %struct.mem_cgroup_per_zone* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = call i64 @res_counter_soft_limit_excess(i32* %80)
  store i64 %81, i64* %18, align 8
  %82 = load %struct.mem_cgroup_per_zone*, %struct.mem_cgroup_per_zone** %13, align 8
  %83 = getelementptr inbounds %struct.mem_cgroup_per_zone, %struct.mem_cgroup_per_zone* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = load %struct.mem_cgroup_per_zone*, %struct.mem_cgroup_per_zone** %13, align 8
  %86 = load %struct.mem_cgroup_tree_per_zone*, %struct.mem_cgroup_tree_per_zone** %17, align 8
  %87 = load i64, i64* %18, align 8
  %88 = call i32 @__mem_cgroup_insert_exceeded(%struct.TYPE_4__* %84, %struct.mem_cgroup_per_zone* %85, %struct.mem_cgroup_tree_per_zone* %86, i64 %87)
  %89 = load %struct.mem_cgroup_tree_per_zone*, %struct.mem_cgroup_tree_per_zone** %17, align 8
  %90 = getelementptr inbounds %struct.mem_cgroup_tree_per_zone, %struct.mem_cgroup_tree_per_zone* %89, i32 0, i32 0
  %91 = call i32 @spin_unlock(i32* %90)
  %92 = load %struct.mem_cgroup_per_zone*, %struct.mem_cgroup_per_zone** %13, align 8
  %93 = getelementptr inbounds %struct.mem_cgroup_per_zone, %struct.mem_cgroup_per_zone* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = call i32 @css_put(i32* %95)
  %97 = load i32, i32* %16, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %16, align 4
  %99 = load i64, i64* %12, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %109, label %101

101:                                              ; preds = %70
  %102 = load %struct.mem_cgroup_per_zone*, %struct.mem_cgroup_per_zone** %14, align 8
  %103 = icmp eq %struct.mem_cgroup_per_zone* %102, null
  br i1 %103, label %108, label %104

104:                                              ; preds = %101
  %105 = load i32, i32* %16, align 4
  %106 = load i32, i32* @MEM_CGROUP_MAX_SOFT_LIMIT_RECLAIM_LOOPS, align 4
  %107 = icmp sgt i32 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %104, %101
  br label %114

109:                                              ; preds = %104, %70
  br label %110

110:                                              ; preds = %109
  %111 = load i64, i64* %12, align 8
  %112 = icmp ne i64 %111, 0
  %113 = xor i1 %112, true
  br i1 %113, label %26, label %114

114:                                              ; preds = %110, %108, %37
  %115 = load %struct.mem_cgroup_per_zone*, %struct.mem_cgroup_per_zone** %14, align 8
  %116 = icmp ne %struct.mem_cgroup_per_zone* %115, null
  br i1 %116, label %117, label %123

117:                                              ; preds = %114
  %118 = load %struct.mem_cgroup_per_zone*, %struct.mem_cgroup_per_zone** %14, align 8
  %119 = getelementptr inbounds %struct.mem_cgroup_per_zone, %struct.mem_cgroup_per_zone* %118, i32 0, i32 0
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = call i32 @css_put(i32* %121)
  br label %123

123:                                              ; preds = %117, %114
  %124 = load i64, i64* %12, align 8
  store i64 %124, i64* %6, align 8
  br label %125

125:                                              ; preds = %123, %21
  %126 = load i64, i64* %6, align 8
  ret i64 %126
}

declare dso_local %struct.mem_cgroup_tree_per_zone* @soft_limit_tree_node_zone(i32, i32) #1

declare dso_local %struct.mem_cgroup_per_zone* @mem_cgroup_largest_soft_limit_node(%struct.mem_cgroup_tree_per_zone*) #1

declare dso_local i64 @mem_cgroup_soft_reclaim(%struct.TYPE_4__*, %struct.zone*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.mem_cgroup_per_zone* @__mem_cgroup_largest_soft_limit_node(%struct.mem_cgroup_tree_per_zone*) #1

declare dso_local i32 @css_put(i32*) #1

declare dso_local i32 @__mem_cgroup_remove_exceeded(%struct.TYPE_4__*, %struct.mem_cgroup_per_zone*, %struct.mem_cgroup_tree_per_zone*) #1

declare dso_local i64 @res_counter_soft_limit_excess(i32*) #1

declare dso_local i32 @__mem_cgroup_insert_exceeded(%struct.TYPE_4__*, %struct.mem_cgroup_per_zone*, %struct.mem_cgroup_tree_per_zone*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
