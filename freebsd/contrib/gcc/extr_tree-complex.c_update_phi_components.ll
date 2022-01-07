; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-complex.c_update_phi_components.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-complex.c_update_phi_components.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSA_NAME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @update_phi_components to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_phi_components(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = call i32* @phi_nodes(i32 %14)
  store i32* %15, i32** %3, align 8
  br label %16

16:                                               ; preds = %86, %1
  %17 = load i32*, i32** %3, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %89

19:                                               ; preds = %16
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @PHI_RESULT(i32* %20)
  %22 = call i64 @is_complex_reg(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %85

24:                                               ; preds = %19
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @PHI_RESULT(i32* %25)
  %27 = call i32* @get_component_ssa_name(i32 %26, i32 0)
  store i32* %27, i32** %4, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = call i64 @TREE_CODE(i32* %28)
  %30 = load i64, i64* @SSA_NAME, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* %2, align 4
  %35 = call i32* @create_phi_node(i32* %33, i32 %34)
  store i32* %35, i32** %6, align 8
  %36 = load i32*, i32** %6, align 8
  store i32* %36, i32** %10, align 8
  br label %37

37:                                               ; preds = %32, %24
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @PHI_RESULT(i32* %38)
  %40 = call i32* @get_component_ssa_name(i32 %39, i32 1)
  store i32* %40, i32** %5, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = call i64 @TREE_CODE(i32* %41)
  %43 = load i64, i64* @SSA_NAME, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %37
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %2, align 4
  %48 = call i32* @create_phi_node(i32* %46, i32 %47)
  store i32* %48, i32** %7, align 8
  %49 = load i32*, i32** %7, align 8
  store i32* %49, i32** %11, align 8
  br label %50

50:                                               ; preds = %45, %37
  store i32 0, i32* %8, align 4
  %51 = load i32*, i32** %3, align 8
  %52 = call i32 @PHI_NUM_ARGS(i32* %51)
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %81, %50
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %57, label %84

57:                                               ; preds = %53
  %58 = load i32*, i32** %3, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32* @PHI_ARG_DEF(i32* %58, i32 %59)
  store i32* %60, i32** %13, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %70

63:                                               ; preds = %57
  %64 = load i32*, i32** %13, align 8
  %65 = call i32* @extract_component(i32* null, i32* %64, i32 0, i32 0)
  store i32* %65, i32** %12, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load i32*, i32** %12, align 8
  %69 = call i32 @SET_PHI_ARG_DEF(i32* %66, i32 %67, i32* %68)
  br label %70

70:                                               ; preds = %63, %57
  %71 = load i32*, i32** %7, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = load i32*, i32** %13, align 8
  %75 = call i32* @extract_component(i32* null, i32* %74, i32 1, i32 0)
  store i32* %75, i32** %12, align 8
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load i32*, i32** %12, align 8
  %79 = call i32 @SET_PHI_ARG_DEF(i32* %76, i32 %77, i32* %78)
  br label %80

80:                                               ; preds = %73, %70
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %8, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %8, align 4
  br label %53

84:                                               ; preds = %53
  br label %85

85:                                               ; preds = %84, %19
  br label %86

86:                                               ; preds = %85
  %87 = load i32*, i32** %3, align 8
  %88 = call i32* @PHI_CHAIN(i32* %87)
  store i32* %88, i32** %3, align 8
  br label %16

89:                                               ; preds = %16
  ret void
}

declare dso_local i32* @phi_nodes(i32) #1

declare dso_local i64 @is_complex_reg(i32) #1

declare dso_local i32 @PHI_RESULT(i32*) #1

declare dso_local i32* @get_component_ssa_name(i32, i32) #1

declare dso_local i64 @TREE_CODE(i32*) #1

declare dso_local i32* @create_phi_node(i32*, i32) #1

declare dso_local i32 @PHI_NUM_ARGS(i32*) #1

declare dso_local i32* @PHI_ARG_DEF(i32*, i32) #1

declare dso_local i32* @extract_component(i32*, i32*, i32, i32) #1

declare dso_local i32 @SET_PHI_ARG_DEF(i32*, i32, i32*) #1

declare dso_local i32* @PHI_CHAIN(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
