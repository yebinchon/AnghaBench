; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_debug-pagealloc.c_single_bit_flip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_debug-pagealloc.c_single_bit_flip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, i8)* @single_bit_flip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @single_bit_flip(i8 zeroext %0, i8 zeroext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  store i8 %1, i8* %4, align 1
  %6 = load i8, i8* %3, align 1
  %7 = zext i8 %6 to i32
  %8 = load i8, i8* %4, align 1
  %9 = zext i8 %8 to i32
  %10 = xor i32 %7, %9
  %11 = trunc i32 %10 to i8
  store i8 %11, i8* %5, align 1
  %12 = load i8, i8* %5, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load i8, i8* %5, align 1
  %17 = zext i8 %16 to i32
  %18 = load i8, i8* %5, align 1
  %19 = zext i8 %18 to i32
  %20 = sub nsw i32 %19, 1
  %21 = and i32 %17, %20
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br label %24

24:                                               ; preds = %15, %2
  %25 = phi i1 [ false, %2 ], [ %23, %15 ]
  %26 = zext i1 %25 to i32
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
