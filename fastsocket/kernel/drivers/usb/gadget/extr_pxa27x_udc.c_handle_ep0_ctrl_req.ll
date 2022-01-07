; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa27x_udc.c_handle_ep0_ctrl_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa27x_udc.c_handle_ep0_ctrl_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_udc = type { i32, %struct.TYPE_2__*, %struct.pxa_ep* }
%struct.TYPE_2__ = type { i32 (i32*, %struct.usb_ctrlrequest*)* }
%struct.usb_ctrlrequest = type { i32, i32, i32, i32, i32 }
%struct.pxa_ep = type { i32 }
%struct.pxa27x_request = type { i32 }
%union.anon = type { [2 x i8*], [8 x i8] }

@EPROTO = common dso_local global i32 0, align 4
@UDCCSR0_OPC = common dso_local global i32 0, align 4
@UDCDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"wrong to have extra bytes for setup : 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"SETUP %02x.%02x v%04x i%04x l%04x\0A\00", align 1
@USB_DIR_IN = common dso_local global i32 0, align 4
@IN_DATA_STAGE = common dso_local global i32 0, align 4
@OUT_DATA_STAGE = common dso_local global i32 0, align 4
@UDCCSR0_SA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"protocol STALL, udccsr0=%03x err %d\0A\00", align 1
@UDCCSR = common dso_local global i32 0, align 4
@UDCCSR0_FST = common dso_local global i32 0, align 4
@UDCCSR0_FTF = common dso_local global i32 0, align 4
@STALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxa_udc*, %struct.pxa27x_request*)* @handle_ep0_ctrl_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_ep0_ctrl_req(%struct.pxa_udc* %0, %struct.pxa27x_request* %1) #0 {
  %3 = alloca %struct.pxa_udc*, align 8
  %4 = alloca %struct.pxa27x_request*, align 8
  %5 = alloca %struct.pxa_ep*, align 8
  %6 = alloca %union.anon, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pxa_udc* %0, %struct.pxa_udc** %3, align 8
  store %struct.pxa27x_request* %1, %struct.pxa27x_request** %4, align 8
  %9 = load %struct.pxa_udc*, %struct.pxa_udc** %3, align 8
  %10 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %9, i32 0, i32 2
  %11 = load %struct.pxa_ep*, %struct.pxa_ep** %10, align 8
  %12 = getelementptr inbounds %struct.pxa_ep, %struct.pxa_ep* %11, i64 0
  store %struct.pxa_ep* %12, %struct.pxa_ep** %5, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.pxa_ep*, %struct.pxa_ep** %5, align 8
  %14 = load i32, i32* @EPROTO, align 4
  %15 = sub nsw i32 0, %14
  %16 = call i32 @nuke(%struct.pxa_ep* %13, i32 %15)
  %17 = load %struct.pxa_ep*, %struct.pxa_ep** %5, align 8
  %18 = call i64 @epout_has_pkt(%struct.pxa_ep* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load %struct.pxa_ep*, %struct.pxa_ep** %5, align 8
  %22 = call i64 @ep_count_bytes_remain(%struct.pxa_ep* %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load %struct.pxa_ep*, %struct.pxa_ep** %5, align 8
  %26 = load i32, i32* @UDCCSR0_OPC, align 4
  %27 = call i32 @ep_write_UDCCSR(%struct.pxa_ep* %25, i32 %26)
  br label %28

28:                                               ; preds = %24, %20, %2
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %46, %28
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 2
  br i1 %31, label %32, label %49

32:                                               ; preds = %29
  %33 = load %struct.pxa_ep*, %struct.pxa_ep** %5, align 8
  %34 = call i32 @ep_is_empty(%struct.pxa_ep* %33)
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %130

38:                                               ; preds = %32
  %39 = load %struct.pxa_ep*, %struct.pxa_ep** %5, align 8
  %40 = load i32, i32* @UDCDR, align 4
  %41 = call i8* @udc_ep_readl(%struct.pxa_ep* %39, i32 %40)
  %42 = bitcast %union.anon* %6 to [2 x i8*]*
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [2 x i8*], [2 x i8*]* %42, i64 0, i64 %44
  store i8* %41, i8** %45, align 8
  br label %46

46:                                               ; preds = %38
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %29

49:                                               ; preds = %29
  %50 = load %struct.pxa_ep*, %struct.pxa_ep** %5, align 8
  %51 = call i32 @ep_is_empty(%struct.pxa_ep* %50)
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %60, %49
  %56 = load %struct.pxa_ep*, %struct.pxa_ep** %5, align 8
  %57 = call i32 @ep_is_empty(%struct.pxa_ep* %56)
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load %struct.pxa_ep*, %struct.pxa_ep** %5, align 8
  %62 = load i32, i32* @UDCDR, align 4
  %63 = call i8* @udc_ep_readl(%struct.pxa_ep* %61, i32 %62)
  %64 = ptrtoint i8* %63 to i32
  store i32 %64, i32* %7, align 4
  %65 = load %struct.pxa_ep*, %struct.pxa_ep** %5, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @ep_err(%struct.pxa_ep* %65, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %66)
  br label %55

68:                                               ; preds = %55
  %69 = load %struct.pxa_ep*, %struct.pxa_ep** %5, align 8
  %70 = bitcast %union.anon* %6 to %struct.usb_ctrlrequest*
  %71 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = inttoptr i64 %73 to i8*
  %75 = bitcast %union.anon* %6 to %struct.usb_ctrlrequest*
  %76 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = bitcast %union.anon* %6 to %struct.usb_ctrlrequest*
  %79 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @le16_to_cpu(i32 %80)
  %82 = bitcast %union.anon* %6 to %struct.usb_ctrlrequest*
  %83 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @le16_to_cpu(i32 %84)
  %86 = bitcast %union.anon* %6 to %struct.usb_ctrlrequest*
  %87 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @le16_to_cpu(i32 %88)
  %90 = call i32 (%struct.pxa_ep*, i8*, i8*, i32, ...) @ep_dbg(%struct.pxa_ep* %69, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %74, i32 %77, i32 %81, i32 %85, i32 %89)
  %91 = load i32, i32* %8, align 4
  %92 = call i64 @unlikely(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %68
  br label %130

95:                                               ; preds = %68
  %96 = bitcast %union.anon* %6 to %struct.usb_ctrlrequest*
  %97 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @USB_DIR_IN, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %95
  %103 = load %struct.pxa_udc*, %struct.pxa_udc** %3, align 8
  %104 = load i32, i32* @IN_DATA_STAGE, align 4
  %105 = call i32 @set_ep0state(%struct.pxa_udc* %103, i32 %104)
  br label %110

106:                                              ; preds = %95
  %107 = load %struct.pxa_udc*, %struct.pxa_udc** %3, align 8
  %108 = load i32, i32* @OUT_DATA_STAGE, align 4
  %109 = call i32 @set_ep0state(%struct.pxa_udc* %107, i32 %108)
  br label %110

110:                                              ; preds = %106, %102
  %111 = load %struct.pxa_ep*, %struct.pxa_ep** %5, align 8
  %112 = load i32, i32* @UDCCSR0_SA, align 4
  %113 = load i32, i32* @UDCCSR0_OPC, align 4
  %114 = or i32 %112, %113
  %115 = call i32 @ep_write_UDCCSR(%struct.pxa_ep* %111, i32 %114)
  %116 = load %struct.pxa_udc*, %struct.pxa_udc** %3, align 8
  %117 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %116, i32 0, i32 1
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32 (i32*, %struct.usb_ctrlrequest*)*, i32 (i32*, %struct.usb_ctrlrequest*)** %119, align 8
  %121 = load %struct.pxa_udc*, %struct.pxa_udc** %3, align 8
  %122 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %121, i32 0, i32 0
  %123 = bitcast %union.anon* %6 to %struct.usb_ctrlrequest*
  %124 = call i32 %120(i32* %122, %struct.usb_ctrlrequest* %123)
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %7, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %110
  br label %130

128:                                              ; preds = %110
  br label %129

129:                                              ; preds = %130, %128
  ret void

130:                                              ; preds = %127, %94, %37
  %131 = load %struct.pxa_ep*, %struct.pxa_ep** %5, align 8
  %132 = load %struct.pxa_ep*, %struct.pxa_ep** %5, align 8
  %133 = load i32, i32* @UDCCSR, align 4
  %134 = call i8* @udc_ep_readl(%struct.pxa_ep* %132, i32 %133)
  %135 = load i32, i32* %7, align 4
  %136 = call i32 (%struct.pxa_ep*, i8*, i8*, i32, ...) @ep_dbg(%struct.pxa_ep* %131, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %134, i32 %135)
  %137 = load %struct.pxa_ep*, %struct.pxa_ep** %5, align 8
  %138 = load i32, i32* @UDCCSR0_FST, align 4
  %139 = load i32, i32* @UDCCSR0_FTF, align 4
  %140 = or i32 %138, %139
  %141 = call i32 @ep_write_UDCCSR(%struct.pxa_ep* %137, i32 %140)
  %142 = load %struct.pxa_udc*, %struct.pxa_udc** %3, align 8
  %143 = load i32, i32* @STALL, align 4
  %144 = call i32 @set_ep0state(%struct.pxa_udc* %142, i32 %143)
  br label %129
}

declare dso_local i32 @nuke(%struct.pxa_ep*, i32) #1

declare dso_local i64 @epout_has_pkt(%struct.pxa_ep*) #1

declare dso_local i64 @ep_count_bytes_remain(%struct.pxa_ep*) #1

declare dso_local i32 @ep_write_UDCCSR(%struct.pxa_ep*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ep_is_empty(%struct.pxa_ep*) #1

declare dso_local i8* @udc_ep_readl(%struct.pxa_ep*, i32) #1

declare dso_local i32 @ep_err(%struct.pxa_ep*, i8*, i32) #1

declare dso_local i32 @ep_dbg(%struct.pxa_ep*, i8*, i8*, i32, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @set_ep0state(%struct.pxa_udc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
