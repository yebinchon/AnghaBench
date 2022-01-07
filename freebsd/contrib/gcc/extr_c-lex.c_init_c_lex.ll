; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-lex.c_init_c_lex.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-lex.c_init_c_lex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpp_callbacks = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.c_fileinfo = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"<top level>\00", align 1
@flag_detailed_statistics = common dso_local global i64 0, align 8
@header_time = common dso_local global i64 0, align 8
@body_time = common dso_local global i32 0, align 4
@parse_in = common dso_local global i32 0, align 4
@cb_line_change = common dso_local global i32 0, align 4
@cb_ident = common dso_local global i32 0, align 4
@cb_def_pragma = common dso_local global i32 0, align 4
@c_common_valid_pch = common dso_local global i32 0, align 4
@c_common_read_pch = common dso_local global i32 0, align 4
@debug_info_level = common dso_local global i64 0, align 8
@DINFO_LEVEL_VERBOSE = common dso_local global i64 0, align 8
@write_symbols = common dso_local global i64 0, align 8
@DWARF2_DEBUG = common dso_local global i64 0, align 8
@VMS_AND_DWARF2_DEBUG = common dso_local global i64 0, align 8
@cb_define = common dso_local global i32 0, align 4
@cb_undef = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_c_lex() #0 {
  %1 = alloca %struct.cpp_callbacks*, align 8
  %2 = alloca %struct.c_fileinfo*, align 8
  %3 = call %struct.c_fileinfo* @get_fileinfo(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store %struct.c_fileinfo* %3, %struct.c_fileinfo** %2, align 8
  %4 = load i64, i64* @flag_detailed_statistics, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %0
  store i64 0, i64* @header_time, align 8
  %7 = call i32 (...) @get_run_time()
  store i32 %7, i32* @body_time, align 4
  %8 = load i32, i32* @body_time, align 4
  %9 = load %struct.c_fileinfo*, %struct.c_fileinfo** %2, align 8
  %10 = getelementptr inbounds %struct.c_fileinfo, %struct.c_fileinfo* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  br label %11

11:                                               ; preds = %6, %0
  %12 = load i32, i32* @parse_in, align 4
  %13 = call %struct.cpp_callbacks* @cpp_get_callbacks(i32 %12)
  store %struct.cpp_callbacks* %13, %struct.cpp_callbacks** %1, align 8
  %14 = load i32, i32* @cb_line_change, align 4
  %15 = load %struct.cpp_callbacks*, %struct.cpp_callbacks** %1, align 8
  %16 = getelementptr inbounds %struct.cpp_callbacks, %struct.cpp_callbacks* %15, i32 0, i32 6
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @cb_ident, align 4
  %18 = load %struct.cpp_callbacks*, %struct.cpp_callbacks** %1, align 8
  %19 = getelementptr inbounds %struct.cpp_callbacks, %struct.cpp_callbacks* %18, i32 0, i32 5
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @cb_def_pragma, align 4
  %21 = load %struct.cpp_callbacks*, %struct.cpp_callbacks** %1, align 8
  %22 = getelementptr inbounds %struct.cpp_callbacks, %struct.cpp_callbacks* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @c_common_valid_pch, align 4
  %24 = load %struct.cpp_callbacks*, %struct.cpp_callbacks** %1, align 8
  %25 = getelementptr inbounds %struct.cpp_callbacks, %struct.cpp_callbacks* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @c_common_read_pch, align 4
  %27 = load %struct.cpp_callbacks*, %struct.cpp_callbacks** %1, align 8
  %28 = getelementptr inbounds %struct.cpp_callbacks, %struct.cpp_callbacks* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load i64, i64* @debug_info_level, align 8
  %30 = load i64, i64* @DINFO_LEVEL_VERBOSE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %11
  %33 = load i64, i64* @write_symbols, align 8
  %34 = load i64, i64* @DWARF2_DEBUG, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i64, i64* @write_symbols, align 8
  %38 = load i64, i64* @VMS_AND_DWARF2_DEBUG, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %36, %32
  %41 = load i32, i32* @cb_define, align 4
  %42 = load %struct.cpp_callbacks*, %struct.cpp_callbacks** %1, align 8
  %43 = getelementptr inbounds %struct.cpp_callbacks, %struct.cpp_callbacks* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @cb_undef, align 4
  %45 = load %struct.cpp_callbacks*, %struct.cpp_callbacks** %1, align 8
  %46 = getelementptr inbounds %struct.cpp_callbacks, %struct.cpp_callbacks* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %40, %36, %11
  ret void
}

declare dso_local %struct.c_fileinfo* @get_fileinfo(i8*) #1

declare dso_local i32 @get_run_time(...) #1

declare dso_local %struct.cpp_callbacks* @cpp_get_callbacks(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
