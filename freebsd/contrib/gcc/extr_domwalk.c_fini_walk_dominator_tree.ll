; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_domwalk.c_fini_walk_dominator_tree.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_domwalk.c_fini_walk_dominator_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dom_walk_data = type { i32, i32, i64 }

@void_p = common dso_local global i32 0, align 4
@heap = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fini_walk_dominator_tree(%struct.dom_walk_data* %0) #0 {
  %2 = alloca %struct.dom_walk_data*, align 8
  store %struct.dom_walk_data* %0, %struct.dom_walk_data** %2, align 8
  %3 = load %struct.dom_walk_data*, %struct.dom_walk_data** %2, align 8
  %4 = getelementptr inbounds %struct.dom_walk_data, %struct.dom_walk_data* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %23

7:                                                ; preds = %1
  br label %8

8:                                                ; preds = %15, %7
  %9 = load i32, i32* @void_p, align 4
  %10 = load %struct.dom_walk_data*, %struct.dom_walk_data** %2, align 8
  %11 = getelementptr inbounds %struct.dom_walk_data, %struct.dom_walk_data* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @VEC_length(i32 %9, i32 %12)
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %8
  %16 = load i32, i32* @void_p, align 4
  %17 = load %struct.dom_walk_data*, %struct.dom_walk_data** %2, align 8
  %18 = getelementptr inbounds %struct.dom_walk_data, %struct.dom_walk_data* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @VEC_pop(i32 %16, i32 %19)
  %21 = call i32 @free(i32 %20)
  br label %8

22:                                               ; preds = %8
  br label %23

23:                                               ; preds = %22, %1
  %24 = load i32, i32* @void_p, align 4
  %25 = load i32, i32* @heap, align 4
  %26 = load %struct.dom_walk_data*, %struct.dom_walk_data** %2, align 8
  %27 = getelementptr inbounds %struct.dom_walk_data, %struct.dom_walk_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @VEC_free(i32 %24, i32 %25, i32 %28)
  %30 = load i32, i32* @void_p, align 4
  %31 = load i32, i32* @heap, align 4
  %32 = load %struct.dom_walk_data*, %struct.dom_walk_data** %2, align 8
  %33 = getelementptr inbounds %struct.dom_walk_data, %struct.dom_walk_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @VEC_free(i32 %30, i32 %31, i32 %34)
  ret void
}

declare dso_local i64 @VEC_length(i32, i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @VEC_pop(i32, i32) #1

declare dso_local i32 @VEC_free(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
