; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_mac.c_MACvSetCurrRx1DescAddr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_mac.c_MACvSetCurrRx1DescAddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAC_REG_RXDMACTL1 = common dso_local global i64 0, align 8
@DMACTL_RUN = common dso_local global i32 0, align 4
@W_MAX_TIMEOUT = common dso_local global i64 0, align 8
@MAC_REG_RXDMAPTR1 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MACvSetCurrRx1DescAddr(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @MAC_REG_RXDMACTL1, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @VNSvInPortB(i64 %10, i32* %7)
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @DMACTL_RUN, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* @MAC_REG_RXDMACTL1, align 8
  %19 = add nsw i64 %17, %18
  %20 = add nsw i64 %19, 2
  %21 = load i32, i32* @DMACTL_RUN, align 4
  %22 = call i32 @VNSvOutPortB(i64 %20, i32 %21)
  br label %23

23:                                               ; preds = %16, %2
  store i64 0, i64* %5, align 8
  br label %24

24:                                               ; preds = %39, %23
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @W_MAX_TIMEOUT, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = load i64, i64* %3, align 8
  %30 = load i64, i64* @MAC_REG_RXDMACTL1, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @VNSvInPortB(i64 %31, i32* %6)
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @DMACTL_RUN, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %28
  br label %42

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* %5, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %5, align 8
  br label %24

42:                                               ; preds = %37, %24
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* @W_MAX_TIMEOUT, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = call i32 @DBG_PORT80(i32 20)
  br label %48

48:                                               ; preds = %46, %42
  %49 = load i64, i64* %3, align 8
  %50 = load i64, i64* @MAC_REG_RXDMAPTR1, align 8
  %51 = add nsw i64 %49, %50
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @VNSvOutPortD(i64 %51, i32 %52)
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @DMACTL_RUN, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %48
  %59 = load i64, i64* %3, align 8
  %60 = load i64, i64* @MAC_REG_RXDMACTL1, align 8
  %61 = add nsw i64 %59, %60
  %62 = load i32, i32* @DMACTL_RUN, align 4
  %63 = call i32 @VNSvOutPortB(i64 %61, i32 %62)
  br label %64

64:                                               ; preds = %58, %48
  ret void
}

declare dso_local i32 @VNSvInPortB(i64, i32*) #1

declare dso_local i32 @VNSvOutPortB(i64, i32) #1

declare dso_local i32 @DBG_PORT80(i32) #1

declare dso_local i32 @VNSvOutPortD(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
