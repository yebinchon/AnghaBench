; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-invariant.c_find_invariants.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-invariant.c_find_invariants.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.loop*)* @find_invariants to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_invariants(%struct.loop* %0) #0 {
  %2 = alloca %struct.loop*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.loop* %0, %struct.loop** %2, align 8
  %8 = call i32 @BITMAP_ALLOC(i32* null)
  store i32 %8, i32* %3, align 4
  %9 = call i32 @BITMAP_ALLOC(i32* null)
  store i32 %9, i32* %4, align 4
  %10 = call i32 @BITMAP_ALLOC(i32* null)
  store i32 %10, i32* %5, align 4
  %11 = call i32 @BITMAP_ALLOC(i32* null)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.loop*, %struct.loop** %2, align 8
  %13 = call i32* @get_loop_body_in_dom_order(%struct.loop* %12)
  store i32* %13, i32** %7, align 8
  %14 = load %struct.loop*, %struct.loop** %2, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @find_exits(%struct.loop* %14, i32* %15, i32 %16, i32 %17)
  %19 = load %struct.loop*, %struct.loop** %2, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @compute_always_reached(%struct.loop* %19, i32* %20, i32 %21, i32 %22)
  %24 = load %struct.loop*, %struct.loop** %2, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @compute_always_reached(%struct.loop* %24, i32* %25, i32 %26, i32 %27)
  %29 = load %struct.loop*, %struct.loop** %2, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @find_defs(%struct.loop* %29, i32* %30)
  %32 = load %struct.loop*, %struct.loop** %2, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @find_invariants_body(%struct.loop* %32, i32* %33, i32 %34, i32 %35)
  %37 = call i32 (...) @merge_identical_invariants()
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @BITMAP_FREE(i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @BITMAP_FREE(i32 %40)
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @BITMAP_FREE(i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @BITMAP_FREE(i32 %44)
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @free(i32* %46)
  ret void
}

declare dso_local i32 @BITMAP_ALLOC(i32*) #1

declare dso_local i32* @get_loop_body_in_dom_order(%struct.loop*) #1

declare dso_local i32 @find_exits(%struct.loop*, i32*, i32, i32) #1

declare dso_local i32 @compute_always_reached(%struct.loop*, i32*, i32, i32) #1

declare dso_local i32 @find_defs(%struct.loop*, i32*) #1

declare dso_local i32 @find_invariants_body(%struct.loop*, i32*, i32, i32) #1

declare dso_local i32 @merge_identical_invariants(...) #1

declare dso_local i32 @BITMAP_FREE(i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
