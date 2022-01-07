; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c__decode_uleb128.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c__decode_uleb128.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*)* @_decode_uleb128 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_decode_uleb128(i32** %0, i32* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32** %0, i32*** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32**, i32*** %3, align 8
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %8, align 8
  br label %11

11:                                               ; preds = %28, %2
  %12 = load i32*, i32** %8, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = icmp uge i32* %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %32

16:                                               ; preds = %11
  %17 = load i32*, i32** %8, align 8
  %18 = getelementptr inbounds i32, i32* %17, i32 1
  store i32* %18, i32** %8, align 8
  %19 = load i32, i32* %17, align 4
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, 127
  %22 = load i32, i32* %7, align 4
  %23 = shl i32 %21, %22
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 7
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %16
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, 128
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %11, label %32

32:                                               ; preds = %28, %15
  %33 = load i32*, i32** %8, align 8
  %34 = load i32**, i32*** %3, align 8
  store i32* %33, i32** %34, align 8
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
