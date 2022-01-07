; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infttrace.c_call_ttrace.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infttrace.c_call_ttrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESRCH = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@saved_real_ptid = common dso_local global i32 0, align 4
@null_ptid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Unable to perform thread operation\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Thread request with no threads (%s)\00", align 1
@TT_LWP_RUREGS = common dso_local global i32 0, align 4
@TT_PROC_SETTRC = common dso_local global i32 0, align 4
@debug_on = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32)* @call_ttrace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @call_ttrace(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [100 x i8], align 16
  %17 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* @ESRCH, align 4
  store i32 %21, i32* @errno, align 4
  store i32 -1, i32* %6, align 4
  br label %78

22:                                               ; preds = %5
  %23 = call i32 (...) @any_thread_records()
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* @ESRCH, align 4
  store i32 %26, i32* @errno, align 4
  store i32 -1, i32* %6, align 4
  br label %78

27:                                               ; preds = %22
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @map_from_gdb_tid(i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @get_pid_for(i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp eq i32 0, %32
  br i1 %33, label %34, label %64

34:                                               ; preds = %27
  %35 = load i32, i32* %7, align 4
  %36 = call i64 @is_process_ttrace_request(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %59

38:                                               ; preds = %34
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @make_process_version(i32 %39)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %55

43:                                               ; preds = %38
  %44 = load i32, i32* @saved_real_ptid, align 4
  %45 = load i32, i32* @null_ptid, align 4
  %46 = call i64 @ptid_equal(i32 %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @saved_real_ptid, align 4
  %50 = call i32 @PIDGET(i32 %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %12, align 4
  br label %54

52:                                               ; preds = %43
  %53 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %48
  br label %58

55:                                               ; preds = %38
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %13, align 4
  store i32 0, i32* %12, align 4
  %57 = load i32, i32* %14, align 4
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %55, %54
  br label %63

59:                                               ; preds = %34
  %60 = load i32, i32* %7, align 4
  %61 = call i8* @get_printable_name_of_ttrace_request(i32 %60)
  %62 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %61)
  br label %63

63:                                               ; preds = %59, %58
  br label %64

64:                                               ; preds = %63, %27
  %65 = load i32, i32* %7, align 4
  %66 = call i64 @is_process_ttrace_request(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store i32 0, i32* %12, align 4
  br label %69

69:                                               ; preds = %68, %64
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @call_real_ttrace(i32 %70, i32 %71, i32 %72, i32 %73, i32 %74, i32 %75)
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %15, align 4
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %69, %25, %20
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

declare dso_local i32 @any_thread_records(...) #1

declare dso_local i32 @map_from_gdb_tid(i32) #1

declare dso_local i32 @get_pid_for(i32) #1

declare dso_local i64 @is_process_ttrace_request(i32) #1

declare dso_local i32 @make_process_version(i32) #1

declare dso_local i64 @ptid_equal(i32, i32) #1

declare dso_local i32 @PIDGET(i32) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i8* @get_printable_name_of_ttrace_request(i32) #1

declare dso_local i32 @call_real_ttrace(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
