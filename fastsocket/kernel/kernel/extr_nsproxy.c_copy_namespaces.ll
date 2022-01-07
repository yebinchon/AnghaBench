; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_nsproxy.c_copy_namespaces.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_nsproxy.c_copy_namespaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.nsproxy*, i32 }
%struct.nsproxy = type { i32 }

@CLONE_NEWNS = common dso_local global i64 0, align 8
@CLONE_NEWUTS = common dso_local global i64 0, align 8
@CLONE_NEWIPC = common dso_local global i64 0, align 8
@CLONE_NEWPID = common dso_local global i64 0, align 8
@CLONE_NEWNET = common dso_local global i64 0, align 8
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@CLONE_SYSVSEM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_namespaces(i64 %0, %struct.task_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca %struct.nsproxy*, align 8
  %7 = alloca %struct.nsproxy*, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.task_struct* %1, %struct.task_struct** %5, align 8
  %9 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %10 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %9, i32 0, i32 0
  %11 = load %struct.nsproxy*, %struct.nsproxy** %10, align 8
  store %struct.nsproxy* %11, %struct.nsproxy** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.nsproxy*, %struct.nsproxy** %6, align 8
  %13 = icmp ne %struct.nsproxy* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %72

15:                                               ; preds = %2
  %16 = load %struct.nsproxy*, %struct.nsproxy** %6, align 8
  %17 = call i32 @get_nsproxy(%struct.nsproxy* %16)
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @CLONE_NEWNS, align 8
  %20 = load i64, i64* @CLONE_NEWUTS, align 8
  %21 = or i64 %19, %20
  %22 = load i64, i64* @CLONE_NEWIPC, align 8
  %23 = or i64 %21, %22
  %24 = load i64, i64* @CLONE_NEWPID, align 8
  %25 = or i64 %23, %24
  %26 = load i64, i64* @CLONE_NEWNET, align 8
  %27 = or i64 %25, %26
  %28 = and i64 %18, %27
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %72

31:                                               ; preds = %15
  %32 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %33 = call i32 @capable(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @EPERM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %8, align 4
  br label %68

38:                                               ; preds = %31
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* @CLONE_NEWIPC, align 8
  %41 = and i64 %39, %40
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* @CLONE_SYSVSEM, align 8
  %46 = and i64 %44, %45
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %8, align 4
  br label %68

51:                                               ; preds = %43, %38
  %52 = load i64, i64* %4, align 8
  %53 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %54 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %55 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call %struct.nsproxy* @create_new_namespaces(i64 %52, %struct.task_struct* %53, i32 %56)
  store %struct.nsproxy* %57, %struct.nsproxy** %7, align 8
  %58 = load %struct.nsproxy*, %struct.nsproxy** %7, align 8
  %59 = call i64 @IS_ERR(%struct.nsproxy* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %51
  %62 = load %struct.nsproxy*, %struct.nsproxy** %7, align 8
  %63 = call i32 @PTR_ERR(%struct.nsproxy* %62)
  store i32 %63, i32* %8, align 4
  br label %68

64:                                               ; preds = %51
  %65 = load %struct.nsproxy*, %struct.nsproxy** %7, align 8
  %66 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %67 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %66, i32 0, i32 0
  store %struct.nsproxy* %65, %struct.nsproxy** %67, align 8
  br label %68

68:                                               ; preds = %64, %61, %48, %35
  %69 = load %struct.nsproxy*, %struct.nsproxy** %6, align 8
  %70 = call i32 @put_nsproxy(%struct.nsproxy* %69)
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %68, %30, %14
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @get_nsproxy(%struct.nsproxy*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local %struct.nsproxy* @create_new_namespaces(i64, %struct.task_struct*, i32) #1

declare dso_local i64 @IS_ERR(%struct.nsproxy*) #1

declare dso_local i32 @PTR_ERR(%struct.nsproxy*) #1

declare dso_local i32 @put_nsproxy(%struct.nsproxy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
