; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl2.c_acceptable_java_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl2.c_acceptable_java_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@error_mark_node = common dso_local global i64 0, align 8
@VOID_TYPE = common dso_local global i64 0, align 8
@POINTER_TYPE = common dso_local global i64 0, align 8
@REFERENCE_TYPE = common dso_local global i64 0, align 8
@RECORD_TYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @acceptable_java_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acceptable_java_type(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @error_mark_node, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %76

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = call i64 @TREE_CODE(i64 %11)
  %13 = load i64, i64* @VOID_TYPE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = load i64, i64* %3, align 8
  %17 = call i64 @TYPE_FOR_JAVA(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %10
  store i32 1, i32* %2, align 4
  br label %76

20:                                               ; preds = %15
  %21 = load i64, i64* %3, align 8
  %22 = call i64 @TREE_CODE(i64 %21)
  %23 = load i64, i64* @POINTER_TYPE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load i64, i64* %3, align 8
  %27 = call i64 @TREE_CODE(i64 %26)
  %28 = load i64, i64* @REFERENCE_TYPE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %75

30:                                               ; preds = %25, %20
  %31 = load i64, i64* %3, align 8
  %32 = call i64 @TREE_TYPE(i64 %31)
  store i64 %32, i64* %3, align 8
  %33 = load i64, i64* %3, align 8
  %34 = call i64 @TREE_CODE(i64 %33)
  %35 = load i64, i64* @RECORD_TYPE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %74

37:                                               ; preds = %30
  %38 = load i64, i64* %3, align 8
  %39 = call i64 @TYPE_FOR_JAVA(i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %76

42:                                               ; preds = %37
  %43 = load i64, i64* %3, align 8
  %44 = call i32 @CLASSTYPE_TEMPLATE_INFO(i64 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  store i32 1, i32* %2, align 4
  br label %76

47:                                               ; preds = %42
  %48 = load i64, i64* %3, align 8
  %49 = call i64 @CLASSTYPE_TI_ARGS(i64 %48)
  store i64 %49, i64* %4, align 8
  %50 = load i64, i64* %4, align 8
  %51 = call i32 @TREE_VEC_LENGTH(i64 %50)
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %72, %47
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %5, align 4
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %73

56:                                               ; preds = %52
  %57 = load i64, i64* %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i64 @TREE_VEC_ELT(i64 %57, i32 %58)
  store i64 %59, i64* %3, align 8
  %60 = load i64, i64* %3, align 8
  %61 = call i64 @TREE_CODE(i64 %60)
  %62 = load i64, i64* @POINTER_TYPE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %56
  %65 = load i64, i64* %3, align 8
  %66 = call i64 @TREE_TYPE(i64 %65)
  store i64 %66, i64* %3, align 8
  br label %67

67:                                               ; preds = %64, %56
  %68 = load i64, i64* %3, align 8
  %69 = call i64 @TYPE_FOR_JAVA(i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  store i32 0, i32* %2, align 4
  br label %76

72:                                               ; preds = %67
  br label %52

73:                                               ; preds = %52
  store i32 1, i32* %2, align 4
  br label %76

74:                                               ; preds = %30
  br label %75

75:                                               ; preds = %74, %25
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %75, %73, %71, %46, %41, %19, %9
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TYPE_FOR_JAVA(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i32 @CLASSTYPE_TEMPLATE_INFO(i64) #1

declare dso_local i64 @CLASSTYPE_TI_ARGS(i64) #1

declare dso_local i32 @TREE_VEC_LENGTH(i64) #1

declare dso_local i64 @TREE_VEC_ELT(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
