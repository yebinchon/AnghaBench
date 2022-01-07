; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_get_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_get_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i32*, i32*)* @get_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_value(i32 %0, i64 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %51, %4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %60

13:                                               ; preds = %10
  %14 = load i64, i64* %6, align 8
  switch i64 %14, label %15 [
    i64 0, label %16
    i64 1, label %18
    i64 2, label %28
    i64 4, label %38
    i64 8, label %48
  ]

15:                                               ; preds = %13
  br label %16

16:                                               ; preds = %13, %15
  %17 = call i32 (...) @abort() #3
  unreachable

18:                                               ; preds = %13
  %19 = load i32, i32* %9, align 4
  %20 = load i64, i64* %6, align 8
  %21 = mul i64 8, %20
  %22 = trunc i64 %21 to i32
  %23 = shl i32 %19, %22
  %24 = load i32*, i32** %7, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @bfd_get_8(i32* %24, i32* %25)
  %27 = or i32 %23, %26
  store i32 %27, i32* %9, align 4
  br label %50

28:                                               ; preds = %13
  %29 = load i32, i32* %9, align 4
  %30 = load i64, i64* %6, align 8
  %31 = mul i64 8, %30
  %32 = trunc i64 %31 to i32
  %33 = shl i32 %29, %32
  %34 = load i32*, i32** %7, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @bfd_get_16(i32* %34, i32* %35)
  %37 = or i32 %33, %36
  store i32 %37, i32* %9, align 4
  br label %50

38:                                               ; preds = %13
  %39 = load i32, i32* %9, align 4
  %40 = load i64, i64* %6, align 8
  %41 = mul i64 8, %40
  %42 = trunc i64 %41 to i32
  %43 = shl i32 %39, %42
  %44 = load i32*, i32** %7, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @bfd_get_32(i32* %44, i32* %45)
  %47 = or i32 %43, %46
  store i32 %47, i32* %9, align 4
  br label %50

48:                                               ; preds = %13
  %49 = call i32 (...) @abort() #3
  unreachable

50:                                               ; preds = %38, %28, %18
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %6, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = sub i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %5, align 4
  %57 = load i64, i64* %6, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 %57
  store i32* %59, i32** %8, align 8
  br label %10

60:                                               ; preds = %10
  %61 = load i32, i32* %9, align 4
  ret i32 %61
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

declare dso_local i32 @bfd_get_8(i32*, i32*) #2

declare dso_local i32 @bfd_get_16(i32*, i32*) #2

declare dso_local i32 @bfd_get_32(i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
