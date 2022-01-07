; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ieee.c_parse_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ieee.c_parse_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @parse_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_int(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @this_byte(i32* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  %15 = icmp sle i32 %14, 127
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load i32, i32* %6, align 4
  %18 = load i32*, i32** %5, align 8
  store i32 %17, i32* %18, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @next_byte(i32* %19)
  %21 = load i32, i32* @TRUE, align 4
  store i32 %21, i32* %3, align 4
  br label %51

22:                                               ; preds = %13, %2
  %23 = load i32, i32* %6, align 4
  %24 = icmp sge i32 %23, 128
  br i1 %24, label %25, label %48

25:                                               ; preds = %22
  %26 = load i32, i32* %6, align 4
  %27 = icmp sle i32 %26, 136
  br i1 %27, label %28, label %48

28:                                               ; preds = %25
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, 15
  store i32 %30, i32* %8, align 4
  store i32 0, i32* %7, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @next_byte(i32* %31)
  br label %33

33:                                               ; preds = %36, %28
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load i32, i32* %7, align 4
  %38 = shl i32 %37, 8
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @this_byte_and_next(i32* %39)
  %41 = or i32 %38, %40
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = add i32 %42, -1
  store i32 %43, i32* %8, align 4
  br label %33

44:                                               ; preds = %33
  %45 = load i32, i32* %7, align 4
  %46 = load i32*, i32** %5, align 8
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* @TRUE, align 4
  store i32 %47, i32* %3, align 4
  br label %51

48:                                               ; preds = %25, %22
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* @FALSE, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %49, %44, %16
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @this_byte(i32*) #1

declare dso_local i32 @next_byte(i32*) #1

declare dso_local i32 @this_byte_and_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
