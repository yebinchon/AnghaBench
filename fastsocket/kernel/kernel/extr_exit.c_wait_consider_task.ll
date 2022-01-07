; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_exit.c_wait_consider_task.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_exit.c_wait_consider_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wait_opts = type { i32 }
%struct.task_struct = type { i64 }

@EXIT_DEAD = common dso_local global i64 0, align 8
@EXIT_ZOMBIE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wait_opts*, i32, %struct.task_struct*)* @wait_consider_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_consider_task(%struct.wait_opts* %0, i32 %1, %struct.task_struct* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wait_opts*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca i32, align 4
  store %struct.wait_opts* %0, %struct.wait_opts** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.task_struct* %2, %struct.task_struct** %7, align 8
  %9 = load %struct.wait_opts*, %struct.wait_opts** %5, align 8
  %10 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %11 = call i32 @eligible_child(%struct.wait_opts* %9, %struct.task_struct* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %4, align 4
  br label %86

16:                                               ; preds = %3
  %17 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %18 = call i32 @security_task_wait(%struct.task_struct* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %16
  %25 = load %struct.wait_opts*, %struct.wait_opts** %5, align 8
  %26 = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.wait_opts*, %struct.wait_opts** %5, align 8
  %32 = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %29, %24
  store i32 0, i32* %4, align 4
  br label %86

34:                                               ; preds = %16
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i64 @likely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %34
  %42 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %43 = call i32 @task_ptrace(%struct.task_struct* %42)
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load %struct.wait_opts*, %struct.wait_opts** %5, align 8
  %48 = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %47, i32 0, i32 0
  store i32 0, i32* %48, align 4
  store i32 0, i32* %4, align 4
  br label %86

49:                                               ; preds = %41, %34
  %50 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %51 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @EXIT_DEAD, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %86

56:                                               ; preds = %49
  %57 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %58 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @EXIT_ZOMBIE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %56
  %63 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %64 = call i32 @delay_group_leader(%struct.task_struct* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load %struct.wait_opts*, %struct.wait_opts** %5, align 8
  %68 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %69 = call i32 @wait_task_zombie(%struct.wait_opts* %67, %struct.task_struct* %68)
  store i32 %69, i32* %4, align 4
  br label %86

70:                                               ; preds = %62, %56
  %71 = load %struct.wait_opts*, %struct.wait_opts** %5, align 8
  %72 = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %71, i32 0, i32 0
  store i32 0, i32* %72, align 4
  %73 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i64 @task_stopped_code(%struct.task_struct* %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %70
  %78 = load %struct.wait_opts*, %struct.wait_opts** %5, align 8
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %81 = call i32 @wait_task_stopped(%struct.wait_opts* %78, i32 %79, %struct.task_struct* %80)
  store i32 %81, i32* %4, align 4
  br label %86

82:                                               ; preds = %70
  %83 = load %struct.wait_opts*, %struct.wait_opts** %5, align 8
  %84 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %85 = call i32 @wait_task_continued(%struct.wait_opts* %83, %struct.task_struct* %84)
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %82, %77, %66, %55, %46, %33, %14
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @eligible_child(%struct.wait_opts*, %struct.task_struct*) #1

declare dso_local i32 @security_task_wait(%struct.task_struct*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @task_ptrace(%struct.task_struct*) #1

declare dso_local i32 @delay_group_leader(%struct.task_struct*) #1

declare dso_local i32 @wait_task_zombie(%struct.wait_opts*, %struct.task_struct*) #1

declare dso_local i64 @task_stopped_code(%struct.task_struct*, i32) #1

declare dso_local i32 @wait_task_stopped(%struct.wait_opts*, i32, %struct.task_struct*) #1

declare dso_local i32 @wait_task_continued(%struct.wait_opts*, %struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
