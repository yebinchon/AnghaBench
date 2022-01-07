; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_put_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_put_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i32*, i64, i32*)* @put_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_value(i64 %0, i64 %1, i32* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* %7, align 8
  %13 = sub i64 %11, %12
  %14 = load i32*, i32** %10, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 %13
  store i32* %15, i32** %10, align 8
  br label %16

16:                                               ; preds = %42, %5
  %17 = load i64, i64* %6, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %54

19:                                               ; preds = %16
  %20 = load i64, i64* %7, align 8
  switch i64 %20, label %21 [
    i64 0, label %22
    i64 1, label %24
    i64 2, label %29
    i64 4, label %34
    i64 8, label %39
  ]

21:                                               ; preds = %19
  br label %22

22:                                               ; preds = %19, %21
  %23 = call i32 (...) @abort() #3
  unreachable

24:                                               ; preds = %19
  %25 = load i32*, i32** %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = call i32 @bfd_put_8(i32* %25, i64 %26, i32* %27)
  br label %41

29:                                               ; preds = %19
  %30 = load i32*, i32** %8, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = call i32 @bfd_put_16(i32* %30, i64 %31, i32* %32)
  br label %41

34:                                               ; preds = %19
  %35 = load i32*, i32** %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = call i32 @bfd_put_32(i32* %35, i64 %36, i32* %37)
  br label %41

39:                                               ; preds = %19
  %40 = call i32 (...) @abort() #3
  unreachable

41:                                               ; preds = %34, %29, %24
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* %6, align 8
  %45 = sub i64 %44, %43
  store i64 %45, i64* %6, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = sub i64 0, %46
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32* %49, i32** %10, align 8
  %50 = load i64, i64* %7, align 8
  %51 = mul i64 %50, 8
  %52 = load i64, i64* %9, align 8
  %53 = lshr i64 %52, %51
  store i64 %53, i64* %9, align 8
  br label %16

54:                                               ; preds = %16
  ret void
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

declare dso_local i32 @bfd_put_8(i32*, i64, i32*) #2

declare dso_local i32 @bfd_put_16(i32*, i64, i32*) #2

declare dso_local i32 @bfd_put_32(i32*, i64, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
