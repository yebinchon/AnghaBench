; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_arg_assoc_class.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_arg_assoc_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arg_lookup = type { i64, i32 }

@NULL_TREE = common dso_local global i32 0, align 4
@FUNCTION_DECL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arg_lookup*, i64)* @arg_assoc_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arg_assoc_class(%struct.arg_lookup* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.arg_lookup*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.arg_lookup* %0, %struct.arg_lookup** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @CLASS_TYPE_P(i64 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %148

17:                                               ; preds = %2
  %18 = load i64, i64* %5, align 8
  %19 = load %struct.arg_lookup*, %struct.arg_lookup** %4, align 8
  %20 = getelementptr inbounds %struct.arg_lookup, %struct.arg_lookup* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @purpose_member(i64 %18, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %148

25:                                               ; preds = %17
  %26 = load i64, i64* %5, align 8
  %27 = load i32, i32* @NULL_TREE, align 4
  %28 = load %struct.arg_lookup*, %struct.arg_lookup** %4, align 8
  %29 = getelementptr inbounds %struct.arg_lookup, %struct.arg_lookup* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @tree_cons(i64 %26, i32 %27, i32 %30)
  %32 = load %struct.arg_lookup*, %struct.arg_lookup** %4, align 8
  %33 = getelementptr inbounds %struct.arg_lookup, %struct.arg_lookup* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load i64, i64* %5, align 8
  %35 = call i64 @decl_namespace_context(i64 %34)
  store i64 %35, i64* %8, align 8
  %36 = load %struct.arg_lookup*, %struct.arg_lookup** %4, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call i64 @arg_assoc_namespace(%struct.arg_lookup* %36, i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %25
  store i32 1, i32* %3, align 4
  br label %148

41:                                               ; preds = %25
  %42 = load i64, i64* %5, align 8
  %43 = call i64 @TYPE_BINFO(i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %66

45:                                               ; preds = %41
  %46 = load i64, i64* %5, align 8
  %47 = call i64 @TYPE_BINFO(i64 %46)
  store i64 %47, i64* %10, align 8
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %62, %45
  %49 = load i64, i64* %10, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i64, i64* %11, align 8
  %52 = call i64 @BINFO_BASE_ITERATE(i64 %49, i32 %50, i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %48
  %55 = load %struct.arg_lookup*, %struct.arg_lookup** %4, align 8
  %56 = load i64, i64* %11, align 8
  %57 = call i64 @BINFO_TYPE(i64 %56)
  %58 = call i32 @arg_assoc_class(%struct.arg_lookup* %55, i64 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store i32 1, i32* %3, align 4
  br label %148

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %48

65:                                               ; preds = %48
  br label %66

66:                                               ; preds = %65, %41
  %67 = load i64, i64* %5, align 8
  %68 = call i32 @TYPE_MAIN_DECL(i64 %67)
  %69 = call i64 @DECL_FRIENDLIST(i32 %68)
  store i64 %69, i64* %6, align 8
  br label %70

70:                                               ; preds = %116, %66
  %71 = load i64, i64* %6, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %119

73:                                               ; preds = %70
  %74 = load %struct.arg_lookup*, %struct.arg_lookup** %4, align 8
  %75 = getelementptr inbounds %struct.arg_lookup, %struct.arg_lookup* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %6, align 8
  %78 = call i64 @FRIEND_NAME(i64 %77)
  %79 = icmp eq i64 %76, %78
  br i1 %79, label %80, label %115

80:                                               ; preds = %73
  %81 = load i64, i64* %6, align 8
  %82 = call i64 @FRIEND_DECLS(i64 %81)
  store i64 %82, i64* %7, align 8
  br label %83

83:                                               ; preds = %111, %80
  %84 = load i64, i64* %7, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %114

86:                                               ; preds = %83
  %87 = load i64, i64* %7, align 8
  %88 = call i64 @TREE_VALUE(i64 %87)
  store i64 %88, i64* %12, align 8
  %89 = load i64, i64* %12, align 8
  %90 = call i64 @CP_DECL_CONTEXT(i64 %89)
  %91 = load i64, i64* %8, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  br label %111

94:                                               ; preds = %86
  %95 = load i64, i64* %12, align 8
  %96 = call i64 @TREE_CODE(i64 %95)
  %97 = load i64, i64* @FUNCTION_DECL, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load i64, i64* %12, align 8
  %101 = call i64 @DECL_USE_TEMPLATE(i64 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  br label %111

104:                                              ; preds = %99, %94
  %105 = load %struct.arg_lookup*, %struct.arg_lookup** %4, align 8
  %106 = load i64, i64* %12, align 8
  %107 = call i64 @add_function(%struct.arg_lookup* %105, i64 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  store i32 1, i32* %3, align 4
  br label %148

110:                                              ; preds = %104
  br label %111

111:                                              ; preds = %110, %103, %93
  %112 = load i64, i64* %7, align 8
  %113 = call i64 @TREE_CHAIN(i64 %112)
  store i64 %113, i64* %7, align 8
  br label %83

114:                                              ; preds = %83
  br label %115

115:                                              ; preds = %114, %73
  br label %116

116:                                              ; preds = %115
  %117 = load i64, i64* %6, align 8
  %118 = call i64 @TREE_CHAIN(i64 %117)
  store i64 %118, i64* %6, align 8
  br label %70

119:                                              ; preds = %70
  %120 = load i64, i64* %5, align 8
  %121 = call i64 @CLASSTYPE_TEMPLATE_INFO(i64 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %147

123:                                              ; preds = %119
  %124 = load i64, i64* %5, align 8
  %125 = call i32 @CLASSTYPE_TI_TEMPLATE(i64 %124)
  %126 = call i64 @PRIMARY_TEMPLATE_P(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %147

128:                                              ; preds = %123
  %129 = load i64, i64* %5, align 8
  %130 = call i32 @CLASSTYPE_TI_ARGS(i64 %129)
  %131 = call i64 @INNERMOST_TEMPLATE_ARGS(i32 %130)
  store i64 %131, i64* %6, align 8
  store i32 0, i32* %9, align 4
  br label %132

132:                                              ; preds = %143, %128
  %133 = load i32, i32* %9, align 4
  %134 = load i64, i64* %6, align 8
  %135 = call i32 @TREE_VEC_LENGTH(i64 %134)
  %136 = icmp slt i32 %133, %135
  br i1 %136, label %137, label %146

137:                                              ; preds = %132
  %138 = load %struct.arg_lookup*, %struct.arg_lookup** %4, align 8
  %139 = load i64, i64* %6, align 8
  %140 = load i32, i32* %9, align 4
  %141 = call i32 @TREE_VEC_ELT(i64 %139, i32 %140)
  %142 = call i32 @arg_assoc_template_arg(%struct.arg_lookup* %138, i32 %141)
  br label %143

143:                                              ; preds = %137
  %144 = load i32, i32* %9, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %9, align 4
  br label %132

146:                                              ; preds = %132
  br label %147

147:                                              ; preds = %146, %123, %119
  store i32 0, i32* %3, align 4
  br label %148

148:                                              ; preds = %147, %109, %60, %40, %24, %16
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i32 @CLASS_TYPE_P(i64) #1

declare dso_local i64 @purpose_member(i64, i32) #1

declare dso_local i32 @tree_cons(i64, i32, i32) #1

declare dso_local i64 @decl_namespace_context(i64) #1

declare dso_local i64 @arg_assoc_namespace(%struct.arg_lookup*, i64) #1

declare dso_local i64 @TYPE_BINFO(i64) #1

declare dso_local i64 @BINFO_BASE_ITERATE(i64, i32, i64) #1

declare dso_local i64 @BINFO_TYPE(i64) #1

declare dso_local i64 @DECL_FRIENDLIST(i32) #1

declare dso_local i32 @TYPE_MAIN_DECL(i64) #1

declare dso_local i64 @FRIEND_NAME(i64) #1

declare dso_local i64 @FRIEND_DECLS(i64) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i64 @CP_DECL_CONTEXT(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @DECL_USE_TEMPLATE(i64) #1

declare dso_local i64 @add_function(%struct.arg_lookup*, i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @CLASSTYPE_TEMPLATE_INFO(i64) #1

declare dso_local i64 @PRIMARY_TEMPLATE_P(i32) #1

declare dso_local i32 @CLASSTYPE_TI_TEMPLATE(i64) #1

declare dso_local i64 @INNERMOST_TEMPLATE_ARGS(i32) #1

declare dso_local i32 @CLASSTYPE_TI_ARGS(i64) #1

declare dso_local i32 @TREE_VEC_LENGTH(i64) #1

declare dso_local i32 @arg_assoc_template_arg(%struct.arg_lookup*, i32) #1

declare dso_local i32 @TREE_VEC_ELT(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
