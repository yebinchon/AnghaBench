; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cp-lang.c_cp_init_ts.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cp-lang.c_cp_init_ts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tree_contains_struct = common dso_local global i32** null, align 8
@NAMESPACE_DECL = common dso_local global i64 0, align 8
@TS_DECL_NON_COMMON = common dso_local global i64 0, align 8
@USING_DECL = common dso_local global i64 0, align 8
@TEMPLATE_DECL = common dso_local global i64 0, align 8
@TS_DECL_WITH_VIS = common dso_local global i64 0, align 8
@TS_DECL_WRTL = common dso_local global i64 0, align 8
@TS_DECL_COMMON = common dso_local global i64 0, align 8
@TS_DECL_MINIMAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cp_init_ts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_init_ts() #0 {
  %1 = load i32**, i32*** @tree_contains_struct, align 8
  %2 = load i64, i64* @NAMESPACE_DECL, align 8
  %3 = getelementptr inbounds i32*, i32** %1, i64 %2
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* @TS_DECL_NON_COMMON, align 8
  %6 = getelementptr inbounds i32, i32* %4, i64 %5
  store i32 1, i32* %6, align 4
  %7 = load i32**, i32*** @tree_contains_struct, align 8
  %8 = load i64, i64* @USING_DECL, align 8
  %9 = getelementptr inbounds i32*, i32** %7, i64 %8
  %10 = load i32*, i32** %9, align 8
  %11 = load i64, i64* @TS_DECL_NON_COMMON, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  store i32 1, i32* %12, align 4
  %13 = load i32**, i32*** @tree_contains_struct, align 8
  %14 = load i64, i64* @TEMPLATE_DECL, align 8
  %15 = getelementptr inbounds i32*, i32** %13, i64 %14
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* @TS_DECL_NON_COMMON, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  store i32 1, i32* %18, align 4
  %19 = load i32**, i32*** @tree_contains_struct, align 8
  %20 = load i64, i64* @NAMESPACE_DECL, align 8
  %21 = getelementptr inbounds i32*, i32** %19, i64 %20
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @TS_DECL_WITH_VIS, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  store i32 1, i32* %24, align 4
  %25 = load i32**, i32*** @tree_contains_struct, align 8
  %26 = load i64, i64* @USING_DECL, align 8
  %27 = getelementptr inbounds i32*, i32** %25, i64 %26
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @TS_DECL_WITH_VIS, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32 1, i32* %30, align 4
  %31 = load i32**, i32*** @tree_contains_struct, align 8
  %32 = load i64, i64* @TEMPLATE_DECL, align 8
  %33 = getelementptr inbounds i32*, i32** %31, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @TS_DECL_WITH_VIS, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32 1, i32* %36, align 4
  %37 = load i32**, i32*** @tree_contains_struct, align 8
  %38 = load i64, i64* @NAMESPACE_DECL, align 8
  %39 = getelementptr inbounds i32*, i32** %37, i64 %38
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @TS_DECL_WRTL, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  store i32 1, i32* %42, align 4
  %43 = load i32**, i32*** @tree_contains_struct, align 8
  %44 = load i64, i64* @USING_DECL, align 8
  %45 = getelementptr inbounds i32*, i32** %43, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* @TS_DECL_WRTL, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  store i32 1, i32* %48, align 4
  %49 = load i32**, i32*** @tree_contains_struct, align 8
  %50 = load i64, i64* @TEMPLATE_DECL, align 8
  %51 = getelementptr inbounds i32*, i32** %49, i64 %50
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* @TS_DECL_WRTL, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32 1, i32* %54, align 4
  %55 = load i32**, i32*** @tree_contains_struct, align 8
  %56 = load i64, i64* @NAMESPACE_DECL, align 8
  %57 = getelementptr inbounds i32*, i32** %55, i64 %56
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* @TS_DECL_COMMON, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32 1, i32* %60, align 4
  %61 = load i32**, i32*** @tree_contains_struct, align 8
  %62 = load i64, i64* @USING_DECL, align 8
  %63 = getelementptr inbounds i32*, i32** %61, i64 %62
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* @TS_DECL_COMMON, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  store i32 1, i32* %66, align 4
  %67 = load i32**, i32*** @tree_contains_struct, align 8
  %68 = load i64, i64* @TEMPLATE_DECL, align 8
  %69 = getelementptr inbounds i32*, i32** %67, i64 %68
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* @TS_DECL_COMMON, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32 1, i32* %72, align 4
  %73 = load i32**, i32*** @tree_contains_struct, align 8
  %74 = load i64, i64* @NAMESPACE_DECL, align 8
  %75 = getelementptr inbounds i32*, i32** %73, i64 %74
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* @TS_DECL_MINIMAL, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  store i32 1, i32* %78, align 4
  %79 = load i32**, i32*** @tree_contains_struct, align 8
  %80 = load i64, i64* @USING_DECL, align 8
  %81 = getelementptr inbounds i32*, i32** %79, i64 %80
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* @TS_DECL_MINIMAL, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  store i32 1, i32* %84, align 4
  %85 = load i32**, i32*** @tree_contains_struct, align 8
  %86 = load i64, i64* @TEMPLATE_DECL, align 8
  %87 = getelementptr inbounds i32*, i32** %85, i64 %86
  %88 = load i32*, i32** %87, align 8
  %89 = load i64, i64* @TS_DECL_MINIMAL, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  store i32 1, i32* %90, align 4
  %91 = call i32 (...) @init_shadowed_var_for_decl()
  ret void
}

declare dso_local i32 @init_shadowed_var_for_decl(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
