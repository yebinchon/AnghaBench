; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-inline.c_cgraph_check_inline_limits.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-inline.c_cgraph_check_inline_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_node = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.cgraph_edge* }
%struct.TYPE_4__ = type { i32, %struct.cgraph_node* }
%struct.TYPE_3__ = type { i32 }
%struct.cgraph_edge = type { %struct.cgraph_node*, %struct.cgraph_edge* }

@PARAM_LARGE_FUNCTION_GROWTH = common dso_local global i32 0, align 4
@PARAM_LARGE_FUNCTION_INSNS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"--param large-function-growth limit reached\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cgraph_node*, %struct.cgraph_node*, i8**, i32)* @cgraph_check_inline_limits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cgraph_check_inline_limits(%struct.cgraph_node* %0, %struct.cgraph_node* %1, i8** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cgraph_node*, align 8
  %7 = alloca %struct.cgraph_node*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.cgraph_edge*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.cgraph_node* %0, %struct.cgraph_node** %6, align 8
  store %struct.cgraph_node* %1, %struct.cgraph_node** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 1, i32* %10, align 4
  br label %39

17:                                               ; preds = %4
  %18 = load %struct.cgraph_node*, %struct.cgraph_node** %6, align 8
  %19 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %18, i32 0, i32 2
  %20 = load %struct.cgraph_edge*, %struct.cgraph_edge** %19, align 8
  store %struct.cgraph_edge* %20, %struct.cgraph_edge** %11, align 8
  br label %21

21:                                               ; preds = %34, %17
  %22 = load %struct.cgraph_edge*, %struct.cgraph_edge** %11, align 8
  %23 = icmp ne %struct.cgraph_edge* %22, null
  br i1 %23, label %24, label %38

24:                                               ; preds = %21
  %25 = load %struct.cgraph_edge*, %struct.cgraph_edge** %11, align 8
  %26 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %25, i32 0, i32 0
  %27 = load %struct.cgraph_node*, %struct.cgraph_node** %26, align 8
  %28 = load %struct.cgraph_node*, %struct.cgraph_node** %7, align 8
  %29 = icmp eq %struct.cgraph_node* %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* %10, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %10, align 4
  br label %33

33:                                               ; preds = %30, %24
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.cgraph_edge*, %struct.cgraph_edge** %11, align 8
  %36 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %35, i32 0, i32 1
  %37 = load %struct.cgraph_edge*, %struct.cgraph_edge** %36, align 8
  store %struct.cgraph_edge* %37, %struct.cgraph_edge** %11, align 8
  br label %21

38:                                               ; preds = %21
  br label %39

39:                                               ; preds = %38, %16
  %40 = load %struct.cgraph_node*, %struct.cgraph_node** %6, align 8
  %41 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load %struct.cgraph_node*, %struct.cgraph_node** %42, align 8
  %44 = icmp ne %struct.cgraph_node* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load %struct.cgraph_node*, %struct.cgraph_node** %6, align 8
  %47 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load %struct.cgraph_node*, %struct.cgraph_node** %48, align 8
  store %struct.cgraph_node* %49, %struct.cgraph_node** %6, align 8
  br label %50

50:                                               ; preds = %45, %39
  %51 = load %struct.cgraph_node*, %struct.cgraph_node** %6, align 8
  %52 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.cgraph_node*, %struct.cgraph_node** %7, align 8
  %56 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp sgt i32 %54, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %50
  %61 = load %struct.cgraph_node*, %struct.cgraph_node** %6, align 8
  %62 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %13, align 4
  br label %70

65:                                               ; preds = %50
  %66 = load %struct.cgraph_node*, %struct.cgraph_node** %7, align 8
  %67 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %13, align 4
  br label %70

70:                                               ; preds = %65, %60
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* @PARAM_LARGE_FUNCTION_GROWTH, align 4
  %73 = call i32 @PARAM_VALUE(i32 %72)
  %74 = mul nsw i32 %71, %73
  %75 = sdiv i32 %74, 100
  %76 = load i32, i32* %13, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.cgraph_node*, %struct.cgraph_node** %6, align 8
  %80 = load %struct.cgraph_node*, %struct.cgraph_node** %7, align 8
  %81 = call i32 @cgraph_estimate_size_after_inlining(i32 %78, %struct.cgraph_node* %79, %struct.cgraph_node* %80)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load %struct.cgraph_node*, %struct.cgraph_node** %6, align 8
  %84 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp sge i32 %82, %86
  br i1 %87, label %88, label %104

88:                                               ; preds = %70
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* @PARAM_LARGE_FUNCTION_INSNS, align 4
  %91 = call i32 @PARAM_VALUE(i32 %90)
  %92 = icmp sgt i32 %89, %91
  br i1 %92, label %93, label %104

93:                                               ; preds = %88
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %13, align 4
  %96 = icmp sgt i32 %94, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %93
  %98 = load i8**, i8*** %8, align 8
  %99 = icmp ne i8** %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = call i8* @N_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %102 = load i8**, i8*** %8, align 8
  store i8* %101, i8** %102, align 8
  br label %103

103:                                              ; preds = %100, %97
  store i32 0, i32* %5, align 4
  br label %105

104:                                              ; preds = %93, %88, %70
  store i32 1, i32* %5, align 4
  br label %105

105:                                              ; preds = %104, %103
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i32 @PARAM_VALUE(i32) #1

declare dso_local i32 @cgraph_estimate_size_after_inlining(i32, %struct.cgraph_node*, %struct.cgraph_node*) #1

declare dso_local i8* @N_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
