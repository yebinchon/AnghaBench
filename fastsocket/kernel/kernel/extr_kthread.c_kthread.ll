; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_kthread.c_kthread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_kthread.c_kthread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.kthread_create_info = type { i32 (i8*)*, i32, %struct.TYPE_2__*, i8* }
%struct.kthread = type { i64, i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @kthread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kthread(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.kthread_create_info*, align 8
  %5 = alloca i32 (i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.kthread, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.kthread_create_info*
  store %struct.kthread_create_info* %10, %struct.kthread_create_info** %4, align 8
  %11 = load %struct.kthread_create_info*, %struct.kthread_create_info** %4, align 8
  %12 = getelementptr inbounds %struct.kthread_create_info, %struct.kthread_create_info* %11, i32 0, i32 0
  %13 = load i32 (i8*)*, i32 (i8*)** %12, align 8
  store i32 (i8*)* %13, i32 (i8*)** %5, align 8
  %14 = load %struct.kthread_create_info*, %struct.kthread_create_info** %4, align 8
  %15 = getelementptr inbounds %struct.kthread_create_info, %struct.kthread_create_info* %14, i32 0, i32 3
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %6, align 8
  %17 = getelementptr inbounds %struct.kthread, %struct.kthread* %7, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = getelementptr inbounds %struct.kthread, %struct.kthread* %7, i32 0, i32 1
  %19 = call i32 @init_completion(i32* %18)
  %20 = getelementptr inbounds %struct.kthread, %struct.kthread* %7, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32* %20, i32** %22, align 8
  %23 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %24 = call i32 @__set_current_state(i32 %23)
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %26 = load %struct.kthread_create_info*, %struct.kthread_create_info** %4, align 8
  %27 = getelementptr inbounds %struct.kthread_create_info, %struct.kthread_create_info* %26, i32 0, i32 2
  store %struct.TYPE_2__* %25, %struct.TYPE_2__** %27, align 8
  %28 = load %struct.kthread_create_info*, %struct.kthread_create_info** %4, align 8
  %29 = getelementptr inbounds %struct.kthread_create_info, %struct.kthread_create_info* %28, i32 0, i32 1
  %30 = call i32 @complete(i32* %29)
  %31 = call i32 (...) @schedule()
  %32 = load i32, i32* @EINTR, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %8, align 4
  %34 = getelementptr inbounds %struct.kthread, %struct.kthread* %7, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %1
  %38 = load i32 (i8*)*, i32 (i8*)** %5, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 %38(i8* %39)
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %37, %1
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @do_exit(i32 %42)
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @do_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
