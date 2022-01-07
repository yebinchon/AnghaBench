; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-inline.c_lookup_recursive_calls.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-inline.c_lookup_recursive_calls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_node = type { %struct.cgraph_edge* }
%struct.cgraph_edge = type { i32, %struct.cgraph_node*, i32, %struct.cgraph_edge* }

@lookup_recursive_calls.priority = internal global i32 0, align 4
@max_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cgraph_node*, %struct.cgraph_node*, i32)* @lookup_recursive_calls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lookup_recursive_calls(%struct.cgraph_node* %0, %struct.cgraph_node* %1, i32 %2) #0 {
  %4 = alloca %struct.cgraph_node*, align 8
  %5 = alloca %struct.cgraph_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cgraph_edge*, align 8
  store %struct.cgraph_node* %0, %struct.cgraph_node** %4, align 8
  store %struct.cgraph_node* %1, %struct.cgraph_node** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %9 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %8, i32 0, i32 0
  %10 = load %struct.cgraph_edge*, %struct.cgraph_edge** %9, align 8
  store %struct.cgraph_edge* %10, %struct.cgraph_edge** %7, align 8
  br label %11

11:                                               ; preds = %42, %3
  %12 = load %struct.cgraph_edge*, %struct.cgraph_edge** %7, align 8
  %13 = icmp ne %struct.cgraph_edge* %12, null
  br i1 %13, label %14, label %46

14:                                               ; preds = %11
  %15 = load %struct.cgraph_edge*, %struct.cgraph_edge** %7, align 8
  %16 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %15, i32 0, i32 1
  %17 = load %struct.cgraph_node*, %struct.cgraph_node** %16, align 8
  %18 = load %struct.cgraph_node*, %struct.cgraph_node** %4, align 8
  %19 = icmp eq %struct.cgraph_node* %17, %18
  br i1 %19, label %20, label %41

20:                                               ; preds = %14
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @max_count, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @lookup_recursive_calls.priority, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @lookup_recursive_calls.priority, align 4
  br label %37

27:                                               ; preds = %20
  %28 = load %struct.cgraph_edge*, %struct.cgraph_edge** %7, align 8
  %29 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @max_count, align 4
  %32 = add nsw i32 %31, 16777216
  %33 = sub nsw i32 %32, 1
  %34 = sdiv i32 %33, 16777216
  %35 = sdiv i32 %30, %34
  %36 = sub nsw i32 0, %35
  br label %37

37:                                               ; preds = %27, %24
  %38 = phi i32 [ %25, %24 ], [ %36, %27 ]
  %39 = load %struct.cgraph_edge*, %struct.cgraph_edge** %7, align 8
  %40 = call i32 @fibheap_insert(i32 %21, i32 %38, %struct.cgraph_edge* %39)
  br label %41

41:                                               ; preds = %37, %14
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.cgraph_edge*, %struct.cgraph_edge** %7, align 8
  %44 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %43, i32 0, i32 3
  %45 = load %struct.cgraph_edge*, %struct.cgraph_edge** %44, align 8
  store %struct.cgraph_edge* %45, %struct.cgraph_edge** %7, align 8
  br label %11

46:                                               ; preds = %11
  %47 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %48 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %47, i32 0, i32 0
  %49 = load %struct.cgraph_edge*, %struct.cgraph_edge** %48, align 8
  store %struct.cgraph_edge* %49, %struct.cgraph_edge** %7, align 8
  br label %50

50:                                               ; preds = %65, %46
  %51 = load %struct.cgraph_edge*, %struct.cgraph_edge** %7, align 8
  %52 = icmp ne %struct.cgraph_edge* %51, null
  br i1 %52, label %53, label %69

53:                                               ; preds = %50
  %54 = load %struct.cgraph_edge*, %struct.cgraph_edge** %7, align 8
  %55 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %53
  %59 = load %struct.cgraph_node*, %struct.cgraph_node** %4, align 8
  %60 = load %struct.cgraph_edge*, %struct.cgraph_edge** %7, align 8
  %61 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %60, i32 0, i32 1
  %62 = load %struct.cgraph_node*, %struct.cgraph_node** %61, align 8
  %63 = load i32, i32* %6, align 4
  call void @lookup_recursive_calls(%struct.cgraph_node* %59, %struct.cgraph_node* %62, i32 %63)
  br label %64

64:                                               ; preds = %58, %53
  br label %65

65:                                               ; preds = %64
  %66 = load %struct.cgraph_edge*, %struct.cgraph_edge** %7, align 8
  %67 = getelementptr inbounds %struct.cgraph_edge, %struct.cgraph_edge* %66, i32 0, i32 3
  %68 = load %struct.cgraph_edge*, %struct.cgraph_edge** %67, align 8
  store %struct.cgraph_edge* %68, %struct.cgraph_edge** %7, align 8
  br label %50

69:                                               ; preds = %50
  ret void
}

declare dso_local i32 @fibheap_insert(i32, i32, %struct.cgraph_edge*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
