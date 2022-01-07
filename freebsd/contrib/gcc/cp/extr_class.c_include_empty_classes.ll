; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_class.c_include_empty_classes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_class.c_include_empty_classes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@NULL_TREE = common dso_local global i64 0, align 8
@INTEGER_CST = common dso_local global i64 0, align 8
@BITS_PER_UNIT = common dso_local global i32 0, align 4
@PLUS_EXPR = common dso_local global i32 0, align 4
@MULT_EXPR = common dso_local global i32 0, align 4
@bitsizetype = common dso_local global i32 0, align 4
@MINUS_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @include_empty_classes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @include_empty_classes(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @CLASSTYPE_AS_BASE(i32 %10)
  %12 = load i64, i64* @NULL_TREE, align 8
  %13 = icmp ne i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @end_of_class(i32 %7, i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %17 = call i32 @rli_size_unit_so_far(%struct.TYPE_5__* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @TREE_CODE(i32 %18)
  %20 = load i64, i64* @INTEGER_CST, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %69

22:                                               ; preds = %1
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i64 @INT_CST_LT_UNSIGNED(i32 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %69

27:                                               ; preds = %22
  %28 = call i32 @abi_version_at_least(i32 2)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %27
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @BITS_PER_UNIT, align 4
  %35 = call i32 @round_down(i32 %33, i32 %34)
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  br label %49

38:                                               ; preds = %27
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @BITS_PER_UNIT, align 4
  %46 = call i32 @round_down(i32 %44, i32 %45)
  %47 = call i32 @tree_int_cst_equal(i32 %41, i32 %46)
  %48 = call i32 @gcc_assert(i32 %47)
  br label %49

49:                                               ; preds = %38, %30
  %50 = load i32, i32* @PLUS_EXPR, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @MULT_EXPR, align 4
  %55 = load i32, i32* @bitsizetype, align 4
  %56 = load i32, i32* @MINUS_EXPR, align 4
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @size_binop(i32 %56, i32 %57, i32 %58)
  %60 = call i32 @convert(i32 %55, i32 %59)
  %61 = load i32, i32* @BITS_PER_UNIT, align 4
  %62 = call i32 @bitsize_int(i32 %61)
  %63 = call i32 @size_binop(i32 %54, i32 %60, i32 %62)
  %64 = call i32 @size_binop(i32 %50, i32 %53, i32 %63)
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %68 = call i32 @normalize_rli(%struct.TYPE_5__* %67)
  br label %69

69:                                               ; preds = %49, %22, %1
  ret void
}

declare dso_local i32 @end_of_class(i32, i32) #1

declare dso_local i64 @CLASSTYPE_AS_BASE(i32) #1

declare dso_local i32 @rli_size_unit_so_far(%struct.TYPE_5__*) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @INT_CST_LT_UNSIGNED(i32, i32) #1

declare dso_local i32 @abi_version_at_least(i32) #1

declare dso_local i32 @round_down(i32, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @tree_int_cst_equal(i32, i32) #1

declare dso_local i32 @size_binop(i32, i32, i32) #1

declare dso_local i32 @convert(i32, i32) #1

declare dso_local i32 @bitsize_int(i32) #1

declare dso_local i32 @normalize_rli(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
