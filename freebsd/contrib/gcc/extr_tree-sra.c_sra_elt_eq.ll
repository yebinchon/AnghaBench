; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-sra.c_sra_elt_eq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-sra.c_sra_elt_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sra_elt = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @sra_elt_eq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sra_elt_eq(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sra_elt*, align 8
  %7 = alloca %struct.sra_elt*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.sra_elt*
  store %struct.sra_elt* %11, %struct.sra_elt** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.sra_elt*
  store %struct.sra_elt* %13, %struct.sra_elt** %7, align 8
  %14 = load %struct.sra_elt*, %struct.sra_elt** %6, align 8
  %15 = getelementptr inbounds %struct.sra_elt, %struct.sra_elt* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.sra_elt*, %struct.sra_elt** %7, align 8
  %18 = getelementptr inbounds %struct.sra_elt, %struct.sra_elt* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %78

22:                                               ; preds = %2
  %23 = load %struct.sra_elt*, %struct.sra_elt** %6, align 8
  %24 = getelementptr inbounds %struct.sra_elt, %struct.sra_elt* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %8, align 8
  %26 = load %struct.sra_elt*, %struct.sra_elt** %7, align 8
  %27 = getelementptr inbounds %struct.sra_elt, %struct.sra_elt* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  store i32 1, i32* %3, align 4
  br label %78

33:                                               ; preds = %22
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @TREE_CODE(i64 %34)
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @TREE_CODE(i64 %36)
  %38 = icmp ne i32 %35, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %78

40:                                               ; preds = %33
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @TREE_CODE(i64 %41)
  switch i32 %42, label %76 [
    i32 128, label %43
    i32 131, label %43
    i32 129, label %43
    i32 132, label %44
    i32 130, label %48
    i32 133, label %65
  ]

43:                                               ; preds = %40, %40, %40
  store i32 0, i32* %3, align 4
  br label %78

44:                                               ; preds = %40
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @tree_int_cst_equal(i64 %45, i64 %46)
  store i32 %47, i32* %3, align 4
  br label %78

48:                                               ; preds = %40
  %49 = load i64, i64* %8, align 8
  %50 = call i64 @TREE_OPERAND(i64 %49, i32 0)
  %51 = load i64, i64* %9, align 8
  %52 = call i64 @TREE_OPERAND(i64 %51, i32 0)
  %53 = call i32 @tree_int_cst_equal(i64 %50, i64 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %48
  %56 = load i64, i64* %8, align 8
  %57 = call i64 @TREE_OPERAND(i64 %56, i32 1)
  %58 = load i64, i64* %9, align 8
  %59 = call i64 @TREE_OPERAND(i64 %58, i32 1)
  %60 = call i32 @tree_int_cst_equal(i64 %57, i64 %59)
  %61 = icmp ne i32 %60, 0
  br label %62

62:                                               ; preds = %55, %48
  %63 = phi i1 [ false, %48 ], [ %61, %55 ]
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %3, align 4
  br label %78

65:                                               ; preds = %40
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @DECL_FIELD_CONTEXT(i64 %66)
  %68 = load i64, i64* %9, align 8
  %69 = call i32 @DECL_FIELD_CONTEXT(i64 %68)
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %78

72:                                               ; preds = %65
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* %9, align 8
  %75 = call i32 @fields_compatible_p(i64 %73, i64 %74)
  store i32 %75, i32* %3, align 4
  br label %78

76:                                               ; preds = %40
  %77 = call i32 (...) @gcc_unreachable()
  br label %78

78:                                               ; preds = %21, %32, %39, %43, %44, %62, %71, %72, %76
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @TREE_CODE(i64) #1

declare dso_local i32 @tree_int_cst_equal(i64, i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i32 @DECL_FIELD_CONTEXT(i64) #1

declare dso_local i32 @fields_compatible_p(i64, i64) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
