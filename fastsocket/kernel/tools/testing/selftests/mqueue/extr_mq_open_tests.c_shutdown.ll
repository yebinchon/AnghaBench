; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/testing/selftests/mqueue/extr_mq_open_tests.c_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/testing/selftests/mqueue/extr_mq_open_tests.c_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@shutdown.in_shutdown = internal global i32 0, align 4
@queue = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"mq_close() during shutdown\00", align 1
@queue_path = common dso_local global i64 0, align 8
@default_settings = common dso_local global i64 0, align 8
@saved_def_msgs = common dso_local global i64 0, align 8
@def_msgs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to restore saved_def_msgs\00", align 1
@saved_def_msgsize = common dso_local global i64 0, align 8
@def_msgsize = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"failed to restore saved_def_msgsize\00", align 1
@saved_max_msgs = common dso_local global i64 0, align 8
@max_msgs = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"failed to restore saved_max_msgs\00", align 1
@saved_max_msgsize = common dso_local global i64 0, align 8
@max_msgsize = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"failed to restore saved_max_msgsize\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"%s at %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @shutdown(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @shutdown.in_shutdown, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* @shutdown.in_shutdown, align 4
  %9 = icmp ne i32 %7, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  ret void

11:                                               ; preds = %3
  %12 = call i32 @seteuid(i32 0)
  %13 = load i32, i32* @queue, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = load i32, i32* @queue, align 4
  %17 = call i64 @mq_close(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = call i32 @perror(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %15
  br label %22

22:                                               ; preds = %21, %11
  %23 = load i64, i64* @queue_path, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i64, i64* @queue_path, align 8
  %27 = call i32 @mq_unlink(i64 %26)
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i64, i64* @default_settings, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %28
  %32 = load i64, i64* @saved_def_msgs, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32, i32* @def_msgs, align 4
  %36 = load i64, i64* @saved_def_msgs, align 8
  %37 = call i32 @__set(i32 %35, i64 %36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %34, %31
  %39 = load i64, i64* @saved_def_msgsize, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* @def_msgsize, align 4
  %43 = load i64, i64* @saved_def_msgsize, align 8
  %44 = call i32 @__set(i32 %42, i64 %43, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %45

45:                                               ; preds = %41, %38
  br label %46

46:                                               ; preds = %45, %28
  %47 = load i64, i64* @saved_max_msgs, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i32, i32* @max_msgs, align 4
  %51 = load i64, i64* @saved_max_msgs, align 8
  %52 = call i32 @__set(i32 %50, i64 %51, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %53

53:                                               ; preds = %49, %46
  %54 = load i64, i64* @saved_max_msgsize, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i32, i32* @max_msgsize, align 4
  %58 = load i64, i64* @saved_max_msgsize, align 8
  %59 = call i32 @__set(i32 %57, i64 %58, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %60

60:                                               ; preds = %56, %53
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @errno, align 4
  %66 = load i8*, i8** %5, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @error(i32 %64, i32 %65, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %66, i32 %67)
  br label %69

69:                                               ; preds = %63, %60
  %70 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @seteuid(i32) #1

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
