; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_add_template_candidate_real.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_add_template_candidate_real.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z_candidate = type { i32 }

@tf_none = common dso_local global i32 0, align 4
@error_mark_node = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.z_candidate* (%struct.z_candidate**, i64, i64, i64, i64, i64, i64, i64, i32, i64, i32)* @add_template_candidate_real to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.z_candidate* @add_template_candidate_real(%struct.z_candidate** %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i32 %8, i64 %9, i32 %10) #0 {
  %12 = alloca %struct.z_candidate*, align 8
  %13 = alloca %struct.z_candidate**, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca %struct.z_candidate*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  store %struct.z_candidate** %0, %struct.z_candidate*** %13, align 8
  store i64 %1, i64* %14, align 8
  store i64 %2, i64* %15, align 8
  store i64 %3, i64* %16, align 8
  store i64 %4, i64* %17, align 8
  store i64 %5, i64* %18, align 8
  store i64 %6, i64* %19, align 8
  store i64 %7, i64* %20, align 8
  store i32 %8, i32* %21, align 4
  store i64 %9, i64* %22, align 8
  store i32 %10, i32* %23, align 4
  %31 = load i64, i64* %14, align 8
  %32 = call i32 @DECL_NTPARMS(i64 %31)
  store i32 %32, i32* %24, align 4
  %33 = load i32, i32* %24, align 4
  %34 = call i64 @make_tree_vec(i32 %33)
  store i64 %34, i64* %25, align 8
  %35 = load i64, i64* %17, align 8
  store i64 %35, i64* %26, align 8
  %36 = load i64, i64* %14, align 8
  %37 = call i64 @DECL_NONSTATIC_MEMBER_FUNCTION_P(i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %11
  %40 = load i64, i64* %26, align 8
  %41 = call i64 @TREE_CHAIN(i64 %40)
  store i64 %41, i64* %26, align 8
  br label %42

42:                                               ; preds = %39, %11
  %43 = load i64, i64* %14, align 8
  %44 = call i64 @DECL_MAYBE_IN_CHARGE_CONSTRUCTOR_P(i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load i64, i64* %14, align 8
  %48 = call i64 @DECL_BASE_CONSTRUCTOR_P(i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %46, %42
  %51 = load i64, i64* %14, align 8
  %52 = call i32 @DECL_CONTEXT(i64 %51)
  %53 = call i64 @CLASSTYPE_VBASECLASSES(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i64, i64* %26, align 8
  %57 = call i64 @TREE_CHAIN(i64 %56)
  store i64 %57, i64* %26, align 8
  br label %58

58:                                               ; preds = %55, %50, %46
  %59 = load i64, i64* %14, align 8
  %60 = load i64, i64* %16, align 8
  %61 = load i64, i64* %25, align 8
  %62 = load i64, i64* %26, align 8
  %63 = load i64, i64* %18, align 8
  %64 = load i32, i32* %23, align 4
  %65 = load i32, i32* %21, align 4
  %66 = call i32 @fn_type_unification(i64 %59, i64 %60, i64 %61, i64 %62, i64 %63, i32 %64, i32 %65)
  store i32 %66, i32* %28, align 4
  %67 = load i32, i32* %28, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %58
  store %struct.z_candidate* null, %struct.z_candidate** %12, align 8
  br label %141

70:                                               ; preds = %58
  %71 = load i64, i64* %14, align 8
  %72 = load i64, i64* %25, align 8
  %73 = load i32, i32* @tf_none, align 4
  %74 = call i64 @instantiate_template(i64 %71, i64 %72, i32 %73)
  store i64 %74, i64* %29, align 8
  %75 = load i64, i64* %29, align 8
  %76 = load i64, i64* @error_mark_node, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  store %struct.z_candidate* null, %struct.z_candidate** %12, align 8
  br label %141

79:                                               ; preds = %70
  %80 = load i64, i64* %29, align 8
  %81 = call i64 @DECL_CONSTRUCTOR_P(i64 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %101

83:                                               ; preds = %79
  %84 = load i64, i64* %17, align 8
  %85 = call i32 @list_length(i64 %84)
  %86 = icmp eq i32 %85, 2
  br i1 %86, label %87, label %101

87:                                               ; preds = %83
  %88 = load i64, i64* %29, align 8
  %89 = call i64 @FUNCTION_FIRST_USER_PARMTYPE(i64 %88)
  store i64 %89, i64* %30, align 8
  %90 = load i64, i64* %30, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %87
  %93 = load i64, i64* %30, align 8
  %94 = call i32 @TREE_VALUE(i64 %93)
  %95 = call i32 @TYPE_MAIN_VARIANT(i32 %94)
  %96 = load i64, i64* %15, align 8
  %97 = call i64 @same_type_p(i32 %95, i64 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  store %struct.z_candidate* null, %struct.z_candidate** %12, align 8
  br label %141

100:                                              ; preds = %92, %87
  br label %101

101:                                              ; preds = %100, %83, %79
  %102 = load i64, i64* %22, align 8
  %103 = load i64, i64* @NULL_TREE, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %113

105:                                              ; preds = %101
  %106 = load %struct.z_candidate**, %struct.z_candidate*** %13, align 8
  %107 = load i64, i64* %29, align 8
  %108 = load i64, i64* %22, align 8
  %109 = load i64, i64* %19, align 8
  %110 = load i64, i64* %20, align 8
  %111 = load i64, i64* %17, align 8
  %112 = call %struct.z_candidate* @add_conv_candidate(%struct.z_candidate** %106, i64 %107, i64 %108, i64 %109, i64 %110, i64 %111)
  store %struct.z_candidate* %112, %struct.z_candidate** %27, align 8
  br label %122

113:                                              ; preds = %101
  %114 = load %struct.z_candidate**, %struct.z_candidate*** %13, align 8
  %115 = load i64, i64* %29, align 8
  %116 = load i64, i64* %15, align 8
  %117 = load i64, i64* %17, align 8
  %118 = load i64, i64* %19, align 8
  %119 = load i64, i64* %20, align 8
  %120 = load i32, i32* %21, align 4
  %121 = call %struct.z_candidate* @add_function_candidate(%struct.z_candidate** %114, i64 %115, i64 %116, i64 %117, i64 %118, i64 %119, i32 %120)
  store %struct.z_candidate* %121, %struct.z_candidate** %27, align 8
  br label %122

122:                                              ; preds = %113, %105
  %123 = load i64, i64* %29, align 8
  %124 = call i64 @DECL_TI_TEMPLATE(i64 %123)
  %125 = load i64, i64* %14, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %122
  %128 = load i64, i64* %14, align 8
  %129 = load i64, i64* %25, align 8
  %130 = load i64, i64* @NULL_TREE, align 8
  %131 = call i32 @tree_cons(i64 %128, i64 %129, i64 %130)
  %132 = load %struct.z_candidate*, %struct.z_candidate** %27, align 8
  %133 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 4
  br label %139

134:                                              ; preds = %122
  %135 = load i64, i64* %29, align 8
  %136 = call i32 @DECL_TEMPLATE_INFO(i64 %135)
  %137 = load %struct.z_candidate*, %struct.z_candidate** %27, align 8
  %138 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 4
  br label %139

139:                                              ; preds = %134, %127
  %140 = load %struct.z_candidate*, %struct.z_candidate** %27, align 8
  store %struct.z_candidate* %140, %struct.z_candidate** %12, align 8
  br label %141

141:                                              ; preds = %139, %99, %78, %69
  %142 = load %struct.z_candidate*, %struct.z_candidate** %12, align 8
  ret %struct.z_candidate* %142
}

declare dso_local i32 @DECL_NTPARMS(i64) #1

declare dso_local i64 @make_tree_vec(i32) #1

declare dso_local i64 @DECL_NONSTATIC_MEMBER_FUNCTION_P(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @DECL_MAYBE_IN_CHARGE_CONSTRUCTOR_P(i64) #1

declare dso_local i64 @DECL_BASE_CONSTRUCTOR_P(i64) #1

declare dso_local i64 @CLASSTYPE_VBASECLASSES(i32) #1

declare dso_local i32 @DECL_CONTEXT(i64) #1

declare dso_local i32 @fn_type_unification(i64, i64, i64, i64, i64, i32, i32) #1

declare dso_local i64 @instantiate_template(i64, i64, i32) #1

declare dso_local i64 @DECL_CONSTRUCTOR_P(i64) #1

declare dso_local i32 @list_length(i64) #1

declare dso_local i64 @FUNCTION_FIRST_USER_PARMTYPE(i64) #1

declare dso_local i64 @same_type_p(i32, i64) #1

declare dso_local i32 @TYPE_MAIN_VARIANT(i32) #1

declare dso_local i32 @TREE_VALUE(i64) #1

declare dso_local %struct.z_candidate* @add_conv_candidate(%struct.z_candidate**, i64, i64, i64, i64, i64) #1

declare dso_local %struct.z_candidate* @add_function_candidate(%struct.z_candidate**, i64, i64, i64, i64, i64, i32) #1

declare dso_local i64 @DECL_TI_TEMPLATE(i64) #1

declare dso_local i32 @tree_cons(i64, i64, i64) #1

declare dso_local i32 @DECL_TEMPLATE_INFO(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
