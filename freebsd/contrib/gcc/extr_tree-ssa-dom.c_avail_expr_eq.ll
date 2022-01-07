; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-dom.c_avail_expr_eq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-dom.c_avail_expr_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i64, i64)* }
%struct.expr_hash_elt = type { i64, i64, i64 }

@lang_hooks = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@OEP_PURE_SAME = common dso_local global i32 0, align 4
@SSA_OP_VUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @avail_expr_eq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avail_expr_eq(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.expr_hash_elt*
  %13 = getelementptr inbounds %struct.expr_hash_elt, %struct.expr_hash_elt* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %6, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.expr_hash_elt*
  %17 = getelementptr inbounds %struct.expr_hash_elt, %struct.expr_hash_elt* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %7, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = bitcast i8* %19 to %struct.expr_hash_elt*
  %21 = getelementptr inbounds %struct.expr_hash_elt, %struct.expr_hash_elt* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %8, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = bitcast i8* %23 to %struct.expr_hash_elt*
  %25 = getelementptr inbounds %struct.expr_hash_elt, %struct.expr_hash_elt* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %9, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %2
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 1, i32* %3, align 4
  br label %85

35:                                               ; preds = %30, %2
  %36 = load i64, i64* %7, align 8
  %37 = call i64 @TREE_CODE(i64 %36)
  %38 = load i64, i64* %9, align 8
  %39 = call i64 @TREE_CODE(i64 %38)
  %40 = icmp ne i64 %37, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %85

42:                                               ; preds = %35
  %43 = load i64, i64* %7, align 8
  %44 = call i64 @TREE_TYPE(i64 %43)
  %45 = load i64, i64* %9, align 8
  %46 = call i64 @TREE_TYPE(i64 %45)
  %47 = icmp eq i64 %44, %46
  br i1 %47, label %56, label %48

48:                                               ; preds = %42
  %49 = load i64 (i64, i64)*, i64 (i64, i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lang_hooks, i32 0, i32 0), align 8
  %50 = load i64, i64* %7, align 8
  %51 = call i64 @TREE_TYPE(i64 %50)
  %52 = load i64, i64* %9, align 8
  %53 = call i64 @TREE_TYPE(i64 %52)
  %54 = call i64 %49(i64 %51, i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %84

56:                                               ; preds = %48, %42
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* %9, align 8
  %59 = load i32, i32* @OEP_PURE_SAME, align 4
  %60 = call i64 @operand_equal_p(i64 %57, i64 %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %84

62:                                               ; preds = %56
  %63 = load i64, i64* %6, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load i32, i32* @SSA_OP_VUSE, align 4
  %66 = call i32 @compare_ssa_operands_equal(i64 %63, i64 %64, i32 %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %62
  %70 = load i8*, i8** %4, align 8
  %71 = bitcast i8* %70 to %struct.expr_hash_elt*
  %72 = getelementptr inbounds %struct.expr_hash_elt, %struct.expr_hash_elt* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load i8*, i8** %5, align 8
  %75 = bitcast i8* %74 to %struct.expr_hash_elt*
  %76 = getelementptr inbounds %struct.expr_hash_elt, %struct.expr_hash_elt* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %73, %77
  br label %79

79:                                               ; preds = %69, %62
  %80 = phi i1 [ true, %62 ], [ %78, %69 ]
  %81 = zext i1 %80 to i32
  %82 = call i32 @gcc_assert(i32 %81)
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %3, align 4
  br label %85

84:                                               ; preds = %56, %48
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %79, %41, %34
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @operand_equal_p(i64, i64, i32) #1

declare dso_local i32 @compare_ssa_operands_equal(i64, i64, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
