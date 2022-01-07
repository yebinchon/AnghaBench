; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_et-forest.c_et_split.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_et-forest.c_et_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et_node = type { %struct.et_node*, %struct.et_node*, %struct.TYPE_2__*, %struct.et_node*, %struct.et_occ*, %struct.et_occ* }
%struct.TYPE_2__ = type { %struct.et_node* }
%struct.et_occ = type { i64, i64, i32*, %struct.et_occ*, %struct.et_occ* }

@et_occurrences = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @et_split(%struct.et_node* %0) #0 {
  %2 = alloca %struct.et_node*, align 8
  %3 = alloca %struct.et_node*, align 8
  %4 = alloca %struct.et_occ*, align 8
  %5 = alloca %struct.et_occ*, align 8
  %6 = alloca %struct.et_occ*, align 8
  %7 = alloca %struct.et_occ*, align 8
  store %struct.et_node* %0, %struct.et_node** %2, align 8
  %8 = load %struct.et_node*, %struct.et_node** %2, align 8
  %9 = getelementptr inbounds %struct.et_node, %struct.et_node* %8, i32 0, i32 0
  %10 = load %struct.et_node*, %struct.et_node** %9, align 8
  store %struct.et_node* %10, %struct.et_node** %3, align 8
  %11 = load %struct.et_node*, %struct.et_node** %2, align 8
  %12 = getelementptr inbounds %struct.et_node, %struct.et_node* %11, i32 0, i32 5
  %13 = load %struct.et_occ*, %struct.et_occ** %12, align 8
  store %struct.et_occ* %13, %struct.et_occ** %6, align 8
  %14 = load %struct.et_occ*, %struct.et_occ** %6, align 8
  %15 = call i32 @et_splay(%struct.et_occ* %14)
  %16 = load %struct.et_occ*, %struct.et_occ** %6, align 8
  %17 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %16, i32 0, i32 3
  %18 = load %struct.et_occ*, %struct.et_occ** %17, align 8
  store %struct.et_occ* %18, %struct.et_occ** %4, align 8
  br label %19

19:                                               ; preds = %25, %1
  %20 = load %struct.et_occ*, %struct.et_occ** %4, align 8
  %21 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %20, i32 0, i32 4
  %22 = load %struct.et_occ*, %struct.et_occ** %21, align 8
  %23 = icmp ne %struct.et_occ* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.et_occ*, %struct.et_occ** %4, align 8
  %27 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %26, i32 0, i32 4
  %28 = load %struct.et_occ*, %struct.et_occ** %27, align 8
  store %struct.et_occ* %28, %struct.et_occ** %4, align 8
  br label %19

29:                                               ; preds = %19
  %30 = load %struct.et_occ*, %struct.et_occ** %4, align 8
  %31 = call i32 @et_splay(%struct.et_occ* %30)
  %32 = load %struct.et_occ*, %struct.et_occ** %4, align 8
  %33 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %32, i32 0, i32 4
  %34 = load %struct.et_occ*, %struct.et_occ** %33, align 8
  %35 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %34, i32 0, i32 2
  store i32* null, i32** %35, align 8
  %36 = load %struct.et_node*, %struct.et_node** %2, align 8
  %37 = getelementptr inbounds %struct.et_node, %struct.et_node* %36, i32 0, i32 4
  %38 = load %struct.et_occ*, %struct.et_occ** %37, align 8
  store %struct.et_occ* %38, %struct.et_occ** %7, align 8
  %39 = load %struct.et_occ*, %struct.et_occ** %7, align 8
  %40 = call i32 @et_splay(%struct.et_occ* %39)
  %41 = load %struct.et_node*, %struct.et_node** %2, align 8
  %42 = getelementptr inbounds %struct.et_node, %struct.et_node* %41, i32 0, i32 4
  store %struct.et_occ* null, %struct.et_occ** %42, align 8
  %43 = load %struct.et_occ*, %struct.et_occ** %7, align 8
  %44 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %43, i32 0, i32 4
  %45 = load %struct.et_occ*, %struct.et_occ** %44, align 8
  store %struct.et_occ* %45, %struct.et_occ** %5, align 8
  %46 = load %struct.et_occ*, %struct.et_occ** %7, align 8
  %47 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %46, i32 0, i32 3
  %48 = load %struct.et_occ*, %struct.et_occ** %47, align 8
  %49 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %48, i32 0, i32 2
  store i32* null, i32** %49, align 8
  %50 = load %struct.et_occ*, %struct.et_occ** %4, align 8
  %51 = load %struct.et_occ*, %struct.et_occ** %5, align 8
  %52 = call i32 @set_prev(%struct.et_occ* %50, %struct.et_occ* %51)
  %53 = load %struct.et_occ*, %struct.et_occ** %4, align 8
  %54 = call i32 @et_recomp_min(%struct.et_occ* %53)
  %55 = load %struct.et_occ*, %struct.et_occ** %6, align 8
  %56 = call i32 @et_splay(%struct.et_occ* %55)
  %57 = load %struct.et_occ*, %struct.et_occ** %6, align 8
  %58 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  %59 = load %struct.et_occ*, %struct.et_occ** %6, align 8
  %60 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  %61 = load i32, i32* @et_occurrences, align 4
  %62 = load %struct.et_occ*, %struct.et_occ** %7, align 8
  %63 = call i32 @pool_free(i32 %61, %struct.et_occ* %62)
  %64 = load %struct.et_node*, %struct.et_node** %3, align 8
  %65 = getelementptr inbounds %struct.et_node, %struct.et_node* %64, i32 0, i32 3
  %66 = load %struct.et_node*, %struct.et_node** %65, align 8
  %67 = load %struct.et_node*, %struct.et_node** %2, align 8
  %68 = icmp eq %struct.et_node* %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %29
  %70 = load %struct.et_node*, %struct.et_node** %2, align 8
  %71 = getelementptr inbounds %struct.et_node, %struct.et_node* %70, i32 0, i32 1
  %72 = load %struct.et_node*, %struct.et_node** %71, align 8
  %73 = load %struct.et_node*, %struct.et_node** %3, align 8
  %74 = getelementptr inbounds %struct.et_node, %struct.et_node* %73, i32 0, i32 3
  store %struct.et_node* %72, %struct.et_node** %74, align 8
  br label %75

