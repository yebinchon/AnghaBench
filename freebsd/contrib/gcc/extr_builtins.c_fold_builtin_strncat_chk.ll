; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_strncat_chk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_strncat_chk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POINTER_TYPE = common dso_local global i32 0, align 4
@INTEGER_TYPE = common dso_local global i32 0, align 4
@VOID_TYPE = common dso_local global i32 0, align 4
@built_in_decls = common dso_local global i64* null, align 8
@BUILT_IN_STRCAT_CHK = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i32 0, align 4
@BUILT_IN_STRNCAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @fold_builtin_strncat_chk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fold_builtin_strncat_chk(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i32, i32* @POINTER_TYPE, align 4
  %15 = load i32, i32* @POINTER_TYPE, align 4
  %16 = load i32, i32* @INTEGER_TYPE, align 4
  %17 = load i32, i32* @INTEGER_TYPE, align 4
  %18 = load i32, i32* @VOID_TYPE, align 4
  %19 = call i32 @validate_arglist(i64 %13, i32 %14, i32 %15, i32 %16, i32 %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %139

22:                                               ; preds = %2
  %23 = load i64, i64* %5, align 8
  %24 = call i64 @TREE_VALUE(i64 %23)
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call i64 @TREE_CHAIN(i64 %25)
  %27 = call i64 @TREE_VALUE(i64 %26)
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %5, align 8
  %29 = call i64 @TREE_CHAIN(i64 %28)
  %30 = call i64 @TREE_CHAIN(i64 %29)
  %31 = call i64 @TREE_VALUE(i64 %30)
  store i64 %31, i64* %9, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i64 @TREE_CHAIN(i64 %32)
  %34 = call i64 @TREE_CHAIN(i64 %33)
  %35 = call i64 @TREE_CHAIN(i64 %34)
  %36 = call i64 @TREE_VALUE(i64 %35)
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i8* @c_getstr(i64 %37)
  store i8* %38, i8** %11, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %53

41:                                               ; preds = %22
  %42 = load i8*, i8** %11, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load i64, i64* %4, align 8
  %48 = call i64 @TREE_TYPE(i64 %47)
  %49 = call i64 @TREE_TYPE(i64 %48)
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* %9, align 8
  %52 = call i64 @omit_one_operand(i64 %49, i64 %50, i64 %51)
  store i64 %52, i64* %3, align 8
  br label %139

53:                                               ; preds = %41, %22
  %54 = load i64, i64* %9, align 8
  %55 = call i64 @integer_zerop(i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = load i64, i64* %4, align 8
  %59 = call i64 @TREE_TYPE(i64 %58)
  %60 = call i64 @TREE_TYPE(i64 %59)
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* %7, align 8
  %63 = call i64 @omit_one_operand(i64 %60, i64 %61, i64 %62)
  store i64 %63, i64* %3, align 8
  br label %139

64:                                               ; preds = %53
  br label %65

65:                                               ; preds = %64
  %66 = load i64, i64* %8, align 8
  %67 = call i64 @host_integerp(i64 %66, i32 1)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  store i64 0, i64* %3, align 8
  br label %139

70:                                               ; preds = %65
  %71 = load i64, i64* %8, align 8
  %72 = call i32 @integer_all_onesp(i64 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %116, label %74

74:                                               ; preds = %70
  %75 = load i64, i64* %7, align 8
  %76 = call i64 @c_strlen(i64 %75, i32 1)
  store i64 %76, i64* %12, align 8
  %77 = load i64, i64* %12, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %115

79:                                               ; preds = %74
  %80 = load i64, i64* %12, align 8
  %81 = call i64 @host_integerp(i64 %80, i32 1)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %115

83:                                               ; preds = %79
  %84 = load i64, i64* %9, align 8
  %85 = call i64 @host_integerp(i64 %84, i32 1)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %115

87:                                               ; preds = %83
  %88 = load i64, i64* %9, align 8
  %89 = load i64, i64* %12, align 8
  %90 = call i32 @tree_int_cst_lt(i64 %88, i64 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %115, label %92

92:                                               ; preds = %87
  %93 = load i64*, i64** @built_in_decls, align 8
  %94 = load i64, i64* @BUILT_IN_STRCAT_CHK, align 8
  %95 = getelementptr inbounds i64, i64* %93, i64 %94
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %10, align 8
  %97 = load i64, i64* %10, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %92
  store i64 0, i64* %3, align 8
  br label %139

100:                                              ; preds = %92
  %101 = load i32, i32* @NULL_TREE, align 4
  %102 = load i64, i64* %8, align 8
  %103 = call i64 @build_tree_list(i32 %101, i64 %102)
  store i64 %103, i64* %5, align 8
  %104 = load i32, i32* @NULL_TREE, align 4
  %105 = load i64, i64* %7, align 8
  %106 = load i64, i64* %5, align 8
  %107 = call i64 @tree_cons(i32 %104, i64 %105, i64 %106)
  store i64 %107, i64* %5, align 8
  %108 = load i32, i32* @NULL_TREE, align 4
  %109 = load i64, i64* %6, align 8
  %110 = load i64, i64* %5, align 8
  %111 = call i64 @tree_cons(i32 %108, i64 %109, i64 %110)
  store i64 %111, i64* %5, align 8
  %112 = load i64, i64* %10, align 8
  %113 = load i64, i64* %5, align 8
  %114 = call i64 @build_function_call_expr(i64 %112, i64 %113)
  store i64 %114, i64* %3, align 8
  br label %139

115:                                              ; preds = %87, %83, %79, %74
  store i64 0, i64* %3, align 8
  br label %139

116:                                              ; preds = %70
  %117 = load i32, i32* @NULL_TREE, align 4
  %118 = load i64, i64* %9, align 8
  %119 = call i64 @build_tree_list(i32 %117, i64 %118)
  store i64 %119, i64* %5, align 8
  %120 = load i32, i32* @NULL_TREE, align 4
  %121 = load i64, i64* %7, align 8
  %122 = load i64, i64* %5, align 8
  %123 = call i64 @tree_cons(i32 %120, i64 %121, i64 %122)
  store i64 %123, i64* %5, align 8
  %124 = load i32, i32* @NULL_TREE, align 4
  %125 = load i64, i64* %6, align 8
  %126 = load i64, i64* %5, align 8
  %127 = call i64 @tree_cons(i32 %124, i64 %125, i64 %126)
  store i64 %127, i64* %5, align 8
  %128 = load i64*, i64** @built_in_decls, align 8
  %129 = load i64, i64* @BUILT_IN_STRNCAT, align 8
  %130 = getelementptr inbounds i64, i64* %128, i64 %129
  %131 = load i64, i64* %130, align 8
  store i64 %131, i64* %10, align 8
  %132 = load i64, i64* %10, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %116
  store i64 0, i64* %3, align 8
  br label %139

135:                                              ; preds = %116
  %136 = load i64, i64* %10, align 8
  %137 = load i64, i64* %5, align 8
  %138 = call i64 @build_function_call_expr(i64 %136, i64 %137)
  store i64 %138, i64* %3, align 8
  br label %139

139:                                              ; preds = %135, %134, %115, %100, %99, %69, %57, %46, %21
  %140 = load i64, i64* %3, align 8
  ret i64 %140
}

declare dso_local i32 @validate_arglist(i64, i32, i32, i32, i32, i32) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i8* @c_getstr(i64) #1

declare dso_local i64 @omit_one_operand(i64, i64, i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @integer_zerop(i64) #1

declare dso_local i64 @host_integerp(i64, i32) #1

declare dso_local i32 @integer_all_onesp(i64) #1

declare dso_local i64 @c_strlen(i64, i32) #1

declare dso_local i32 @tree_int_cst_lt(i64, i64) #1

declare dso_local i64 @build_tree_list(i32, i64) #1

declare dso_local i64 @tree_cons(i32, i64, i64) #1

declare dso_local i64 @build_function_call_expr(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
