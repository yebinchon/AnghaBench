; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_fn_previously_found.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_fn_previously_found.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OVERLOAD = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i64 0, align 8
@FUNCTION_DECL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @fn_previously_found to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fn_previously_found(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %86

11:                                               ; preds = %2
  %12 = load i64, i64* %5, align 8
  %13 = call i64 @TREE_CODE(i64 %12)
  %14 = load i64, i64* @OVERLOAD, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %42

16:                                               ; preds = %11
  %17 = load i64, i64* %5, align 8
  %18 = call i64 @OVL_CHAIN(i64 %17)
  %19 = load i64, i64* @NULL_TREE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i64, i64* %5, align 8
  %23 = call i64 @OVL_CURRENT(i64 %22)
  store i64 %23, i64* %5, align 8
  br label %41

24:                                               ; preds = %16
  %25 = load i64, i64* %5, align 8
  store i64 %25, i64* %7, align 8
  br label %26

26:                                               ; preds = %37, %24
  %27 = load i64, i64* %7, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i64 @OVL_CURRENT(i64 %31)
  %33 = call i32 @fn_previously_found(i64 %30, i64 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %86

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36
  %38 = load i64, i64* %7, align 8
  %39 = call i64 @OVL_NEXT(i64 %38)
  store i64 %39, i64* %7, align 8
  br label %26

40:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %86

41:                                               ; preds = %21
  br label %42

42:                                               ; preds = %41, %11
  %43 = load i64, i64* %5, align 8
  %44 = call i64 @TREE_TYPE(i64 %43)
  %45 = load i64, i64* @error_mark_node, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 1, i32* %3, align 4
  br label %86

48:                                               ; preds = %42
  %49 = load i64, i64* %5, align 8
  %50 = call i64 @DECL_ARTIFICIAL(i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %86

53:                                               ; preds = %48
  %54 = load i64, i64* %5, align 8
  %55 = call i64 @TREE_CODE(i64 %54)
  %56 = load i64, i64* @FUNCTION_DECL, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %86

59:                                               ; preds = %53
  %60 = load i64, i64* %5, align 8
  %61 = call i64 @DECL_EXTERN_C_P(i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load i64, i64* %4, align 8
  %65 = call i64 @DECL_EXTERN_C_P(i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i32 1, i32* %3, align 4
  br label %86

68:                                               ; preds = %63, %59
  %69 = load i64, i64* %4, align 8
  %70 = call i64 @TREE_TYPE(i64 %69)
  %71 = call i32 @TYPE_ARG_TYPES(i64 %70)
  %72 = load i64, i64* %5, align 8
  %73 = call i64 @TREE_TYPE(i64 %72)
  %74 = call i32 @TYPE_ARG_TYPES(i64 %73)
  %75 = call i64 @compparms(i32 %71, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  store i32 1, i32* %3, align 4
  br label %86

78:                                               ; preds = %68
  %79 = load i64, i64* %4, align 8
  %80 = load i64, i64* %5, align 8
  %81 = call i32 @decls_match(i64 %79, i64 %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  store i32 1, i32* %3, align 4
  br label %86

85:                                               ; preds = %78
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %84, %77, %67, %58, %52, %47, %40, %35, %10
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @OVL_CHAIN(i64) #1

declare dso_local i64 @OVL_CURRENT(i64) #1

declare dso_local i64 @OVL_NEXT(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @DECL_ARTIFICIAL(i64) #1

declare dso_local i64 @DECL_EXTERN_C_P(i64) #1

declare dso_local i64 @compparms(i32, i32) #1

declare dso_local i32 @TYPE_ARG_TYPES(i64) #1

declare dso_local i32 @decls_match(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
