; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_add_candidates.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_add_candidates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z_candidate = type { i32 }

@NULL_TREE = common dso_local global i64 0, align 8
@TEMPLATE_DECL = common dso_local global i64 0, align 8
@DEDUCE_CALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64, i32, i64, i64, i32, %struct.z_candidate**)* @add_candidates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_candidates(i64 %0, i64 %1, i64 %2, i32 %3, i64 %4, i64 %5, i32 %6, %struct.z_candidate** %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.z_candidate**, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store i64 %0, i64* %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  store %struct.z_candidate** %7, %struct.z_candidate*** %16, align 8
  %21 = load i64, i64* %13, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %8
  %24 = load i64, i64* %13, align 8
  %25 = call i64 @BINFO_TYPE(i64 %24)
  br label %28

26:                                               ; preds = %8
  %27 = load i64, i64* @NULL_TREE, align 8
  br label %28

28:                                               ; preds = %26, %23
  %29 = phi i64 [ %25, %23 ], [ %27, %26 ]
  store i64 %29, i64* %17, align 8
  %30 = load i64, i64* @NULL_TREE, align 8
  store i64 %30, i64* %18, align 8
  br label %31

31:                                               ; preds = %85, %28
  %32 = load i64, i64* %9, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %88

34:                                               ; preds = %31
  %35 = load i64, i64* %9, align 8
  %36 = call i64 @OVL_CURRENT(i64 %35)
  store i64 %36, i64* %19, align 8
  %37 = load i64, i64* %19, align 8
  %38 = call i64 @DECL_NONSTATIC_MEMBER_FUNCTION_P(i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %34
  %41 = load i64, i64* %18, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %40
  %44 = load i64, i64* @NULL_TREE, align 8
  %45 = load i64, i64* %10, align 8
  %46 = call i32 @TREE_VALUE(i64 %45)
  %47 = call i32 @build_this(i32 %46)
  %48 = load i64, i64* %10, align 8
  %49 = call i32 @TREE_CHAIN(i64 %48)
  %50 = call i64 @tree_cons(i64 %44, i32 %47, i32 %49)
  store i64 %50, i64* %18, align 8
  br label %51

51:                                               ; preds = %43, %40
  %52 = load i64, i64* %18, align 8
  store i64 %52, i64* %20, align 8
  br label %55

53:                                               ; preds = %34
  %54 = load i64, i64* %10, align 8
  store i64 %54, i64* %20, align 8
  br label %55

55:                                               ; preds = %53, %51
  %56 = load i64, i64* %19, align 8
  %57 = call i64 @TREE_CODE(i64 %56)
  %58 = load i64, i64* @TEMPLATE_DECL, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %55
  %61 = load %struct.z_candidate**, %struct.z_candidate*** %16, align 8
  %62 = load i64, i64* %19, align 8
  %63 = load i64, i64* %17, align 8
  %64 = load i64, i64* %11, align 8
  %65 = load i64, i64* %20, align 8
  %66 = load i64, i64* @NULL_TREE, align 8
  %67 = load i64, i64* %14, align 8
  %68 = load i64, i64* %13, align 8
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* @DEDUCE_CALL, align 4
  %71 = call i32 @add_template_candidate(%struct.z_candidate** %61, i64 %62, i64 %63, i64 %64, i64 %65, i64 %66, i64 %67, i64 %68, i32 %69, i32 %70)
  br label %85

72:                                               ; preds = %55
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %84, label %75

75:                                               ; preds = %72
  %76 = load %struct.z_candidate**, %struct.z_candidate*** %16, align 8
  %77 = load i64, i64* %19, align 8
  %78 = load i64, i64* %17, align 8
  %79 = load i64, i64* %20, align 8
  %80 = load i64, i64* %14, align 8
  %81 = load i64, i64* %13, align 8
  %82 = load i32, i32* %15, align 4
  %83 = call i32 @add_function_candidate(%struct.z_candidate** %76, i64 %77, i64 %78, i64 %79, i64 %80, i64 %81, i32 %82)
  br label %84

84:                                               ; preds = %75, %72
  br label %85

85:                                               ; preds = %84, %60
  %86 = load i64, i64* %9, align 8
  %87 = call i64 @OVL_NEXT(i64 %86)
  store i64 %87, i64* %9, align 8
  br label %31

88:                                               ; preds = %31
  ret void
}

declare dso_local i64 @BINFO_TYPE(i64) #1

declare dso_local i64 @OVL_CURRENT(i64) #1

declare dso_local i64 @DECL_NONSTATIC_MEMBER_FUNCTION_P(i64) #1

declare dso_local i64 @tree_cons(i64, i32, i32) #1

declare dso_local i32 @build_this(i32) #1

declare dso_local i32 @TREE_VALUE(i64) #1

declare dso_local i32 @TREE_CHAIN(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @add_template_candidate(%struct.z_candidate**, i64, i64, i64, i64, i64, i64, i64, i32, i32) #1

declare dso_local i32 @add_function_candidate(%struct.z_candidate**, i64, i64, i64, i64, i64, i32) #1

declare dso_local i64 @OVL_NEXT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
