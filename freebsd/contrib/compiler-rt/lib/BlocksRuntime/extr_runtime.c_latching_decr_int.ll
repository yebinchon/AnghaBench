; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/BlocksRuntime/extr_runtime.c_latching_decr_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/BlocksRuntime/extr_runtime.c_latching_decr_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BLOCK_REFCOUNT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @latching_decr_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @latching_decr_int(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  br label %5

5:                                                ; preds = %1, %31
  %6 = load i32*, i32** %3, align 8
  %7 = load volatile i32, i32* %6, align 4
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @BLOCK_REFCOUNT_MASK, align 4
  %10 = and i32 %8, %9
  %11 = load i32, i32* @BLOCK_REFCOUNT_MASK, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %5
  %14 = load i32, i32* @BLOCK_REFCOUNT_MASK, align 4
  store i32 %14, i32* %2, align 4
  br label %32

15:                                               ; preds = %5
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @BLOCK_REFCOUNT_MASK, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %32

21:                                               ; preds = %15
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = sub nsw i32 %23, 1
  %25 = load i32*, i32** %3, align 8
  %26 = call i64 @OSAtomicCompareAndSwapInt(i32 %22, i32 %24, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* %4, align 4
  %30 = sub nsw i32 %29, 1
  store i32 %30, i32* %2, align 4
  br label %32

31:                                               ; preds = %21
  br label %5

32:                                               ; preds = %28, %20, %13
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i64 @OSAtomicCompareAndSwapInt(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
