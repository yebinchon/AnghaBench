; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfglayout.c_verify_insn_chain.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfglayout.c_verify_insn_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @verify_insn_chain() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* null, i32** %2, align 8
  store i32 1, i32* %4, align 4
  %6 = call i32* (...) @get_insns()
  store i32* %6, i32** %1, align 8
  br label %7

7:                                                ; preds = %17, %0
  %8 = load i32*, i32** %1, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %23

10:                                               ; preds = %7
  %11 = load i32*, i32** %1, align 8
  %12 = call i32* @PREV_INSN(i32* %11)
  %13 = load i32*, i32** %2, align 8
  %14 = icmp eq i32* %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @gcc_assert(i32 %15)
  br label %17

17:                                               ; preds = %10
  %18 = load i32*, i32** %1, align 8
  store i32* %18, i32** %2, align 8
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %4, align 4
  %21 = load i32*, i32** %1, align 8
  %22 = call i32* @NEXT_INSN(i32* %21)
  store i32* %22, i32** %1, align 8
  br label %7

23:                                               ; preds = %7
  %24 = load i32*, i32** %2, align 8
  %25 = call i32* (...) @get_last_insn()
  %26 = icmp eq i32* %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @gcc_assert(i32 %27)
  store i32* null, i32** %3, align 8
  store i32 1, i32* %5, align 4
  %29 = call i32* (...) @get_last_insn()
  store i32* %29, i32** %1, align 8
  br label %30

30:                                               ; preds = %40, %23
  %31 = load i32*, i32** %1, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %46

33:                                               ; preds = %30
  %34 = load i32*, i32** %1, align 8
  %35 = call i32* @NEXT_INSN(i32* %34)
  %36 = load i32*, i32** %3, align 8
  %37 = icmp eq i32* %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @gcc_assert(i32 %38)
  br label %40

40:                                               ; preds = %33
  %41 = load i32*, i32** %1, align 8
  store i32* %41, i32** %3, align 8
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  %44 = load i32*, i32** %1, align 8
  %45 = call i32* @PREV_INSN(i32* %44)
  store i32* %45, i32** %1, align 8
  br label %30

46:                                               ; preds = %30
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp eq i32 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @gcc_assert(i32 %50)
  ret void
}

declare dso_local i32* @get_insns(...) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32* @PREV_INSN(i32*) #1

declare dso_local i32* @NEXT_INSN(i32*) #1

declare dso_local i32* @get_last_insn(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
