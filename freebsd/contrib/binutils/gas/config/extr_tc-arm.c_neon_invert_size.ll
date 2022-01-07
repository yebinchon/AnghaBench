; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_neon_invert_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_neon_invert_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @neon_invert_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @neon_invert_size(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* %12, align 4
  br label %15

14:                                               ; preds = %3
  br label %15

15:                                               ; preds = %14, %11
  %16 = phi i32 [ %13, %11 ], [ 0, %14 ]
  store i32 %16, i32* %7, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %20, align 4
  br label %23

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %22, %19
  %24 = phi i32 [ %21, %19 ], [ 0, %22 ]
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %6, align 4
  switch i32 %25, label %40 [
    i32 8, label %26
    i32 16, label %30
    i32 64, label %34
    i32 32, label %37
  ]

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %28, 255
  store i32 %29, i32* %7, align 4
  br label %42

30:                                               ; preds = %23
  %31 = load i32, i32* %7, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %32, 65535
  store i32 %33, i32* %7, align 4
  br label %42

34:                                               ; preds = %23
  %35 = load i32, i32* %8, align 4
  %36 = xor i32 %35, -1
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %23, %34
  %38 = load i32, i32* %7, align 4
  %39 = xor i32 %38, -1
  store i32 %39, i32* %7, align 4
  br label %42

40:                                               ; preds = %23
  %41 = call i32 (...) @abort() #2
  unreachable

42:                                               ; preds = %37, %30, %26
  %43 = load i32*, i32** %4, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  %47 = load i32*, i32** %4, align 8
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i32*, i32** %5, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* %8, align 4
  %53 = load i32*, i32** %5, align 8
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %51, %48
  ret void
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
