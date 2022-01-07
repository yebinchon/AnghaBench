; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_mac.c_MACvSetMISCFifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_mac.c_MACvSetMISCFifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAC_REG_MISCFFNDEX = common dso_local global i64 0, align 8
@MAC_REG_MISCFFDATA = common dso_local global i64 0, align 8
@MAC_REG_MISCFFCTL = common dso_local global i64 0, align 8
@MISCFFCTL_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MACvSetMISCFifo(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp sgt i32 %7, 273
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %26

10:                                               ; preds = %3
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @MAC_REG_MISCFFNDEX, align 8
  %13 = add nsw i64 %11, %12
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @VNSvOutPortW(i64 %13, i32 %14)
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @MAC_REG_MISCFFDATA, align 8
  %18 = add nsw i64 %16, %17
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @VNSvOutPortD(i64 %18, i32 %19)
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @MAC_REG_MISCFFCTL, align 8
  %23 = add nsw i64 %21, %22
  %24 = load i32, i32* @MISCFFCTL_WRITE, align 4
  %25 = call i32 @VNSvOutPortW(i64 %23, i32 %24)
  br label %26

26:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @VNSvOutPortW(i64, i32) #1

declare dso_local i32 @VNSvOutPortD(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
