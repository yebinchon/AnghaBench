; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl2.c_constrain_class_visibility.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl2.c_constrain_class_visibility.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VISIBILITY_ANON = common dso_local global i32 0, align 4
@VISIBILITY_INTERNAL = common dso_local global i32 0, align 4
@FIELD_DECL = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [60 x i8] c"%qT has a field %qD whose type uses the anonymous namespace\00", align 1
@VISIBILITY_HIDDEN = common dso_local global i32 0, align 4
@OPT_Wattributes = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"%qT declared with greater visibility than the type of its field %qD\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"%qT has a base %qT whose type uses the anonymous namespace\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"%qT declared with greater visibility than its base %qT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @constrain_class_visibility(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %10 = load i64, i64* %2, align 8
  %11 = call i32 @type_visibility(i64 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @VISIBILITY_ANON, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load i64, i64* %2, align 8
  %17 = call i32 @TYPE_MAIN_DECL(i64 %16)
  %18 = call i64 @DECL_IN_SYSTEM_HEADER(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %1
  br label %127

21:                                               ; preds = %15
  %22 = load i64, i64* %2, align 8
  %23 = call i64 @CLASSTYPE_VISIBILITY_SPECIFIED(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @VISIBILITY_INTERNAL, align 4
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %25, %21
  %28 = load i64, i64* %2, align 8
  %29 = call i64 @TYPE_FIELDS(i64 %28)
  store i64 %29, i64* %4, align 8
  br label %30

30:                                               ; preds = %80, %27
  %31 = load i64, i64* %4, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %83

33:                                               ; preds = %30
  %34 = load i64, i64* %4, align 8
  %35 = call i64 @TREE_CODE(i64 %34)
  %36 = load i64, i64* @FIELD_DECL, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %79

38:                                               ; preds = %33
  %39 = load i64, i64* %4, align 8
  %40 = call i64 @TREE_TYPE(i64 %39)
  %41 = load i64, i64* @error_mark_node, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %79

43:                                               ; preds = %38
  %44 = load i64, i64* %4, align 8
  %45 = call i64 @TREE_TYPE(i64 %44)
  %46 = call i64 @strip_array_types(i64 %45)
  store i64 %46, i64* %7, align 8
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @type_visibility(i64 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @VISIBILITY_ANON, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %43
  %53 = call i32 (...) @in_main_input_context()
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  %56 = load i64, i64* %2, align 8
  %57 = load i64, i64* %4, align 8
  %58 = call i32 @warning(i32 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i64 %56, i64 %57)
  br label %59

59:                                               ; preds = %55, %52
  br label %78

60:                                               ; preds = %43
  %61 = load i64, i64* %7, align 8
  %62 = call i64 @IS_AGGR_TYPE(i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %60
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @VISIBILITY_HIDDEN, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %64
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @VISIBILITY_HIDDEN, align 4
  %71 = icmp sge i32 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load i32, i32* @OPT_Wattributes, align 4
  %74 = load i64, i64* %2, align 8
  %75 = load i64, i64* %4, align 8
  %76 = call i32 @warning(i32 %73, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i64 %74, i64 %75)
  br label %77

77:                                               ; preds = %72, %68, %64, %60
  br label %78

78:                                               ; preds = %77, %59
  br label %79

79:                                               ; preds = %78, %38, %33
  br label %80

80:                                               ; preds = %79
  %81 = load i64, i64* %4, align 8
  %82 = call i64 @TREE_CHAIN(i64 %81)
  store i64 %82, i64* %4, align 8
  br label %30

83:                                               ; preds = %30
  %84 = load i64, i64* %2, align 8
  %85 = call i64 @TYPE_BINFO(i64 %84)
  store i64 %85, i64* %3, align 8
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %124, %83
  %87 = load i64, i64* %3, align 8
  %88 = load i32, i32* %5, align 4
  %89 = load i64, i64* %4, align 8
  %90 = call i64 @BINFO_BASE_ITERATE(i64 %87, i32 %88, i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %127

92:                                               ; preds = %86
  %93 = load i64, i64* %4, align 8
  %94 = call i64 @TREE_TYPE(i64 %93)
  %95 = call i32 @type_visibility(i64 %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @VISIBILITY_ANON, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %108

99:                                               ; preds = %92
  %100 = call i32 (...) @in_main_input_context()
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %99
  %103 = load i64, i64* %2, align 8
  %104 = load i64, i64* %4, align 8
  %105 = call i64 @TREE_TYPE(i64 %104)
  %106 = call i32 @warning(i32 0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i64 %103, i64 %105)
  br label %107

107:                                              ; preds = %102, %99
  br label %123

108:                                              ; preds = %92
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @VISIBILITY_HIDDEN, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %122

112:                                              ; preds = %108
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* @VISIBILITY_HIDDEN, align 4
  %115 = icmp sge i32 %113, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %112
  %117 = load i32, i32* @OPT_Wattributes, align 4
  %118 = load i64, i64* %2, align 8
  %119 = load i64, i64* %4, align 8
  %120 = call i64 @TREE_TYPE(i64 %119)
  %121 = call i32 @warning(i32 %117, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i64 %118, i64 %120)
  br label %122

122:                                              ; preds = %116, %112, %108
  br label %123

123:                                              ; preds = %122, %107
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %5, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %5, align 4
  br label %86

127:                                              ; preds = %20, %86
  ret void
}

declare dso_local i32 @type_visibility(i64) #1

declare dso_local i64 @DECL_IN_SYSTEM_HEADER(i32) #1

declare dso_local i32 @TYPE_MAIN_DECL(i64) #1

declare dso_local i64 @CLASSTYPE_VISIBILITY_SPECIFIED(i64) #1

declare dso_local i64 @TYPE_FIELDS(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @strip_array_types(i64) #1

declare dso_local i32 @in_main_input_context(...) #1

declare dso_local i32 @warning(i32, i8*, i64, i64) #1

declare dso_local i64 @IS_AGGR_TYPE(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @TYPE_BINFO(i64) #1

declare dso_local i64 @BINFO_BASE_ITERATE(i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
