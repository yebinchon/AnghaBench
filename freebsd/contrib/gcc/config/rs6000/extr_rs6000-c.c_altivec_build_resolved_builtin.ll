; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000-c.c_altivec_build_resolved_builtin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000-c.c_altivec_build_resolved_builtin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altivec_builtin_types = type { i64, i64, i32 }

@rs6000_builtin_decls = common dso_local global i32* null, align 8
@NULL_TREE = common dso_local global i32 0, align 4
@ALTIVEC_BUILTIN_VCMPGE_P = common dso_local global i64 0, align 8
@ALTIVEC_BUILTIN_VCMPGEFP_P = common dso_local global i64 0, align 8
@BIT_XOR_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.altivec_builtin_types*)* @altivec_build_resolved_builtin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @altivec_build_resolved_builtin(i32* %0, i32 %1, %struct.altivec_builtin_types* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.altivec_builtin_types*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [3 x i32], align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.altivec_builtin_types* %2, %struct.altivec_builtin_types** %6, align 8
  %14 = load i32*, i32** @rs6000_builtin_decls, align 8
  %15 = load %struct.altivec_builtin_types*, %struct.altivec_builtin_types** %6, align 8
  %16 = getelementptr inbounds %struct.altivec_builtin_types, %struct.altivec_builtin_types* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = load %struct.altivec_builtin_types*, %struct.altivec_builtin_types** %6, align 8
  %21 = getelementptr inbounds %struct.altivec_builtin_types, %struct.altivec_builtin_types* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @rs6000_builtin_type(i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @TREE_TYPE(i32 %24)
  %26 = call i32 @TYPE_ARG_TYPES(i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* @NULL_TREE, align 4
  store i32 %27, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %28

28:                                               ; preds = %40, %3
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @TREE_VALUE(i32 %33)
  %35 = load i32, i32* %12, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 %36
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @TREE_CHAIN(i32 %38)
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %32
  %41 = load i32, i32* %12, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %12, align 4
  br label %28

43:                                               ; preds = %28
  %44 = load %struct.altivec_builtin_types*, %struct.altivec_builtin_types** %6, align 8
  %45 = getelementptr inbounds %struct.altivec_builtin_types, %struct.altivec_builtin_types* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @ALTIVEC_BUILTIN_VCMPGE_P, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %87

49:                                               ; preds = %43
  %50 = load %struct.altivec_builtin_types*, %struct.altivec_builtin_types** %6, align 8
  %51 = getelementptr inbounds %struct.altivec_builtin_types, %struct.altivec_builtin_types* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @ALTIVEC_BUILTIN_VCMPGEFP_P, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %87

55:                                               ; preds = %49
  %56 = load i32*, i32** %4, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %13, align 4
  %59 = load i32*, i32** %4, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %4, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %13, align 4
  %65 = load i32*, i32** %4, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  store i32 %64, i32* %66, align 4
  %67 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %13, align 4
  %69 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* %13, align 4
  %73 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  store i32 %72, i32* %73, align 4
  %74 = load i32, i32* @BIT_XOR_EXPR, align 4
  %75 = load i32*, i32** %4, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @TREE_TYPE(i32 %77)
  %79 = load i32*, i32** %4, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @NULL_TREE, align 4
  %83 = call i32 @build_int_cst(i32 %82, i32 2)
  %84 = call i32 @fold_build2(i32 %74, i32 %78, i32 %81, i32 %83)
  %85 = load i32*, i32** %4, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  store i32 %84, i32* %86, align 4
  br label %87

87:                                               ; preds = %55, %49, %43
  br label %88

88:                                               ; preds = %92, %87
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %5, align 4
  %91 = icmp sge i32 %90, 0
  br i1 %91, label %92, label %106

92:                                               ; preds = %88
  %93 = load i32, i32* @NULL_TREE, align 4
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %4, align 8
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @fold_convert(i32 %97, i32 %102)
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @tree_cons(i32 %93, i32 %103, i32 %104)
  store i32 %105, i32* %10, align 4
  br label %88

106:                                              ; preds = %88
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @build_function_call_expr(i32 %108, i32 %109)
  %111 = call i32 @fold_convert(i32 %107, i32 %110)
  ret i32 %111
}

declare dso_local i32 @rs6000_builtin_type(i32) #1

declare dso_local i32 @TYPE_ARG_TYPES(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @TREE_VALUE(i32) #1

declare dso_local i32 @TREE_CHAIN(i32) #1

declare dso_local i32 @fold_build2(i32, i32, i32, i32) #1

declare dso_local i32 @build_int_cst(i32, i32) #1

declare dso_local i32 @tree_cons(i32, i32, i32) #1

declare dso_local i32 @fold_convert(i32, i32) #1

declare dso_local i32 @build_function_call_expr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
