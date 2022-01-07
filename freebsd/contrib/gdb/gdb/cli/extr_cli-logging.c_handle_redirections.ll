; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-logging.c_handle_redirections.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-logging.c_handle_redirections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_file = type { i32 }
%struct.TYPE_2__ = type { %struct.ui_file*, %struct.ui_file*, %struct.ui_file*, %struct.ui_file* }

@saved_filename = common dso_local global i32* null, align 8
@gdb_stdout = common dso_local global %struct.ui_file* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"Already logging to %s.\0A\00", align 1
@logging_filename = common dso_local global i32* null, align 8
@logging_overwrite = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"set logging\00", align 1
@logging_redirect = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"Copying output to %s.\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Redirecting output to %s.\0A\00", align 1
@saved_output = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@gdb_stderr = common dso_local global %struct.ui_file* null, align 8
@gdb_stdlog = common dso_local global %struct.ui_file* null, align 8
@gdb_stdtarg = common dso_local global %struct.ui_file* null, align 8
@uiout = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [53 x i8] c"Current output protocol does not support redirection\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @handle_redirections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_redirections(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ui_file*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32*, i32** @saved_filename, align 8
  %5 = icmp ne i32* %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load %struct.ui_file*, %struct.ui_file** @gdb_stdout, align 8
  %8 = load i32*, i32** @saved_filename, align 8
  %9 = call i32 @fprintf_unfiltered(%struct.ui_file* %7, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32* %8)
  br label %65

10:                                               ; preds = %1
  %11 = load i32*, i32** @logging_filename, align 8
  %12 = load i64, i64* @logging_overwrite, align 8
  %13 = icmp ne i64 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %16 = call %struct.ui_file* @gdb_fopen(i32* %11, i8* %15)
  store %struct.ui_file* %16, %struct.ui_file** %3, align 8
  %17 = load %struct.ui_file*, %struct.ui_file** %3, align 8
  %18 = icmp eq %struct.ui_file* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %10
  %20 = call i32 @perror_with_name(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %10
  %22 = load i32, i32* @logging_redirect, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %40, label %24

24:                                               ; preds = %21
  %25 = load %struct.ui_file*, %struct.ui_file** @gdb_stdout, align 8
  %26 = load %struct.ui_file*, %struct.ui_file** %3, align 8
  %27 = call %struct.ui_file* @tee_file_new(%struct.ui_file* %25, i32 0, %struct.ui_file* %26, i32 1)
  store %struct.ui_file* %27, %struct.ui_file** %3, align 8
  %28 = load %struct.ui_file*, %struct.ui_file** %3, align 8
  %29 = icmp eq %struct.ui_file* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = call i32 @perror_with_name(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %24
  %33 = load i32, i32* %2, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load %struct.ui_file*, %struct.ui_file** @gdb_stdout, align 8
  %37 = load i32*, i32** @logging_filename, align 8
  %38 = call i32 @fprintf_unfiltered(%struct.ui_file* %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32* %37)
  br label %39

39:                                               ; preds = %35, %32
  br label %48

40:                                               ; preds = %21
  %41 = load i32, i32* %2, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load %struct.ui_file*, %struct.ui_file** @gdb_stdout, align 8
  %45 = load i32*, i32** @logging_filename, align 8
  %46 = call i32 @fprintf_unfiltered(%struct.ui_file* %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32* %45)
  br label %47

47:                                               ; preds = %43, %40
  br label %48

48:                                               ; preds = %47, %39
  %49 = load i32*, i32** @logging_filename, align 8
  %50 = call i32* @xstrdup(i32* %49)
  store i32* %50, i32** @saved_filename, align 8
  %51 = load %struct.ui_file*, %struct.ui_file** @gdb_stdout, align 8
  store %struct.ui_file* %51, %struct.ui_file** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @saved_output, i32 0, i32 3), align 8
  %52 = load %struct.ui_file*, %struct.ui_file** @gdb_stderr, align 8
  store %struct.ui_file* %52, %struct.ui_file** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @saved_output, i32 0, i32 2), align 8
  %53 = load %struct.ui_file*, %struct.ui_file** @gdb_stdlog, align 8
  store %struct.ui_file* %53, %struct.ui_file** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @saved_output, i32 0, i32 1), align 8
  %54 = load %struct.ui_file*, %struct.ui_file** @gdb_stdtarg, align 8
  store %struct.ui_file* %54, %struct.ui_file** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @saved_output, i32 0, i32 0), align 8
  %55 = load %struct.ui_file*, %struct.ui_file** %3, align 8
  store %struct.ui_file* %55, %struct.ui_file** @gdb_stdout, align 8
  %56 = load %struct.ui_file*, %struct.ui_file** %3, align 8
  store %struct.ui_file* %56, %struct.ui_file** @gdb_stderr, align 8
  %57 = load %struct.ui_file*, %struct.ui_file** %3, align 8
  store %struct.ui_file* %57, %struct.ui_file** @gdb_stdlog, align 8
  %58 = load %struct.ui_file*, %struct.ui_file** %3, align 8
  store %struct.ui_file* %58, %struct.ui_file** @gdb_stdtarg, align 8
  %59 = load i32, i32* @uiout, align 4
  %60 = load %struct.ui_file*, %struct.ui_file** @gdb_stdout, align 8
  %61 = call i64 @ui_out_redirect(i32 %59, %struct.ui_file* %60)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %48
  %64 = call i32 @warning(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0))
  br label %65

65:                                               ; preds = %6, %63, %48
  ret void
}

declare dso_local i32 @fprintf_unfiltered(%struct.ui_file*, i8*, i32*) #1

declare dso_local %struct.ui_file* @gdb_fopen(i32*, i8*) #1

declare dso_local i32 @perror_with_name(i8*) #1

declare dso_local %struct.ui_file* @tee_file_new(%struct.ui_file*, i32, %struct.ui_file*, i32) #1

declare dso_local i32* @xstrdup(i32*) #1

declare dso_local i64 @ui_out_redirect(i32, %struct.ui_file*) #1

declare dso_local i32 @warning(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
