; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_macro.c_parse_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_macro.c_parse_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_19__, %struct.TYPE_18__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }

@CPP_COMMENT = common dso_local global i32 0, align 4
@discard_comments_in_macro_exp = common dso_local global i32 0, align 4
@CPP_DL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"\22%s\22 may not appear in macro parameter list\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"macro parameters must be comma-separated\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"parameter name missing\00", align 1
@c99 = common dso_local global i32 0, align 4
@pedantic = common dso_local global i32 0, align 4
@warn_variadic_macros = common dso_local global i32 0, align 4
@CPP_DL_PEDWARN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"anonymous variadic macros were introduced in C99\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"ISO C does not permit named variadic macros\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"missing ')' in macro parameter list\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, %struct.TYPE_22__*)* @parse_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_params(%struct.TYPE_21__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %68, %50, %25, %2
  %9 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %10 = call %struct.TYPE_20__* @_cpp_lex_token(%struct.TYPE_21__* %9)
  store %struct.TYPE_20__* %10, %struct.TYPE_20__** %7, align 8
  %11 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %14 [
    i32 128, label %33
    i32 132, label %51
    i32 131, label %61
    i32 130, label %69
    i32 129, label %128
  ]

14:                                               ; preds = %8
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @CPP_COMMENT, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %22 = load i32, i32* @discard_comments_in_macro_exp, align 4
  %23 = call i32 @CPP_OPTION(%struct.TYPE_21__* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %8

26:                                               ; preds = %20, %14
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %28 = load i32, i32* @CPP_DL_ERROR, align 4
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %31 = call i32 @cpp_token_as_text(%struct.TYPE_21__* %29, %struct.TYPE_20__* %30)
  %32 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @cpp_error(%struct.TYPE_21__* %27, i32 %28, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %31)
  store i32 0, i32* %3, align 4
  br label %132

33:                                               ; preds = %8
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %38 = load i32, i32* @CPP_DL_ERROR, align 4
  %39 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @cpp_error(%struct.TYPE_21__* %37, i32 %38, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %132

40:                                               ; preds = %33
  store i32 1, i32* %6, align 4
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @_cpp_save_parameter(%struct.TYPE_21__* %41, %struct.TYPE_22__* %42, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %132

50:                                               ; preds = %40
  br label %8

51:                                               ; preds = %8
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %51
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54, %51
  store i32 1, i32* %3, align 4
  br label %132

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %8, %60
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %61
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %66 = load i32, i32* @CPP_DL_ERROR, align 4
  %67 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @cpp_error(%struct.TYPE_21__* %65, i32 %66, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %132

68:                                               ; preds = %61
  store i32 0, i32* %6, align 4
  br label %8

69:                                               ; preds = %8
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 0
  store i32 1, i32* %71, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %104, label %74

74:                                               ; preds = %69
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @_cpp_save_parameter(%struct.TYPE_21__* %75, %struct.TYPE_22__* %76, i32 %80)
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 0
  store i32 1, i32* %84, align 4
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %86 = load i32, i32* @c99, align 4
  %87 = call i32 @CPP_OPTION(%struct.TYPE_21__* %85, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %103, label %89

89:                                               ; preds = %74
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %91 = load i32, i32* @pedantic, align 4
  %92 = call i32 @CPP_OPTION(%struct.TYPE_21__* %90, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %89
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %96 = load i32, i32* @warn_variadic_macros, align 4
  %97 = call i32 @CPP_OPTION(%struct.TYPE_21__* %95, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %101 = load i32, i32* @CPP_DL_PEDWARN, align 4
  %102 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @cpp_error(%struct.TYPE_21__* %100, i32 %101, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  br label %103

103:                                              ; preds = %99, %94, %89, %74
  br label %119

104:                                              ; preds = %69
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %106 = load i32, i32* @pedantic, align 4
  %107 = call i32 @CPP_OPTION(%struct.TYPE_21__* %105, i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %104
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %111 = load i32, i32* @warn_variadic_macros, align 4
  %112 = call i32 @CPP_OPTION(%struct.TYPE_21__* %110, i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %116 = load i32, i32* @CPP_DL_PEDWARN, align 4
  %117 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @cpp_error(%struct.TYPE_21__* %115, i32 %116, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  br label %118

118:                                              ; preds = %114, %109, %104
  br label %119

119:                                              ; preds = %118, %103
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %121 = call %struct.TYPE_20__* @_cpp_lex_token(%struct.TYPE_21__* %120)
  store %struct.TYPE_20__* %121, %struct.TYPE_20__** %7, align 8
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %124, 132
  br i1 %125, label %126, label %127

126:                                              ; preds = %119
  store i32 1, i32* %3, align 4
  br label %132

127:                                              ; preds = %119
  br label %128

128:                                              ; preds = %8, %127
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %130 = load i32, i32* @CPP_DL_ERROR, align 4
  %131 = call i32 (%struct.TYPE_21__*, i32, i8*, ...) @cpp_error(%struct.TYPE_21__* %129, i32 %130, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %132

132:                                              ; preds = %128, %126, %64, %59, %49, %36, %26
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local %struct.TYPE_20__* @_cpp_lex_token(%struct.TYPE_21__*) #1

declare dso_local i32 @CPP_OPTION(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @cpp_error(%struct.TYPE_21__*, i32, i8*, ...) #1

declare dso_local i32 @cpp_token_as_text(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

declare dso_local i32 @_cpp_save_parameter(%struct.TYPE_21__*, %struct.TYPE_22__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
