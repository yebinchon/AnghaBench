; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_atmel_usba_udc.c_do_test_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_atmel_usba_udc.c_do_test_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usba_ep = type { i32 }
%struct.usba_udc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@do_test_mode.test_packet_buffer = internal constant [53 x i8] c"\00\00\00\00\00\00\00\00\00\AA\AA\AA\AA\AA\AA\AA\AA\EE\EE\EE\EE\EE\EE\EE\EE\FE\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\7F\BF\DF\EF\F7\FB\FD\FC~\BF\DF\EF\F7\FB\FD~", align 16
@TST = common dso_local global i32 0, align 4
@USBA_TST_J_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Entering Test_J mode...\0A\00", align 1
@USBA_TST_K_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Entering Test_K mode...\0A\00", align 1
@usba_ep = common dso_local global %struct.usba_ep* null, align 8
@SPEED_CFG = common dso_local global i32 0, align 4
@USBA_SPEED_CFG_FORCE_HIGH = common dso_local global i32 0, align 4
@CFG = common dso_local global i32 0, align 4
@EPT_SIZE = common dso_local global i32 0, align 4
@USBA_EPT_SIZE_64 = common dso_local global i32 0, align 4
@USBA_EPT_DIR_IN = common dso_local global i32 0, align 4
@EPT_TYPE = common dso_local global i32 0, align 4
@USBA_EPT_TYPE_BULK = common dso_local global i32 0, align 4
@BK_NUMBER = common dso_local global i32 0, align 4
@USBA_EPT_MAPPED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Test_SE0_NAK: ep0 not mapped\0A\00", align 1
@CTL_ENB = common dso_local global i32 0, align 4
@USBA_EPT_ENABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Entering Test_SE0_NAK mode...\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Test_Packet: ep0 not mapped\0A\00", align 1
@USBA_TST_PKT_MODE = common dso_local global i32 0, align 4
@SET_STA = common dso_local global i32 0, align 4
@USBA_TX_PK_RDY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"Entering Test_Packet mode...\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Invalid test mode: 0x%04x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usba_udc*)* @do_test_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_test_mode(%struct.usba_udc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usba_udc*, align 8
  %4 = alloca %struct.usba_ep*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.usba_udc* %0, %struct.usba_udc** %3, align 8
  %7 = load %struct.usba_udc*, %struct.usba_udc** %3, align 8
  %8 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.usba_udc*, %struct.usba_udc** %3, align 8
  %12 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  %14 = load %struct.usba_udc*, %struct.usba_udc** %3, align 8
  %15 = call i32 @reset_all_endpoints(%struct.usba_udc* %14)
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %125 [
    i32 256, label %17
    i32 512, label %24
    i32 768, label %31
    i32 1024, label %75
  ]

