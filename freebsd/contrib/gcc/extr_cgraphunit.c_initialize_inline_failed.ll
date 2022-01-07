; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraphunit.c_initialize_inline_failed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cgraphunit.c_initialize_inline_failed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_node = type { %struct.TYPE_4__, %struct.cgraph_edge* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.cgraph_edge = type { i32, %struct.TYPE_6__*, %struct.cgraph_edge* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [66 x i8] c"redefined extern inline functions are not considered for inlining\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"function not inlinable\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"function not considered for inlining\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cgraph_node*)* @initialize_inline_failed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initialize_inline_failed(%struct.cgraph_node* %0) #0 {
  %2 = alloca %struct.cgraph_node*, align 8
  %3 = alloca %struct.cgraph_edge*, align 8
  store %struct.cgraph_node* %0, %struct.cgraph_node** %2, align 8
  %4 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %5 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %4, i32 0, i32 1
  %6 = load %struct.cgraph_edge*, %struct.cgraph_edge** %5, align 8
  store %struct.cgraph_edge* %6, %struct.cgraph_edge** %3, align 8
  br label %7

7:                                                ; preds = %53, %1
  %8 = load %struct.cgraph_edge*, %struct.cgraph_edge** %3, align 8
  %9 = icmp ne %struct.cgraph_edge* %8, null
  br i1 %9, label %10, label %57

10:                                               ; preds = %7
  %11 = load %struct.cgraph_edge*, %struct.cgraph_edge** %3, align 8
  %12 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %11, i32 0, i32 1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @gcc_assert(i32 %19)
  %21 = load %struct.cgraph_edge*, %struct.cgraph_edge** %3, align 8
  %22 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @gcc_assert(i32 %23)
  %25 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %26 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %10
  %31 = call i8* @N_(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  %32 = ptrtoint i8* %31 to i32
  %33 = load %struct.cgraph_edge*, %struct.cgraph_edge** %3, align 8
  %34 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  br label %52

35:                                               ; preds = %10
  %36 = load %struct.cgraph_node*, %struct.cgraph_node** %2, align 8
  %37 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %35
  %42 = call i8* @N_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %43 = ptrtoint i8* %42 to i32
  %44 = load %struct.cgraph_edge*, %struct.cgraph_edge** %3, align 8
  %45 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  br label %51

46:                                               ; preds = %35
  %47 = call i8* @N_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %48 = ptrtoint i8* %47 to i32
  %49 = load %struct.cgraph_edge*, %struct.cgraph_edge** %3, align 8
  %50 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  br label %51

51:                                               ; preds = %46, %41
  br label %52

52:                                               ; preds = %51, %30
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.cgraph_edge*, %struct.cgraph_edge** %3, align 8
  %55 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %54, i32 0, i32 2
  %56 = load %struct.cgraph_edge*, %struct.cgraph_edge** %55, align 8
  store %struct.cgraph_edge* %56, %struct.cgraph_edge** %3, align 8
  br label %7

57:                                               ; preds = %7
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i8* @N_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
