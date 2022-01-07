; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_emit_minmax.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_emit_minmax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SMAX = common dso_local global i32 0, align 4
@SMIN = common dso_local global i32 0, align 4
@GE = common dso_local global i32 0, align 4
@GEU = common dso_local global i32 0, align 4
@UMAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rs6000_emit_minmax(i64 %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @GET_MODE(i64 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @SMAX, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @SMIN, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17, %4
  %22 = load i32, i32* @GE, align 4
  store i32 %22, i32* %10, align 4
  br label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @GEU, align 4
  store i32 %24, i32* %10, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @SMAX, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @UMAX, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %29, %25
  %34 = load i64, i64* %5, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i64 @emit_conditional_move(i64 %34, i32 %35, i64 %36, i64 %37, i32 %38, i64 %39, i64 %40, i32 %41, i32 0)
  store i64 %42, i64* %11, align 8
  br label %53

43:                                               ; preds = %29
  %44 = load i64, i64* %5, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i64 @emit_conditional_move(i64 %44, i32 %45, i64 %46, i64 %47, i32 %48, i64 %49, i64 %50, i32 %51, i32 0)
  store i64 %52, i64* %11, align 8
  br label %53

53:                                               ; preds = %43, %33
  %54 = load i64, i64* %11, align 8
  %55 = call i32 @gcc_assert(i64 %54)
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* %5, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* %11, align 8
  %62 = call i32 @emit_move_insn(i64 %60, i64 %61)
  br label %63

63:                                               ; preds = %59, %53
  ret void
}

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i64 @emit_conditional_move(i64, i32, i64, i64, i32, i64, i64, i32, i32) #1

declare dso_local i32 @gcc_assert(i64) #1

declare dso_local i32 @emit_move_insn(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
