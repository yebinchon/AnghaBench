; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_jump.c_pc_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_jump.c_pc_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_RTX = common dso_local global i32 0, align 4
@PARALLEL = common dso_local global i64 0, align 8
@SET = common dso_local global i64 0, align 8
@PC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pc_set(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @JUMP_P(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @NULL_RTX, align 4
  store i32 %9, i32* %2, align 4
  br label %35

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @PATTERN(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @GET_CODE(i32 %13)
  %15 = load i64, i64* @PARALLEL, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @XVECEXP(i32 %18, i32 0, i32 0)
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %17, %10
  %21 = load i32, i32* %4, align 4
  %22 = call i64 @GET_CODE(i32 %21)
  %23 = load i64, i64* @SET, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @SET_DEST(i32 %26)
  %28 = call i64 @GET_CODE(i32 %27)
  %29 = load i64, i64* @PC, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %35

33:                                               ; preds = %25, %20
  %34 = load i32, i32* @NULL_RTX, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %33, %31, %8
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @JUMP_P(i32) #1

declare dso_local i32 @PATTERN(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

declare dso_local i32 @SET_DEST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
