; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_output_filename.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_output_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@write_symbols = common dso_local global i64 0, align 8
@DWARF2_DEBUG = common dso_local global i64 0, align 8
@mips_output_filename_first_time = common dso_local global i64 0, align 8
@num_source_filenames = common dso_local global i32 0, align 4
@current_function_file = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"\09.file\09%d \00", align 1
@DBX_DEBUG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mips_output_filename(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i64, i64* @write_symbols, align 8
  %6 = load i64, i64* @DWARF2_DEBUG, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %53

9:                                                ; preds = %2
  %10 = load i64, i64* @mips_output_filename_first_time, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %9
  store i64 0, i64* @mips_output_filename_first_time, align 8
  %13 = load i32, i32* @num_source_filenames, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* @num_source_filenames, align 4
  %15 = load i8*, i8** %4, align 8
  store i8* %15, i8** @current_function_file, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* @num_source_filenames, align 4
  %18 = call i32 @fprintf(i32* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32*, i32** %3, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @output_quoted_string(i32* %19, i8* %20)
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @putc(i8 signext 10, i32* %22)
  br label %52

24:                                               ; preds = %9
  %25 = load i64, i64* @write_symbols, align 8
  %26 = load i64, i64* @DBX_DEBUG, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %53

29:                                               ; preds = %24
  %30 = load i8*, i8** %4, align 8
  %31 = load i8*, i8** @current_function_file, align 8
  %32 = icmp ne i8* %30, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %29
  %34 = load i8*, i8** %4, align 8
  %35 = load i8*, i8** @current_function_file, align 8
  %36 = call i64 @strcmp(i8* %34, i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %33
  %39 = load i32, i32* @num_source_filenames, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* @num_source_filenames, align 4
  %41 = load i8*, i8** %4, align 8
  store i8* %41, i8** @current_function_file, align 8
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* @num_source_filenames, align 4
  %44 = call i32 @fprintf(i32* %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32*, i32** %3, align 8
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 @output_quoted_string(i32* %45, i8* %46)
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @putc(i8 signext 10, i32* %48)
  br label %50

50:                                               ; preds = %38, %33, %29
  br label %51

51:                                               ; preds = %50
  br label %52

52:                                               ; preds = %51, %12
  br label %53

53:                                               ; preds = %8, %28, %52
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, i32) #1

declare dso_local i32 @output_quoted_string(i32*, i8*) #1

declare dso_local i32 @putc(i8 signext, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
