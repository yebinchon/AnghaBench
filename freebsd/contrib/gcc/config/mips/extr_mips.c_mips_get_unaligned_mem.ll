; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_get_unaligned_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_get_unaligned_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_64BIT = common dso_local global i32 0, align 4
@BITS_PER_UNIT = common dso_local global i32 0, align 4
@BLKmode = common dso_local global i32 0, align 4
@QImode = common dso_local global i32 0, align 4
@TARGET_BIG_ENDIAN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32*, i32*)* @mips_get_unaligned_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mips_get_unaligned_mem(i32* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @MEM_P(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %80

19:                                               ; preds = %5
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 32
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load i32, i32* @TARGET_64BIT, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 64
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %22
  store i32 0, i32* %6, align 4
  br label %80

29:                                               ; preds = %25, %19
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @BITS_PER_UNIT, align 4
  %32 = srem i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  br label %80

35:                                               ; preds = %29
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @MEM_ALIGN(i32 %37)
  %39 = load i32, i32* %8, align 4
  %40 = icmp uge i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %80

42:                                               ; preds = %35
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @BLKmode, align 4
  %46 = call i32 @adjust_address(i32 %44, i32 %45, i32 0)
  %47 = load i32*, i32** %7, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @BITS_PER_UNIT, align 4
  %52 = udiv i32 %50, %51
  %53 = call i32 @GEN_INT(i32 %52)
  %54 = call i32 @set_mem_size(i32 %49, i32 %53)
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @QImode, align 4
  %58 = call i32 @adjust_address(i32 %56, i32 %57, i32 0)
  store i32 %58, i32* %12, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @QImode, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @BITS_PER_UNIT, align 4
  %64 = udiv i32 %62, %63
  %65 = sub i32 %64, 1
  %66 = call i32 @adjust_address(i32 %60, i32 %61, i32 %65)
  store i32 %66, i32* %13, align 4
  %67 = load i64, i64* @TARGET_BIG_ENDIAN, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %42
  %70 = load i32, i32* %12, align 4
  %71 = load i32*, i32** %10, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* %13, align 4
  %73 = load i32*, i32** %11, align 8
  store i32 %72, i32* %73, align 4
  br label %79

74:                                               ; preds = %42
  %75 = load i32, i32* %13, align 4
  %76 = load i32*, i32** %10, align 8
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load i32*, i32** %11, align 8
  store i32 %77, i32* %78, align 4
  br label %79

79:                                               ; preds = %74, %69
  store i32 1, i32* %6, align 4
  br label %80

80:                                               ; preds = %79, %41, %34, %28, %18
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local i32 @MEM_P(i32) #1

declare dso_local i32 @MEM_ALIGN(i32) #1

declare dso_local i32 @adjust_address(i32, i32, i32) #1

declare dso_local i32 @set_mem_size(i32, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