17:                                               ; preds = %1
  %18 = load %struct.usba_udc*, %struct.usba_udc** %3, align 8
  %19 = load i32, i32* @TST, align 4
  %20 = load i32, i32* @USBA_TST_J_MODE, align 4
  %21 = call i32 @usba_writel(%struct.usba_udc* %18, i32 %19, i32 %20)
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = call i32 @dev_info(%struct.device* %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %131

24:                                               ; preds = %1
  %25 = load %struct.usba_udc*, %struct.usba_udc** %3, align 8
  %26 = load i32, i32* @TST, align 4
  %27 = load i32, i32* @USBA_TST_K_MODE, align 4
  %28 = call i32 @usba_writel(%struct.usba_udc* %25, i32 %26, i32 %27)
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = call i32 @dev_info(%struct.device* %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %131

31:                                               ; preds = %1
  %32 = load %struct.usba_ep*, %struct.usba_ep** @usba_ep, align 8
  %33 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %32, i64 0
  store %struct.usba_ep* %33, %struct.usba_ep** %4, align 8
  %34 = load %struct.usba_udc*, %struct.usba_udc** %3, align 8
  %35 = load i32, i32* @TST, align 4
  %36 = load i32, i32* @SPEED_CFG, align 4
  %37 = load i32, i32* @USBA_SPEED_CFG_FORCE_HIGH, align 4
  %38 = call i32 @USBA_BF(i32 %36, i32 %37)
  %39 = call i32 @usba_writel(%struct.usba_udc* %34, i32 %35, i32 %38)
  %40 = load %struct.usba_ep*, %struct.usba_ep** %4, align 8
  %41 = load i32, i32* @CFG, align 4
  %42 = load i32, i32* @EPT_SIZE, align 4
  %43 = load i32, i32* @USBA_EPT_SIZE_64, align 4
  %44 = call i32 @USBA_BF(i32 %42, i32 %43)
  %45 = load i32, i32* @USBA_EPT_DIR_IN, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @EPT_TYPE, align 4
  %48 = load i32, i32* @USBA_EPT_TYPE_BULK, align 4
  %49 = call i32 @USBA_BF(i32 %47, i32 %48)
  %50 = or i32 %46, %49
  %51 = load i32, i32* @BK_NUMBER, align 4
  %52 = call i32 @USBA_BF(i32 %51, i32 1)
  %53 = or i32 %50, %52
  %54 = call i32 @usba_ep_writel(%struct.usba_ep* %40, i32 %41, i32 %53)
  %55 = load %struct.usba_ep*, %struct.usba_ep** %4, align 8
  %56 = load i32, i32* @CFG, align 4
  %57 = call i32 @usba_ep_readl(%struct.usba_ep* %55, i32 %56)
  %58 = load i32, i32* @USBA_EPT_MAPPED, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %31
  %62 = load %struct.usba_udc*, %struct.usba_udc** %3, align 8
  %63 = load %struct.usba_ep*, %struct.usba_ep** %4, align 8
  %64 = call i32 @set_protocol_stall(%struct.usba_udc* %62, %struct.usba_ep* %63)
  %65 = load %struct.device*, %struct.device** %5, align 8
  %66 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %65, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %74

67:                                               ; preds = %31
  %68 = load %struct.usba_ep*, %struct.usba_ep** %4, align 8
  %69 = load i32, i32* @CTL_ENB, align 4
  %70 = load i32, i32* @USBA_EPT_ENABLE, align 4
  %71 = call i32 @usba_ep_writel(%struct.usba_ep* %68, i32 %69, i32 %70)
  %72 = load %struct.device*, %struct.device** %5, align 8
  %73 = call i32 @dev_info(%struct.device* %72, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %74

74:                                               ; preds = %67, %61
  br label %131

75:                                               ; preds = %1
  %76 = load %struct.usba_ep*, %struct.usba_ep** @usba_ep, align 8
  %77 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %76, i64 0
  store %struct.usba_ep* %77, %struct.usba_ep** %4, align 8
  %78 = load %struct.usba_ep*, %struct.usba_ep** %4, align 8
  %79 = load i32, i32* @CFG, align 4
  %80 = load i32, i32* @EPT_SIZE, align 4
  %81 = load i32, i32* @USBA_EPT_SIZE_64, align 4
  %82 = call i32 @USBA_BF(i32 %80, i32 %81)
  %83 = load i32, i32* @USBA_EPT_DIR_IN, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @EPT_TYPE, align 4
  %86 = load i32, i32* @USBA_EPT_TYPE_BULK, align 4
  %87 = call i32 @USBA_BF(i32 %85, i32 %86)
  %88 = or i32 %84, %87
  %89 = load i32, i32* @BK_NUMBER, align 4
  %90 = call i32 @USBA_BF(i32 %89, i32 1)
  %91 = or i32 %88, %90
  %92 = call i32 @usba_ep_writel(%struct.usba_ep* %78, i32 %79, i32 %91)
  %93 = load %struct.usba_ep*, %struct.usba_ep** %4, align 8
  %94 = load i32, i32* @CFG, align 4
  %95 = call i32 @usba_ep_readl(%struct.usba_ep* %93, i32 %94)
  %96 = load i32, i32* @USBA_EPT_MAPPED, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %75
  %100 = load %struct.usba_udc*, %struct.usba_udc** %3, align 8
  %101 = load %struct.usba_ep*, %struct.usba_ep** %4, align 8
  %102 = call i32 @set_protocol_stall(%struct.usba_udc* %100, %struct.usba_ep* %101)
  %103 = load %struct.device*, %struct.device** %5, align 8
  %104 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %103, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %124

105:                                              ; preds = %75
  %106 = load %struct.usba_ep*, %struct.usba_ep** %4, align 8
  %107 = load i32, i32* @CTL_ENB, align 4
  %108 = load i32, i32* @USBA_EPT_ENABLE, align 4
  %109 = call i32 @usba_ep_writel(%struct.usba_ep* %106, i32 %107, i32 %108)
  %110 = load %struct.usba_udc*, %struct.usba_udc** %3, align 8
  %111 = load i32, i32* @TST, align 4
  %112 = load i32, i32* @USBA_TST_PKT_MODE, align 4
  %113 = call i32 @usba_writel(%struct.usba_udc* %110, i32 %111, i32 %112)
  %114 = load %struct.usba_ep*, %struct.usba_ep** %4, align 8
  %115 = getelementptr inbounds %struct.usba_ep, %struct.usba_ep* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @memcpy_toio(i32 %116, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @do_test_mode.test_packet_buffer, i64 0, i64 0), i32 53)
  %118 = load %struct.usba_ep*, %struct.usba_ep** %4, align 8
  %119 = load i32, i32* @SET_STA, align 4
  %120 = load i32, i32* @USBA_TX_PK_RDY, align 4
  %121 = call i32 @usba_ep_writel(%struct.usba_ep* %118, i32 %119, i32 %120)
  %122 = load %struct.device*, %struct.device** %5, align 8
  %123 = call i32 @dev_info(%struct.device* %122, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %124

124:                                              ; preds = %105, %99
  br label %131

125:                                              ; preds = %1
  %126 = load %struct.device*, %struct.device** %5, align 8
  %127 = load i32, i32* %6, align 4
  %128 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %126, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* @EINVAL, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %2, align 4
  br label %132

131:                                              ; preds = %124, %74, %24, %17
  store i32 0, i32* %2, align 4
  br label %132

132:                                              ; preds = %131, %125
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i32 @reset_all_endpoints(%struct.usba_udc*) #1

declare dso_local i32 @usba_writel(%struct.usba_udc*, i32, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @USBA_BF(i32, i32) #1

declare dso_local i32 @usba_ep_writel(%struct.usba_ep*, i32, i32) #1

declare dso_local i32 @usba_ep_readl(%struct.usba_ep*, i32) #1

declare dso_local i32 @set_protocol_stall(%struct.usba_udc*, %struct.usba_ep*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @memcpy_toio(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
