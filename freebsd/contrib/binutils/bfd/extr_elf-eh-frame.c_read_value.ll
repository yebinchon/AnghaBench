; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf-eh-frame.c_read_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf-eh-frame.c_read_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32)* @read_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_value(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %8, align 4
  switch i32 %11, label %48 [
    i32 2, label %12
    i32 4, label %24
    i32 8, label %36
  ]

12:                                               ; preds = %4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i32*, i32** %6, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @bfd_get_signed_16(i32* %16, i32* %17)
  store i32 %18, i32* %10, align 4
  br label %23

19:                                               ; preds = %12
  %20 = load i32*, i32** %6, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @bfd_get_16(i32* %20, i32* %21)
  store i32 %22, i32* %10, align 4
  br label %23

23:                                               ; preds = %19, %15
  br label %50

24:                                               ; preds = %4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32*, i32** %6, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @bfd_get_signed_32(i32* %28, i32* %29)
  store i32 %30, i32* %10, align 4
  br label %35

31:                                               ; preds = %24
  %32 = load i32*, i32** %6, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @bfd_get_32(i32* %32, i32* %33)
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %31, %27
  br label %50

36:                                               ; preds = %4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32*, i32** %6, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @bfd_get_signed_64(i32* %40, i32* %41)
  store i32 %42, i32* %10, align 4
  br label %47

43:                                               ; preds = %36
  %44 = load i32*, i32** %6, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @bfd_get_64(i32* %44, i32* %45)
  store i32 %46, i32* %10, align 4
  br label %47

47:                                               ; preds = %43, %39
  br label %50

48:                                               ; preds = %4
  %49 = call i32 (...) @BFD_FAIL()
  store i32 0, i32* %5, align 4
  br label %52

50:                                               ; preds = %47, %35, %23
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @bfd_get_signed_16(i32*, i32*) #1

declare dso_local i32 @bfd_get_16(i32*, i32*) #1

declare dso_local i32 @bfd_get_signed_32(i32*, i32*) #1

declare dso_local i32 @bfd_get_32(i32*, i32*) #1

declare dso_local i32 @bfd_get_signed_64(i32*, i32*) #1

declare dso_local i32 @bfd_get_64(i32*, i32*) #1

declare dso_local i32 @BFD_FAIL(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
