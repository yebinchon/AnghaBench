; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_nsproxy.c_unshare_nsproxy_namespaces.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_nsproxy.c_unshare_nsproxy_namespaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.fs_struct* }
%struct.fs_struct = type { i32 }
%struct.nsproxy = type { i32 }

@CLONE_NEWNS = common dso_local global i64 0, align 8
@CLONE_NEWUTS = common dso_local global i64 0, align 8
@CLONE_NEWIPC = common dso_local global i64 0, align 8
@CLONE_NEWNET = common dso_local global i64 0, align 8
@CLONE_NEWPID = common dso_local global i64 0, align 8
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unshare_nsproxy_namespaces(i64 %0, %struct.nsproxy** %1, %struct.fs_struct* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.nsproxy**, align 8
  %7 = alloca %struct.fs_struct*, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store %struct.nsproxy** %1, %struct.nsproxy*** %6, align 8
  store %struct.fs_struct* %2, %struct.fs_struct** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @CLONE_NEWNS, align 8
  %11 = load i64, i64* @CLONE_NEWUTS, align 8
  %12 = or i64 %10, %11
  %13 = load i64, i64* @CLONE_NEWIPC, align 8
  %14 = or i64 %12, %13
  %15 = load i64, i64* @CLONE_NEWNET, align 8
  %16 = or i64 %14, %15
  %17 = load i64, i64* @CLONE_NEWPID, align 8
  %18 = or i64 %16, %17
  %19 = and i64 %9, %18
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %66

22:                                               ; preds = %3
  %23 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %24 = call i32 @capable(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @EPERM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %66

29:                                               ; preds = %22
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %32 = load %struct.fs_struct*, %struct.fs_struct** %7, align 8
  %33 = icmp ne %struct.fs_struct* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load %struct.fs_struct*, %struct.fs_struct** %7, align 8
  br label %40

36:                                               ; preds = %29
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.fs_struct*, %struct.fs_struct** %38, align 8
  br label %40

40:                                               ; preds = %36, %34
  %41 = phi %struct.fs_struct* [ %35, %34 ], [ %39, %36 ]
  %42 = call %struct.nsproxy* @create_new_namespaces(i64 %30, %struct.TYPE_5__* %31, %struct.fs_struct* %41)
  %43 = load %struct.nsproxy**, %struct.nsproxy*** %6, align 8
  store %struct.nsproxy* %42, %struct.nsproxy** %43, align 8
  %44 = load %struct.nsproxy**, %struct.nsproxy*** %6, align 8
  %45 = load %struct.nsproxy*, %struct.nsproxy** %44, align 8
  %46 = call i64 @IS_ERR(%struct.nsproxy* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load %struct.nsproxy**, %struct.nsproxy*** %6, align 8
  %50 = load %struct.nsproxy*, %struct.nsproxy** %49, align 8
  %51 = call i32 @PTR_ERR(%struct.nsproxy* %50)
  store i32 %51, i32* %8, align 4
  br label %64

52:                                               ; preds = %40
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %55 = call i32 @task_pid(%struct.TYPE_5__* %54)
  %56 = call i32 @ns_cgroup_clone(%struct.TYPE_5__* %53, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load %struct.nsproxy**, %struct.nsproxy*** %6, align 8
  %61 = load %struct.nsproxy*, %struct.nsproxy** %60, align 8
  %62 = call i32 @put_nsproxy(%struct.nsproxy* %61)
  br label %63

63:                                               ; preds = %59, %52
  br label %64

64:                                               ; preds = %63, %48
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %64, %26, %21
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @capable(i32) #1

declare dso_local %struct.nsproxy* @create_new_namespaces(i64, %struct.TYPE_5__*, %struct.fs_struct*) #1

declare dso_local i64 @IS_ERR(%struct.nsproxy*) #1

declare dso_local i32 @PTR_ERR(%struct.nsproxy*) #1

declare dso_local i32 @ns_cgroup_clone(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @task_pid(%struct.TYPE_5__*) #1

declare dso_local i32 @put_nsproxy(%struct.nsproxy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
