; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-alias-warnings.c_strict_aliasing_warn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-alias-warnings.c_strict_aliasing_warn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i32 0, align 4
@SSA_NAME = common dso_local global i64 0, align 8
@OPT_Wstrict_aliasing = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [216 x i8] c"%Hlikely type-punning may break strict-aliasing rules: object %<%s%s%> of main type %qT is referenced at or around %s:%d and may be aliased to object %<%s%s%> of main type %qT which is referenced at or around %s:%d.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32)* @strict_aliasing_warn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @strict_aliasing_warn(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %21 = load i32, i32* @NULL_TREE, align 4
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* @NULL_TREE, align 4
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @gcc_assert(i32 %23)
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @gcc_assert(i32 %25)
  %27 = load i32, i32* %9, align 4
  %28 = call i64 @contains_artificial_name_p(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %6
  %31 = load i32, i32* %11, align 4
  %32 = call i64 @contains_artificial_name_p(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30, %6
  store i32 0, i32* %7, align 4
  br label %146

35:                                               ; preds = %30
  %36 = load i32, i32* %9, align 4
  %37 = call i8* @get_var_name(i32 %36)
  store i8* %37, i8** %16, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i8* @get_var_name(i32 %38)
  store i8* %39, i8** %17, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @TREE_TYPE(i32 %40)
  %42 = call i32 @get_main_type(i32 %41)
  %43 = call i64 @is_method_pointer(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  store i32 0, i32* %7, align 4
  br label %146

46:                                               ; preds = %35
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @maybe_find_missing_stmts(i32 %47, i32 %48, i32 %49, i32 %50, i32* %8, i32* %14, i32* %15)
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %46
  store i32 0, i32* %7, align 4
  br label %146

55:                                               ; preds = %46
  %56 = load i32, i32* %8, align 4
  %57 = call i64 @EXPR_HAS_LOCATION(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @EXPR_LOCATION(i32 %60)
  store i32 %61, i32* %18, align 4
  br label %63

62:                                               ; preds = %55
  store i32 0, i32* %7, align 4
  br label %146

63:                                               ; preds = %59
  %64 = load i32, i32* %14, align 4
  %65 = call i64 @EXPR_HAS_LOCATION(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i32, i32* %14, align 4
  %69 = call i32 @EXPR_LOCATION(i32 %68)
  store i32 %69, i32* %19, align 4
  br label %72

70:                                               ; preds = %63
  %71 = load i32, i32* %18, align 4
  store i32 %71, i32* %19, align 4
  br label %72

72:                                               ; preds = %70, %67
  %73 = load i32, i32* %15, align 4
  %74 = call i64 @EXPR_HAS_LOCATION(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load i32, i32* %15, align 4
  %78 = call i32 @EXPR_LOCATION(i32 %77)
  store i32 %78, i32* %20, align 4
  br label %81

79:                                               ; preds = %72
  %80 = load i32, i32* %18, align 4
  store i32 %80, i32* %20, align 4
  br label %81

81:                                               ; preds = %79, %76
  %82 = load i32, i32* %8, align 4
  %83 = call i64 @already_warned_in_frontend_p(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store i32 0, i32* %7, align 4
  br label %146

86:                                               ; preds = %81
  %87 = load i32, i32* %13, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %121

89:                                               ; preds = %86
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @get_ssa_base(i32 %90)
  %92 = call i64 @find_first_artificial_name(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @get_ssa_base(i32 %95)
  %97 = call i64 @find_first_artificial_name(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %119, label %99

99:                                               ; preds = %94, %89
  %100 = load i32, i32* %9, align 4
  %101 = call i64 @TREE_CODE(i32 %100)
  %102 = load i64, i64* @SSA_NAME, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = load i32, i32* %9, align 4
  %106 = load i64, i64* @SSA_NAME, align 8
  %107 = call i64 @contains_node_type_p(i32 %105, i64 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %119, label %109

109:                                              ; preds = %104, %99
  %110 = load i32, i32* %11, align 4
  %111 = call i64 @TREE_CODE(i32 %110)
  %112 = load i64, i64* @SSA_NAME, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %109
  %115 = load i32, i32* %11, align 4
  %116 = load i64, i64* @SSA_NAME, align 8
  %117 = call i64 @contains_node_type_p(i32 %115, i64 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %114, %104, %94
  store i32 0, i32* %7, align 4
  br label %146

120:                                              ; preds = %114, %109
  br label %121

121:                                              ; preds = %120, %86
  %122 = load i32, i32* @OPT_Wstrict_aliasing, align 4
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %10, align 4
  %125 = call i32 @get_maybe_star_prefix(i32 %123, i32 %124)
  %126 = load i8*, i8** %16, align 8
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* %10, align 4
  %129 = call i32 @get_otype(i32 %127, i32 %128)
  %130 = load i32, i32* %19, align 4
  %131 = call i32 @LOCATION_FILE(i32 %130)
  %132 = load i32, i32* %19, align 4
  %133 = call i32 @LOCATION_LINE(i32 %132)
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* %12, align 4
  %136 = call i32 @get_maybe_star_prefix(i32 %134, i32 %135)
  %137 = load i8*, i8** %17, align 8
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* %12, align 4
  %140 = call i32 @get_otype(i32 %138, i32 %139)
  %141 = load i32, i32* %20, align 4
  %142 = call i32 @LOCATION_FILE(i32 %141)
  %143 = load i32, i32* %20, align 4
  %144 = call i32 @LOCATION_LINE(i32 %143)
  %145 = call i32 @warning(i32 %122, i8* getelementptr inbounds ([216 x i8], [216 x i8]* @.str, i64 0, i64 0), i32* %18, i32 %125, i8* %126, i32 %129, i32 %131, i32 %133, i32 %136, i8* %137, i32 %140, i32 %142, i32 %144)
  store i32 1, i32* %7, align 4
  br label %146

146:                                              ; preds = %121, %119, %85, %62, %54, %45, %34
  %147 = load i32, i32* %7, align 4
  ret i32 %147
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @contains_artificial_name_p(i32) #1

declare dso_local i8* @get_var_name(i32) #1

declare dso_local i64 @is_method_pointer(i32) #1

declare dso_local i32 @get_main_type(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @maybe_find_missing_stmts(i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i64 @EXPR_HAS_LOCATION(i32) #1

declare dso_local i32 @EXPR_LOCATION(i32) #1

declare dso_local i64 @already_warned_in_frontend_p(i32) #1

declare dso_local i64 @find_first_artificial_name(i32) #1

declare dso_local i32 @get_ssa_base(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @contains_node_type_p(i32, i64) #1

declare dso_local i32 @warning(i32, i8*, i32*, i32, i8*, i32, i32, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @get_maybe_star_prefix(i32, i32) #1

declare dso_local i32 @get_otype(i32, i32) #1

declare dso_local i32 @LOCATION_FILE(i32) #1

declare dso_local i32 @LOCATION_LINE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
