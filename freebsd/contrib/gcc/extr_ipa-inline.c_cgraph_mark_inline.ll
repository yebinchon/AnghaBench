; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-inline.c_cgraph_mark_inline.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-inline.c_cgraph_mark_inline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_edge = type { i64, %struct.cgraph_node*, %struct.cgraph_edge*, %struct.cgraph_node* }
%struct.cgraph_node = type { %struct.cgraph_edge* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cgraph_edge* (%struct.cgraph_edge*)* @cgraph_mark_inline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cgraph_edge* @cgraph_mark_inline(%struct.cgraph_edge* %0) #0 {
  %2 = alloca %struct.cgraph_edge*, align 8
  %3 = alloca %struct.cgraph_node*, align 8
  %4 = alloca %struct.cgraph_node*, align 8
  %5 = alloca %struct.cgraph_edge*, align 8
  %6 = alloca %struct.cgraph_edge*, align 8
  %7 = alloca i32, align 4
  store %struct.cgraph_edge* %0, %struct.cgraph_edge** %2, align 8
  %8 = load %struct.cgraph_edge*, %struct.cgraph_edge** %2, align 8
  %9 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %8, i32 0, i32 1
  %10 = load %struct.cgraph_node*, %struct.cgraph_node** %9, align 8
  store %struct.cgraph_node* %10, %struct.cgraph_node** %3, align 8
  %11 = load %struct.cgraph_edge*, %struct.cgraph_edge** %2, align 8
  %12 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %11, i32 0, i32 3
  %13 = load %struct.cgraph_node*, %struct.cgraph_node** %12, align 8
  store %struct.cgraph_node* %13, %struct.cgraph_node** %4, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.cgraph_node*, %struct.cgraph_node** %4, align 8
  %15 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %14, i32 0, i32 0
  %16 = load %struct.cgraph_edge*, %struct.cgraph_edge** %15, align 8
  store %struct.cgraph_edge* %16, %struct.cgraph_edge** %5, align 8
  br label %17

17:                                               ; preds = %46, %1
  %18 = load %struct.cgraph_edge*, %struct.cgraph_edge** %5, align 8
  %19 = icmp ne %struct.cgraph_edge* %18, null
  br i1 %19, label %20, label %48

20:                                               ; preds = %17
  %21 = load %struct.cgraph_edge*, %struct.cgraph_edge** %5, align 8
  %22 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %21, i32 0, i32 2
  %23 = load %struct.cgraph_edge*, %struct.cgraph_edge** %22, align 8
  store %struct.cgraph_edge* %23, %struct.cgraph_edge** %6, align 8
  %24 = load %struct.cgraph_edge*, %struct.cgraph_edge** %5, align 8
  %25 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %24, i32 0, i32 1
  %26 = load %struct.cgraph_node*, %struct.cgraph_node** %25, align 8
  %27 = load %struct.cgraph_node*, %struct.cgraph_node** %3, align 8
  %28 = icmp eq %struct.cgraph_node* %26, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %20
  %30 = load %struct.cgraph_edge*, %struct.cgraph_edge** %5, align 8
  %31 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load %struct.cgraph_edge*, %struct.cgraph_edge** %5, align 8
  %36 = call i32 @cgraph_mark_inline_edge(%struct.cgraph_edge* %35, i32 1)
  %37 = load %struct.cgraph_edge*, %struct.cgraph_edge** %5, align 8
  %38 = load %struct.cgraph_edge*, %struct.cgraph_edge** %2, align 8
  %39 = icmp eq %struct.cgraph_edge* %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load %struct.cgraph_edge*, %struct.cgraph_edge** %6, align 8
  store %struct.cgraph_edge* %41, %struct.cgraph_edge** %2, align 8
  br label %42

42:                                               ; preds = %40, %34
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %42, %29, %20
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.cgraph_edge*, %struct.cgraph_edge** %6, align 8
  store %struct.cgraph_edge* %47, %struct.cgraph_edge** %5, align 8
  br label %17

48:                                               ; preds = %17
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @gcc_assert(i32 %49)
  %51 = load %struct.cgraph_edge*, %struct.cgraph_edge** %2, align 8
  ret %struct.cgraph_edge* %51
}

declare dso_local i32 @cgraph_mark_inline_edge(%struct.cgraph_edge*, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
