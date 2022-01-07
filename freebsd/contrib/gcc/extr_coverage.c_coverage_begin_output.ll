; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_coverage.c_coverage_begin_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_coverage.c_coverage_begin_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@no_coverage = common dso_local global i64 0, align 8
@bbg_function_announced = common dso_local global i32 0, align 4
@current_function_decl = common dso_local global i32 0, align 4
@bbg_file_opened = common dso_local global i32 0, align 4
@bbg_file_name = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"cannot open %s\00", align 1
@GCOV_NOTE_MAGIC = common dso_local global i64 0, align 8
@GCOV_VERSION = common dso_local global i64 0, align 8
@local_tick = common dso_local global i64 0, align 8
@GCOV_TAG_FUNCTION = common dso_local global i32 0, align 4
@current_function_funcdef_no = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @coverage_begin_output() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_3__, align 8
  %3 = alloca i64, align 8
  %4 = load i64, i64* @no_coverage, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %61

7:                                                ; preds = %0
  %8 = load i32, i32* @bbg_function_announced, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %56, label %10

10:                                               ; preds = %7
  %11 = load i32, i32* @current_function_decl, align 4
  %12 = call i32 @DECL_SOURCE_LOCATION(i32 %11)
  %13 = call { i64, i32 } @expand_location(i32 %12)
  %14 = bitcast %struct.TYPE_3__* %2 to { i64, i32 }*
  %15 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 0
  %16 = extractvalue { i64, i32 } %13, 0
  store i64 %16, i64* %15, align 8
  %17 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 1
  %18 = extractvalue { i64, i32 } %13, 1
  store i32 %18, i32* %17, align 8
  %19 = load i32, i32* @bbg_file_opened, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %10
  %22 = load i32, i32* @bbg_file_name, align 4
  %23 = call i32 @gcov_open(i32 %22, i32 -1)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @bbg_file_name, align 4
  %27 = call i32 @error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %35

28:                                               ; preds = %21
  %29 = load i64, i64* @GCOV_NOTE_MAGIC, align 8
  %30 = call i32 @gcov_write_unsigned(i64 %29)
  %31 = load i64, i64* @GCOV_VERSION, align 8
  %32 = call i32 @gcov_write_unsigned(i64 %31)
  %33 = load i64, i64* @local_tick, align 8
  %34 = call i32 @gcov_write_unsigned(i64 %33)
  br label %35

35:                                               ; preds = %28, %25
  store i32 1, i32* @bbg_file_opened, align 4
  br label %36

36:                                               ; preds = %35, %10
  %37 = load i32, i32* @GCOV_TAG_FUNCTION, align 4
  %38 = call i64 @gcov_write_tag(i32 %37)
  store i64 %38, i64* %3, align 8
  %39 = load i64, i64* @current_function_funcdef_no, align 8
  %40 = add nsw i64 %39, 1
  %41 = call i32 @gcov_write_unsigned(i64 %40)
  %42 = call i64 (...) @compute_checksum()
  %43 = call i32 @gcov_write_unsigned(i64 %42)
  %44 = load i32, i32* @current_function_decl, align 4
  %45 = call i32 @DECL_ASSEMBLER_NAME(i32 %44)
  %46 = call i32 @IDENTIFIER_POINTER(i32 %45)
  %47 = call i32 @gcov_write_string(i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @gcov_write_string(i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @gcov_write_unsigned(i64 %52)
  %54 = load i64, i64* %3, align 8
  %55 = call i32 @gcov_write_length(i64 %54)
  store i32 1, i32* @bbg_function_announced, align 4
  br label %56

56:                                               ; preds = %36, %7
  %57 = call i32 (...) @gcov_is_error()
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %1, align 4
  br label %61

61:                                               ; preds = %56, %6
  %62 = load i32, i32* %1, align 4
  ret i32 %62
}

declare dso_local { i64, i32 } @expand_location(i32) #1

declare dso_local i32 @DECL_SOURCE_LOCATION(i32) #1

declare dso_local i32 @gcov_open(i32, i32) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @gcov_write_unsigned(i64) #1

declare dso_local i64 @gcov_write_tag(i32) #1

declare dso_local i64 @compute_checksum(...) #1

declare dso_local i32 @gcov_write_string(i32) #1

declare dso_local i32 @IDENTIFIER_POINTER(i32) #1

declare dso_local i32 @DECL_ASSEMBLER_NAME(i32) #1

declare dso_local i32 @gcov_write_length(i64) #1

declare dso_local i32 @gcov_is_error(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
