; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_reloc.c_bfd_check_overflow.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_reloc.c_bfd_check_overflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bfd_reloc_ok = common dso_local global i32 0, align 4
@bfd_reloc_overflow = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfd_check_overflow(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load i32, i32* @bfd_reloc_ok, align 4
  store i32 %17, i32* %16, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @N_ONES(i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = xor i32 %20, -1
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @N_ONES(i32 %22)
  %24 = load i32, i32* %11, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %12, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* %8, align 4
  %30 = lshr i32 %28, %29
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %6, align 4
  switch i32 %31, label %62 [
    i32 130, label %32
    i32 129, label %33
    i32 131, label %37
    i32 128, label %54
  ]

32:                                               ; preds = %5
  br label %64

33:                                               ; preds = %5
  %34 = load i32, i32* %11, align 4
  %35 = lshr i32 %34, 1
  %36 = xor i32 %35, -1
  store i32 %36, i32* %13, align 4
  br label %37

37:                                               ; preds = %5, %33
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* %13, align 4
  %40 = and i32 %38, %39
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %37
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %8, align 4
  %47 = lshr i32 %45, %46
  %48 = load i32, i32* %13, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %44, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* @bfd_reloc_overflow, align 4
  store i32 %52, i32* %16, align 4
  br label %53

53:                                               ; preds = %51, %43, %37
  br label %64

54:                                               ; preds = %5
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* %13, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* @bfd_reloc_overflow, align 4
  store i32 %60, i32* %16, align 4
  br label %61

61:                                               ; preds = %59, %54
  br label %64

62:                                               ; preds = %5
  %63 = call i32 (...) @abort() #3
  unreachable

64:                                               ; preds = %61, %53, %32
  %65 = load i32, i32* %16, align 4
  ret i32 %65
}

declare dso_local i32 @N_ONES(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
