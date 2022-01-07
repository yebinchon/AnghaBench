; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_cgroup_exit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_cgroup_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.css_set = type { i32* }
%struct.cgroup_subsys = type { i32 (%struct.cgroup_subsys*, %struct.cgroup*, %struct.cgroup*, %struct.task_struct*)* }
%struct.cgroup = type opaque
%struct.task_struct = type { %struct.css_set*, i32 }
%struct.cgroup.0 = type { i32 }
%struct.TYPE_2__ = type { %struct.cgroup.0* }

@css_set_lock = common dso_local global i32 0, align 4
@init_css_set = common dso_local global %struct.css_set zeroinitializer, align 8
@need_forkexit_callback = common dso_local global i64 0, align 8
@CGROUP_SUBSYS_COUNT = common dso_local global i32 0, align 4
@subsys = common dso_local global %struct.cgroup_subsys** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cgroup_exit(%struct.task_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.css_set*, align 8
  %7 = alloca %struct.cgroup_subsys*, align 8
  %8 = alloca %struct.cgroup.0*, align 8
  %9 = alloca %struct.cgroup.0*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %11 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %10, i32 0, i32 1
  %12 = call i32 @list_empty(i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %2
  %15 = call i32 @write_lock(i32* @css_set_lock)
  %16 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %17 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %16, i32 0, i32 1
  %18 = call i32 @list_empty(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %14
  %21 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %22 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %21, i32 0, i32 1
  %23 = call i32 @list_del(i32* %22)
  br label %24

24:                                               ; preds = %20, %14
  %25 = call i32 @write_unlock(i32* @css_set_lock)
  br label %26

26:                                               ; preds = %24, %2
  %27 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %28 = call i32 @task_lock(%struct.task_struct* %27)
  %29 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %30 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %29, i32 0, i32 0
  %31 = load %struct.css_set*, %struct.css_set** %30, align 8
  store %struct.css_set* %31, %struct.css_set** %6, align 8
  %32 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %33 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %32, i32 0, i32 0
  store %struct.css_set* @init_css_set, %struct.css_set** %33, align 8
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %83

36:                                               ; preds = %26
  %37 = load i64, i64* @need_forkexit_callback, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %83

39:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %79, %39
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @CGROUP_SUBSYS_COUNT, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %82

44:                                               ; preds = %40
  %45 = load %struct.cgroup_subsys**, %struct.cgroup_subsys*** @subsys, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.cgroup_subsys*, %struct.cgroup_subsys** %45, i64 %47
  %49 = load %struct.cgroup_subsys*, %struct.cgroup_subsys** %48, align 8
  store %struct.cgroup_subsys* %49, %struct.cgroup_subsys** %7, align 8
  %50 = load %struct.cgroup_subsys*, %struct.cgroup_subsys** %7, align 8
  %51 = getelementptr inbounds %struct.cgroup_subsys, %struct.cgroup_subsys* %50, i32 0, i32 0
  %52 = load i32 (%struct.cgroup_subsys*, %struct.cgroup*, %struct.cgroup*, %struct.task_struct*)*, i32 (%struct.cgroup_subsys*, %struct.cgroup*, %struct.cgroup*, %struct.task_struct*)** %51, align 8
  %53 = icmp ne i32 (%struct.cgroup_subsys*, %struct.cgroup*, %struct.cgroup*, %struct.task_struct*)* %52, null
  br i1 %53, label %54, label %78

54:                                               ; preds = %44
  %55 = load %struct.css_set*, %struct.css_set** %6, align 8
  %56 = getelementptr inbounds %struct.css_set, %struct.css_set* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call %struct.TYPE_2__* @rcu_dereference(i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load %struct.cgroup.0*, %struct.cgroup.0** %63, align 8
  store %struct.cgroup.0* %64, %struct.cgroup.0** %8, align 8
  %65 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call %struct.cgroup.0* @task_cgroup(%struct.task_struct* %65, i32 %66)
  store %struct.cgroup.0* %67, %struct.cgroup.0** %9, align 8
  %68 = load %struct.cgroup_subsys*, %struct.cgroup_subsys** %7, align 8
  %69 = getelementptr inbounds %struct.cgroup_subsys, %struct.cgroup_subsys* %68, i32 0, i32 0
  %70 = load i32 (%struct.cgroup_subsys*, %struct.cgroup*, %struct.cgroup*, %struct.task_struct*)*, i32 (%struct.cgroup_subsys*, %struct.cgroup*, %struct.cgroup*, %struct.task_struct*)** %69, align 8
  %71 = load %struct.cgroup_subsys*, %struct.cgroup_subsys** %7, align 8
  %72 = load %struct.cgroup.0*, %struct.cgroup.0** %9, align 8
  %73 = bitcast %struct.cgroup.0* %72 to %struct.cgroup*
  %74 = load %struct.cgroup.0*, %struct.cgroup.0** %8, align 8
  %75 = bitcast %struct.cgroup.0* %74 to %struct.cgroup*
  %76 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %77 = call i32 %70(%struct.cgroup_subsys* %71, %struct.cgroup* %73, %struct.cgroup* %75, %struct.task_struct* %76)
  br label %78

78:                                               ; preds = %54, %44
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %5, align 4
  br label %40

82:                                               ; preds = %40
  br label %83

83:                                               ; preds = %82, %36, %26
  %84 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %85 = call i32 @task_unlock(%struct.task_struct* %84)
  %86 = load %struct.css_set*, %struct.css_set** %6, align 8
  %87 = icmp ne %struct.css_set* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load %struct.css_set*, %struct.css_set** %6, align 8
  %90 = call i32 @put_css_set_taskexit(%struct.css_set* %89)
  br label %91

91:                                               ; preds = %88, %83
  ret void
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @task_lock(%struct.task_struct*) #1

declare dso_local %struct.TYPE_2__* @rcu_dereference(i32) #1

declare dso_local %struct.cgroup.0* @task_cgroup(%struct.task_struct*, i32) #1

declare dso_local i32 @task_unlock(%struct.task_struct*) #1

declare dso_local i32 @put_css_set_taskexit(%struct.css_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
