; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-mudflap.c_mf_varname_tree.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-mudflap.c_mf_varname_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* (i64, i32)*, i32 }
%struct.TYPE_4__ = type { i32, i32, i8* }

@mf_varname_tree.buf_rec = internal global i32 0, align 4
@mf_varname_tree.initialized = internal global i32 0, align 4
@current_function_decl = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"<unknown file>\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@lang_hooks = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"anonymous fn\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c") \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"GNU C++\00", align 1
@DMGL_AUTO = common dso_local global i32 0, align 4
@DMGL_VERBOSE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"<unnamed variable>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @mf_varname_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mf_varname_tree(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_4__, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  store i32* @mf_varname_tree.buf_rec, i32** %3, align 8
  %12 = load i64, i64* %2, align 8
  %13 = call i32 @gcc_assert(i64 %12)
  %14 = load i32, i32* @mf_varname_tree.initialized, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @pp_construct(i32* %17, i32* null, i32 0)
  store i32 1, i32* @mf_varname_tree.initialized, align 4
  br label %19

19:                                               ; preds = %16, %1
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @pp_clear_output_area(i32* %20)
  %22 = load i64, i64* %2, align 8
  %23 = call i32 @DECL_SOURCE_LOCATION(i64 %22)
  %24 = call { i64, i8* } @expand_location(i32 %23)
  %25 = bitcast %struct.TYPE_4__* %6 to { i64, i8* }*
  %26 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %25, i32 0, i32 0
  %27 = extractvalue { i64, i8* } %24, 0
  store i64 %27, i64* %26, align 8
  %28 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %25, i32 0, i32 1
  %29 = extractvalue { i64, i8* } %24, 1
  store i8* %29, i8** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %7, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %19
  %37 = load i64, i64* @current_function_decl, align 8
  %38 = load i64, i64* @NULL_TREE, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i64, i64* @current_function_decl, align 8
  %42 = call i8* @DECL_SOURCE_FILE(i64 %41)
  store i8* %42, i8** %7, align 8
  br label %43

43:                                               ; preds = %40, %36, %19
  %44 = load i8*, i8** %7, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %47

47:                                               ; preds = %46, %43
  %48 = load i32*, i32** %3, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 @pp_string(i32* %48, i8* %49)
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %47
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @pp_string(i32* %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32*, i32** %3, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @pp_decimal_int(i32* %56, i32 %57)
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %53
  %62 = load i32*, i32** %3, align 8
  %63 = call i32 @pp_string(i32* %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32*, i32** %3, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @pp_decimal_int(i32* %64, i32 %65)
  br label %67

67:                                               ; preds = %61, %53
  br label %68

68:                                               ; preds = %67, %47
  %69 = load i64, i64* @current_function_decl, align 8
  %70 = load i64, i64* @NULL_TREE, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %92

72:                                               ; preds = %68
  %73 = load i32*, i32** %3, align 8
  %74 = call i32 @pp_string(i32* %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i8* null, i8** %10, align 8
  %75 = load i64, i64* @current_function_decl, align 8
  %76 = call i32* @DECL_NAME(i64 %75)
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load i8* (i64, i32)*, i8* (i64, i32)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lang_hooks, i32 0, i32 0), align 8
  %80 = load i64, i64* @current_function_decl, align 8
  %81 = call i8* %79(i64 %80, i32 1)
  store i8* %81, i8** %10, align 8
  br label %82

82:                                               ; preds = %78, %72
  %83 = load i8*, i8** %10, align 8
  %84 = icmp eq i8* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  br label %86

86:                                               ; preds = %85, %82
  %87 = load i32*, i32** %3, align 8
  %88 = load i8*, i8** %10, align 8
  %89 = call i32 @pp_string(i32* %87, i8* %88)
  %90 = load i32*, i32** %3, align 8
  %91 = call i32 @pp_string(i32* %90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %95

92:                                               ; preds = %68
  %93 = load i32*, i32** %3, align 8
  %94 = call i32 @pp_string(i32* %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %95

95:                                               ; preds = %92, %86
  store i8* null, i8** %11, align 8
  %96 = load i64, i64* %2, align 8
  %97 = call i32* @DECL_NAME(i64 %96)
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %119

99:                                               ; preds = %95
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lang_hooks, i32 0, i32 1), align 8
  %101 = call i64 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %100)
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %99
  %104 = load i64, i64* %2, align 8
  %105 = call i32* @DECL_NAME(i64 %104)
  %106 = call i32 @IDENTIFIER_POINTER(i32* %105)
  %107 = load i32, i32* @DMGL_AUTO, align 4
  %108 = load i32, i32* @DMGL_VERBOSE, align 4
  %109 = or i32 %107, %108
  %110 = call i8* @cplus_demangle(i32 %106, i32 %109)
  store i8* %110, i8** %11, align 8
  br label %111

111:                                              ; preds = %103, %99
  %112 = load i8*, i8** %11, align 8
  %113 = icmp eq i8* %112, null
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = load i8* (i64, i32)*, i8* (i64, i32)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lang_hooks, i32 0, i32 0), align 8
  %116 = load i64, i64* %2, align 8
  %117 = call i8* %115(i64 %116, i32 3)
  store i8* %117, i8** %11, align 8
  br label %118

118:                                              ; preds = %114, %111
  br label %119

119:                                              ; preds = %118, %95
  %120 = load i8*, i8** %11, align 8
  %121 = icmp eq i8* %120, null
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8** %11, align 8
  br label %123

123:                                              ; preds = %122, %119
  %124 = load i32*, i32** %3, align 8
  %125 = load i8*, i8** %11, align 8
  %126 = call i32 @pp_string(i32* %124, i8* %125)
  %127 = load i32*, i32** %3, align 8
  %128 = call i8* @pp_base_formatted_text(i32* %127)
  store i8* %128, i8** %4, align 8
  %129 = load i8*, i8** %4, align 8
  %130 = call i64 @mf_build_string(i8* %129)
  store i64 %130, i64* %5, align 8
  %131 = load i32*, i32** %3, align 8
  %132 = call i32 @pp_clear_output_area(i32* %131)
  %133 = load i64, i64* %5, align 8
  ret i64 %133
}

declare dso_local i32 @gcc_assert(i64) #1

declare dso_local i32 @pp_construct(i32*, i32*, i32) #1

declare dso_local i32 @pp_clear_output_area(i32*) #1

declare dso_local { i64, i8* } @expand_location(i32) #1

declare dso_local i32 @DECL_SOURCE_LOCATION(i64) #1

declare dso_local i8* @DECL_SOURCE_FILE(i64) #1

declare dso_local i32 @pp_string(i32*, i8*) #1

declare dso_local i32 @pp_decimal_int(i32*, i32) #1

declare dso_local i32* @DECL_NAME(i64) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i8* @cplus_demangle(i32, i32) #1

declare dso_local i32 @IDENTIFIER_POINTER(i32*) #1

declare dso_local i8* @pp_base_formatted_text(i32*) #1

declare dso_local i64 @mf_build_string(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
