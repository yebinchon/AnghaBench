; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_cgroup_task_migrate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_cgroup_task_migrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup = type { i32 }
%struct.task_struct = type { i32, i32, %struct.css_set* }
%struct.css_set = type { i32 }
%struct.cgroup_subsys_state = type { i32 }

@CGROUP_SUBSYS_COUNT = common dso_local global i32 0, align 4
@css_set_lock = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PF_EXITING = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@CGRP_RELEASABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cgroup*, %struct.cgroup*, %struct.task_struct*, i32)* @cgroup_task_migrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cgroup_task_migrate(%struct.cgroup* %0, %struct.cgroup* %1, %struct.task_struct* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cgroup*, align 8
  %7 = alloca %struct.cgroup*, align 8
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.css_set*, align 8
  %11 = alloca %struct.css_set*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.cgroup* %0, %struct.cgroup** %6, align 8
  store %struct.cgroup* %1, %struct.cgroup** %7, align 8
  store %struct.task_struct* %2, %struct.task_struct** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %15 = call i32 @task_lock(%struct.task_struct* %14)
  %16 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %17 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %16, i32 0, i32 2
  %18 = load %struct.css_set*, %struct.css_set** %17, align 8
  store %struct.css_set* %18, %struct.css_set** %10, align 8
  %19 = load %struct.css_set*, %struct.css_set** %10, align 8
  %20 = call i32 @get_css_set(%struct.css_set* %19)
  %21 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %22 = call i32 @task_unlock(%struct.task_struct* %21)
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %4
  %26 = load i32, i32* @CGROUP_SUBSYS_COUNT, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %12, align 8
  %29 = alloca %struct.cgroup_subsys_state*, i64 %27, align 16
  store i64 %27, i64* %13, align 8
  %30 = call i32 @read_lock(i32* @css_set_lock)
  %31 = load %struct.css_set*, %struct.css_set** %10, align 8
  %32 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  %33 = call %struct.css_set* @find_existing_css_set(%struct.css_set* %31, %struct.cgroup* %32, %struct.cgroup_subsys_state** %29)
  store %struct.css_set* %33, %struct.css_set** %11, align 8
  %34 = load %struct.css_set*, %struct.css_set** %11, align 8
  %35 = icmp ne %struct.css_set* %34, null
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @BUG_ON(i32 %37)
  %39 = load %struct.css_set*, %struct.css_set** %11, align 8
  %40 = call i32 @get_css_set(%struct.css_set* %39)
  %41 = call i32 @read_unlock(i32* @css_set_lock)
  %42 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %42)
  br label %56

43:                                               ; preds = %4
  %44 = call i32 (...) @might_sleep()
  %45 = load %struct.css_set*, %struct.css_set** %10, align 8
  %46 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  %47 = call %struct.css_set* @find_css_set(%struct.css_set* %45, %struct.cgroup* %46)
  store %struct.css_set* %47, %struct.css_set** %11, align 8
  %48 = load %struct.css_set*, %struct.css_set** %11, align 8
  %49 = icmp ne %struct.css_set* %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %43
  %51 = load %struct.css_set*, %struct.css_set** %10, align 8
  %52 = call i32 @put_css_set(%struct.css_set* %51)
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %101

55:                                               ; preds = %43
  br label %56

56:                                               ; preds = %55, %25
  %57 = load %struct.css_set*, %struct.css_set** %10, align 8
  %58 = call i32 @put_css_set(%struct.css_set* %57)
  %59 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %60 = call i32 @task_lock(%struct.task_struct* %59)
  %61 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %62 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @PF_EXITING, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %56
  %68 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %69 = call i32 @task_unlock(%struct.task_struct* %68)
  %70 = load %struct.css_set*, %struct.css_set** %11, align 8
  %71 = call i32 @put_css_set(%struct.css_set* %70)
  %72 = load i32, i32* @ESRCH, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %5, align 4
  br label %101

74:                                               ; preds = %56
  %75 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %76 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %75, i32 0, i32 2
  %77 = load %struct.css_set*, %struct.css_set** %76, align 8
  %78 = load %struct.css_set*, %struct.css_set** %11, align 8
  %79 = call i32 @rcu_assign_pointer(%struct.css_set* %77, %struct.css_set* %78)
  %80 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %81 = call i32 @task_unlock(%struct.task_struct* %80)
  %82 = call i32 @write_lock(i32* @css_set_lock)
  %83 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %84 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %83, i32 0, i32 1
  %85 = call i32 @list_empty(i32* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %74
  %88 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %89 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %88, i32 0, i32 1
  %90 = load %struct.css_set*, %struct.css_set** %11, align 8
  %91 = getelementptr inbounds %struct.css_set, %struct.css_set* %90, i32 0, i32 0
  %92 = call i32 @list_move(i32* %89, i32* %91)
  br label %93

93:                                               ; preds = %87, %74
  %94 = call i32 @write_unlock(i32* @css_set_lock)
  %95 = load %struct.css_set*, %struct.css_set** %10, align 8
  %96 = call i32 @put_css_set(%struct.css_set* %95)
  %97 = load i32, i32* @CGRP_RELEASABLE, align 4
  %98 = load %struct.cgroup*, %struct.cgroup** %7, align 8
  %99 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %98, i32 0, i32 0
  %100 = call i32 @set_bit(i32 %97, i32* %99)
  store i32 0, i32* %5, align 4
  br label %101

101:                                              ; preds = %93, %67, %50
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i32 @task_lock(%struct.task_struct*) #1

declare dso_local i32 @get_css_set(%struct.css_set*) #1

declare dso_local i32 @task_unlock(%struct.task_struct*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.css_set* @find_existing_css_set(%struct.css_set*, %struct.cgroup*, %struct.cgroup_subsys_state**) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @read_unlock(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @might_sleep(...) #1

declare dso_local %struct.css_set* @find_css_set(%struct.css_set*, %struct.cgroup*) #1

declare dso_local i32 @put_css_set(%struct.css_set*) #1

declare dso_local i32 @rcu_assign_pointer(%struct.css_set*, %struct.css_set*) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
