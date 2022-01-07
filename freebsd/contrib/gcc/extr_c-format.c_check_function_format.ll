; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-format.c_check_function_format.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-format.c_check_function_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64, i64 }

@.str = private unnamed_addr constant [7 x i8] c"format\00", align 1
@warn_format = common dso_local global i64 0, align 8
@warn_missing_format_attribute = common dso_local global i64 0, align 8
@format_types = common dso_local global %struct.TYPE_6__* null, align 8
@FMT_FLAG_ARG_CONVERT = common dso_local global i64 0, align 8
@current_function_decl = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@POINTER_TYPE = common dso_local global i64 0, align 8
@char_type_node = common dso_local global i64 0, align 8
@OPT_Wmissing_format_attribute = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"function might be possible candidate for %qs format attribute\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_function_format(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* %3, align 8
  store i64 %9, i64* %5, align 8
  br label %10

10:                                               ; preds = %115, %2
  %11 = load i64, i64* %5, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %118

13:                                               ; preds = %10
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @TREE_PURPOSE(i64 %14)
  %16 = call i64 @is_attribute_p(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %114

18:                                               ; preds = %13
  %19 = load i64, i64* %5, align 8
  %20 = call i64 @TREE_VALUE(i64 %19)
  %21 = call i32 @decode_format_attr(i64 %20, %struct.TYPE_5__* %6, i32 1)
  %22 = load i64, i64* @warn_format, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @check_format_info(%struct.TYPE_5__* %6, i64 %25)
  br label %27

27:                                               ; preds = %24, %18
  %28 = load i64, i64* @warn_missing_format_attribute, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %113

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %113

34:                                               ; preds = %30
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** @format_types, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* @FMT_FLAG_ARG_CONVERT, align 8
  %42 = trunc i64 %41 to i32
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %113

45:                                               ; preds = %34
  %46 = load i64, i64* @current_function_decl, align 8
  %47 = call i64 @TREE_TYPE(i64 %46)
  %48 = call i64 @TYPE_ATTRIBUTES(i64 %47)
  store i64 %48, i64* %7, align 8
  br label %49

49:                                               ; preds = %68, %45
  %50 = load i64, i64* %7, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %71

52:                                               ; preds = %49
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @TREE_PURPOSE(i64 %53)
  %55 = call i64 @is_attribute_p(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %52
  %58 = load i64, i64* %7, align 8
  %59 = call i64 @TREE_VALUE(i64 %58)
  %60 = call i64 @TREE_VALUE(i64 %59)
  %61 = call i32 @IDENTIFIER_POINTER(i64 %60)
  %62 = call i64 @decode_format_type(i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %62, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  br label %71

67:                                               ; preds = %57, %52
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %7, align 8
  %70 = call i64 @TREE_CHAIN(i64 %69)
  store i64 %70, i64* %7, align 8
  br label %49

71:                                               ; preds = %66, %49
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* @NULL_TREE, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %112

75:                                               ; preds = %71
  %76 = load i64, i64* @current_function_decl, align 8
  %77 = call i64 @DECL_ARGUMENTS(i64 %76)
  store i64 %77, i64* %8, align 8
  br label %78

78:                                               ; preds = %96, %75
  %79 = load i64, i64* %8, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %99

81:                                               ; preds = %78
  %82 = load i64, i64* %8, align 8
  %83 = call i64 @TREE_TYPE(i64 %82)
  %84 = call i64 @TREE_CODE(i64 %83)
  %85 = load i64, i64* @POINTER_TYPE, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %81
  %88 = load i64, i64* %8, align 8
  %89 = call i64 @TREE_TYPE(i64 %88)
  %90 = call i64 @TREE_TYPE(i64 %89)
  %91 = call i64 @TYPE_MAIN_VARIANT(i64 %90)
  %92 = load i64, i64* @char_type_node, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  br label %99

95:                                               ; preds = %87, %81
  br label %96

96:                                               ; preds = %95
  %97 = load i64, i64* %8, align 8
  %98 = call i64 @TREE_CHAIN(i64 %97)
  store i64 %98, i64* %8, align 8
  br label %78

99:                                               ; preds = %94, %78
  %100 = load i64, i64* %8, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %99
  %103 = load i32, i32* @OPT_Wmissing_format_attribute, align 4
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** @format_types, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @warning(i32 %103, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %102, %99
  br label %112

112:                                              ; preds = %111, %71
  br label %113

113:                                              ; preds = %112, %34, %30, %27
  br label %114

114:                                              ; preds = %113, %13
  br label %115

115:                                              ; preds = %114
  %116 = load i64, i64* %5, align 8
  %117 = call i64 @TREE_CHAIN(i64 %116)
  store i64 %117, i64* %5, align 8
  br label %10

118:                                              ; preds = %10
  ret void
}

declare dso_local i64 @is_attribute_p(i8*, i32) #1

declare dso_local i32 @TREE_PURPOSE(i64) #1

declare dso_local i32 @decode_format_attr(i64, %struct.TYPE_5__*, i32) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i32 @check_format_info(%struct.TYPE_5__*, i64) #1

declare dso_local i64 @TYPE_ATTRIBUTES(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @decode_format_type(i32) #1

declare dso_local i32 @IDENTIFIER_POINTER(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @DECL_ARGUMENTS(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TYPE_MAIN_VARIANT(i64) #1

declare dso_local i32 @warning(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
