; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/testing/selftests/mqueue/extr_mq_open_tests.c_validate_current_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/testing/selftests/mqueue/extr_mq_open_tests.c_validate_current_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@cur_limits = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str = private unnamed_addr constant [86 x i8] c"Current rlimit value for POSIX message queue bytes is unreasonably low,\0Aincreasing.\0A\0A\00", align 1
@RLIMIT_MSGQUEUE = common dso_local global i32 0, align 4
@default_settings = common dso_local global i64 0, align 8
@cur_def_msgs = common dso_local global i32 0, align 4
@cur_def_msgsize = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [108 x i8] c"Temporarily lowering default queue parameters to something that will work\0Awith the current rlimit values.\0A\0A\00", align 1
@def_msgs = common dso_local global i32 0, align 4
@def_msgsize = common dso_local global i32 0, align 4
@cur_max_msgs = common dso_local global i32 0, align 4
@cur_max_msgsize = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [204 x i8] c"Temporarily lowering maximum queue parameters to something that will work\0Awith the current rlimit values in case this is a kernel that ties the default\0Aqueue parameters to the maximum queue parameters.\0A\0A\00", align 1
@max_msgs = common dso_local global i32 0, align 4
@max_msgsize = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @validate_current_settings() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cur_limits, i32 0, i32 0), align 4
  %3 = icmp slt i32 %2, 4096
  br i1 %3, label %4, label %8

4:                                                ; preds = %0
  %5 = call i32 @printf(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0))
  store i32 8192, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cur_limits, i32 0, i32 0), align 4
  store i32 16384, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cur_limits, i32 0, i32 1), align 4
  %6 = load i32, i32* @RLIMIT_MSGQUEUE, align 4
  %7 = call i32 @setr(i32 %6, %struct.TYPE_3__* @cur_limits)
  br label %8

8:                                                ; preds = %4, %0
  %9 = load i64, i64* @default_settings, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %8
  %12 = load i32, i32* @cur_def_msgs, align 4
  %13 = add nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = load i32, i32* @cur_def_msgsize, align 4
  %16 = add nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = add i64 %17, 16
  %19 = mul i64 %14, %18
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %1, align 4
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cur_limits, i32 0, i32 0), align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %11
  %25 = call i32 @printf(i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @def_msgs, align 4
  %27 = call i32 @set(i32 %26, i32 10)
  store i32 10, i32* @cur_def_msgs, align 4
  %28 = load i32, i32* @def_msgsize, align 4
  %29 = call i32 @set(i32 %28, i32 128)
  store i32 128, i32* @cur_def_msgsize, align 4
  br label %30

30:                                               ; preds = %24, %11
  br label %51

31:                                               ; preds = %8
  %32 = load i32, i32* @cur_max_msgs, align 4
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = load i32, i32* @cur_max_msgsize, align 4
  %36 = add nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = add i64 %37, 16
  %39 = mul i64 %34, %38
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %1, align 4
  %41 = load i32, i32* %1, align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cur_limits, i32 0, i32 0), align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %31
  %45 = call i32 @printf(i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32, i32* @max_msgs, align 4
  %47 = call i32 @set(i32 %46, i32 10)
  store i32 10, i32* @cur_max_msgs, align 4
  %48 = load i32, i32* @max_msgsize, align 4
  %49 = call i32 @set(i32 %48, i32 128)
  store i32 128, i32* @cur_max_msgsize, align 4
  br label %50

50:                                               ; preds = %44, %31
  br label %51

51:                                               ; preds = %50, %30
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @setr(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
