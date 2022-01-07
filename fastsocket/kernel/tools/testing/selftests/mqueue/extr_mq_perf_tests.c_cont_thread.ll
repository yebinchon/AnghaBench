; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/testing/selftests/mqueue/extr_mq_perf_tests.c_cont_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/testing/selftests/mqueue/extr_mq_perf_tests.c_cont_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSG_SIZE = common dso_local global i32 0, align 4
@num_cpus_to_pin = common dso_local global i32 0, align 4
@cpu_threads = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [46 x i8] c"\09Started continuous mode thread %d on CPU %d\0A\00", align 1
@cpus_to_pin = common dso_local global i32* null, align 8
@queue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @cont_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i32, i32* @MSG_SIZE, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %25, %1
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @num_cpus_to_pin, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %11
  %16 = load i64*, i64** @cpu_threads, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = call i64 (...) @pthread_self()
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %28

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %11

28:                                               ; preds = %23, %11
  %29 = load i32, i32* %5, align 4
  %30 = load i32*, i32** @cpus_to_pin, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %34)
  br label %36

36:                                               ; preds = %44, %28
  br label %37

37:                                               ; preds = %36
  br label %38

38:                                               ; preds = %43, %37
  %39 = load i32, i32* @queue, align 4
  %40 = trunc i64 %8 to i32
  %41 = call i64 @mq_send(i32 %39, i8* %10, i32 %40, i32 0)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %38

44:                                               ; preds = %38
  %45 = load i32, i32* @queue, align 4
  %46 = trunc i64 %8 to i32
  %47 = call i32 @mq_receive(i32 %45, i8* %10, i32 %46, i32* %6)
  br label %36
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @pthread_self(...) #2

declare dso_local i32 @printf(i8*, i32, i32) #2

declare dso_local i64 @mq_send(i32, i8*, i32, i32) #2

declare dso_local i32 @mq_receive(i32, i8*, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
