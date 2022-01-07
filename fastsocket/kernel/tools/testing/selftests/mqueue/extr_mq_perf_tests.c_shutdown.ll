; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/testing/selftests/mqueue/extr_mq_perf_tests.c_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/testing/selftests/mqueue/extr_mq_perf_tests.c_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@shutdown.in_shutdown = internal global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@num_cpus_to_pin = common dso_local global i32 0, align 4
@cpu_threads = common dso_local global i64* null, align 8
@SIGUSR1 = common dso_local global i32 0, align 4
@queue = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"mq_close() during shutdown\00", align 1
@queue_path = common dso_local global i64 0, align 8
@saved_max_msgs = common dso_local global i64 0, align 8
@max_msgs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to restore saved_max_msgs\00", align 1
@saved_max_msgsize = common dso_local global i64 0, align 8
@max_msgsize = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"failed to restore saved_max_msgsize\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%s at %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @shutdown(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @errno, align 4
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* @shutdown.in_shutdown, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @shutdown.in_shutdown, align 4
  %12 = icmp ne i32 %10, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  ret void

14:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %41, %14
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @num_cpus_to_pin, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %44

19:                                               ; preds = %15
  %20 = load i64*, i64** @cpu_threads, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %19
  %27 = load i64*, i64** @cpu_threads, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* @SIGUSR1, align 4
  %33 = call i32 @pthread_kill(i64 %31, i32 %32)
  %34 = load i64*, i64** @cpu_threads, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @pthread_join(i64 %38, i32* null)
  br label %40

40:                                               ; preds = %26, %19
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %15

44:                                               ; preds = %15
  %45 = load i32, i32* @queue, align 4
  %46 = icmp ne i32 %45, -1
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load i32, i32* @queue, align 4
  %49 = call i64 @mq_close(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = call i32 @perror(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %47
  br label %54

54:                                               ; preds = %53, %44
  %55 = load i64, i64* @queue_path, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i64, i64* @queue_path, align 8
  %59 = call i32 @mq_unlink(i64 %58)
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i64, i64* @saved_max_msgs, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load i32, i32* @max_msgs, align 4
  %65 = load i64, i64* @saved_max_msgs, align 8
  %66 = call i32 @__set(i32 %64, i64 %65, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %67

67:                                               ; preds = %63, %60
  %68 = load i64, i64* @saved_max_msgsize, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load i32, i32* @max_msgsize, align 4
  %72 = load i64, i64* @saved_max_msgsize, align 8
  %73 = call i32 @__set(i32 %71, i64 %72, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %74

74:                                               ; preds = %70, %67
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load i8*, i8** %5, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @error(i32 %78, i32 %79, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %80, i32 %81)
  br label %83

83:                                               ; preds = %77, %74
  %84 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @pthread_kill(i64, i32) #1

declare dso_local i32 @pthread_join(i64, i32*) #1

declare dso_local i64 @mq_close(i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @mq_unlink(i64) #1

declare dso_local i32 @__set(i32, i64, i8*) #1

declare dso_local i32 @error(i32, i32, i8*, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
