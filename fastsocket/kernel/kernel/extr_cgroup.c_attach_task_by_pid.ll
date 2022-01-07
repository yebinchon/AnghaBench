; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_attach_task_by_pid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_attach_task_by_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, %struct.task_struct* }
%struct.cgroup = type { i32 }
%struct.cred = type { i64, i64, i64 }

@ENODEV = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@PF_EXITING = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@current = common dso_local global %struct.task_struct* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cgroup*, i64, i32)* @attach_task_by_pid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @attach_task_by_pid(%struct.cgroup* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cgroup*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca %struct.cred*, align 8
  %10 = alloca %struct.cred*, align 8
  %11 = alloca i32, align 4
  store %struct.cgroup* %0, %struct.cgroup** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %12, %struct.cred** %9, align 8
  %13 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %14 = call i32 @cgroup_lock_live_group(%struct.cgroup* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %117

19:                                               ; preds = %3
  %20 = load i64, i64* %6, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %85

22:                                               ; preds = %19
  %23 = call i32 (...) @rcu_read_lock()
  %24 = load i64, i64* %6, align 8
  %25 = call %struct.task_struct* @find_task_by_vpid(i64 %24)
  store %struct.task_struct* %25, %struct.task_struct** %8, align 8
  %26 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %27 = icmp ne %struct.task_struct* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %22
  %29 = call i32 (...) @rcu_read_unlock()
  %30 = call i32 (...) @cgroup_unlock()
  %31 = load i32, i32* @ESRCH, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %117

33:                                               ; preds = %22
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %38 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %37, i32 0, i32 1
  %39 = load %struct.task_struct*, %struct.task_struct** %38, align 8
  store %struct.task_struct* %39, %struct.task_struct** %8, align 8
  br label %53

40:                                               ; preds = %33
  %41 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %42 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @PF_EXITING, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = call i32 (...) @rcu_read_unlock()
  %49 = call i32 (...) @cgroup_unlock()
  %50 = load i32, i32* @ESRCH, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %117

52:                                               ; preds = %40
  br label %53

53:                                               ; preds = %52, %36
  %54 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %55 = call %struct.cred* @__task_cred(%struct.task_struct* %54)
  store %struct.cred* %55, %struct.cred** %10, align 8
  %56 = load %struct.cred*, %struct.cred** %9, align 8
  %57 = getelementptr inbounds %struct.cred, %struct.cred* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %81

60:                                               ; preds = %53
  %61 = load %struct.cred*, %struct.cred** %9, align 8
  %62 = getelementptr inbounds %struct.cred, %struct.cred* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.cred*, %struct.cred** %10, align 8
  %65 = getelementptr inbounds %struct.cred, %struct.cred* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %63, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %60
  %69 = load %struct.cred*, %struct.cred** %9, align 8
  %70 = getelementptr inbounds %struct.cred, %struct.cred* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.cred*, %struct.cred** %10, align 8
  %73 = getelementptr inbounds %struct.cred, %struct.cred* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %71, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %68
  %77 = call i32 (...) @rcu_read_unlock()
  %78 = call i32 (...) @cgroup_unlock()
  %79 = load i32, i32* @EACCES, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %117

81:                                               ; preds = %68, %60, %53
  %82 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %83 = call i32 @get_task_struct(%struct.task_struct* %82)
  %84 = call i32 (...) @rcu_read_unlock()
  br label %97

85:                                               ; preds = %19
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %90 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %89, i32 0, i32 1
  %91 = load %struct.task_struct*, %struct.task_struct** %90, align 8
  store %struct.task_struct* %91, %struct.task_struct** %8, align 8
  br label %94

92:                                               ; preds = %85
  %93 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %93, %struct.task_struct** %8, align 8
  br label %94

94:                                               ; preds = %92, %88
  %95 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %96 = call i32 @get_task_struct(%struct.task_struct* %95)
  br label %97

97:                                               ; preds = %94, %81
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %97
  %101 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %102 = call i32 @threadgroup_fork_write_lock(%struct.task_struct* %101)
  %103 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %104 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %105 = call i32 @cgroup_attach_proc(%struct.cgroup* %103, %struct.task_struct* %104)
  store i32 %105, i32* %11, align 4
  %106 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %107 = call i32 @threadgroup_fork_write_unlock(%struct.task_struct* %106)
  br label %112

108:                                              ; preds = %97
  %109 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %110 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %111 = call i32 @cgroup_attach_task(%struct.cgroup* %109, %struct.task_struct* %110)
  store i32 %111, i32* %11, align 4
  br label %112

112:                                              ; preds = %108, %100
  %113 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %114 = call i32 @put_task_struct(%struct.task_struct* %113)
  %115 = call i32 (...) @cgroup_unlock()
  %116 = load i32, i32* %11, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %112, %76, %47, %28, %16
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local i32 @cgroup_lock_live_group(%struct.cgroup*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.task_struct* @find_task_by_vpid(i64) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @cgroup_unlock(...) #1

declare dso_local %struct.cred* @__task_cred(%struct.task_struct*) #1

declare dso_local i32 @get_task_struct(%struct.task_struct*) #1

declare dso_local i32 @threadgroup_fork_write_lock(%struct.task_struct*) #1

declare dso_local i32 @cgroup_attach_proc(%struct.cgroup*, %struct.task_struct*) #1

declare dso_local i32 @threadgroup_fork_write_unlock(%struct.task_struct*) #1

declare dso_local i32 @cgroup_attach_task(%struct.cgroup*, %struct.task_struct*) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
