; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_dominance.c_redirect_immediate_dominators.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_dominance.c_redirect_immediate_dominators.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.et_node** }
%struct.et_node = type { %struct.et_node* }

@dom_computed = common dso_local global i64* null, align 8
@DOM_OK = common dso_local global i64 0, align 8
@DOM_NO_FAST_QUERY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @redirect_immediate_dominators(i32 %0, %struct.TYPE_4__* %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.et_node*, align 8
  %8 = alloca %struct.et_node*, align 8
  %9 = alloca %struct.et_node*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %6, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.et_node**, %struct.et_node*** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.et_node*, %struct.et_node** %12, i64 %14
  %16 = load %struct.et_node*, %struct.et_node** %15, align 8
  store %struct.et_node* %16, %struct.et_node** %7, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.et_node**, %struct.et_node*** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.et_node*, %struct.et_node** %19, i64 %21
  %23 = load %struct.et_node*, %struct.et_node** %22, align 8
  store %struct.et_node* %23, %struct.et_node** %8, align 8
  %24 = load i64*, i64** @dom_computed, align 8
  %25 = load i32, i32* %4, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @gcc_assert(i64 %28)
  %30 = load %struct.et_node*, %struct.et_node** %7, align 8
  %31 = getelementptr inbounds %struct.et_node, %struct.et_node* %30, i32 0, i32 0
  %32 = load %struct.et_node*, %struct.et_node** %31, align 8
  %33 = icmp ne %struct.et_node* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %3
  br label %64

35:                                               ; preds = %3
  br label %36

36:                                               ; preds = %41, %35
  %37 = load %struct.et_node*, %struct.et_node** %7, align 8
  %38 = getelementptr inbounds %struct.et_node, %struct.et_node* %37, i32 0, i32 0
  %39 = load %struct.et_node*, %struct.et_node** %38, align 8
  %40 = icmp ne %struct.et_node* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = load %struct.et_node*, %struct.et_node** %7, align 8
  %43 = getelementptr inbounds %struct.et_node, %struct.et_node* %42, i32 0, i32 0
  %44 = load %struct.et_node*, %struct.et_node** %43, align 8
  store %struct.et_node* %44, %struct.et_node** %9, align 8
  %45 = load %struct.et_node*, %struct.et_node** %9, align 8
  %46 = call i32 @et_split(%struct.et_node* %45)
  %47 = load %struct.et_node*, %struct.et_node** %9, align 8
  %48 = load %struct.et_node*, %struct.et_node** %8, align 8
  %49 = call i32 @et_set_father(%struct.et_node* %47, %struct.et_node* %48)
  br label %36

50:                                               ; preds = %36
  %51 = load i64*, i64** @dom_computed, align 8
  %52 = load i32, i32* %4, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @DOM_OK, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %50
  %59 = load i64, i64* @DOM_NO_FAST_QUERY, align 8
  %60 = load i64*, i64** @dom_computed, align 8
  %61 = load i32, i32* %4, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  store i64 %59, i64* %63, align 8
  br label %64

64:                                               ; preds = %34, %58, %50
  ret void
}

declare dso_local i32 @gcc_assert(i64) #1

declare dso_local i32 @et_split(%struct.et_node*) #1

declare dso_local i32 @et_set_father(%struct.et_node*, %struct.et_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
