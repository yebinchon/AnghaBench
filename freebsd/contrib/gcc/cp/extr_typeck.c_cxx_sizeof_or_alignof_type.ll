; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_cxx_sizeof_or_alignof_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_cxx_sizeof_or_alignof_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@SIZEOF_EXPR = common dso_local global i32 0, align 4
@ALIGNOF_EXPR = common dso_local global i32 0, align 4
@error_mark_node = common dso_local global i64 0, align 8
@METHOD_TYPE = common dso_local global i64 0, align 8
@pedantic = common dso_local global i64 0, align 8
@warn_pointer_arith = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"invalid application of %qs to a member function\00", align 1
@operator_name_info = common dso_local global %struct.TYPE_2__* null, align 8
@size_one_node = common dso_local global i64 0, align 8
@processing_template_decl = common dso_local global i64 0, align 8
@INTEGER_CST = common dso_local global i64 0, align 8
@size_type_node = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @cxx_sizeof_or_alignof_type(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @SIZEOF_EXPR, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @ALIGNOF_EXPR, align 4
  %17 = icmp eq i32 %15, %16
  br label %18

18:                                               ; preds = %14, %3
  %19 = phi i1 [ true, %3 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @gcc_assert(i32 %20)
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @error_mark_node, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i64, i64* @error_mark_node, align 8
  store i64 %26, i64* %4, align 8
  br label %92

27:                                               ; preds = %18
  %28 = load i64, i64* %5, align 8
  %29 = call i64 @non_reference(i64 %28)
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i64 @TREE_CODE(i64 %30)
  %32 = load i64, i64* @METHOD_TYPE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %27
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %34
  %38 = load i64, i64* @pedantic, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i64, i64* @warn_pointer_arith, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %40, %37
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @operator_name_info, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @pedwarn(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %43, %40, %34
  %52 = load i64, i64* @size_one_node, align 8
  store i64 %52, i64* %8, align 8
  br label %53

53:                                               ; preds = %51, %27
  %54 = load i64, i64* %5, align 8
  %55 = call i32 @dependent_type_p(i64 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = load i64, i64* %5, align 8
  %60 = call i32 @complete_type(i64 %59)
  br label %61

61:                                               ; preds = %58, %53
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %77, label %64

64:                                               ; preds = %61
  %65 = load i64, i64* @processing_template_decl, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %83

67:                                               ; preds = %64
  %68 = load i64, i64* %5, align 8
  %69 = call i64 @COMPLETE_TYPE_P(i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %67
  %72 = load i64, i64* %5, align 8
  %73 = call i64 @TYPE_SIZE(i64 %72)
  %74 = call i64 @TREE_CODE(i64 %73)
  %75 = load i64, i64* @INTEGER_CST, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %71, %61
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @size_type_node, align 4
  %80 = load i64, i64* %5, align 8
  %81 = call i64 @build_min(i32 %78, i32 %79, i64 %80)
  store i64 %81, i64* %8, align 8
  store i64 1, i64* %10, align 8
  %82 = load i64, i64* %10, align 8
  store i64 %82, i64* %4, align 8
  br label %92

83:                                               ; preds = %71, %67, %64
  %84 = load i64, i64* %5, align 8
  %85 = call i32 @complete_type(i64 %84)
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @SIZEOF_EXPR, align 4
  %88 = icmp eq i32 %86, %87
  %89 = zext i1 %88 to i32
  %90 = load i32, i32* %7, align 4
  %91 = call i64 @c_sizeof_or_alignof_type(i32 %85, i32 %89, i32 %90)
  store i64 %91, i64* %4, align 8
  br label %92

92:                                               ; preds = %83, %77, %25
  %93 = load i64, i64* %4, align 8
  ret i64 %93
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @non_reference(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @pedwarn(i8*, i32) #1

declare dso_local i32 @dependent_type_p(i64) #1

declare dso_local i32 @complete_type(i64) #1

declare dso_local i64 @COMPLETE_TYPE_P(i64) #1

declare dso_local i64 @TYPE_SIZE(i64) #1

declare dso_local i64 @build_min(i32, i32, i64) #1

declare dso_local i64 @c_sizeof_or_alignof_type(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
