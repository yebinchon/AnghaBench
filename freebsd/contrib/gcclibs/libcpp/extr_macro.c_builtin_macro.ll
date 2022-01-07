; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_macro.c_builtin_macro.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_macro.c_builtin_macro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_21__*, i32, %struct.TYPE_20__ }
%struct.TYPE_21__ = type { i64, i64 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_23__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64 }

@BT_PRAGMA = common dso_local global i64 0, align 8
@CPP_DL_ICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"invalid built-in macro \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, %struct.TYPE_23__*)* @builtin_macro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @builtin_macro(%struct.TYPE_22__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  %9 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @BT_PRAGMA, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %77

22:                                               ; preds = %15
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %24 = call i32 @_cpp_do__Pragma(%struct.TYPE_22__* %23)
  store i32 1, i32* %3, align 4
  br label %77

25:                                               ; preds = %2
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %28 = call i32* @_cpp_builtin_macro_text(%struct.TYPE_22__* %26, %struct.TYPE_23__* %27)
  store i32* %28, i32** %6, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i64 @ustrlen(i32* %29)
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* %7, align 8
  %32 = add i64 %31, 1
  %33 = call i64 @alloca(i64 %32)
  %34 = inttoptr i64 %33 to i8*
  store i8* %34, i8** %8, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @memcpy(i8* %35, i32* %36, i64 %37)
  %39 = load i8*, i8** %8, align 8
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  store i8 10, i8* %41, align 1
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = bitcast i8* %43 to i32*
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @cpp_push_buffer(%struct.TYPE_22__* %42, i32* %44, i64 %45, i32 1)
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %48 = call i32 @_cpp_clean_line(%struct.TYPE_22__* %47)
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %50 = call i32 @_cpp_temp_token(%struct.TYPE_22__* %49)
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %55 = call i32 @_cpp_lex_direct(%struct.TYPE_22__* %54)
  %56 = call i32 @_cpp_push_token_context(%struct.TYPE_22__* %53, i32* null, i32 %55, i32 1)
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %61, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %25
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %70 = load i32, i32* @CPP_DL_ICE, align 4
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %72 = call i32 @NODE_NAME(%struct.TYPE_23__* %71)
  %73 = call i32 @cpp_error(%struct.TYPE_22__* %69, i32 %70, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %68, %25
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %76 = call i32 @_cpp_pop_buffer(%struct.TYPE_22__* %75)
  store i32 1, i32* %3, align 4
  br label %77

77:                                               ; preds = %74, %22, %21
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @_cpp_do__Pragma(%struct.TYPE_22__*) #1

declare dso_local i32* @_cpp_builtin_macro_text(%struct.TYPE_22__*, %struct.TYPE_23__*) #1

declare dso_local i64 @ustrlen(i32*) #1

declare dso_local i64 @alloca(i64) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

declare dso_local i32 @cpp_push_buffer(%struct.TYPE_22__*, i32*, i64, i32) #1

declare dso_local i32 @_cpp_clean_line(%struct.TYPE_22__*) #1

declare dso_local i32 @_cpp_temp_token(%struct.TYPE_22__*) #1

declare dso_local i32 @_cpp_push_token_context(%struct.TYPE_22__*, i32*, i32, i32) #1

declare dso_local i32 @_cpp_lex_direct(%struct.TYPE_22__*) #1

declare dso_local i32 @cpp_error(%struct.TYPE_22__*, i32, i8*, i32) #1

declare dso_local i32 @NODE_NAME(%struct.TYPE_23__*) #1

declare dso_local i32 @_cpp_pop_buffer(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
