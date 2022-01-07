; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_hash.h___sel_hash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_hash.h___sel_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_selector = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_selector*, i16, i32)* @__sel_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sel_hash(%struct.xfrm_selector* %0, i16 zeroext %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfrm_selector*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.xfrm_selector* %0, %struct.xfrm_selector** %5, align 8
  store i16 %1, i16* %6, align 2
  store i32 %2, i32* %7, align 4
  %11 = load %struct.xfrm_selector*, %struct.xfrm_selector** %5, align 8
  %12 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %11, i32 0, i32 3
  store i32* %12, i32** %8, align 8
  %13 = load %struct.xfrm_selector*, %struct.xfrm_selector** %5, align 8
  %14 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %13, i32 0, i32 2
  store i32* %14, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load i16, i16* %6, align 2
  %16 = zext i16 %15 to i32
  switch i32 %16, label %51 [
    i32 129, label %17
    i32 128, label %34
  ]

17:                                               ; preds = %3
  %18 = load %struct.xfrm_selector*, %struct.xfrm_selector** %5, align 8
  %19 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 32
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load %struct.xfrm_selector*, %struct.xfrm_selector** %5, align 8
  %24 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 32
  br i1 %26, label %27, label %30

27:                                               ; preds = %22, %17
  %28 = load i32, i32* %7, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %59

30:                                               ; preds = %22
  %31 = load i32*, i32** %8, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @__xfrm4_daddr_saddr_hash(i32* %31, i32* %32)
  store i32 %33, i32* %10, align 4
  br label %51

34:                                               ; preds = %3
  %35 = load %struct.xfrm_selector*, %struct.xfrm_selector** %5, align 8
  %36 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 128
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load %struct.xfrm_selector*, %struct.xfrm_selector** %5, align 8
  %41 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 128
  br i1 %43, label %44, label %47

44:                                               ; preds = %39, %34
  %45 = load i32, i32* %7, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %59

47:                                               ; preds = %39
  %48 = load i32*, i32** %8, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @__xfrm6_daddr_saddr_hash(i32* %48, i32* %49)
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %3, %47, %30
  %52 = load i32, i32* %10, align 4
  %53 = lshr i32 %52, 16
  %54 = load i32, i32* %10, align 4
  %55 = xor i32 %54, %53
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %7, align 4
  %58 = and i32 %56, %57
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %51, %44, %27
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @__xfrm4_daddr_saddr_hash(i32*, i32*) #1

declare dso_local i32 @__xfrm6_daddr_saddr_hash(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
