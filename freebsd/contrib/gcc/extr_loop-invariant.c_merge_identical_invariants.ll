; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-invariant.c_merge_identical_invariants.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-invariant.c_merge_identical_invariants.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.invariant = type { i32 }

@invariant_p = common dso_local global i32 0, align 4
@invariants = common dso_local global i32 0, align 4
@hash_invariant_expr = common dso_local global i32 0, align 4
@eq_invariant_expr = common dso_local global i32 0, align 4
@free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @merge_identical_invariants to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @merge_identical_invariants() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.invariant*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @invariant_p, align 4
  %5 = load i32, i32* @invariants, align 4
  %6 = call i32 @VEC_length(i32 %4, i32 %5)
  %7 = load i32, i32* @hash_invariant_expr, align 4
  %8 = load i32, i32* @eq_invariant_expr, align 4
  %9 = load i32, i32* @free, align 4
  %10 = call i32 @htab_create(i32 %6, i32 %7, i32 %8, i32 %9)
  store i32 %10, i32* %3, align 4
  store i32 0, i32* %1, align 4
  br label %11

11:                                               ; preds = %22, %0
  %12 = load i32, i32* @invariant_p, align 4
  %13 = load i32, i32* @invariants, align 4
  %14 = load i32, i32* %1, align 4
  %15 = load %struct.invariant*, %struct.invariant** %2, align 8
  %16 = call i64 @VEC_iterate(i32 %12, i32 %13, i32 %14, %struct.invariant* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %11
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.invariant*, %struct.invariant** %2, align 8
  %21 = call i32 @find_identical_invariants(i32 %19, %struct.invariant* %20)
  br label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %1, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %1, align 4
  br label %11

25:                                               ; preds = %11
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @htab_delete(i32 %26)
  ret void
}

declare dso_local i32 @htab_create(i32, i32, i32, i32) #1

declare dso_local i32 @VEC_length(i32, i32) #1

declare dso_local i64 @VEC_iterate(i32, i32, i32, %struct.invariant*) #1

declare dso_local i32 @find_identical_invariants(i32, %struct.invariant*) #1

declare dso_local i32 @htab_delete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
