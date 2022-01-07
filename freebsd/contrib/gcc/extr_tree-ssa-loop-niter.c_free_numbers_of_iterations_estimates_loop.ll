; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-niter.c_free_numbers_of_iterations_estimates_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-niter.c_free_numbers_of_iterations_estimates_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { %struct.nb_iter_bound*, i32*, i32* }
%struct.nb_iter_bound = type { %struct.nb_iter_bound* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_numbers_of_iterations_estimates_loop(%struct.loop* %0) #0 {
  %2 = alloca %struct.loop*, align 8
  %3 = alloca %struct.nb_iter_bound*, align 8
  %4 = alloca %struct.nb_iter_bound*, align 8
  store %struct.loop* %0, %struct.loop** %2, align 8
  %5 = load %struct.loop*, %struct.loop** %2, align 8
  %6 = getelementptr inbounds %struct.loop, %struct.loop* %5, i32 0, i32 2
  store i32* null, i32** %6, align 8
  %7 = load %struct.loop*, %struct.loop** %2, align 8
  %8 = getelementptr inbounds %struct.loop, %struct.loop* %7, i32 0, i32 1
  store i32* null, i32** %8, align 8
  %9 = load %struct.loop*, %struct.loop** %2, align 8
  %10 = getelementptr inbounds %struct.loop, %struct.loop* %9, i32 0, i32 0
  %11 = load %struct.nb_iter_bound*, %struct.nb_iter_bound** %10, align 8
  store %struct.nb_iter_bound* %11, %struct.nb_iter_bound** %3, align 8
  br label %12

12:                                               ; preds = %21, %1
  %13 = load %struct.nb_iter_bound*, %struct.nb_iter_bound** %3, align 8
  %14 = icmp ne %struct.nb_iter_bound* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %12
  %16 = load %struct.nb_iter_bound*, %struct.nb_iter_bound** %3, align 8
  %17 = getelementptr inbounds %struct.nb_iter_bound, %struct.nb_iter_bound* %16, i32 0, i32 0
  %18 = load %struct.nb_iter_bound*, %struct.nb_iter_bound** %17, align 8
  store %struct.nb_iter_bound* %18, %struct.nb_iter_bound** %4, align 8
  %19 = load %struct.nb_iter_bound*, %struct.nb_iter_bound** %3, align 8
  %20 = call i32 @free(%struct.nb_iter_bound* %19)
  br label %21

21:                                               ; preds = %15
  %22 = load %struct.nb_iter_bound*, %struct.nb_iter_bound** %4, align 8
  store %struct.nb_iter_bound* %22, %struct.nb_iter_bound** %3, align 8
  br label %12

23:                                               ; preds = %12
  %24 = load %struct.loop*, %struct.loop** %2, align 8
  %25 = getelementptr inbounds %struct.loop, %struct.loop* %24, i32 0, i32 0
  store %struct.nb_iter_bound* null, %struct.nb_iter_bound** %25, align 8
  ret void
}

declare dso_local i32 @free(%struct.nb_iter_bound*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
