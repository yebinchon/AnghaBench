; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rtmutex-tester.c_init_rttest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rtmutex-tester.c_init_rttest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@rttest_lock = common dso_local global i32 0, align 4
@MAX_RT_TEST_MUTEXES = common dso_local global i32 0, align 4
@mutexes = common dso_local global i32* null, align 8
@rttest_sysclass = common dso_local global i32 0, align 4
@MAX_RT_TEST_THREADS = common dso_local global i32 0, align 4
@thread_data = common dso_local global %struct.TYPE_2__* null, align 8
@attr_status = common dso_local global i32 0, align 4
@attr_command = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Initializing RT-Tester: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Failed\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @init_rttest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_rttest() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 @spin_lock_init(i32* @rttest_lock)
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %15, %0
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @MAX_RT_TEST_MUTEXES, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %18

9:                                                ; preds = %5
  %10 = load i32*, i32** @mutexes, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = call i32 @rt_mutex_init(i32* %13)
  br label %15

15:                                               ; preds = %9
  %16 = load i32, i32* %3, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %3, align 4
  br label %5

18:                                               ; preds = %5
  %19 = call i32 @sysdev_class_register(i32* @rttest_sysclass)
  store i32 %19, i32* %2, align 4
  %20 = load i32, i32* %2, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* %2, align 4
  store i32 %23, i32* %1, align 4
  br label %66

24:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %56, %24
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @MAX_RT_TEST_THREADS, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %59

29:                                               ; preds = %25
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @init_test_thread(i32 %30)
  store i32 %31, i32* %2, align 4
  %32 = load i32, i32* %2, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %59

35:                                               ; preds = %29
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @thread_data, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 @sysdev_create_file(i32* %40, i32* @attr_status)
  store i32 %41, i32* %2, align 4
  %42 = load i32, i32* %2, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %59

45:                                               ; preds = %35
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @thread_data, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = call i32 @sysdev_create_file(i32* %50, i32* @attr_command)
  store i32 %51, i32* %2, align 4
  %52 = load i32, i32* %2, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  br label %59

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %25

59:                                               ; preds = %54, %44, %34, %25
  %60 = load i32, i32* %2, align 4
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %64 = call i32 @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %63)
  %65 = load i32, i32* %2, align 4
  store i32 %65, i32* %1, align 4
  br label %66

66:                                               ; preds = %59, %22
  %67 = load i32, i32* %1, align 4
  ret i32 %67
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @rt_mutex_init(i32*) #1

declare dso_local i32 @sysdev_class_register(i32*) #1

declare dso_local i32 @init_test_thread(i32) #1

declare dso_local i32 @sysdev_create_file(i32*, i32*) #1

declare dso_local i32 @printk(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