75:                                               ; preds = %69, %29
  %76 = load %struct.et_node*, %struct.et_node** %3, align 8
  %77 = getelementptr inbounds %struct.et_node, %struct.et_node* %76, i32 0, i32 3
  %78 = load %struct.et_node*, %struct.et_node** %77, align 8
  %79 = load %struct.et_node*, %struct.et_node** %2, align 8
  %80 = icmp eq %struct.et_node* %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load %struct.et_node*, %struct.et_node** %3, align 8
  %83 = getelementptr inbounds %struct.et_node, %struct.et_node* %82, i32 0, i32 3
  store %struct.et_node* null, %struct.et_node** %83, align 8
  br label %99

84:                                               ; preds = %75
  %85 = load %struct.et_node*, %struct.et_node** %2, align 8
  %86 = getelementptr inbounds %struct.et_node, %struct.et_node* %85, i32 0, i32 1
  %87 = load %struct.et_node*, %struct.et_node** %86, align 8
  %88 = load %struct.et_node*, %struct.et_node** %2, align 8
  %89 = getelementptr inbounds %struct.et_node, %struct.et_node* %88, i32 0, i32 2
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  store %struct.et_node* %87, %struct.et_node** %91, align 8
  %92 = load %struct.et_node*, %struct.et_node** %2, align 8
  %93 = getelementptr inbounds %struct.et_node, %struct.et_node* %92, i32 0, i32 2
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = load %struct.et_node*, %struct.et_node** %2, align 8
  %96 = getelementptr inbounds %struct.et_node, %struct.et_node* %95, i32 0, i32 1
  %97 = load %struct.et_node*, %struct.et_node** %96, align 8
  %98 = getelementptr inbounds %struct.et_node, %struct.et_node* %97, i32 0, i32 2
  store %struct.TYPE_2__* %94, %struct.TYPE_2__** %98, align 8
  br label %99

99:                                               ; preds = %84, %81
  %100 = load %struct.et_node*, %struct.et_node** %2, align 8
  %101 = getelementptr inbounds %struct.et_node, %struct.et_node* %100, i32 0, i32 1
  store %struct.et_node* null, %struct.et_node** %101, align 8
  %102 = load %struct.et_node*, %struct.et_node** %2, align 8
  %103 = getelementptr inbounds %struct.et_node, %struct.et_node* %102, i32 0, i32 2
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %103, align 8
  %104 = load %struct.et_node*, %struct.et_node** %2, align 8
  %105 = getelementptr inbounds %struct.et_node, %struct.et_node* %104, i32 0, i32 0
  store %struct.et_node* null, %struct.et_node** %105, align 8
  ret void
}

declare dso_local i32 @et_splay(%struct.et_occ*) #1

declare dso_local i32 @set_prev(%struct.et_occ*, %struct.et_occ*) #1

declare dso_local i32 @et_recomp_min(%struct.et_occ*) #1

declare dso_local i32 @pool_free(i32, %struct.et_occ*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
