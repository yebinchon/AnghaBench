; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bzip2/extr_compress.c_bsPutUInt32.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bzip2/extr_compress.c_bsPutUInt32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @bsPutUInt32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bsPutUInt32(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32*, i32** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = ashr i32 %6, 24
  %8 = sext i32 %7 to i64
  %9 = and i64 %8, 255
  %10 = trunc i64 %9 to i32
  %11 = call i32 @bsW(i32* %5, i32 8, i32 %10)
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = ashr i32 %13, 16
  %15 = sext i32 %14 to i64
  %16 = and i64 %15, 255
  %17 = trunc i64 %16 to i32
  %18 = call i32 @bsW(i32* %12, i32 8, i32 %17)
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = ashr i32 %20, 8
  %22 = sext i32 %21 to i64
  %23 = and i64 %22, 255
  %24 = trunc i64 %23 to i32
  %25 = call i32 @bsW(i32* %19, i32 8, i32 %24)
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = and i64 %28, 255
  %30 = trunc i64 %29 to i32
  %31 = call i32 @bsW(i32* %26, i32 8, i32 %30)
  ret void
}

declare dso_local i32 @bsW(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
