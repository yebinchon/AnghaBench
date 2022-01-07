; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_perform_overload_resolution.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_perform_overload_resolution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z_candidate = type { i32 }

@NULL_TREE = common dso_local global i64 0, align 8
@FUNCTION_DECL = common dso_local global i64 0, align 8
@TEMPLATE_DECL = common dso_local global i64 0, align 8
@OVERLOAD = common dso_local global i64 0, align 8
@TEMPLATE_ID_EXPR = common dso_local global i64 0, align 8
@TREE_LIST = common dso_local global i64 0, align 8
@LOOKUP_NORMAL = common dso_local global i32 0, align 4
@pedantic = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.z_candidate* (i64, i64, %struct.z_candidate**, i32*)* @perform_overload_resolution to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.z_candidate* @perform_overload_resolution(i64 %0, i64 %1, %struct.z_candidate** %2, i32* %3) #0 {
  %5 = alloca %struct.z_candidate*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.z_candidate**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.z_candidate*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.z_candidate** %2, %struct.z_candidate*** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i64, i64* @NULL_TREE, align 8
  store i64 %13, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %14 = load %struct.z_candidate**, %struct.z_candidate*** %8, align 8
  store %struct.z_candidate* null, %struct.z_candidate** %14, align 8
  %15 = load i32*, i32** %9, align 8
  store i32 1, i32* %15, align 4
  %16 = load i64, i64* %6, align 8
  %17 = call i64 @TREE_CODE(i64 %16)
  %18 = load i64, i64* @FUNCTION_DECL, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %35, label %20

20:                                               ; preds = %4
  %21 = load i64, i64* %6, align 8
  %22 = call i64 @TREE_CODE(i64 %21)
  %23 = load i64, i64* @TEMPLATE_DECL, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %35, label %25

25:                                               ; preds = %20
  %26 = load i64, i64* %6, align 8
  %27 = call i64 @TREE_CODE(i64 %26)
  %28 = load i64, i64* @OVERLOAD, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load i64, i64* %6, align 8
  %32 = call i64 @TREE_CODE(i64 %31)
  %33 = load i64, i64* @TEMPLATE_ID_EXPR, align 8
  %34 = icmp eq i64 %32, %33
  br label %35

35:                                               ; preds = %30, %25, %20, %4
  %36 = phi i1 [ true, %25 ], [ true, %20 ], [ true, %4 ], [ %34, %30 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @gcc_assert(i32 %37)
  %39 = load i64, i64* %7, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load i64, i64* %7, align 8
  %43 = call i64 @TREE_CODE(i64 %42)
  %44 = load i64, i64* @TREE_LIST, align 8
  %45 = icmp eq i64 %43, %44
  br label %46

46:                                               ; preds = %41, %35
  %47 = phi i1 [ true, %35 ], [ %45, %41 ]
  %48 = zext i1 %47 to i32
  %49 = call i32 @gcc_assert(i32 %48)
  %50 = load i64, i64* %6, align 8
  %51 = call i64 @TREE_CODE(i64 %50)
  %52 = load i64, i64* @TEMPLATE_ID_EXPR, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %46
  %55 = load i64, i64* %6, align 8
  %56 = call i64 @TREE_OPERAND(i64 %55, i32 1)
  store i64 %56, i64* %11, align 8
  %57 = load i64, i64* %6, align 8
  %58 = call i64 @TREE_OPERAND(i64 %57, i32 0)
  store i64 %58, i64* %6, align 8
  store i32 1, i32* %12, align 4
  br label %59

59:                                               ; preds = %54, %46
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* %11, align 8
  %63 = load i32, i32* %12, align 4
  %64 = load i64, i64* @NULL_TREE, align 8
  %65 = load i64, i64* @NULL_TREE, align 8
  %66 = load i32, i32* @LOOKUP_NORMAL, align 4
  %67 = load %struct.z_candidate**, %struct.z_candidate*** %8, align 8
  %68 = call i32 @add_candidates(i64 %60, i64 %61, i64 %62, i32 %63, i64 %64, i64 %65, i32 %66, %struct.z_candidate** %67)
  %69 = load %struct.z_candidate**, %struct.z_candidate*** %8, align 8
  %70 = load %struct.z_candidate*, %struct.z_candidate** %69, align 8
  %71 = load i32, i32* @pedantic, align 4
  %72 = load i32*, i32** %9, align 8
  %73 = call %struct.z_candidate* @splice_viable(%struct.z_candidate* %70, i32 %71, i32* %72)
  %74 = load %struct.z_candidate**, %struct.z_candidate*** %8, align 8
  store %struct.z_candidate* %73, %struct.z_candidate** %74, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %59
  store %struct.z_candidate* null, %struct.z_candidate** %5, align 8
  br label %84

79:                                               ; preds = %59
  %80 = load %struct.z_candidate**, %struct.z_candidate*** %8, align 8
  %81 = load %struct.z_candidate*, %struct.z_candidate** %80, align 8
  %82 = call %struct.z_candidate* @tourney(%struct.z_candidate* %81)
  store %struct.z_candidate* %82, %struct.z_candidate** %10, align 8
  %83 = load %struct.z_candidate*, %struct.z_candidate** %10, align 8
  store %struct.z_candidate* %83, %struct.z_candidate** %5, align 8
  br label %84

84:                                               ; preds = %79, %78
  %85 = load %struct.z_candidate*, %struct.z_candidate** %5, align 8
  ret %struct.z_candidate* %85
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i32 @add_candidates(i64, i64, i64, i32, i64, i64, i32, %struct.z_candidate**) #1

declare dso_local %struct.z_candidate* @splice_viable(%struct.z_candidate*, i32, i32*) #1

declare dso_local %struct.z_candidate* @tourney(%struct.z_candidate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
