; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_begin_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_begin_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.minimal_symbol = type { i32 }
%struct.cleanup = type { i32 }

@begin_cleanup = common dso_local global i32 0, align 4
@begin_annotate_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"No symbol table is loaded.  Use the \22file\22 command.\00", align 1
@ADA_MAIN_PROGRAM_SYMBOL_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Invalid address for Ada main program name.\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"tbreak \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"run \00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"tbreak adainit\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"tbreak +2\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"continue\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"step\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @begin_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @begin_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.minimal_symbol*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [1024 x i8], align 16
  %8 = alloca %struct.cleanup*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @begin_cleanup, align 4
  %10 = call %struct.cleanup* @make_cleanup(i32 %9, i32* null)
  store %struct.cleanup* %10, %struct.cleanup** %8, align 8
  store i32 2, i32* @begin_annotate_level, align 4
  %11 = call i32 (...) @have_full_symbols()
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = call i32 (...) @have_partial_symbols()
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = call i32 @error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %13, %2
  %19 = load i32, i32* @ADA_MAIN_PROGRAM_SYMBOL_NAME, align 4
  %20 = call %struct.minimal_symbol* @lookup_minimal_symbol(i32 %19, i32* null, i32* null)
  store %struct.minimal_symbol* %20, %struct.minimal_symbol** %5, align 8
  %21 = load %struct.minimal_symbol*, %struct.minimal_symbol** %5, align 8
  %22 = icmp ne %struct.minimal_symbol* %21, null
  br i1 %22, label %23, label %38

23:                                               ; preds = %18
  %24 = load %struct.minimal_symbol*, %struct.minimal_symbol** %5, align 8
  %25 = call i64 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol* %24)
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = call i32 @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %23
  %31 = load i64, i64* %6, align 8
  %32 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %33 = call i32 @extract_string(i64 %31, i8* %32)
  %34 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %35 = call i32 (i8*, i8*, ...) @do_command(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %34, i32 0)
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 (i8*, i8*, ...) @do_command(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %36, i32 0)
  br label %46

38:                                               ; preds = %18
  %39 = call i32 (i8*, i8*, ...) @do_command(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* null)
  %40 = load i8*, i8** %3, align 8
  %41 = call i32 (i8*, i8*, ...) @do_command(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %40, i32 0)
  %42 = call i32 (i8*, i8*, ...) @do_command(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* null)
  %43 = call i32 (i8*, i8*, ...) @do_command(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* null)
  %44 = call i32 (i8*, i8*, ...) @do_command(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* null)
  %45 = call i32 (i8*, i8*, ...) @do_command(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* null)
  br label %46

46:                                               ; preds = %38, %30
  %47 = load %struct.cleanup*, %struct.cleanup** %8, align 8
  %48 = call i32 @do_cleanups(%struct.cleanup* %47)
  ret void
}

declare dso_local %struct.cleanup* @make_cleanup(i32, i32*) #1

declare dso_local i32 @have_full_symbols(...) #1

declare dso_local i32 @have_partial_symbols(...) #1

declare dso_local i32 @error(i8*) #1

declare dso_local %struct.minimal_symbol* @lookup_minimal_symbol(i32, i32*, i32*) #1

declare dso_local i64 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol*) #1

declare dso_local i32 @extract_string(i64, i8*) #1

declare dso_local i32 @do_command(i8*, i8*, ...) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
