; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sys.c_set_one_prio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sys.c_set_one_prio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.cred = type { i64, i64 }

@CAP_SYS_NICE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, i32, i32)* @set_one_prio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_one_prio(%struct.task_struct* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cred*, align 8
  %8 = alloca %struct.cred*, align 8
  %9 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %10, %struct.cred** %7, align 8
  %11 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %12 = call %struct.cred* @__task_cred(%struct.task_struct* %11)
  store %struct.cred* %12, %struct.cred** %8, align 8
  %13 = load %struct.cred*, %struct.cred** %8, align 8
  %14 = getelementptr inbounds %struct.cred, %struct.cred* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.cred*, %struct.cred** %7, align 8
  %17 = getelementptr inbounds %struct.cred, %struct.cred* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %15, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %3
  %21 = load %struct.cred*, %struct.cred** %8, align 8
  %22 = getelementptr inbounds %struct.cred, %struct.cred* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.cred*, %struct.cred** %7, align 8
  %25 = getelementptr inbounds %struct.cred, %struct.cred* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %20
  %29 = load i32, i32* @CAP_SYS_NICE, align 4
  %30 = call i32 @capable(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* @EPERM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %66

35:                                               ; preds = %28, %20, %3
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %38 = call i32 @task_nice(%struct.task_struct* %37)
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @can_nice(%struct.task_struct* %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @EACCES, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  br label %66

48:                                               ; preds = %40, %35
  %49 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @security_task_setnice(%struct.task_struct* %49, i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %6, align 4
  br label %66

56:                                               ; preds = %48
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @ESRCH, align 4
  %59 = sub nsw i32 0, %58
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i32 0, i32* %6, align 4
  br label %62

62:                                               ; preds = %61, %56
  %63 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @set_user_nice(%struct.task_struct* %63, i32 %64)
  br label %66

66:                                               ; preds = %62, %54, %45, %32
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local %struct.cred* @__task_cred(%struct.task_struct*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @task_nice(%struct.task_struct*) #1

declare dso_local i32 @can_nice(%struct.task_struct*, i32) #1

declare dso_local i32 @security_task_setnice(%struct.task_struct*, i32) #1

declare dso_local i32 @set_user_nice(%struct.task_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
