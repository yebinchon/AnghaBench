; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_pid.c_alloc_pid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_pid.c_alloc_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pid = type { i32, %struct.upid*, i32*, i32 }
%struct.upid = type { i32, %struct.pid_namespace*, i32 }
%struct.pid_namespace = type { i32, i32, i32, %struct.pid_namespace* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@PIDTYPE_MAX = common dso_local global i32 0, align 4
@pidmap_lock = common dso_local global i32 0, align 4
@pid_hash = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pid* @alloc_pid(%struct.pid_namespace* %0) #0 {
  %2 = alloca %struct.pid_namespace*, align 8
  %3 = alloca %struct.pid*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pid_namespace*, align 8
  %8 = alloca %struct.upid*, align 8
  store %struct.pid_namespace* %0, %struct.pid_namespace** %2, align 8
  %9 = load %struct.pid_namespace*, %struct.pid_namespace** %2, align 8
  %10 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.pid* @kmem_cache_alloc(i32 %11, i32 %12)
  store %struct.pid* %13, %struct.pid** %3, align 8
  %14 = load %struct.pid*, %struct.pid** %3, align 8
  %15 = icmp ne %struct.pid* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %131

17:                                               ; preds = %1
  %18 = load %struct.pid_namespace*, %struct.pid_namespace** %2, align 8
  store %struct.pid_namespace* %18, %struct.pid_namespace** %7, align 8
  %19 = load %struct.pid_namespace*, %struct.pid_namespace** %2, align 8
  %20 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.pid*, %struct.pid** %3, align 8
  %23 = getelementptr inbounds %struct.pid, %struct.pid* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.pid_namespace*, %struct.pid_namespace** %2, align 8
  %25 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %56, %17
  %28 = load i32, i32* %5, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %59

30:                                               ; preds = %27
  %31 = load %struct.pid_namespace*, %struct.pid_namespace** %7, align 8
  %32 = call i32 @alloc_pidmap(%struct.pid_namespace* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %133

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.pid*, %struct.pid** %3, align 8
  %39 = getelementptr inbounds %struct.pid, %struct.pid* %38, i32 0, i32 1
  %40 = load %struct.upid*, %struct.upid** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.upid, %struct.upid* %40, i64 %42
  %44 = getelementptr inbounds %struct.upid, %struct.upid* %43, i32 0, i32 0
  store i32 %37, i32* %44, align 8
  %45 = load %struct.pid_namespace*, %struct.pid_namespace** %7, align 8
  %46 = load %struct.pid*, %struct.pid** %3, align 8
  %47 = getelementptr inbounds %struct.pid, %struct.pid* %46, i32 0, i32 1
  %48 = load %struct.upid*, %struct.upid** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.upid, %struct.upid* %48, i64 %50
  %52 = getelementptr inbounds %struct.upid, %struct.upid* %51, i32 0, i32 1
  store %struct.pid_namespace* %45, %struct.pid_namespace** %52, align 8
  %53 = load %struct.pid_namespace*, %struct.pid_namespace** %7, align 8
  %54 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %53, i32 0, i32 3
  %55 = load %struct.pid_namespace*, %struct.pid_namespace** %54, align 8
  store %struct.pid_namespace* %55, %struct.pid_namespace** %7, align 8
  br label %56

56:                                               ; preds = %36
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %5, align 4
  br label %27

59:                                               ; preds = %27
  %60 = load %struct.pid*, %struct.pid** %3, align 8
  %61 = call i32 @is_child_reaper(%struct.pid* %60)
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load %struct.pid_namespace*, %struct.pid_namespace** %2, align 8
  %66 = call i64 @pid_ns_prepare_proc(%struct.pid_namespace* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %133

69:                                               ; preds = %64
  br label %70

70:                                               ; preds = %69, %59
  %71 = load %struct.pid_namespace*, %struct.pid_namespace** %2, align 8
  %72 = call i32 @get_pid_ns(%struct.pid_namespace* %71)
  %73 = load %struct.pid*, %struct.pid** %3, align 8
  %74 = getelementptr inbounds %struct.pid, %struct.pid* %73, i32 0, i32 3
  %75 = call i32 @atomic_set(i32* %74, i32 1)
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %88, %70
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @PIDTYPE_MAX, align 4
  %79 = icmp ult i32 %77, %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %76
  %81 = load %struct.pid*, %struct.pid** %3, align 8
  %82 = getelementptr inbounds %struct.pid, %struct.pid* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %4, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = call i32 @INIT_HLIST_HEAD(i32* %86)
  br label %88

88:                                               ; preds = %80
  %89 = load i32, i32* %4, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %4, align 4
  br label %76

91:                                               ; preds = %76
  %92 = load %struct.pid*, %struct.pid** %3, align 8
  %93 = getelementptr inbounds %struct.pid, %struct.pid* %92, i32 0, i32 1
  %94 = load %struct.upid*, %struct.upid** %93, align 8
  %95 = load %struct.pid_namespace*, %struct.pid_namespace** %2, align 8
  %96 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.upid, %struct.upid* %94, i64 %98
  store %struct.upid* %99, %struct.upid** %8, align 8
  %100 = call i32 @spin_lock_irq(i32* @pidmap_lock)
  br label %101

101:                                              ; preds = %126, %91
  %102 = load %struct.upid*, %struct.upid** %8, align 8
  %103 = load %struct.pid*, %struct.pid** %3, align 8
  %104 = getelementptr inbounds %struct.pid, %struct.pid* %103, i32 0, i32 1
  %105 = load %struct.upid*, %struct.upid** %104, align 8
  %106 = icmp uge %struct.upid* %102, %105
  br i1 %106, label %107, label %129

107:                                              ; preds = %101
  %108 = load %struct.upid*, %struct.upid** %8, align 8
  %109 = getelementptr inbounds %struct.upid, %struct.upid* %108, i32 0, i32 2
  %110 = load i32*, i32** @pid_hash, align 8
  %111 = load %struct.upid*, %struct.upid** %8, align 8
  %112 = getelementptr inbounds %struct.upid, %struct.upid* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.upid*, %struct.upid** %8, align 8
  %115 = getelementptr inbounds %struct.upid, %struct.upid* %114, i32 0, i32 1
  %116 = load %struct.pid_namespace*, %struct.pid_namespace** %115, align 8
  %117 = call i64 @pid_hashfn(i32 %113, %struct.pid_namespace* %116)
  %118 = getelementptr inbounds i32, i32* %110, i64 %117
  %119 = call i32 @hlist_add_head_rcu(i32* %109, i32* %118)
  %120 = load %struct.upid*, %struct.upid** %8, align 8
  %121 = getelementptr inbounds %struct.upid, %struct.upid* %120, i32 0, i32 1
  %122 = load %struct.pid_namespace*, %struct.pid_namespace** %121, align 8
  %123 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %123, align 8
  br label %126

126:                                              ; preds = %107
  %127 = load %struct.upid*, %struct.upid** %8, align 8
  %128 = getelementptr inbounds %struct.upid, %struct.upid* %127, i32 -1
  store %struct.upid* %128, %struct.upid** %8, align 8
  br label %101

129:                                              ; preds = %101
  %130 = call i32 @spin_unlock_irq(i32* @pidmap_lock)
  br label %131

131:                                              ; preds = %149, %129, %16
  %132 = load %struct.pid*, %struct.pid** %3, align 8
  ret %struct.pid* %132

133:                                              ; preds = %68, %35
  br label %134

134:                                              ; preds = %141, %133
  %135 = load i32, i32* %5, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %5, align 4
  %137 = load %struct.pid_namespace*, %struct.pid_namespace** %2, align 8
  %138 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp sle i32 %136, %139
  br i1 %140, label %141, label %149

141:                                              ; preds = %134
  %142 = load %struct.pid*, %struct.pid** %3, align 8
  %143 = getelementptr inbounds %struct.pid, %struct.pid* %142, i32 0, i32 1
  %144 = load %struct.upid*, %struct.upid** %143, align 8
  %145 = load i32, i32* %5, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.upid, %struct.upid* %144, i64 %146
  %148 = call i32 @free_pidmap(%struct.upid* %147)
  br label %134

149:                                              ; preds = %134
  %150 = load %struct.pid_namespace*, %struct.pid_namespace** %2, align 8
  %151 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.pid*, %struct.pid** %3, align 8
  %154 = call i32 @kmem_cache_free(i32 %152, %struct.pid* %153)
  store %struct.pid* null, %struct.pid** %3, align 8
  br label %131
}

declare dso_local %struct.pid* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @alloc_pidmap(%struct.pid_namespace*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @is_child_reaper(%struct.pid*) #1

declare dso_local i64 @pid_ns_prepare_proc(%struct.pid_namespace*) #1

declare dso_local i32 @get_pid_ns(%struct.pid_namespace*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i32*) #1

declare dso_local i64 @pid_hashfn(i32, %struct.pid_namespace*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @free_pidmap(%struct.upid*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.pid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
