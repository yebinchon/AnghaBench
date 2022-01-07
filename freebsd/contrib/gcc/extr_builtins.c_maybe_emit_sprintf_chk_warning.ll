; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_maybe_emit_sprintf_chk_warning.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_maybe_emit_sprintf_chk_warning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@target_percent = common dso_local global i32 0, align 4
@size_type_node = common dso_local global i32 0, align 4
@BUILT_IN_SPRINTF_CHK = common dso_local global i32 0, align 4
@target_percent_s = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"%Hcall to %D will always overflow destination buffer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @maybe_emit_sprintf_chk_warning to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @maybe_emit_sprintf_chk_warning(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load i64, i64* %3, align 8
  %15 = call i64 @TREE_OPERAND(i64 %14, i32 1)
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %121

19:                                               ; preds = %2
  %20 = load i64, i64* %5, align 8
  %21 = call i64 @TREE_VALUE(i64 %20)
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call i64 @TREE_CHAIN(i64 %22)
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  br label %121

27:                                               ; preds = %19
  %28 = load i64, i64* %5, align 8
  %29 = call i64 @TREE_VALUE(i64 %28)
  store i64 %29, i64* %10, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i64 @TREE_CHAIN(i64 %30)
  store i64 %31, i64* %5, align 8
  %32 = load i64, i64* %5, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  br label %121

35:                                               ; preds = %27
  %36 = load i64, i64* %5, align 8
  %37 = call i64 @TREE_VALUE(i64 %36)
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %5, align 8
  %39 = call i64 @TREE_CHAIN(i64 %38)
  store i64 %39, i64* %5, align 8
  %40 = load i64, i64* %5, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  br label %121

43:                                               ; preds = %35
  %44 = load i64, i64* %5, align 8
  %45 = call i64 @TREE_VALUE(i64 %44)
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %5, align 8
  %47 = call i64 @TREE_CHAIN(i64 %46)
  store i64 %47, i64* %5, align 8
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @host_integerp(i64 %48, i32 1)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %43
  %52 = load i64, i64* %7, align 8
  %53 = call i64 @integer_all_onesp(i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51, %43
  br label %121

56:                                               ; preds = %51
  %57 = load i64, i64* %9, align 8
  %58 = call i8* @c_getstr(i64 %57)
  store i8* %58, i8** %11, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %121

62:                                               ; preds = %56
  %63 = call i32 (...) @init_target_chars()
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  br label %121

66:                                               ; preds = %62
  %67 = load i8*, i8** %11, align 8
  %68 = load i32, i32* @target_percent, align 4
  %69 = call i64 @strchr(i8* %67, i32 %68)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load i32, i32* @size_type_node, align 4
  %73 = load i8*, i8** %11, align 8
  %74 = call i32 @strlen(i8* %73)
  %75 = call i64 @build_int_cstu(i32 %72, i32 %74)
  store i64 %75, i64* %8, align 8
  br label %110

76:                                               ; preds = %66
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @BUILT_IN_SPRINTF_CHK, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %108

80:                                               ; preds = %76
  %81 = load i8*, i8** %11, align 8
  %82 = load i32, i32* @target_percent_s, align 4
  %83 = call i64 @strcmp(i8* %81, i32 %82)
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %108

85:                                               ; preds = %80
  %86 = load i64, i64* %5, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %85
  br label %121

89:                                               ; preds = %85
  %90 = load i64, i64* %5, align 8
  %91 = call i64 @TREE_VALUE(i64 %90)
  store i64 %91, i64* %12, align 8
  %92 = load i64, i64* %12, align 8
  %93 = call i32 @TREE_TYPE(i64 %92)
  %94 = call i32 @POINTER_TYPE_P(i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %89
  br label %121

97:                                               ; preds = %89
  %98 = load i64, i64* %12, align 8
  %99 = call i64 @c_strlen(i64 %98, i32 1)
  store i64 %99, i64* %8, align 8
  %100 = load i64, i64* %8, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load i64, i64* %8, align 8
  %104 = call i32 @host_integerp(i64 %103, i32 1)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %102, %97
  br label %121

107:                                              ; preds = %102
  br label %109

108:                                              ; preds = %80, %76
  br label %121

109:                                              ; preds = %107
  br label %110

110:                                              ; preds = %109, %71
  %111 = load i64, i64* %8, align 8
  %112 = load i64, i64* %7, align 8
  %113 = call i32 @tree_int_cst_lt(i64 %111, i64 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %121, label %115

115:                                              ; preds = %110
  %116 = load i64, i64* %3, align 8
  %117 = call i32 @EXPR_LOCATION(i64 %116)
  store i32 %117, i32* %13, align 4
  %118 = load i64, i64* %3, align 8
  %119 = call i32 @get_callee_fndecl(i64 %118)
  %120 = call i32 @warning(i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32* %13, i32 %119)
  br label %121

121:                                              ; preds = %18, %26, %34, %42, %55, %61, %65, %88, %96, %106, %108, %115, %110
  ret void
}

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i32 @host_integerp(i64, i32) #1

declare dso_local i64 @integer_all_onesp(i64) #1

declare dso_local i8* @c_getstr(i64) #1

declare dso_local i32 @init_target_chars(...) #1

declare dso_local i64 @strchr(i8*, i32) #1

declare dso_local i64 @build_int_cstu(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @POINTER_TYPE_P(i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i64 @c_strlen(i64, i32) #1

declare dso_local i32 @tree_int_cst_lt(i64, i64) #1

declare dso_local i32 @EXPR_LOCATION(i64) #1

declare dso_local i32 @warning(i32, i8*, i32*, i32) #1

declare dso_local i32 @get_callee_fndecl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
