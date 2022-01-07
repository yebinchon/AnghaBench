; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_strcat_chk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_strcat_chk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POINTER_TYPE = common dso_local global i32 0, align 4
@INTEGER_TYPE = common dso_local global i32 0, align 4
@VOID_TYPE = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@built_in_decls = common dso_local global i32* null, align 8
@BUILT_IN_STRCAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @fold_builtin_strcat_chk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fold_builtin_strcat_chk(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @POINTER_TYPE, align 4
  %13 = load i32, i32* @POINTER_TYPE, align 4
  %14 = load i32, i32* @INTEGER_TYPE, align 4
  %15 = load i32, i32* @VOID_TYPE, align 4
  %16 = call i32 @validate_arglist(i32 %11, i32 %12, i32 %13, i32 %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %73

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @TREE_VALUE(i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @TREE_CHAIN(i32 %22)
  %24 = call i32 @TREE_VALUE(i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @TREE_CHAIN(i32 %25)
  %27 = call i32 @TREE_CHAIN(i32 %26)
  %28 = call i32 @TREE_VALUE(i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i8* @c_getstr(i32 %29)
  store i8* %30, i8** %10, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %45

33:                                               ; preds = %19
  %34 = load i8*, i8** %10, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @TREE_TYPE(i32 %39)
  %41 = call i32 @TREE_TYPE(i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @omit_one_operand(i32 %41, i32 %42, i32 %43)
  store i32 %44, i32* %3, align 4
  br label %73

45:                                               ; preds = %33, %19
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @host_integerp(i32 %46, i32 1)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @integer_all_onesp(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49, %45
  store i32 0, i32* %3, align 4
  br label %73

54:                                               ; preds = %49
  %55 = load i32, i32* @NULL_TREE, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @build_tree_list(i32 %55, i32 %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* @NULL_TREE, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @tree_cons(i32 %58, i32 %59, i32 %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32*, i32** @built_in_decls, align 8
  %63 = load i64, i64* @BUILT_IN_STRCAT, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %73

69:                                               ; preds = %54
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @build_function_call_expr(i32 %70, i32 %71)
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %69, %68, %53, %38, %18
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @validate_arglist(i32, i32, i32, i32, i32) #1

declare dso_local i32 @TREE_VALUE(i32) #1

declare dso_local i32 @TREE_CHAIN(i32) #1

declare dso_local i8* @c_getstr(i32) #1

declare dso_local i32 @omit_one_operand(i32, i32, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @host_integerp(i32, i32) #1

declare dso_local i32 @integer_all_onesp(i32) #1

declare dso_local i32 @build_tree_list(i32, i32) #1

declare dso_local i32 @tree_cons(i32, i32, i32) #1

declare dso_local i32 @build_function_call_expr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
