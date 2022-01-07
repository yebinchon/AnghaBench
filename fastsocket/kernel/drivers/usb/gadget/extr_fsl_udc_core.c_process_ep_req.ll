; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_udc_core.c_process_ep_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_udc_core.c_process_ep_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_udc = type { %struct.ep_queue_head* }
%struct.ep_queue_head = type { i32 }
%struct.fsl_req = type { i32, %struct.TYPE_2__, %struct.ep_td_struct* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ep_td_struct = type { i64, i32 }

@DTD_PACKET_SIZE = common dso_local global i32 0, align 4
@DTD_LENGTH_BIT_POS = common dso_local global i32 0, align 4
@DTD_ERROR_MASK = common dso_local global i32 0, align 4
@DTD_STATUS_HALTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"dTD error %08x QH=%d\0A\00", align 1
@EPIPE = common dso_local global i32 0, align 4
@DTD_STATUS_DATA_BUFF_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Transfer overflow\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@DTD_STATUS_TRANSACTION_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"ISO error\00", align 1
@EILSEQ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Unknown error has occured (0x%x)!\0A\00", align 1
@DTD_STATUS_ACTIVE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Request not complete\00", align 1
@REQ_UNCOMPLETE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"Transmit dTD remaining length not zero\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"dTD transmitted successful\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_udc*, i32, %struct.fsl_req*)* @process_ep_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_ep_req(%struct.fsl_udc* %0, i32 %1, %struct.fsl_req* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fsl_udc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fsl_req*, align 8
  %8 = alloca %struct.ep_td_struct*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ep_queue_head*, align 8
  %17 = alloca i32, align 4
  store %struct.fsl_udc* %0, %struct.fsl_udc** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.fsl_req* %2, %struct.fsl_req** %7, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %18 = load %struct.fsl_udc*, %struct.fsl_udc** %5, align 8
  %19 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %18, i32 0, i32 0
  %20 = load %struct.ep_queue_head*, %struct.ep_queue_head** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ep_queue_head, %struct.ep_queue_head* %20, i64 %22
  store %struct.ep_queue_head* %23, %struct.ep_queue_head** %16, align 8
  %24 = load i32, i32* %6, align 4
  %25 = srem i32 %24, 2
  store i32 %25, i32* %17, align 4
  %26 = load %struct.fsl_req*, %struct.fsl_req** %7, align 8
  %27 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %26, i32 0, i32 2
  %28 = load %struct.ep_td_struct*, %struct.ep_td_struct** %27, align 8
  store %struct.ep_td_struct* %28, %struct.ep_td_struct** %8, align 8
  store i32 0, i32* %9, align 4
  %29 = load %struct.fsl_req*, %struct.fsl_req** %7, align 8
  %30 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %33

33:                                               ; preds = %148, %3
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.fsl_req*, %struct.fsl_req** %7, align 8
  %36 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %151

39:                                               ; preds = %33
  %40 = load %struct.ep_td_struct*, %struct.ep_td_struct** %8, align 8
  %41 = getelementptr inbounds %struct.ep_td_struct, %struct.ep_td_struct* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @le32_to_cpu(i32 %42)
  %44 = load i32, i32* @DTD_PACKET_SIZE, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @DTD_LENGTH_BIT_POS, align 4
  %47 = ashr i32 %45, %46
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %10, align 4
  %50 = sub nsw i32 %49, %48
  store i32 %50, i32* %10, align 4
  %51 = load %struct.ep_td_struct*, %struct.ep_td_struct** %8, align 8
  %52 = getelementptr inbounds %struct.ep_td_struct, %struct.ep_td_struct* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @le32_to_cpu(i32 %53)
  %55 = load i32, i32* @DTD_ERROR_MASK, align 4
  %56 = and i32 %54, %55
  store i32 %56, i32* %15, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %104

58:                                               ; preds = %39
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* @DTD_STATUS_HALTED, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %81

63:                                               ; preds = %58
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i32 (i8*, i32, ...) @ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %65)
  %67 = load %struct.ep_queue_head*, %struct.ep_queue_head** %16, align 8
  %68 = getelementptr inbounds %struct.ep_queue_head, %struct.ep_queue_head* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @le32_to_cpu(i32 %69)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %15, align 4
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %13, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @cpu_to_le32(i32 %75)
  %77 = load %struct.ep_queue_head*, %struct.ep_queue_head** %16, align 8
  %78 = getelementptr inbounds %struct.ep_queue_head, %struct.ep_queue_head* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @EPIPE, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %14, align 4
  br label %151

