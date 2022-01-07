; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_rclex.c_rclex_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_rclex.c_rclex_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @rclex_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rclex_string() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %37, %0
  %3 = call signext i8 (...) @rclex_peekch()
  %4 = sext i8 %3 to i32
  store i32 %4, i32* %1, align 4
  %5 = icmp ne i32 %4, -1
  br i1 %5, label %6, label %38

6:                                                ; preds = %2
  %7 = load i32, i32* %1, align 4
  %8 = icmp eq i32 %7, 10
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  br label %38

10:                                               ; preds = %6
  %11 = load i32, i32* %1, align 4
  %12 = icmp eq i32 %11, 92
  br i1 %12, label %13, label %24

13:                                               ; preds = %10
  %14 = call signext i8 (...) @rclex_readch()
  %15 = call signext i8 (...) @rclex_peekch()
  %16 = sext i8 %15 to i32
  store i32 %16, i32* %1, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* %1, align 4
  %20 = icmp eq i32 %19, 10
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %13
  br label %38

22:                                               ; preds = %18
  %23 = call signext i8 (...) @rclex_readch()
  br label %37

24:                                               ; preds = %10
  %25 = call signext i8 (...) @rclex_readch()
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 34
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = call signext i8 (...) @rclex_peekch()
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 34
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = call signext i8 (...) @rclex_readch()
  br label %35

34:                                               ; preds = %28
  br label %38

35:                                               ; preds = %32
  br label %36

36:                                               ; preds = %35, %24
  br label %37

37:                                               ; preds = %36, %22
  br label %2

38:                                               ; preds = %34, %21, %9, %2
  ret void
}

declare dso_local signext i8 @rclex_peekch(...) #1

declare dso_local signext i8 @rclex_readch(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
