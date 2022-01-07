; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_remove_state_duplicate_reservs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_remove_state_duplicate_reservs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reserv_sets_t = common dso_local global i32 0, align 4
@state_reservs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @remove_state_duplicate_reservs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_state_duplicate_reservs() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 1, i64* %1, align 8
  store i64 0, i64* %2, align 8
  br label %3

3:                                                ; preds = %32, %0
  %4 = load i64, i64* %1, align 8
  %5 = load i32, i32* @reserv_sets_t, align 4
  %6 = load i32, i32* @state_reservs, align 4
  %7 = call i64 @VEC_length(i32 %5, i32 %6)
  %8 = icmp ult i64 %4, %7
  br i1 %8, label %9, label %35

9:                                                ; preds = %3
  %10 = load i32, i32* @reserv_sets_t, align 4
  %11 = load i32, i32* @state_reservs, align 4
  %12 = load i64, i64* %2, align 8
  %13 = call i32 @VEC_index(i32 %10, i32 %11, i64 %12)
  %14 = load i32, i32* @reserv_sets_t, align 4
  %15 = load i32, i32* @state_reservs, align 4
  %16 = load i64, i64* %1, align 8
  %17 = call i32 @VEC_index(i32 %14, i32 %15, i64 %16)
  %18 = call i64 @reserv_sets_cmp(i32 %13, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %9
  %21 = load i64, i64* %2, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %2, align 8
  %23 = load i32, i32* @reserv_sets_t, align 4
  %24 = load i32, i32* @state_reservs, align 4
  %25 = load i64, i64* %2, align 8
  %26 = load i32, i32* @reserv_sets_t, align 4
  %27 = load i32, i32* @state_reservs, align 4
  %28 = load i64, i64* %1, align 8
  %29 = call i32 @VEC_index(i32 %26, i32 %27, i64 %28)
  %30 = call i32 @VEC_replace(i32 %23, i32 %24, i64 %25, i32 %29)
  br label %31

31:                                               ; preds = %20, %9
  br label %32

32:                                               ; preds = %31
  %33 = load i64, i64* %1, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %1, align 8
  br label %3

35:                                               ; preds = %3
  %36 = load i32, i32* @reserv_sets_t, align 4
  %37 = load i32, i32* @state_reservs, align 4
  %38 = load i64, i64* %2, align 8
  %39 = add i64 %38, 1
  %40 = call i32 @VEC_truncate(i32 %36, i32 %37, i64 %39)
  ret void
}

declare dso_local i64 @VEC_length(i32, i32) #1

declare dso_local i64 @reserv_sets_cmp(i32, i32) #1

declare dso_local i32 @VEC_index(i32, i32, i64) #1

declare dso_local i32 @VEC_replace(i32, i32, i64, i32) #1

declare dso_local i32 @VEC_truncate(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
