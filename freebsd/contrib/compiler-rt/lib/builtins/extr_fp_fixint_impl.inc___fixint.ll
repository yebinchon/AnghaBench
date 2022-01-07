; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/builtins/extr_fp_fixint_impl.inc___fixint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/builtins/extr_fp_fixint_impl.inc___fixint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@absMask = common dso_local global i32 0, align 4
@signBit = common dso_local global i32 0, align 4
@significandBits = common dso_local global i32 0, align 4
@exponentBias = common dso_local global i32 0, align 4
@significandMask = common dso_local global i32 0, align 4
@implicitBit = common dso_local global i32 0, align 4
@CHAR_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @__fixint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__fixint(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 -1, i32* %5, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @toRep(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @absMask, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @signBit, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 -1, i32 1
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @significandBits, align 4
  %24 = ashr i32 %22, %23
  %25 = load i32, i32* @exponentBias, align 4
  %26 = sub nsw i32 %24, %25
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @significandMask, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @implicitBit, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %67

35:                                               ; preds = %1
  %36 = load i32, i32* %9, align 4
  %37 = zext i32 %36 to i64
  %38 = load i32, i32* @CHAR_BIT, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 4, %39
  %41 = icmp uge i64 %37, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %43, 1
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 0, i32 -1
  store i32 %46, i32* %2, align 4
  br label %67

47:                                               ; preds = %35
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @significandBits, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %47
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @significandBits, align 4
  %55 = load i32, i32* %9, align 4
  %56 = sub nsw i32 %54, %55
  %57 = ashr i32 %53, %56
  %58 = mul nsw i32 %52, %57
  store i32 %58, i32* %2, align 4
  br label %67

59:                                               ; preds = %47
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @significandBits, align 4
  %64 = sub nsw i32 %62, %63
  %65 = shl i32 %61, %64
  %66 = mul nsw i32 %60, %65
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %59, %51, %42, %34
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @toRep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
