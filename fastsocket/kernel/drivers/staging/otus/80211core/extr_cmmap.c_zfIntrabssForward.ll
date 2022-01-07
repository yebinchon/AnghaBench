; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmap.c_zfIntrabssForward.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmap.c_zfIntrabssForward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZM_STATE_ASOC = common dso_local global i32 0, align 4
@ZM_LV_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Intra-BSS forward : asoc STA\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Intra-BSS forward : BCorMC\00", align 1
@ZM_RX_FRAME_SIZE = common dso_local global i32 0, align 4
@ZM_LV_1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Alloc intra-bss buf Fail!\00", align 1
@ZM_PORT_DISABLED = common dso_local global i32 0, align 4
@ZM_ERR_TX_PORT_DISABLED = common dso_local global i32 0, align 4
@ZM_INTERNAL_ALLOC_BUF = common dso_local global i32 0, align 4
@ZM_WLAN_HEADER_A1_OFFSET = common dso_local global i32 0, align 4
@ZM_WLAN_HEADER_A2_OFFSET = common dso_local global i32 0, align 4
@ZM_WLAN_HEADER_A3_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfIntrabssForward(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [3 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %9, align 4
  store i64 0, i64* %18, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @zmw_rx_buf_readh(i32* %19, i32* %20, i32 0)
  %22 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  store i32 %21, i32* %22, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @zmw_rx_buf_readh(i32* %23, i32* %24, i32 2)
  %26 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  store i32 %25, i32* %26, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @zmw_rx_buf_readh(i32* %27, i32* %28, i32 4)
  %30 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 1
  %34 = icmp ne i32 %33, 1
  br i1 %34, label %35, label %53

35:                                               ; preds = %3
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %38 = call i32 @zfApGetSTAInfo(i32* %36, i32* %37, i32* %12, i64* %18)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 65535
  br i1 %40, label %41, label %52

41:                                               ; preds = %35
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* @ZM_STATE_ASOC, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %18, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  store i32 1, i32* %9, align 4
  %50 = load i32, i32* @ZM_LV_2, align 4
  %51 = call i32 @zm_msg0_rx(i32 %50, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %45, %41, %35
  br label %57

53:                                               ; preds = %3
  %54 = load i64, i64* %7, align 8
  store i64 %54, i64* %18, align 8
  %55 = load i32, i32* @ZM_LV_2, align 4
  %56 = call i32 @zm_msg0_rx(i32 %55, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %53, %52
  %58 = load i32, i32* %9, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %65, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 1
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %120

65:                                               ; preds = %60, %57
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* @ZM_RX_FRAME_SIZE, align 4
  %68 = call i32* @zfwBufAllocate(i32* %66, i32 %67)
  store i32* %68, i32** %13, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i32, i32* @ZM_LV_1, align 4
  %72 = call i32 @zm_msg0_rx(i32 %71, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %126

73:                                               ; preds = %65
  %74 = load i32*, i32** %5, align 8
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @zfwBufGetSize(i32* %74, i32* %75)
  store i32 %76, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %77

77:                                               ; preds = %91, %73
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* %14, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %94

81:                                               ; preds = %77
  %82 = load i32*, i32** %5, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* %15, align 4
  %85 = call i32 @zmw_rx_buf_readh(i32* %82, i32* %83, i32 %84)
  store i32 %85, i32* %16, align 4
  %86 = load i32*, i32** %5, align 8
  %87 = load i32*, i32** %13, align 8
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* %16, align 4
  %90 = call i32 @zmw_tx_buf_writeh(i32* %86, i32* %87, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %81
  %92 = load i32, i32* %15, align 4
  %93 = add nsw i32 %92, 2
  store i32 %93, i32* %15, align 4
  br label %77

94:                                               ; preds = %77
  %95 = load i32*, i32** %5, align 8
  %96 = load i32*, i32** %13, align 8
  %97 = load i32, i32* %14, align 4
  %98 = call i32 @zfwBufSetSize(i32* %95, i32* %96, i32 %97)
  %99 = load i32*, i32** %5, align 8
  %100 = load i32*, i32** %13, align 8
  %101 = load i64, i64* %18, align 8
  %102 = call i32 @zfTxPortControl(i32* %99, i32* %100, i64 %101)
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* @ZM_PORT_DISABLED, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %94
  %106 = load i32, i32* @ZM_ERR_TX_PORT_DISABLED, align 4
  store i32 %106, i32* %8, align 4
  br label %122

107:                                              ; preds = %94
  %108 = load i32*, i32** %5, align 8
  %109 = load i32*, i32** %13, align 8
  %110 = load i64, i64* %18, align 8
  %111 = call i32 @zfApBufferPsFrame(i32* %108, i32* %109, i64 %110)
  store i32 %111, i32* %17, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %107
  %114 = load i32*, i32** %5, align 8
  %115 = load i32*, i32** %13, align 8
  %116 = call i32 @zfPutVtxq(i32* %114, i32* %115)
  store i32 %116, i32* %17, align 4
  %117 = load i32*, i32** %5, align 8
  %118 = call i32 @zfPushVtxq(i32* %117)
  br label %119

119:                                              ; preds = %113, %107
  br label %120

120:                                              ; preds = %119, %60
  %121 = load i32, i32* %9, align 4
  store i32 %121, i32* %4, align 4
  br label %128

122:                                              ; preds = %105
  %123 = load i32*, i32** %5, align 8
  %124 = load i32*, i32** %13, align 8
  %125 = call i32 @zfwBufFree(i32* %123, i32* %124, i32 0)
  br label %126

126:                                              ; preds = %122, %70
  %127 = load i32, i32* %9, align 4
  store i32 %127, i32* %4, align 4
  br label %128

128:                                              ; preds = %126, %120
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local i32 @zmw_rx_buf_readh(i32*, i32*, i32) #1

declare dso_local i32 @zfApGetSTAInfo(i32*, i32*, i32*, i64*) #1

declare dso_local i32 @zm_msg0_rx(i32, i8*) #1

declare dso_local i32* @zfwBufAllocate(i32*, i32) #1

declare dso_local i32 @zfwBufGetSize(i32*, i32*) #1

declare dso_local i32 @zmw_tx_buf_writeh(i32*, i32*, i32, i32) #1

declare dso_local i32 @zfwBufSetSize(i32*, i32*, i32) #1

declare dso_local i32 @zfTxPortControl(i32*, i32*, i64) #1

declare dso_local i32 @zfApBufferPsFrame(i32*, i32*, i64) #1

declare dso_local i32 @zfPutVtxq(i32*, i32*) #1

declare dso_local i32 @zfPushVtxq(i32*) #1

declare dso_local i32 @zfwBufFree(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
