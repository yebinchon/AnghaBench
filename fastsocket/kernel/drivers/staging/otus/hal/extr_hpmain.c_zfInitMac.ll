; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpmain.c_zfInitMac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpmain.c_zfInitMac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZM_MAC_REG_ACK_EXTENSION = common dso_local global i32 0, align 4
@ZM_MAC_REG_RETRY_MAX = common dso_local global i32 0, align 4
@ZM_MAC_REG_SNIFFER = common dso_local global i32 0, align 4
@ZM_MAC_REG_RX_THRESHOLD = common dso_local global i32 0, align 4
@ZM_MAC_REG_RX_PE_DELAY = common dso_local global i32 0, align 4
@ZM_MAC_REG_EIFS_AND_SIFS = common dso_local global i32 0, align 4
@ZM_MAC_REG_SLOT_TIME = common dso_local global i32 0, align 4
@ZM_MAC_REG_BCN_HT1 = common dso_local global i32 0, align 4
@ZM_MAC_REG_BACKOFF_PROTECT = common dso_local global i32 0, align 4
@ZM_MAC_REG_BASIC_RATE = common dso_local global i32 0, align 4
@ZM_MAC_REG_MANDATORY_RATE = common dso_local global i32 0, align 4
@ZM_MAC_REG_RTS_CTS_RATE = common dso_local global i32 0, align 4
@ZM_MAC_REG_TXOP_NOT_ENOUGH_INDICATION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfInitMac(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* @ZM_MAC_REG_ACK_EXTENSION, align 4
  %5 = call i32 @zfDelayWriteInternalReg(i32* %3, i32 %4, i32 64)
  %6 = load i32*, i32** %2, align 8
  %7 = load i32, i32* @ZM_MAC_REG_RETRY_MAX, align 4
  %8 = call i32 @zfDelayWriteInternalReg(i32* %6, i32 %7, i32 0)
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* @ZM_MAC_REG_SNIFFER, align 4
  %11 = call i32 @zfDelayWriteInternalReg(i32* %9, i32 %10, i32 33554432)
  %12 = load i32*, i32** %2, align 8
  %13 = load i32, i32* @ZM_MAC_REG_RX_THRESHOLD, align 4
  %14 = call i32 @zfDelayWriteInternalReg(i32* %12, i32 %13, i32 794496)
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* @ZM_MAC_REG_RX_PE_DELAY, align 4
  %17 = call i32 @zfDelayWriteInternalReg(i32* %15, i32 %16, i32 112)
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* @ZM_MAC_REG_EIFS_AND_SIFS, align 4
  %20 = call i32 @zfDelayWriteInternalReg(i32* %18, i32 %19, i32 169099264)
  %21 = load i32*, i32** %2, align 8
  %22 = load i32, i32* @ZM_MAC_REG_SLOT_TIME, align 4
  %23 = call i32 @zfDelayWriteInternalReg(i32* %21, i32 %22, i32 9216)
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @zfDelayWriteInternalReg(i32* %24, i32 1850156, i32 419430400)
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @zfDelayWriteInternalReg(i32* %26, i32 1850168, i32 513)
  %28 = load i32*, i32** %2, align 8
  %29 = load i32, i32* @ZM_MAC_REG_BCN_HT1, align 4
  %30 = call i32 @zfDelayWriteInternalReg(i32* %28, i32 %29, i32 134218096)
  %31 = load i32*, i32** %2, align 8
  %32 = load i32, i32* @ZM_MAC_REG_BACKOFF_PROTECT, align 4
  %33 = call i32 @zfDelayWriteInternalReg(i32* %31, i32 %32, i32 261)
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 @zfDelayWriteInternalReg(i32* %34, i32 1850268, i32 1048586)
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @zfDelayWriteInternalReg(i32* %36, i32 1848972, i32 83951615)
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 @zfDelayWriteInternalReg(i32* %38, i32 1850432, i32 1)
  %40 = load i32*, i32** %2, align 8
  %41 = load i32, i32* @ZM_MAC_REG_BASIC_RATE, align 4
  %42 = call i32 @zfDelayWriteInternalReg(i32* %40, i32 %41, i32 5391)
  %43 = load i32*, i32** %2, align 8
  %44 = load i32, i32* @ZM_MAC_REG_MANDATORY_RATE, align 4
  %45 = call i32 @zfDelayWriteInternalReg(i32* %43, i32 %44, i32 5391)
  %46 = load i32*, i32** %2, align 8
  %47 = load i32, i32* @ZM_MAC_REG_RTS_CTS_RATE, align 4
  %48 = call i32 @zfDelayWriteInternalReg(i32* %46, i32 %47, i32 17498555)
  %49 = load i32*, i32** %2, align 8
  %50 = call i32 @zfDelayWriteInternalReg(i32* %49, i32 1848980, i32 67124254)
  %51 = load i32*, i32** %2, align 8
  %52 = call i32 @zfDelayWriteInternalReg(i32* %51, i32 1900800, i32 3)
  %53 = load i32*, i32** %2, align 8
  %54 = call i32 @zfDelayWriteInternalReg(i32* %53, i32 1900804, i32 3)
  %55 = load i32*, i32** %2, align 8
  %56 = call i32 @zfDelayWriteInternalReg(i32* %55, i32 1848832, i32 3)
  %57 = load i32*, i32** %2, align 8
  %58 = call i32 @zfDelayWriteInternalReg(i32* %57, i32 1850448, i32 65535)
  %59 = load i32*, i32** %2, align 8
  %60 = call i32 @zfDelayWriteInternalReg(i32* %59, i32 1848960, i32 15728648)
  %61 = load i32*, i32** %2, align 8
  %62 = call i32 @zfDelayWriteInternalReg(i32* %61, i32 1848876, i32 0)
  %63 = load i32*, i32** %2, align 8
  %64 = call i32 @zfDelayWriteInternalReg(i32* %63, i32 1970448, i32 4)
  %65 = load i32*, i32** %2, align 8
  %66 = call i32 @zfDelayWriteInternalReg(i32* %65, i32 1970452, i32 128)
  %67 = load i32*, i32** %2, align 8
  %68 = call i32 @zfDelayWriteInternalReg(i32* %67, i32 1916936, i32 115)
  %69 = load i32*, i32** %2, align 8
  %70 = call i32 @zfDelayWriteInternalReg(i32* %69, i32 1850748, i32 1114129)
  %71 = load i32*, i32** %2, align 8
  %72 = call i32 @zfDelayWriteInternalReg(i32* %71, i32 1850288, i32 4)
  %73 = load i32*, i32** %2, align 8
  %74 = load i32, i32* @ZM_MAC_REG_TXOP_NOT_ENOUGH_INDICATION, align 4
  %75 = call i32 @zfDelayWriteInternalReg(i32* %73, i32 %74, i32 337514312)
  %76 = load i32*, i32** %2, align 8
  %77 = call i32 @zfDelayWriteInternalReg(i32* %76, i32 1848952, i32 112)
  %78 = load i32*, i32** %2, align 8
  %79 = call i32 @zfFlushDelayWrite(i32* %78)
  %80 = load i32*, i32** %2, align 8
  %81 = call i32 @zfUpdateDefaultQosParameter(i32* %80, i32 0)
  ret void
}

declare dso_local i32 @zfDelayWriteInternalReg(i32*, i32, i32) #1

declare dso_local i32 @zfFlushDelayWrite(i32*) #1

declare dso_local i32 @zfUpdateDefaultQosParameter(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
