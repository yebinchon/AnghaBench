; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_common_pointer_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_common_pointer_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i64, i64)* }

@error_mark_node = common dso_local global i64 0, align 8
@POINTER_TYPE = common dso_local global i64 0, align 8
@BLOCK_POINTER_TYPE = common dso_local global i64 0, align 8
@targetm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ARRAY_TYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @common_pointer_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @common_pointer_type(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i64, i64* %4, align 8
  store i64 %16, i64* %3, align 8
  br label %103

17:                                               ; preds = %2
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @error_mark_node, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i64, i64* %5, align 8
  store i64 %22, i64* %3, align 8
  br label %103

23:                                               ; preds = %17
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @error_mark_node, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i64, i64* %4, align 8
  store i64 %28, i64* %3, align 8
  br label %103

29:                                               ; preds = %23
  %30 = load i64, i64* %4, align 8
  %31 = call i64 @TREE_CODE(i64 %30)
  %32 = load i64, i64* @POINTER_TYPE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i64, i64* %5, align 8
  %36 = call i64 @TREE_CODE(i64 %35)
  %37 = load i64, i64* @POINTER_TYPE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %51, label %39

39:                                               ; preds = %34, %29
  %40 = load i64, i64* %4, align 8
  %41 = call i64 @TREE_CODE(i64 %40)
  %42 = load i64, i64* @BLOCK_POINTER_TYPE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i64, i64* %5, align 8
  %46 = call i64 @TREE_CODE(i64 %45)
  %47 = load i64, i64* @BLOCK_POINTER_TYPE, align 8
  %48 = icmp eq i64 %46, %47
  br label %49

49:                                               ; preds = %44, %39
  %50 = phi i1 [ false, %39 ], [ %48, %44 ]
  br label %51

51:                                               ; preds = %49, %34
  %52 = phi i1 [ true, %34 ], [ %50, %49 ]
  %53 = zext i1 %52 to i32
  %54 = call i32 @gcc_assert(i32 %53)
  %55 = load i64 (i64, i64)*, i64 (i64, i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @targetm, i32 0, i32 0), align 8
  %56 = load i64, i64* %4, align 8
  %57 = load i64, i64* %5, align 8
  %58 = call i64 %55(i64 %56, i64 %57)
  store i64 %58, i64* %6, align 8
  %59 = load i64, i64* %4, align 8
  %60 = call i64 @TREE_TYPE(i64 %59)
  store i64 %60, i64* %7, align 8
  store i64 %60, i64* %8, align 8
  %61 = load i64, i64* %5, align 8
  %62 = call i64 @TREE_TYPE(i64 %61)
  store i64 %62, i64* %9, align 8
  store i64 %62, i64* %10, align 8
  %63 = load i64, i64* %8, align 8
  %64 = call i64 @TREE_CODE(i64 %63)
  %65 = load i64, i64* @ARRAY_TYPE, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %51
  %68 = load i64, i64* %7, align 8
  %69 = call i64 @TYPE_MAIN_VARIANT(i64 %68)
  store i64 %69, i64* %8, align 8
  br label %70

70:                                               ; preds = %67, %51
  %71 = load i64, i64* %10, align 8
  %72 = call i64 @TREE_CODE(i64 %71)
  %73 = load i64, i64* @ARRAY_TYPE, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i64, i64* %9, align 8
  %77 = call i64 @TYPE_MAIN_VARIANT(i64 %76)
  store i64 %77, i64* %10, align 8
  br label %78

78:                                               ; preds = %75, %70
  %79 = load i64, i64* %8, align 8
  %80 = load i64, i64* %10, align 8
  %81 = call i64 @composite_type(i64 %79, i64 %80)
  store i64 %81, i64* %11, align 8
  %82 = load i64, i64* %11, align 8
  %83 = load i64, i64* %7, align 8
  %84 = call i32 @TYPE_QUALS(i64 %83)
  %85 = load i64, i64* %9, align 8
  %86 = call i32 @TYPE_QUALS(i64 %85)
  %87 = or i32 %84, %86
  %88 = call i64 @c_build_qualified_type(i64 %82, i32 %87)
  store i64 %88, i64* %4, align 8
  %89 = load i64, i64* %5, align 8
  %90 = call i64 @TREE_CODE(i64 %89)
  %91 = load i64, i64* @BLOCK_POINTER_TYPE, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %78
  %94 = load i64, i64* %4, align 8
  %95 = call i64 @build_block_pointer_type(i64 %94)
  store i64 %95, i64* %4, align 8
  br label %99

96:                                               ; preds = %78
  %97 = load i64, i64* %4, align 8
  %98 = call i64 @build_pointer_type(i64 %97)
  store i64 %98, i64* %4, align 8
  br label %99

99:                                               ; preds = %96, %93
  %100 = load i64, i64* %4, align 8
  %101 = load i64, i64* %6, align 8
  %102 = call i64 @build_type_attribute_variant(i64 %100, i64 %101)
  store i64 %102, i64* %3, align 8
  br label %103

103:                                              ; preds = %99, %27, %21, %15
  %104 = load i64, i64* %3, align 8
  ret i64 %104
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TYPE_MAIN_VARIANT(i64) #1

declare dso_local i64 @composite_type(i64, i64) #1

declare dso_local i64 @c_build_qualified_type(i64, i32) #1

declare dso_local i32 @TYPE_QUALS(i64) #1

declare dso_local i64 @build_block_pointer_type(i64) #1

declare dso_local i64 @build_pointer_type(i64) #1

declare dso_local i64 @build_type_attribute_variant(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
