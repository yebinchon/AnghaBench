; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-mips.c__bfd_mips16_elf_reloc_unshuffle.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-mips.c__bfd_mips16_elf_reloc_unshuffle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@R_MIPS16_26 = common dso_local global i32 0, align 4
@R_MIPS16_GPREL = common dso_local global i32 0, align 4
@R_MIPS16_HI16 = common dso_local global i32 0, align 4
@R_MIPS16_LO16 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_bfd_mips16_elf_reloc_unshuffle(i32* %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @R_MIPS16_26, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @R_MIPS16_GPREL, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %15
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @R_MIPS16_HI16, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @R_MIPS16_LO16, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %85

28:                                               ; preds = %23, %19, %15, %4
  %29 = load i32*, i32** %5, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @bfd_get_16(i32* %29, i32* %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  %35 = call i32 @bfd_get_16(i32* %32, i32* %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @R_MIPS16_26, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %62

39:                                               ; preds = %28
  %40 = load i64, i64* %7, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %39
  %43 = load i32, i32* %9, align 4
  %44 = and i32 %43, 64512
  %45 = shl i32 %44, 16
  %46 = load i32, i32* %9, align 4
  %47 = and i32 %46, 992
  %48 = shl i32 %47, 11
  %49 = or i32 %45, %48
  %50 = load i32, i32* %9, align 4
  %51 = and i32 %50, 31
  %52 = shl i32 %51, 21
  %53 = or i32 %49, %52
  %54 = load i32, i32* %10, align 4
  %55 = or i32 %53, %54
  store i32 %55, i32* %11, align 4
  br label %61

56:                                               ; preds = %39
  %57 = load i32, i32* %9, align 4
  %58 = shl i32 %57, 16
  %59 = load i32, i32* %10, align 4
  %60 = or i32 %58, %59
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %56, %42
  br label %80

62:                                               ; preds = %28
  %63 = load i32, i32* %9, align 4
  %64 = and i32 %63, 63488
  %65 = shl i32 %64, 16
  %66 = load i32, i32* %10, align 4
  %67 = and i32 %66, 65504
  %68 = shl i32 %67, 11
  %69 = or i32 %65, %68
  %70 = load i32, i32* %9, align 4
  %71 = and i32 %70, 31
  %72 = shl i32 %71, 11
  %73 = or i32 %69, %72
  %74 = load i32, i32* %9, align 4
  %75 = and i32 %74, 2016
  %76 = or i32 %73, %75
  %77 = load i32, i32* %10, align 4
  %78 = and i32 %77, 31
  %79 = or i32 %76, %78
  store i32 %79, i32* %11, align 4
  br label %80

80:                                               ; preds = %62, %61
  %81 = load i32*, i32** %5, align 8
  %82 = load i32, i32* %11, align 4
  %83 = load i32*, i32** %8, align 8
  %84 = call i32 @bfd_put_32(i32* %81, i32 %82, i32* %83)
  br label %85

85:                                               ; preds = %80, %27
  ret void
}

declare dso_local i32 @bfd_get_16(i32*, i32*) #1

declare dso_local i32 @bfd_put_32(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
