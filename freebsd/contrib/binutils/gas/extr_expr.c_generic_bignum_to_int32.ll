; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_expr.c_generic_bignum_to_int32.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_expr.c_generic_bignum_to_int32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@generic_bignum = common dso_local global i32* null, align 8
@LITTLENUM_MASK = common dso_local global i32 0, align 4
@LITTLENUM_NUMBER_OF_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @generic_bignum_to_int32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_bignum_to_int32() #0 {
  %1 = alloca i32, align 4
  %2 = load i32*, i32** @generic_bignum, align 8
  %3 = getelementptr inbounds i32, i32* %2, i64 1
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @LITTLENUM_MASK, align 4
  %6 = and i32 %4, %5
  %7 = load i32, i32* @LITTLENUM_NUMBER_OF_BITS, align 4
  %8 = shl i32 %6, %7
  %9 = load i32*, i32** @generic_bignum, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @LITTLENUM_MASK, align 4
  %13 = and i32 %11, %12
  %14 = or i32 %8, %13
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* %1, align 4
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* %1, align 4
  ret i32 %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
