; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpmain.c_zfHpSetMacAddress.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpmain.c_zfHpSetMacAddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZM_MAC_REG_MAC_ADDR_L = common dso_local global i64 0, align 8
@ZM_MAC_REG_MAC_ADDR_H = common dso_local global i64 0, align 8
@ZM_MAC_REG_ACK_TABLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfHpSetMacAddress(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %27

9:                                                ; preds = %3
  %10 = load i32*, i32** %4, align 8
  %11 = load i64, i64* @ZM_MAC_REG_MAC_ADDR_L, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  %14 = load i32, i32* %13, align 4
  %15 = shl i32 %14, 16
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %15, %18
  %20 = call i32 @zfDelayWriteInternalReg(i32* %10, i64 %11, i32 %19)
  %21 = load i32*, i32** %4, align 8
  %22 = load i64, i64* @ZM_MAC_REG_MAC_ADDR_H, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @zfDelayWriteInternalReg(i32* %21, i64 %22, i32 %25)
  br label %60

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = icmp sle i32 %28, 7
  br i1 %29, label %30, label %59

30:                                               ; preds = %27
  %31 = load i32*, i32** %4, align 8
  %32 = load i64, i64* @ZM_MAC_REG_ACK_TABLE, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sub nsw i32 %33, 1
  %35 = mul nsw i32 %34, 8
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %32, %36
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %43, 16
  %45 = add nsw i32 %40, %44
  %46 = call i32 @zfDelayWriteInternalReg(i32* %31, i64 %37, i32 %45)
  %47 = load i32*, i32** %4, align 8
  %48 = load i64, i64* @ZM_MAC_REG_ACK_TABLE, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sub nsw i32 %49, 1
  %51 = mul nsw i32 %50, 8
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %48, %52
  %54 = add nsw i64 %53, 4
  %55 = load i32*, i32** %5, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @zfDelayWriteInternalReg(i32* %47, i64 %54, i32 %57)
  br label %59

59:                                               ; preds = %30, %27
  br label %60

60:                                               ; preds = %59, %9
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @zfFlushDelayWrite(i32* %61)
  ret void
}

declare dso_local i32 @zfDelayWriteInternalReg(i32*, i64, i32) #1

declare dso_local i32 @zfFlushDelayWrite(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
