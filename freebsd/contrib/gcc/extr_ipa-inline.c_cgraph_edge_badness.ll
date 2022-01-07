; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-inline.c_cgraph_edge_badness.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-inline.c_cgraph_edge_badness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_edge = type { i32, %struct.TYPE_5__*, i32, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@max_count = common dso_local global i32 0, align 4
@INT_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cgraph_edge*)* @cgraph_edge_badness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cgraph_edge_badness(%struct.cgraph_edge* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cgraph_edge*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cgraph_edge* %0, %struct.cgraph_edge** %3, align 8
  %7 = load i32, i32* @max_count, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %47

9:                                                ; preds = %1
  %10 = load %struct.cgraph_edge*, %struct.cgraph_edge** %3, align 8
  %11 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %10, i32 0, i32 1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = load %struct.cgraph_edge*, %struct.cgraph_edge** %3, align 8
  %14 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @cgraph_estimate_size_after_inlining(i32 1, %struct.TYPE_5__* %12, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load %struct.cgraph_edge*, %struct.cgraph_edge** %3, align 8
  %18 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %17, i32 0, i32 1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = sub nsw i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp sle i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %9
  %30 = load i32, i32* @INT_MIN, align 4
  %31 = load i32, i32* %4, align 4
  %32 = sub nsw i32 %30, %31
  store i32 %32, i32* %2, align 4
  br label %81

33:                                               ; preds = %9
  %34 = load %struct.cgraph_edge*, %struct.cgraph_edge** %3, align 8
  %35 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = sitofp i64 %36 to double
  %38 = load i32, i32* @INT_MIN, align 4
  %39 = sitofp i32 %38 to double
  %40 = fmul double %37, %39
  %41 = load i32, i32* @max_count, align 4
  %42 = sitofp i32 %41 to double
  %43 = fdiv double %40, %42
  %44 = fptosi double %43 to i32
  %45 = load i32, i32* %4, align 4
  %46 = sdiv i32 %44, %45
  store i32 %46, i32* %2, align 4
  br label %81

47:                                               ; preds = %1
  %48 = load %struct.cgraph_edge*, %struct.cgraph_edge** %3, align 8
  %49 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @MIN(i32 %50, i32 8)
  store i32 %51, i32* %5, align 4
  %52 = load %struct.cgraph_edge*, %struct.cgraph_edge** %3, align 8
  %53 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @cgraph_estimate_growth(i32 %54)
  %56 = mul nsw i32 %55, 256
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %47
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %6, align 4
  %62 = ashr i32 %61, %60
  store i32 %62, i32* %6, align 4
  br label %67

63:                                               ; preds = %47
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %6, align 4
  %66 = shl i32 %65, %64
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %63, %59
  %68 = load %struct.cgraph_edge*, %struct.cgraph_edge** %3, align 8
  %69 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %68, i32 0, i32 1
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = load %struct.cgraph_edge*, %struct.cgraph_edge** %3, align 8
  %72 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @cgraph_recursive_inlining_p(%struct.TYPE_5__* %70, i32 %73, i32* null)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %67
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %2, align 4
  br label %81

79:                                               ; preds = %67
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %79, %76, %33, %29
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @cgraph_estimate_size_after_inlining(i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @cgraph_estimate_growth(i32) #1

declare dso_local i64 @cgraph_recursive_inlining_p(%struct.TYPE_5__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
