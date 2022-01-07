; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_trie.c_mask_pfx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_trie.c_mask_pfx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KEYLENGTH = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (i16, i16)* @mask_pfx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @mask_pfx(i16 zeroext %0, i16 zeroext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  store i16 %0, i16* %3, align 2
  store i16 %1, i16* %4, align 2
  %5 = load i16, i16* %4, align 2
  %6 = zext i16 %5 to i32
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %24

9:                                                ; preds = %2
  %10 = load i16, i16* %3, align 2
  %11 = zext i16 %10 to i32
  %12 = load i16, i16* @KEYLENGTH, align 2
  %13 = zext i16 %12 to i32
  %14 = load i16, i16* %4, align 2
  %15 = zext i16 %14 to i32
  %16 = sub nsw i32 %13, %15
  %17 = ashr i32 %11, %16
  %18 = load i16, i16* @KEYLENGTH, align 2
  %19 = zext i16 %18 to i32
  %20 = load i16, i16* %4, align 2
  %21 = zext i16 %20 to i32
  %22 = sub nsw i32 %19, %21
  %23 = shl i32 %17, %22
  br label %24

24:                                               ; preds = %9, %8
  %25 = phi i32 [ 0, %8 ], [ %23, %9 ]
  %26 = trunc i32 %25 to i16
  ret i16 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
