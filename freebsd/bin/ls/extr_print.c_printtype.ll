; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ls/extr_print.c_printtype.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ls/extr_print.c_printtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@f_slash = common dso_local global i64 0, align 8
@S_IFMT = common dso_local global i32 0, align 4
@S_IXUSR = common dso_local global i32 0, align 4
@S_IXGRP = common dso_local global i32 0, align 4
@S_IXOTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @printtype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @printtype(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i64, i64* @f_slash, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @S_IFMT, align 4
  %9 = and i32 %7, %8
  %10 = icmp eq i32 %9, 132
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = call i32 @putchar(i8 signext 47)
  store i32 1, i32* %2, align 4
  br label %41

13:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %41

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @S_IFMT, align 4
  %17 = and i32 %15, %16
  switch i32 %17, label %28 [
    i32 132, label %18
    i32 131, label %20
    i32 130, label %22
    i32 129, label %24
    i32 128, label %26
  ]

18:                                               ; preds = %14
  %19 = call i32 @putchar(i8 signext 47)
  store i32 1, i32* %2, align 4
  br label %41

20:                                               ; preds = %14
  %21 = call i32 @putchar(i8 signext 124)
  store i32 1, i32* %2, align 4
  br label %41

22:                                               ; preds = %14
  %23 = call i32 @putchar(i8 signext 64)
  store i32 1, i32* %2, align 4
  br label %41

24:                                               ; preds = %14
  %25 = call i32 @putchar(i8 signext 61)
  store i32 1, i32* %2, align 4
  br label %41

26:                                               ; preds = %14
  %27 = call i32 @putchar(i8 signext 37)
  store i32 1, i32* %2, align 4
  br label %41

28:                                               ; preds = %14
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @S_IXUSR, align 4
  %32 = load i32, i32* @S_IXGRP, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @S_IXOTH, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %30, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = call i32 @putchar(i8 signext 42)
  store i32 1, i32* %2, align 4
  br label %41

40:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %38, %26, %24, %22, %20, %18, %13, %11
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
