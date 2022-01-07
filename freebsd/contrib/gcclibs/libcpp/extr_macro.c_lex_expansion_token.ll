; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_macro.c_lex_expansion_token.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_macro.c_lex_expansion_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, %struct.TYPE_19__*, i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_23__ = type { i64 }

@CPP_NAME = common dso_local global i64 0, align 8
@NODE_MACRO_ARG = common dso_local global i32 0, align 4
@CPP_MACRO_ARG = common dso_local global i64 0, align 8
@CPP_STRING = common dso_local global i64 0, align 8
@CPP_CHAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_21__* (%struct.TYPE_22__*, %struct.TYPE_23__*)* @lex_expansion_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_21__* @lex_expansion_token(%struct.TYPE_22__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %4, align 8
  %7 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  store %struct.TYPE_21__* %9, %struct.TYPE_21__** %6, align 8
  %10 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %11 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %12 = call %struct.TYPE_21__* @alloc_expansion_token(%struct.TYPE_22__* %10, %struct.TYPE_23__* %11)
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  store %struct.TYPE_21__* %12, %struct.TYPE_21__** %14, align 8
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %16 = call %struct.TYPE_21__* @_cpp_lex_direct(%struct.TYPE_22__* %15)
  store %struct.TYPE_21__* %16, %struct.TYPE_21__** %5, align 8
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 0
  store %struct.TYPE_21__* %17, %struct.TYPE_21__** %19, align 8
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CPP_NAME, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %49

25:                                               ; preds = %2
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @NODE_MACRO_ARG, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %25
  %36 = load i64, i64* @CPP_MACRO_ARG, align 8
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 2
  store i32 %45, i32* %48, align 8
  br label %78

49:                                               ; preds = %25, %2
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %51 = call i64 @CPP_WTRADITIONAL(%struct.TYPE_22__* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %77

53:                                               ; preds = %49
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %77

58:                                               ; preds = %53
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @CPP_STRING, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %70, label %64

64:                                               ; preds = %58
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @CPP_CHAR, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %64, %58
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 0
  %76 = call i32 @check_trad_stringification(%struct.TYPE_22__* %71, %struct.TYPE_23__* %72, i32* %75)
  br label %77

77:                                               ; preds = %70, %64, %53, %49
  br label %78

78:                                               ; preds = %77, %35
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  ret %struct.TYPE_21__* %79
}

declare dso_local %struct.TYPE_21__* @alloc_expansion_token(%struct.TYPE_22__*, %struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_21__* @_cpp_lex_direct(%struct.TYPE_22__*) #1

declare dso_local i64 @CPP_WTRADITIONAL(%struct.TYPE_22__*) #1

declare dso_local i32 @check_trad_stringification(%struct.TYPE_22__*, %struct.TYPE_23__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
