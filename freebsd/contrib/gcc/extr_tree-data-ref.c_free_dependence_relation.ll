; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_free_dependence_relation.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-data-ref.c_free_dependence_relation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data_dependence_relation = type { i32 }

@NULL_TREE = common dso_local global i64 0, align 8
@subscript_p = common dso_local global i32 0, align 4
@heap = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_dependence_relation(%struct.data_dependence_relation* %0) #0 {
  %2 = alloca %struct.data_dependence_relation*, align 8
  store %struct.data_dependence_relation* %0, %struct.data_dependence_relation** %2, align 8
  %3 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %2, align 8
  %4 = icmp eq %struct.data_dependence_relation* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %24

6:                                                ; preds = %1
  %7 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %2, align 8
  %8 = call i64 @DDR_ARE_DEPENDENT(%struct.data_dependence_relation* %7)
  %9 = load i64, i64* @NULL_TREE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %6
  %12 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %2, align 8
  %13 = call i64 @DDR_SUBSCRIPTS(%struct.data_dependence_relation* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = load i32, i32* @subscript_p, align 4
  %17 = load i32, i32* @heap, align 4
  %18 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %2, align 8
  %19 = call i64 @DDR_SUBSCRIPTS(%struct.data_dependence_relation* %18)
  %20 = call i32 @VEC_free(i32 %16, i32 %17, i64 %19)
  br label %21

21:                                               ; preds = %15, %11, %6
  %22 = load %struct.data_dependence_relation*, %struct.data_dependence_relation** %2, align 8
  %23 = call i32 @free(%struct.data_dependence_relation* %22)
  br label %24

24:                                               ; preds = %21, %5
  ret void
}

declare dso_local i64 @DDR_ARE_DEPENDENT(%struct.data_dependence_relation*) #1

declare dso_local i64 @DDR_SUBSCRIPTS(%struct.data_dependence_relation*) #1

declare dso_local i32 @VEC_free(i32, i32, i64) #1

declare dso_local i32 @free(%struct.data_dependence_relation*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
