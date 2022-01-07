; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-inline.c_cgraph_estimate_growth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-inline.c_cgraph_estimate_growth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_node = type { %struct.TYPE_5__, i32, i32, %struct.cgraph_edge* }
%struct.TYPE_5__ = type { i32, i64 }
%struct.cgraph_edge = type { %struct.TYPE_6__*, i64, %struct.cgraph_edge* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@INT_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cgraph_node*)* @cgraph_estimate_growth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cgraph_estimate_growth(%struct.cgraph_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cgraph_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cgraph_edge*, align 8
  store %struct.cgraph_node* %0, %struct.cgraph_node** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %7 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @INT_MIN, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %14 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %2, align 4
  br label %77

17:                                               ; preds = %1
  %18 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %19 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %18, i32 0, i32 3
  %20 = load %struct.cgraph_edge*, %struct.cgraph_edge** %19, align 8
  store %struct.cgraph_edge* %20, %struct.cgraph_edge** %5, align 8
  br label %21

21:                                               ; preds = %47, %17
  %22 = load %struct.cgraph_edge*, %struct.cgraph_edge** %5, align 8
  %23 = icmp ne %struct.cgraph_edge* %22, null
  br i1 %23, label %24, label %51

24:                                               ; preds = %21
  %25 = load %struct.cgraph_edge*, %struct.cgraph_edge** %5, align 8
  %26 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %24
  %30 = load %struct.cgraph_edge*, %struct.cgraph_edge** %5, align 8
  %31 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %34 = call i64 @cgraph_estimate_size_after_inlining(i32 1, %struct.TYPE_6__* %32, %struct.cgraph_node* %33)
  %35 = load %struct.cgraph_edge*, %struct.cgraph_edge** %5, align 8
  %36 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %34, %40
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %41
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %29, %24
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.cgraph_edge*, %struct.cgraph_edge** %5, align 8
  %49 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %48, i32 0, i32 2
  %50 = load %struct.cgraph_edge*, %struct.cgraph_edge** %49, align 8
  store %struct.cgraph_edge* %50, %struct.cgraph_edge** %5, align 8
  br label %21

51:                                               ; preds = %21
  %52 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %53 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %71, label %56

56:                                               ; preds = %51
  %57 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %58 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @DECL_EXTERNAL(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %56
  %63 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %64 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = sub nsw i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %62, %56, %51
  %72 = load i32, i32* %4, align 4
  %73 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %74 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 8
  %76 = load i32, i32* %4, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %71, %12
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i64 @cgraph_estimate_size_after_inlining(i32, %struct.TYPE_6__*, %struct.cgraph_node*) #1

declare dso_local i32 @DECL_EXTERNAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
