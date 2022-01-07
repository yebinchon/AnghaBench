; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_composite_pointer_type_r.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_composite_pointer_type_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i64, i64)* }

@POINTER_TYPE = common dso_local global i64 0, align 8
@BLOCK_POINTER_TYPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [59 x i8] c"%s between distinct pointer types %qT and %qT lacks a cast\00", align 1
@void_type_node = common dso_local global i64 0, align 8
@targetm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i8*)* @composite_pointer_type_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @composite_pointer_type_r(i64 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i64 @TREE_CODE(i64 %11)
  %13 = load i64, i64* @POINTER_TYPE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load i64, i64* %4, align 8
  %17 = call i64 @TREE_CODE(i64 %16)
  %18 = load i64, i64* @BLOCK_POINTER_TYPE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %15, %3
  %21 = load i64, i64* %4, align 8
  %22 = call i64 @TREE_TYPE(i64 %21)
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i64 @TREE_TYPE(i64 %23)
  store i64 %24, i64* %8, align 8
  br label %30

25:                                               ; preds = %15
  %26 = load i64, i64* %4, align 8
  %27 = call i64 @TYPE_PTRMEM_POINTED_TO_TYPE(i64 %26)
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %5, align 8
  %29 = call i64 @TYPE_PTRMEM_POINTED_TO_TYPE(i64 %28)
  store i64 %29, i64* %8, align 8
  br label %30

30:                                               ; preds = %25, %20
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call i64 @same_type_ignoring_top_level_qualifiers_p(i64 %31, i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i64, i64* %7, align 8
  store i64 %36, i64* %9, align 8
  br label %67

37:                                               ; preds = %30
  %38 = load i64, i64* %7, align 8
  %39 = call i64 @TREE_CODE(i64 %38)
  %40 = load i64, i64* @POINTER_TYPE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i64, i64* %8, align 8
  %44 = call i64 @TREE_CODE(i64 %43)
  %45 = load i64, i64* @POINTER_TYPE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %55, label %47

47:                                               ; preds = %42, %37
  %48 = load i64, i64* %7, align 8
  %49 = call i64 @TYPE_PTR_TO_MEMBER_P(i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  %52 = load i64, i64* %8, align 8
  %53 = call i64 @TYPE_PTR_TO_MEMBER_P(i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %51, %42
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* %8, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = call i64 @composite_pointer_type_r(i64 %56, i64 %57, i8* %58)
  store i64 %59, i64* %9, align 8
  br label %66

60:                                               ; preds = %51, %47
  %61 = load i8*, i8** %6, align 8
  %62 = load i64, i64* %4, align 8
  %63 = load i64, i64* %5, align 8
  %64 = call i32 @pedwarn(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i8* %61, i64 %62, i64 %63)
  %65 = load i64, i64* @void_type_node, align 8
  store i64 %65, i64* %9, align 8
  br label %66

66:                                               ; preds = %60, %55
  br label %67

67:                                               ; preds = %66, %35
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* %7, align 8
  %70 = call i32 @cp_type_quals(i64 %69)
  %71 = load i64, i64* %8, align 8
  %72 = call i32 @cp_type_quals(i64 %71)
  %73 = or i32 %70, %72
  %74 = call i64 @cp_build_qualified_type(i64 %68, i32 %73)
  store i64 %74, i64* %9, align 8
  %75 = load i64, i64* %4, align 8
  %76 = call i64 @TYPE_PTR_TO_MEMBER_P(i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %95

78:                                               ; preds = %67
  %79 = load i64, i64* %4, align 8
  %80 = call i32 @TYPE_PTRMEM_CLASS_TYPE(i64 %79)
  %81 = load i64, i64* %5, align 8
  %82 = call i32 @TYPE_PTRMEM_CLASS_TYPE(i64 %81)
  %83 = call i32 @same_type_p(i32 %80, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %78
  %86 = load i8*, i8** %6, align 8
  %87 = load i64, i64* %4, align 8
  %88 = load i64, i64* %5, align 8
  %89 = call i32 @pedwarn(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i8* %86, i64 %87, i64 %88)
  br label %90

90:                                               ; preds = %85, %78
  %91 = load i64, i64* %4, align 8
  %92 = call i32 @TYPE_PTRMEM_CLASS_TYPE(i64 %91)
  %93 = load i64, i64* %9, align 8
  %94 = call i64 @build_ptrmem_type(i32 %92, i64 %93)
  store i64 %94, i64* %9, align 8
  br label %111

95:                                               ; preds = %67
  %96 = load i64, i64* %4, align 8
  %97 = call i64 @TREE_CODE(i64 %96)
  %98 = load i64, i64* @BLOCK_POINTER_TYPE, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %95
  %101 = load i64, i64* %9, align 8
  %102 = load i64, i64* @void_type_node, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load i64, i64* %9, align 8
  %106 = call i64 @build_block_pointer_type(i64 %105)
  store i64 %106, i64* %9, align 8
  br label %110

107:                                              ; preds = %100, %95
  %108 = load i64, i64* %9, align 8
  %109 = call i64 @build_pointer_type(i64 %108)
  store i64 %109, i64* %9, align 8
  br label %110

110:                                              ; preds = %107, %104
  br label %111

111:                                              ; preds = %110, %90
  %112 = load i64 (i64, i64)*, i64 (i64, i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @targetm, i32 0, i32 0), align 8
  %113 = load i64, i64* %4, align 8
  %114 = load i64, i64* %5, align 8
  %115 = call i64 %112(i64 %113, i64 %114)
  store i64 %115, i64* %10, align 8
  %116 = load i64, i64* %9, align 8
  %117 = load i64, i64* %10, align 8
  %118 = call i64 @build_type_attribute_variant(i64 %116, i64 %117)
  ret i64 %118
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TYPE_PTRMEM_POINTED_TO_TYPE(i64) #1

declare dso_local i64 @same_type_ignoring_top_level_qualifiers_p(i64, i64) #1

declare dso_local i64 @TYPE_PTR_TO_MEMBER_P(i64) #1

declare dso_local i32 @pedwarn(i8*, i8*, i64, i64) #1

declare dso_local i64 @cp_build_qualified_type(i64, i32) #1

declare dso_local i32 @cp_type_quals(i64) #1

declare dso_local i32 @same_type_p(i32, i32) #1

declare dso_local i32 @TYPE_PTRMEM_CLASS_TYPE(i64) #1

declare dso_local i64 @build_ptrmem_type(i32, i64) #1

declare dso_local i64 @build_block_pointer_type(i64) #1

declare dso_local i64 @build_pointer_type(i64) #1

declare dso_local i64 @build_type_attribute_variant(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
