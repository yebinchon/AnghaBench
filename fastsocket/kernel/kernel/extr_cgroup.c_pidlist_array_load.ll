; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_pidlist_array_load.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_pidlist_array_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup = type { i32 }
%struct.cgroup_pidlist = type { i32*, i32, i32, i32 }
%struct.cgroup_iter = type { i32 }
%struct.task_struct = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@CGROUP_FILE_PROCS = common dso_local global i32 0, align 4
@cmppid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cgroup*, i32, %struct.cgroup_pidlist**)* @pidlist_array_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pidlist_array_load(%struct.cgroup* %0, i32 %1, %struct.cgroup_pidlist** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cgroup*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cgroup_pidlist**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.cgroup_iter, align 4
  %13 = alloca %struct.task_struct*, align 8
  %14 = alloca %struct.cgroup_pidlist*, align 8
  store %struct.cgroup* %0, %struct.cgroup** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.cgroup_pidlist** %2, %struct.cgroup_pidlist*** %7, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %16 = call i32 @cgroup_task_count(%struct.cgroup* %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i32* @pidlist_allocate(i32 %17)
  store i32* %18, i32** %8, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %105

24:                                               ; preds = %3
  %25 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %26 = call i32 @cgroup_iter_start(%struct.cgroup* %25, %struct.cgroup_iter* %12)
  br label %27

27:                                               ; preds = %59, %24
  %28 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %29 = call %struct.task_struct* @cgroup_iter_next(%struct.cgroup* %28, %struct.cgroup_iter* %12)
  store %struct.task_struct* %29, %struct.task_struct** %13, align 8
  %30 = icmp ne %struct.task_struct* %29, null
  br i1 %30, label %31, label %60

31:                                               ; preds = %27
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %60

39:                                               ; preds = %31
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @CGROUP_FILE_PROCS, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load %struct.task_struct*, %struct.task_struct** %13, align 8
  %45 = call i32 @task_tgid_vnr(%struct.task_struct* %44)
  store i32 %45, i32* %10, align 4
  br label %49

46:                                               ; preds = %39
  %47 = load %struct.task_struct*, %struct.task_struct** %13, align 8
  %48 = call i32 @task_pid_vnr(%struct.task_struct* %47)
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %46, %43
  %50 = load i32, i32* %10, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load i32, i32* %10, align 4
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %11, align 4
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  store i32 %53, i32* %58, align 4
  br label %59

59:                                               ; preds = %52, %49
  br label %27

60:                                               ; preds = %38, %27
  %61 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %62 = call i32 @cgroup_iter_end(%struct.cgroup* %61, %struct.cgroup_iter* %12)
  %63 = load i32, i32* %11, align 4
  store i32 %63, i32* %9, align 4
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @cmppid, align 4
  %67 = call i32 @sort(i32* %64, i32 %65, i32 4, i32 %66, i32* null)
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @CGROUP_FILE_PROCS, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %60
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @pidlist_uniq(i32** %8, i32 %72)
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %71, %60
  %75 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call %struct.cgroup_pidlist* @cgroup_pidlist_find(%struct.cgroup* %75, i32 %76)
  store %struct.cgroup_pidlist* %77, %struct.cgroup_pidlist** %14, align 8
  %78 = load %struct.cgroup_pidlist*, %struct.cgroup_pidlist** %14, align 8
  %79 = icmp ne %struct.cgroup_pidlist* %78, null
  br i1 %79, label %85, label %80

80:                                               ; preds = %74
  %81 = load i32*, i32** %8, align 8
  %82 = call i32 @pidlist_free(i32* %81)
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %105

85:                                               ; preds = %74
  %86 = load %struct.cgroup_pidlist*, %struct.cgroup_pidlist** %14, align 8
  %87 = getelementptr inbounds %struct.cgroup_pidlist, %struct.cgroup_pidlist* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @pidlist_free(i32* %88)
  %90 = load i32*, i32** %8, align 8
  %91 = load %struct.cgroup_pidlist*, %struct.cgroup_pidlist** %14, align 8
  %92 = getelementptr inbounds %struct.cgroup_pidlist, %struct.cgroup_pidlist* %91, i32 0, i32 0
  store i32* %90, i32** %92, align 8
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.cgroup_pidlist*, %struct.cgroup_pidlist** %14, align 8
  %95 = getelementptr inbounds %struct.cgroup_pidlist, %struct.cgroup_pidlist* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 8
  %96 = load %struct.cgroup_pidlist*, %struct.cgroup_pidlist** %14, align 8
  %97 = getelementptr inbounds %struct.cgroup_pidlist, %struct.cgroup_pidlist* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 8
  %100 = load %struct.cgroup_pidlist*, %struct.cgroup_pidlist** %14, align 8
  %101 = getelementptr inbounds %struct.cgroup_pidlist, %struct.cgroup_pidlist* %100, i32 0, i32 2
  %102 = call i32 @up_write(i32* %101)
  %103 = load %struct.cgroup_pidlist*, %struct.cgroup_pidlist** %14, align 8
  %104 = load %struct.cgroup_pidlist**, %struct.cgroup_pidlist*** %7, align 8
  store %struct.cgroup_pidlist* %103, %struct.cgroup_pidlist** %104, align 8
  store i32 0, i32* %4, align 4
  br label %105

105:                                              ; preds = %85, %80, %21
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @cgroup_task_count(%struct.cgroup*) #1

declare dso_local i32* @pidlist_allocate(i32) #1

declare dso_local i32 @cgroup_iter_start(%struct.cgroup*, %struct.cgroup_iter*) #1

declare dso_local %struct.task_struct* @cgroup_iter_next(%struct.cgroup*, %struct.cgroup_iter*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @task_tgid_vnr(%struct.task_struct*) #1

declare dso_local i32 @task_pid_vnr(%struct.task_struct*) #1

declare dso_local i32 @cgroup_iter_end(%struct.cgroup*, %struct.cgroup_iter*) #1

declare dso_local i32 @sort(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @pidlist_uniq(i32**, i32) #1

declare dso_local %struct.cgroup_pidlist* @cgroup_pidlist_find(%struct.cgroup*, i32) #1

declare dso_local i32 @pidlist_free(i32*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