81:                                               ; preds = %58
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* @DTD_STATUS_DATA_BUFF_ERR, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = call i32 @VDBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %88 = load i32, i32* @EPROTO, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %14, align 4
  br label %151

90:                                               ; preds = %81
  %91 = load i32, i32* %15, align 4
  %92 = load i32, i32* @DTD_STATUS_TRANSACTION_ERR, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = call i32 @VDBG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %97 = load i32, i32* @EILSEQ, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %14, align 4
  br label %151

99:                                               ; preds = %90
  %100 = load i32, i32* %15, align 4
  %101 = call i32 (i8*, i32, ...) @ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %99
  br label %103

103:                                              ; preds = %102
  br label %135

104:                                              ; preds = %39
  %105 = load %struct.ep_td_struct*, %struct.ep_td_struct** %8, align 8
  %106 = getelementptr inbounds %struct.ep_td_struct, %struct.ep_td_struct* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @le32_to_cpu(i32 %107)
  %109 = load i32, i32* @DTD_STATUS_ACTIVE, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %104
  %113 = call i32 @VDBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %114 = load i32, i32* @REQ_UNCOMPLETE, align 4
  store i32 %114, i32* %14, align 4
  %115 = load i32, i32* %14, align 4
  store i32 %115, i32* %4, align 4
  br label %161

116:                                              ; preds = %104
  %117 = load i32, i32* %11, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %129

119:                                              ; preds = %116
  %120 = load i32, i32* %17, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = call i32 @VDBG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %124 = load i32, i32* @EPROTO, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %14, align 4
  br label %151

126:                                              ; preds = %119
  %127 = load i32, i32* %9, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %9, align 4
  br label %151

129:                                              ; preds = %116
  %130 = load i32, i32* %9, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %9, align 4
  %132 = call i32 @VDBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  br label %133

133:                                              ; preds = %129
  br label %134

134:                                              ; preds = %133
  br label %135

135:                                              ; preds = %134, %103
  %136 = load i32, i32* %12, align 4
  %137 = load %struct.fsl_req*, %struct.fsl_req** %7, align 8
  %138 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = sub nsw i32 %139, 1
  %141 = icmp ne i32 %136, %140
  br i1 %141, label %142, label %147

142:                                              ; preds = %135
  %143 = load %struct.ep_td_struct*, %struct.ep_td_struct** %8, align 8
  %144 = getelementptr inbounds %struct.ep_td_struct, %struct.ep_td_struct* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = inttoptr i64 %145 to %struct.ep_td_struct*
  store %struct.ep_td_struct* %146, %struct.ep_td_struct** %8, align 8
  br label %147

147:                                              ; preds = %142, %135
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %12, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %12, align 4
  br label %33

151:                                              ; preds = %126, %122, %95, %86, %63, %33
  %152 = load i32, i32* %14, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %151
  %155 = load i32, i32* %14, align 4
  store i32 %155, i32* %4, align 4
  br label %161

156:                                              ; preds = %151
  %157 = load i32, i32* %10, align 4
  %158 = load %struct.fsl_req*, %struct.fsl_req** %7, align 8
  %159 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 1
  store i32 %157, i32* %160, align 4
  store i32 0, i32* %4, align 4
  br label %161

161:                                              ; preds = %156, %154, %112
  %162 = load i32, i32* %4, align 4
  ret i32 %162
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ERR(i8*, i32, ...) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @VDBG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
