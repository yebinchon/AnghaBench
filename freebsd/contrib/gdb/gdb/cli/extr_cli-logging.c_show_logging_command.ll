; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-logging.c_show_logging_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-logging.c_show_logging_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@saved_filename = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"Currently logging to \22%s\22.\0A\00", align 1
@logging_filename = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Future logs will be written to %s.\0A\00", align 1
@logging_overwrite = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"Logs will overwrite the log file.\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Logs will be appended to the log file.\0A\00", align 1
@logging_redirect = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [43 x i8] c"Output will be sent only to the log file.\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Output will be logged and displayed.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_logging_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32*, i32** @saved_filename, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load i32*, i32** @saved_filename, align 8
  %9 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32* %8)
  br label %10

10:                                               ; preds = %7, %2
  %11 = load i32*, i32** @saved_filename, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* @logging_filename, align 4
  %15 = load i32*, i32** @saved_filename, align 8
  %16 = call i64 @strcmp(i32 %14, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13, %10
  %19 = load i32, i32* @logging_filename, align 4
  %20 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %18, %13
  %22 = load i64, i64* @logging_overwrite, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %28

26:                                               ; preds = %21
  %27 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %24
  %29 = load i64, i64* @logging_redirect, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  br label %35

33:                                               ; preds = %28
  %34 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %31
  ret void
}

declare dso_local i32 @printf_unfiltered(i8*, ...) #1

declare dso_local i64 @strcmp(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
