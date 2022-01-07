; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-opts.c_sanitize_cpp_opts.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-opts.c_sanitize_cpp_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i64, i64, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@deps_seen = common dso_local global i64 0, align 8
@cpp_opts = common dso_local global %struct.TYPE_4__* null, align 8
@DEPS_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [59 x i8] c"to generate dependencies you must specify either -M or -MM\00", align 1
@flag_dump_macros = common dso_local global i8 0, align 1
@flag_no_output = common dso_local global i32 0, align 4
@flag_dump_includes = common dso_local global i64 0, align 8
@flag_no_line_commands = common dso_local global i32 0, align 4
@flag_signed_char = common dso_local global i32 0, align 4
@STDC_0_IN_SYSTEM_HEADERS = common dso_local global i32 0, align 4
@warn_long_long = common dso_local global i64 0, align 8
@flag_isoc99 = common dso_local global i32 0, align 4
@pedantic = common dso_local global i64 0, align 8
@warn_traditional = common dso_local global i64 0, align 8
@warn_variadic_macros = common dso_local global i64 0, align 8
@flag_working_directory = common dso_local global i32 0, align 4
@debug_info_level = common dso_local global i64 0, align 8
@DINFO_LEVEL_NONE = common dso_local global i64 0, align 8
@warn_unused_macros = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c"-fdirectives-only is incompatible with -Wunused_macros\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"-fdirectives-only is incompatible with -traditional\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sanitize_cpp_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sanitize_cpp_opts() #0 {
  %1 = load i64, i64* @deps_seen, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %12

3:                                                ; preds = %0
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cpp_opts, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 7
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @DEPS_NONE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = call i32 @error(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %3, %0
  %13 = load i8, i8* @flag_dump_macros, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 77
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 1, i32* @flag_no_output, align 4
  br label %17

17:                                               ; preds = %16, %12
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cpp_opts, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cpp_opts, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = load i8, i8* @flag_dump_macros, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  store i8 68, i8* @flag_dump_macros, align 1
  br label %31

31:                                               ; preds = %30, %27, %22, %17
  %32 = load i32, i32* @flag_no_output, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load i8, i8* @flag_dump_macros, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 77
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i8 0, i8* @flag_dump_macros, align 1
  br label %39

39:                                               ; preds = %38, %34
  store i64 0, i64* @flag_dump_includes, align 8
  store i32 1, i32* @flag_no_line_commands, align 4
  br label %40

40:                                               ; preds = %39, %31
  %41 = load i32, i32* @flag_signed_char, align 4
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cpp_opts, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @STDC_0_IN_SYSTEM_HEADERS, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cpp_opts, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 8
  %50 = load i64, i64* @warn_long_long, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %40
  %53 = load i32, i32* @flag_isoc99, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load i64, i64* @pedantic, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55, %52
  %59 = load i64, i64* @warn_traditional, align 8
  %60 = icmp ne i64 %59, 0
  br label %61

61:                                               ; preds = %58, %55
  %62 = phi i1 [ true, %55 ], [ %60, %58 ]
  br label %63

63:                                               ; preds = %61, %40
  %64 = phi i1 [ false, %40 ], [ %62, %61 ]
  %65 = zext i1 %64 to i32
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cpp_opts, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load i64, i64* @warn_variadic_macros, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %63
  %71 = load i64, i64* @pedantic, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = load i64, i64* @warn_traditional, align 8
  %75 = icmp ne i64 %74, 0
  br label %76

76:                                               ; preds = %73, %70
  %77 = phi i1 [ true, %70 ], [ %75, %73 ]
  br label %78

78:                                               ; preds = %76, %63
  %79 = phi i1 [ false, %63 ], [ %77, %76 ]
  %80 = zext i1 %79 to i32
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cpp_opts, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* @flag_working_directory, align 4
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %90

85:                                               ; preds = %78
  %86 = load i64, i64* @debug_info_level, align 8
  %87 = load i64, i64* @DINFO_LEVEL_NONE, align 8
  %88 = icmp ne i64 %86, %87
  %89 = zext i1 %88 to i32
  store i32 %89, i32* @flag_working_directory, align 4
  br label %90

90:                                               ; preds = %85, %78
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cpp_opts, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %90
  %96 = load i64, i64* @warn_unused_macros, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = call i32 @error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %95
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cpp_opts, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = call i32 @error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  br label %107

107:                                              ; preds = %105, %100
  br label %108

108:                                              ; preds = %107, %90
  ret void
}

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
