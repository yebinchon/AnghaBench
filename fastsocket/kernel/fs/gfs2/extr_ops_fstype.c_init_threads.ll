; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_ops_fstype.c_init_threads.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_ops_fstype.c_init_threads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { %struct.task_struct*, %struct.task_struct*, i32 }
%struct.task_struct = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@gfs2_logd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"gfs2_logd\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"can't start logd thread: %d\0A\00", align 1
@gfs2_quotad = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"gfs2_quotad\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"can't start quotad thread: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_sbd*, i32)* @init_threads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_threads(%struct.gfs2_sbd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gfs2_sbd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca i32, align 4
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %46

11:                                               ; preds = %2
  %12 = load i32, i32* @jiffies, align 4
  %13 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %14 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* @gfs2_logd, align 4
  %16 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %17 = call %struct.task_struct* @kthread_run(i32 %15, %struct.gfs2_sbd* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store %struct.task_struct* %17, %struct.task_struct** %6, align 8
  %18 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %19 = call i32 @IS_ERR(%struct.task_struct* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %11
  %23 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @fs_err(%struct.gfs2_sbd* %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %57

27:                                               ; preds = %11
  %28 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %29 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %30 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %29, i32 0, i32 0
  store %struct.task_struct* %28, %struct.task_struct** %30, align 8
  %31 = load i32, i32* @gfs2_quotad, align 4
  %32 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %33 = call %struct.task_struct* @kthread_run(i32 %31, %struct.gfs2_sbd* %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store %struct.task_struct* %33, %struct.task_struct** %6, align 8
  %34 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %35 = call i32 @IS_ERR(%struct.task_struct* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %27
  %39 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @fs_err(%struct.gfs2_sbd* %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  br label %51

42:                                               ; preds = %27
  %43 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %44 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %45 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %44, i32 0, i32 1
  store %struct.task_struct* %43, %struct.task_struct** %45, align 8
  store i32 0, i32* %3, align 4
  br label %57

46:                                               ; preds = %10
  %47 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %48 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %47, i32 0, i32 1
  %49 = load %struct.task_struct*, %struct.task_struct** %48, align 8
  %50 = call i32 @kthread_stop(%struct.task_struct* %49)
  br label %51

51:                                               ; preds = %46, %38
  %52 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %53 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %52, i32 0, i32 0
  %54 = load %struct.task_struct*, %struct.task_struct** %53, align 8
  %55 = call i32 @kthread_stop(%struct.task_struct* %54)
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %51, %42, %22
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.task_struct* @kthread_run(i32, %struct.gfs2_sbd*, i8*) #1

declare dso_local i32 @IS_ERR(%struct.task_struct*) #1

declare dso_local i32 @fs_err(%struct.gfs2_sbd*, i8*, i32) #1

declare dso_local i32 @kthread_stop(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
