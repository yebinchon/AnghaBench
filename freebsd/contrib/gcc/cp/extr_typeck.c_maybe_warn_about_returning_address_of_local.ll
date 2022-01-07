; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_maybe_warn_about_returning_address_of_local.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_maybe_warn_about_returning_address_of_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current_function_decl = common dso_local global i32 0, align 4
@COMPOUND_EXPR = common dso_local global i64 0, align 8
@CONVERT_EXPR = common dso_local global i64 0, align 8
@NON_LVALUE_EXPR = common dso_local global i64 0, align 8
@NOP_EXPR = common dso_local global i64 0, align 8
@ADDR_EXPR = common dso_local global i64 0, align 8
@REFERENCE_TYPE = common dso_local global i64 0, align 8
@AGGR_INIT_EXPR = common dso_local global i64 0, align 8
@TARGET_EXPR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"returning reference to temporary\00", align 1
@VAR_DECL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"reference to non-lvalue returned\00", align 1
@COMPONENT_REF = common dso_local global i64 0, align 8
@ARRAY_REF = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"reference to local variable %q+D returned\00", align 1
@BLOCK_POINTER_TYPE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [46 x i8] c"returning block that lives on the local stack\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"address of local variable %q+D returned\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @maybe_warn_about_returning_address_of_local to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @maybe_warn_about_returning_address_of_local(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @current_function_decl, align 4
  %6 = call i32 @DECL_RESULT(i32 %5)
  %7 = call i32 @TREE_TYPE(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %2, align 4
  store i32 %8, i32* %4, align 4
  br label %9

9:                                                ; preds = %37, %1
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @TREE_CODE(i32 %10)
  %12 = load i64, i64* @COMPOUND_EXPR, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @TREE_OPERAND(i32 %15, i32 1)
  store i32 %16, i32* %4, align 4
  br label %37

17:                                               ; preds = %9
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @TREE_CODE(i32 %18)
  %20 = load i64, i64* @CONVERT_EXPR, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %32, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* %4, align 4
  %24 = call i64 @TREE_CODE(i32 %23)
  %25 = load i64, i64* @NON_LVALUE_EXPR, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %4, align 4
  %29 = call i64 @TREE_CODE(i32 %28)
  %30 = load i64, i64* @NOP_EXPR, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %27, %22, %17
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @TREE_OPERAND(i32 %33, i32 0)
  store i32 %34, i32* %4, align 4
  br label %36

35:                                               ; preds = %27
  br label %38

36:                                               ; preds = %32
  br label %37

37:                                               ; preds = %36, %14
  br label %9

38:                                               ; preds = %35
  %39 = load i32, i32* %4, align 4
  %40 = call i64 @TREE_CODE(i32 %39)
  %41 = load i64, i64* @ADDR_EXPR, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %136

44:                                               ; preds = %38
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @TREE_OPERAND(i32 %45, i32 0)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %3, align 4
  %48 = call i64 @TREE_CODE(i32 %47)
  %49 = load i64, i64* @REFERENCE_TYPE, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %80

51:                                               ; preds = %44
  %52 = load i32, i32* %4, align 4
  %53 = call i64 @TREE_CODE(i32 %52)
  %54 = load i64, i64* @AGGR_INIT_EXPR, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* %4, align 4
  %58 = call i64 @TREE_CODE(i32 %57)
  %59 = load i64, i64* @TARGET_EXPR, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %56, %51
  %62 = call i32 (i32, i8*, ...) @warning(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %136

63:                                               ; preds = %56
  %64 = load i32, i32* %4, align 4
  %65 = call i64 @TREE_CODE(i32 %64)
  %66 = load i64, i64* @VAR_DECL, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %63
  %69 = load i32, i32* %4, align 4
  %70 = call i64 @DECL_NAME(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %68
  %73 = load i32, i32* %4, align 4
  %74 = call i64 @DECL_NAME(i32 %73)
  %75 = call i64 @TEMP_NAME_P(i64 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = call i32 (i32, i8*, ...) @warning(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %136

79:                                               ; preds = %72, %68, %63
  br label %80

80:                                               ; preds = %79, %44
  br label %81

81:                                               ; preds = %93, %80
  %82 = load i32, i32* %4, align 4
  %83 = call i64 @TREE_CODE(i32 %82)
  %84 = load i64, i64* @COMPONENT_REF, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %91, label %86

86:                                               ; preds = %81
  %87 = load i32, i32* %4, align 4
  %88 = call i64 @TREE_CODE(i32 %87)
  %89 = load i64, i64* @ARRAY_REF, align 8
  %90 = icmp eq i64 %88, %89
  br label %91

91:                                               ; preds = %86, %81
  %92 = phi i1 [ true, %81 ], [ %90, %86 ]
  br i1 %92, label %93, label %96

93:                                               ; preds = %91
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @TREE_OPERAND(i32 %94, i32 0)
  store i32 %95, i32* %4, align 4
  br label %81

96:                                               ; preds = %91
  %97 = load i32, i32* %4, align 4
  %98 = call i64 @DECL_P(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %136

100:                                              ; preds = %96
  %101 = load i32, i32* %4, align 4
  %102 = call i64 @DECL_NAME(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %136

104:                                              ; preds = %100
  %105 = load i32, i32* %4, align 4
  %106 = call i64 @DECL_FUNCTION_SCOPE_P(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %136

108:                                              ; preds = %104
  %109 = load i32, i32* %4, align 4
  %110 = call i64 @TREE_STATIC(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %136, label %112

112:                                              ; preds = %108
  %113 = load i32, i32* %4, align 4
  %114 = call i64 @TREE_PUBLIC(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %136, label %116

116:                                              ; preds = %112
  %117 = load i32, i32* %3, align 4
  %118 = call i64 @TREE_CODE(i32 %117)
  %119 = load i64, i64* @REFERENCE_TYPE, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load i32, i32* %4, align 4
  %123 = call i32 (i32, i8*, ...) @warning(i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %122)
  br label %135

124:                                              ; preds = %116
  %125 = load i32, i32* %3, align 4
  %126 = call i64 @TREE_CODE(i32 %125)
  %127 = load i64, i64* @BLOCK_POINTER_TYPE, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %124
  %130 = call i32 @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  br label %134

131:                                              ; preds = %124
  %132 = load i32, i32* %4, align 4
  %133 = call i32 (i32, i8*, ...) @warning(i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %132)
  br label %134

134:                                              ; preds = %131, %129
  br label %135

135:                                              ; preds = %134, %121
  br label %136

136:                                              ; preds = %43, %61, %77, %135, %112, %108, %104, %100, %96
  ret void
}

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @DECL_RESULT(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @warning(i32, i8*, ...) #1

declare dso_local i64 @DECL_NAME(i32) #1

declare dso_local i64 @TEMP_NAME_P(i64) #1

declare dso_local i64 @DECL_P(i32) #1

declare dso_local i64 @DECL_FUNCTION_SCOPE_P(i32) #1

declare dso_local i64 @TREE_STATIC(i32) #1

declare dso_local i64 @TREE_PUBLIC(i32) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
