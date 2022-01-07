; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_jump.c_onlyjump_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_jump.c_onlyjump_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @onlyjump_p(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @JUMP_P(i32* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = call i32* @single_set(i32* %10)
  store i32* %11, i32** %4, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %29

15:                                               ; preds = %9
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @SET_DEST(i32* %16)
  %18 = call i64 @GET_CODE(i32 %17)
  %19 = load i64, i64* @PC, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %29

22:                                               ; preds = %15
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @SET_SRC(i32* %23)
  %25 = call i64 @side_effects_p(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %29

28:                                               ; preds = %22
  store i32 1, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %27, %21, %14, %8
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @JUMP_P(i32*) #1

declare dso_local i32* @single_set(i32*) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @SET_DEST(i32*) #1

declare dso_local i64 @side_effects_p(i32) #1

declare dso_local i32 @SET_SRC(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
