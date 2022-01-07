; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_strchr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_strchr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POINTER_TYPE = common dso_local global i32 0, align 4
@INTEGER_TYPE = common dso_local global i32 0, align 4
@VOID_TYPE = common dso_local global i32 0, align 4
@INTEGER_CST = common dso_local global i64 0, align 8
@PLUS_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @fold_builtin_strchr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fold_builtin_strchr(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @POINTER_TYPE, align 4
  %14 = load i32, i32* @INTEGER_TYPE, align 4
  %15 = load i32, i32* @VOID_TYPE, align 4
  %16 = call i32 @validate_arglist(i32 %12, i32 %13, i32 %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %69

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @TREE_VALUE(i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @TREE_CHAIN(i32 %22)
  %24 = call i32 @TREE_VALUE(i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @TREE_CODE(i32 %25)
  %27 = load i64, i64* @INTEGER_CST, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %69

30:                                               ; preds = %19
  %31 = load i32, i32* %6, align 4
  %32 = call i8* @c_getstr(i32 %31)
  store i8* %32, i8** %8, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %68

35:                                               ; preds = %30
  %36 = load i32, i32* %7, align 4
  %37 = call i64 @target_char_cast(i32 %36, i8* %9)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %69

40:                                               ; preds = %35
  %41 = load i8*, i8** %8, align 8
  %42 = load i8, i8* %9, align 1
  %43 = call i8* @strchr(i8* %41, i8 signext %42)
  store i8* %43, i8** %10, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @TREE_TYPE(i32 %47)
  %49 = call i32 @build_int_cst(i32 %48, i32 0)
  store i32 %49, i32* %3, align 4
  br label %69

50:                                               ; preds = %40
  %51 = load i32, i32* @PLUS_EXPR, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @TREE_TYPE(i32 %52)
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @TREE_TYPE(i32 %55)
  %57 = load i8*, i8** %10, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = ptrtoint i8* %57 to i64
  %60 = ptrtoint i8* %58 to i64
  %61 = sub i64 %59, %60
  %62 = trunc i64 %61 to i32
  %63 = call i32 @build_int_cst(i32 %56, i32 %62)
  %64 = call i32 @fold_build2(i32 %51, i32 %53, i32 %54, i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @fold_convert(i32 %65, i32 %66)
  store i32 %67, i32* %3, align 4
  br label %69

68:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %50, %46, %39, %29, %18
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @validate_arglist(i32, i32, i32, i32) #1

declare dso_local i32 @TREE_VALUE(i32) #1

declare dso_local i32 @TREE_CHAIN(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i8* @c_getstr(i32) #1

declare dso_local i64 @target_char_cast(i32, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @build_int_cst(i32, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @fold_build2(i32, i32, i32, i32) #1

declare dso_local i32 @fold_convert(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
