; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_mac.c_MACbCompareContext.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_mac.c_MACbCompareContext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAC_REG_TXDMAPTR0 = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@MAC_REG_AC0DMAPTR = common dso_local global i64 0, align 8
@MAC_REG_RXDMAPTR0 = common dso_local global i64 0, align 8
@MAC_REG_RXDMAPTR1 = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MACbCompareContext(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @MAC_REG_TXDMAPTR0, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @VNSvInPortD(i64 %9, i64* %6)
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @MAC_REG_TXDMAPTR0, align 8
  %14 = add nsw i64 %12, %13
  %15 = inttoptr i64 %14 to i64*
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %11, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %3, align 4
  br label %64

20:                                               ; preds = %2
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @MAC_REG_AC0DMAPTR, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @VNSvInPortD(i64 %23, i64* %6)
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @MAC_REG_AC0DMAPTR, align 8
  %28 = add nsw i64 %26, %27
  %29 = inttoptr i64 %28 to i64*
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %25, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %20
  %33 = load i32, i32* @FALSE, align 4
  store i32 %33, i32* %3, align 4
  br label %64

34:                                               ; preds = %20
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* @MAC_REG_RXDMAPTR0, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @VNSvInPortD(i64 %37, i64* %6)
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* @MAC_REG_RXDMAPTR0, align 8
  %42 = add nsw i64 %40, %41
  %43 = inttoptr i64 %42 to i64*
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %39, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %34
  %47 = load i32, i32* @FALSE, align 4
  store i32 %47, i32* %3, align 4
  br label %64

48:                                               ; preds = %34
  %49 = load i64, i64* %4, align 8
  %50 = load i64, i64* @MAC_REG_RXDMAPTR1, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @VNSvInPortD(i64 %51, i64* %6)
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* @MAC_REG_RXDMAPTR1, align 8
  %56 = add nsw i64 %54, %55
  %57 = inttoptr i64 %56 to i64*
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %53, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %48
  %61 = load i32, i32* @FALSE, align 4
  store i32 %61, i32* %3, align 4
  br label %64

62:                                               ; preds = %48
  %63 = load i32, i32* @TRUE, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %60, %46, %32, %18
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @VNSvInPortD(i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
