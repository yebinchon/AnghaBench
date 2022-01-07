; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-ppoutput.c_init_pp_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-ppoutput.c_init_pp_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32*, i64, i64 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64 }

@parse_in = common dso_local global i32 0, align 4
@flag_no_output = common dso_local global i32 0, align 4
@cb_line_change = common dso_local global i32 0, align 4
@CLK_ASM = common dso_local global i64 0, align 8
@cb_ident = common dso_local global i32 0, align 4
@cb_def_pragma = common dso_local global i32 0, align 4
@flag_dump_includes = common dso_local global i64 0, align 8
@cb_include = common dso_local global i32 0, align 4
@flag_pch_preprocess = common dso_local global i64 0, align 8
@c_common_valid_pch = common dso_local global i32 0, align 4
@cb_read_pch = common dso_local global i32 0, align 4
@flag_dump_macros = common dso_local global i8 0, align 1
@cb_define = common dso_local global i32 0, align 4
@cb_undef = common dso_local global i32 0, align 4
@print = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_pp_output(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32, i32* @parse_in, align 4
  %5 = call %struct.TYPE_5__* @cpp_get_callbacks(i32 %4)
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** %3, align 8
  %6 = load i32, i32* @flag_no_output, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %26, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @cb_line_change, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 7
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @parse_in, align 4
  %13 = call %struct.TYPE_7__* @cpp_get_options(i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CLK_ASM, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %8
  %19 = load i32, i32* @cb_ident, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 6
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @cb_def_pragma, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %18, %8
  br label %26

26:                                               ; preds = %25, %1
  %27 = load i64, i64* @flag_dump_includes, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, i32* @cb_include, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %29, %26
  %34 = load i64, i64* @flag_pch_preprocess, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load i32, i32* @c_common_valid_pch, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @cb_read_pch, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %36, %33
  %44 = load i8, i8* @flag_dump_macros, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 78
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i8, i8* @flag_dump_macros, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 68
  br i1 %50, label %51, label %58

51:                                               ; preds = %47, %43
  %52 = load i32, i32* @cb_define, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @cb_undef, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %51, %47
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @print, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @print, i32 0, i32 4), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @print, i32 0, i32 3), align 8
  %59 = load i32*, i32** %2, align 8
  store i32* %59, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @print, i32 0, i32 2), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @print, i32 0, i32 1), align 4
  ret void
}

declare dso_local %struct.TYPE_5__* @cpp_get_callbacks(i32) #1

declare dso_local %struct.TYPE_7__* @cpp_get_options(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
