; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_alias.c_nonoverlapping_component_refs_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_alias.c_nonoverlapping_component_refs_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COMPONENT_REF = common dso_local global i64 0, align 8
@RECORD_TYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @nonoverlapping_component_refs_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nonoverlapping_component_refs_p(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  br label %11

11:                                               ; preds = %88, %2
  %12 = load i64, i64* %5, align 8
  store i64 %12, i64* %10, align 8
  br label %13

13:                                               ; preds = %54, %11
  %14 = load i64, i64* %4, align 8
  %15 = call i64 @TREE_OPERAND(i64 %14, i32 1)
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @DECL_FIELD_CONTEXT(i64 %16)
  %18 = call i64 @TYPE_MAIN_VARIANT(i32 %17)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %10, align 8
  store i64 %19, i64* %5, align 8
  br label %20

20:                                               ; preds = %41, %13
  %21 = load i64, i64* %5, align 8
  %22 = call i64 @TREE_OPERAND(i64 %21, i32 1)
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @DECL_FIELD_CONTEXT(i64 %23)
  %25 = call i64 @TYPE_MAIN_VARIANT(i32 %24)
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %9, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %57

30:                                               ; preds = %20
  %31 = load i64, i64* %5, align 8
  %32 = call i64 @TREE_OPERAND(i64 %31, i32 0)
  store i64 %32, i64* %5, align 8
  br label %33

33:                                               ; preds = %30
  %34 = load i64, i64* %5, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i64, i64* %5, align 8
  %38 = call i64 @TREE_CODE(i64 %37)
  %39 = load i64, i64* @COMPONENT_REF, align 8
  %40 = icmp eq i64 %38, %39
  br label %41

41:                                               ; preds = %36, %33
  %42 = phi i1 [ false, %33 ], [ %40, %36 ]
  br i1 %42, label %20, label %43

43:                                               ; preds = %41
  %44 = load i64, i64* %4, align 8
  %45 = call i64 @TREE_OPERAND(i64 %44, i32 0)
  store i64 %45, i64* %4, align 8
  br label %46

46:                                               ; preds = %43
  %47 = load i64, i64* %4, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i64, i64* %4, align 8
  %51 = call i64 @TREE_CODE(i64 %50)
  %52 = load i64, i64* @COMPONENT_REF, align 8
  %53 = icmp eq i64 %51, %52
  br label %54

54:                                               ; preds = %49, %46
  %55 = phi i1 [ false, %46 ], [ %53, %49 ]
  br i1 %55, label %13, label %56

56:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %91

57:                                               ; preds = %29
  %58 = load i64, i64* %8, align 8
  %59 = call i64 @TREE_CODE(i64 %58)
  %60 = load i64, i64* @RECORD_TYPE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load i64, i64* %6, align 8
  %64 = load i64, i64* %7, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store i32 1, i32* %3, align 4
  br label %91

67:                                               ; preds = %62, %57
  %68 = load i64, i64* %4, align 8
  %69 = call i64 @TREE_OPERAND(i64 %68, i32 0)
  store i64 %69, i64* %4, align 8
  %70 = load i64, i64* %5, align 8
  %71 = call i64 @TREE_OPERAND(i64 %70, i32 0)
  store i64 %71, i64* %5, align 8
  br label %72

72:                                               ; preds = %67
  %73 = load i64, i64* %4, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %72
  %76 = load i64, i64* %5, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %75
  %79 = load i64, i64* %4, align 8
  %80 = call i64 @TREE_CODE(i64 %79)
  %81 = load i64, i64* @COMPONENT_REF, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load i64, i64* %5, align 8
  %85 = call i64 @TREE_CODE(i64 %84)
  %86 = load i64, i64* @COMPONENT_REF, align 8
  %87 = icmp eq i64 %85, %86
  br label %88

88:                                               ; preds = %83, %78, %75, %72
  %89 = phi i1 [ false, %78 ], [ false, %75 ], [ false, %72 ], [ %87, %83 ]
  br i1 %89, label %11, label %90

90:                                               ; preds = %88
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %66, %56
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @TYPE_MAIN_VARIANT(i32) #1

declare dso_local i32 @DECL_FIELD_CONTEXT(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
