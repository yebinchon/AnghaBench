; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cvt.c_convert_to_pointer_force.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cvt.c_convert_to_pointer_force.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POINTER_TYPE = common dso_local global i32 0, align 4
@RECORD_TYPE = common dso_local global i64 0, align 8
@PLUS_EXPR = common dso_local global i32 0, align 4
@ba_unique = common dso_local global i32 0, align 4
@MINUS_EXPR = common dso_local global i32 0, align 4
@error_mark_node = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @convert_to_pointer_force to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @convert_to_pointer_force(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call i64 @TREE_TYPE(i64 %10)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i64 @TREE_CODE(i64 %12)
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @POINTER_TYPE, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %100

18:                                               ; preds = %2
  %19 = load i64, i64* %6, align 8
  %20 = call i64 @TYPE_MAIN_VARIANT(i64 %19)
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %4, align 8
  %22 = call i64 @TYPE_MAIN_VARIANT(i64 %21)
  %23 = load i64, i64* %6, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %99

25:                                               ; preds = %18
  %26 = load i64, i64* %4, align 8
  %27 = call i64 @TREE_TYPE(i64 %26)
  %28 = call i64 @TREE_CODE(i64 %27)
  %29 = load i64, i64* @RECORD_TYPE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %99

31:                                               ; preds = %25
  %32 = load i64, i64* %4, align 8
  %33 = call i64 @TREE_TYPE(i64 %32)
  %34 = call i64 @IS_AGGR_TYPE(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %99

36:                                               ; preds = %31
  %37 = load i64, i64* %6, align 8
  %38 = call i64 @TREE_TYPE(i64 %37)
  %39 = call i64 @IS_AGGR_TYPE(i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %99

41:                                               ; preds = %36
  %42 = load i64, i64* %6, align 8
  %43 = call i64 @TREE_TYPE(i64 %42)
  %44 = call i64 @TREE_CODE(i64 %43)
  %45 = load i64, i64* @RECORD_TYPE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %99

47:                                               ; preds = %41
  %48 = load i32, i32* @PLUS_EXPR, align 4
  store i32 %48, i32* %8, align 4
  %49 = load i64, i64* %6, align 8
  %50 = call i64 @TREE_TYPE(i64 %49)
  %51 = load i64, i64* %4, align 8
  %52 = call i64 @TREE_TYPE(i64 %51)
  %53 = load i32, i32* @ba_unique, align 4
  %54 = call i64 @lookup_base(i64 %50, i64 %52, i32 %53, i32* null)
  store i64 %54, i64* %9, align 8
  %55 = load i64, i64* %9, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %47
  %58 = load i64, i64* %4, align 8
  %59 = call i64 @TREE_TYPE(i64 %58)
  %60 = load i64, i64* %6, align 8
  %61 = call i64 @TREE_TYPE(i64 %60)
  %62 = load i32, i32* @ba_unique, align 4
  %63 = call i64 @lookup_base(i64 %59, i64 %61, i32 %62, i32* null)
  store i64 %63, i64* %9, align 8
  %64 = load i32, i32* @MINUS_EXPR, align 4
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %57, %47
  %66 = load i64, i64* %9, align 8
  %67 = load i64, i64* @error_mark_node, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i64, i64* @error_mark_node, align 8
  store i64 %70, i64* %3, align 8
  br label %104

71:                                               ; preds = %65
  %72 = load i64, i64* %9, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %98

74:                                               ; preds = %71
  %75 = load i32, i32* %8, align 4
  %76 = load i64, i64* %5, align 8
  %77 = load i64, i64* %9, align 8
  %78 = call i64 @build_base_path(i32 %75, i64 %76, i64 %77, i32 0)
  store i64 %78, i64* %5, align 8
  %79 = load i64, i64* %5, align 8
  %80 = load i64, i64* @error_mark_node, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = load i64, i64* @error_mark_node, align 8
  store i64 %83, i64* %3, align 8
  br label %104

84:                                               ; preds = %74
  %85 = load i64, i64* %5, align 8
  %86 = call i64 @TREE_TYPE(i64 %85)
  %87 = call i64 @TREE_TYPE(i64 %86)
  %88 = load i64, i64* %4, align 8
  %89 = call i64 @TREE_TYPE(i64 %88)
  %90 = call i32 @same_type_p(i64 %87, i64 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %84
  %93 = load i64, i64* %4, align 8
  %94 = load i64, i64* %5, align 8
  %95 = call i64 @build_nop(i64 %93, i64 %94)
  store i64 %95, i64* %5, align 8
  br label %96

96:                                               ; preds = %92, %84
  %97 = load i64, i64* %5, align 8
  store i64 %97, i64* %3, align 8
  br label %104

98:                                               ; preds = %71
  br label %99

99:                                               ; preds = %98, %41, %36, %31, %25, %18
  br label %100

100:                                              ; preds = %99, %2
  %101 = load i64, i64* %4, align 8
  %102 = load i64, i64* %5, align 8
  %103 = call i64 @cp_convert_to_pointer(i64 %101, i64 %102, i32 1)
  store i64 %103, i64* %3, align 8
  br label %104

104:                                              ; preds = %100, %96, %82, %69
  %105 = load i64, i64* %3, align 8
  ret i64 %105
}

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TYPE_MAIN_VARIANT(i64) #1

declare dso_local i64 @IS_AGGR_TYPE(i64) #1

declare dso_local i64 @lookup_base(i64, i64, i32, i32*) #1

declare dso_local i64 @build_base_path(i32, i64, i64, i32) #1

declare dso_local i32 @same_type_p(i64, i64) #1

declare dso_local i64 @build_nop(i64, i64) #1

declare dso_local i64 @cp_convert_to_pointer(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
