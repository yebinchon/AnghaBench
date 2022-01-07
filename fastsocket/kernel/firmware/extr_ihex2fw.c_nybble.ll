; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/extr_ihex2fw.c_nybble.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/extr_ihex2fw.c_nybble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i8)* @nybble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @nybble(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  %4 = load i8, i8* %3, align 1
  %5 = sext i8 %4 to i32
  %6 = icmp sge i32 %5, 48
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = load i8, i8* %3, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp sle i32 %9, 57
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = load i8, i8* %3, align 1
  %13 = sext i8 %12 to i32
  %14 = sub nsw i32 %13, 48
  %15 = trunc i32 %14 to i8
  store i8 %15, i8* %2, align 1
  br label %45

16:                                               ; preds = %7, %1
  %17 = load i8, i8* %3, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp sge i32 %18, 65
  br i1 %19, label %20, label %29

20:                                               ; preds = %16
  %21 = load i8, i8* %3, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp sle i32 %22, 70
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i8, i8* %3, align 1
  %26 = sext i8 %25 to i32
  %27 = sub nsw i32 %26, 55
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %2, align 1
  br label %45

29:                                               ; preds = %20, %16
  %30 = load i8, i8* %3, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp sge i32 %31, 97
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = load i8, i8* %3, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp sle i32 %35, 102
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i8, i8* %3, align 1
  %39 = sext i8 %38 to i32
  %40 = sub nsw i32 %39, 87
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %2, align 1
  br label %45

42:                                               ; preds = %33, %29
  br label %43

43:                                               ; preds = %42
  br label %44

44:                                               ; preds = %43
  store i8 0, i8* %2, align 1
  br label %45

45:                                               ; preds = %44, %37, %24, %11
  %46 = load i8, i8* %2, align 1
  ret i8 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
