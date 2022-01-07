; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_neon_bits_same_in_bytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_neon_bits_same_in_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @neon_bits_same_in_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @neon_bits_same_in_bytes(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = and i32 %3, 255
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = and i32 %7, 255
  %9 = icmp eq i32 %8, 255
  br i1 %9, label %10, label %36

10:                                               ; preds = %6, %1
  %11 = load i32, i32* %2, align 4
  %12 = and i32 %11, 65280
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load i32, i32* %2, align 4
  %16 = and i32 %15, 65280
  %17 = icmp eq i32 %16, 65280
  br i1 %17, label %18, label %36

18:                                               ; preds = %14, %10
  %19 = load i32, i32* %2, align 4
  %20 = and i32 %19, 16711680
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %2, align 4
  %24 = and i32 %23, 16711680
  %25 = icmp eq i32 %24, 16711680
  br i1 %25, label %26, label %36

26:                                               ; preds = %22, %18
  %27 = load i32, i32* %2, align 4
  %28 = and i32 %27, -16777216
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %2, align 4
  %32 = and i32 %31, -16777216
  %33 = icmp eq i32 %32, -16777216
  br label %34

34:                                               ; preds = %30, %26
  %35 = phi i1 [ true, %26 ], [ %33, %30 ]
  br label %36

36:                                               ; preds = %34, %22, %14, %6
  %37 = phi i1 [ false, %22 ], [ false, %14 ], [ false, %6 ], [ %35, %34 ]
  %38 = zext i1 %37 to i32
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
