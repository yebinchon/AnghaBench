; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_hash.h___xfrm_dst_hash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_hash.h___xfrm_dst_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i16, i16, i32)* @__xfrm_dst_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__xfrm_dst_hash(i32* %0, i32* %1, i16 zeroext %2, i16 zeroext %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i16 %2, i16* %8, align 2
  store i16 %3, i16* %9, align 2
  store i32 %4, i32* %10, align 4
  %12 = load i16, i16* %9, align 2
  %13 = zext i16 %12 to i32
  %14 = load i16, i16* %8, align 2
  %15 = zext i16 %14 to i32
  %16 = xor i32 %13, %15
  store i32 %16, i32* %11, align 4
  %17 = load i16, i16* %9, align 2
  %18 = zext i16 %17 to i32
  switch i32 %18, label %31 [
    i32 129, label %19
    i32 128, label %25
  ]

19:                                               ; preds = %5
  %20 = load i32*, i32** %6, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @__xfrm4_daddr_saddr_hash(i32* %20, i32* %21)
  %23 = load i32, i32* %11, align 4
  %24 = xor i32 %23, %22
  store i32 %24, i32* %11, align 4
  br label %31

25:                                               ; preds = %5
  %26 = load i32*, i32** %6, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @__xfrm6_daddr_saddr_hash(i32* %26, i32* %27)
  %29 = load i32, i32* %11, align 4
  %30 = xor i32 %29, %28
  store i32 %30, i32* %11, align 4
  br label %31

31:                                               ; preds = %5, %25, %19
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = lshr i32 %33, 16
  %35 = xor i32 %32, %34
  %36 = load i32, i32* %10, align 4
  %37 = and i32 %35, %36
  ret i32 %37
}

declare dso_local i32 @__xfrm4_daddr_saddr_hash(i32*, i32*) #1

declare dso_local i32 @__xfrm6_daddr_saddr_hash(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
