; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-invariant.c_find_invariants_to_move.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-invariant.c_find_invariants_to_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.invariant = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@df = common dso_local global i32 0, align 4
@invariant_p = common dso_local global i32 0, align 4
@invariants = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @find_invariants_to_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_invariants_to_move() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.invariant*, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  store %struct.invariant* null, %struct.invariant** %6, align 8
  %8 = load i32, i32* @df, align 4
  %9 = call i32 @DF_REG_SIZE(i32 %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* @invariant_p, align 4
  %11 = load i32, i32* @invariants, align 4
  %12 = call i32 @VEC_length(i32 %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %0
  br label %79

15:                                               ; preds = %0
  store i32 0, i32* %3, align 4
  store i32 2, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %16

16:                                               ; preds = %34, %15
  %17 = load i32, i32* %1, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %16
  %21 = load i32, i32* @df, align 4
  %22 = load i32, i32* %1, align 4
  %23 = call i32 @DF_REGNO_FIRST_DEF(i32 %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @df, align 4
  %27 = load i32, i32* %1, align 4
  %28 = call i64 @DF_REGNO_LAST_USE(i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* %2, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %30, %25, %20
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %1, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %1, align 4
  br label %16

37:                                               ; preds = %16
  store i32 0, i32* %1, align 4
  br label %38

38:                                               ; preds = %61, %37
  %39 = load i32, i32* @invariant_p, align 4
  %40 = load i32, i32* @invariants, align 4
  %41 = load i32, i32* %1, align 4
  %42 = load %struct.invariant*, %struct.invariant** %6, align 8
  %43 = call i64 @VEC_iterate(i32 %39, i32 %40, i32 %41, %struct.invariant* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %38
  %46 = load %struct.invariant*, %struct.invariant** %6, align 8
  %47 = getelementptr inbounds %struct.invariant, %struct.invariant* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = icmp ne %struct.TYPE_2__* %48, null
  br i1 %49, label %50, label %60

50:                                               ; preds = %45
  %51 = load %struct.invariant*, %struct.invariant** %6, align 8
  %52 = getelementptr inbounds %struct.invariant, %struct.invariant* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %3, align 4
  %57 = zext i32 %56 to i64
  %58 = add nsw i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %50, %45
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %1, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %1, align 4
  br label %38

64:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %71, %64
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %2, align 4
  %68 = load i32, i32* %3, align 4
  %69 = call i64 @best_gain_for_invariant(%struct.invariant** %6, i32* %4, i32 %66, i32 %67, i32 %68)
  %70 = icmp sgt i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %65
  %72 = load %struct.invariant*, %struct.invariant** %6, align 8
  %73 = getelementptr inbounds %struct.invariant, %struct.invariant* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @set_move_mark(i32 %74)
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* %5, align 4
  %78 = add i32 %77, %76
  store i32 %78, i32* %5, align 4
  br label %65

79:                                               ; preds = %14, %65
  ret void
}

declare dso_local i32 @DF_REG_SIZE(i32) #1

declare dso_local i32 @VEC_length(i32, i32) #1

declare dso_local i32 @DF_REGNO_FIRST_DEF(i32, i32) #1

declare dso_local i64 @DF_REGNO_LAST_USE(i32, i32) #1

declare dso_local i64 @VEC_iterate(i32, i32, i32, %struct.invariant*) #1

declare dso_local i64 @best_gain_for_invariant(%struct.invariant**, i32*, i32, i32, i32) #1

declare dso_local i32 @set_move_mark(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
