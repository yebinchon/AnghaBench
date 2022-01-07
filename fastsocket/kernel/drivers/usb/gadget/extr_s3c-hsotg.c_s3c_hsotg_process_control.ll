; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_s3c-hsotg.c_s3c_hsotg_process_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_s3c-hsotg.c_s3c_hsotg_process_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c_hsotg = type { i32, i32, i32, %struct.TYPE_2__*, %struct.s3c_hsotg_ep* }
%struct.TYPE_2__ = type { i32 (i32*, %struct.usb_ctrlrequest*)* }
%struct.s3c_hsotg_ep = type { i32, i64 }
%struct.usb_ctrlrequest = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [42 x i8] c"ctrl Req=%02x, Type=%02x, V=%04x, L=%04x\0A\00", align 1
@USB_DIR_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"ctrl: dir_in=%d\0A\00", align 1
@USB_TYPE_MASK = common dso_local global i32 0, align 4
@USB_TYPE_STANDARD = common dso_local global i32 0, align 4
@S3C_DCFG = common dso_local global i32 0, align 4
@S3C_DCFG_DevAddr_MASK = common dso_local global i32 0, align 4
@S3C_DCFG_DevAddr_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"new address %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"driver->setup() ret %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"ep0 stall (dir=%d)\0A\00", align 1
@S3C_DIEPCTL0 = common dso_local global i32 0, align 4
@S3C_DOEPCTL0 = common dso_local global i32 0, align 4
@S3C_DxEPCTL_Stall = common dso_local global i32 0, align 4
@S3C_DxEPCTL_CNAK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"writen DxEPCTL=0x%08x to %08x (DxEPCTL=0x%08x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c_hsotg*, %struct.usb_ctrlrequest*)* @s3c_hsotg_process_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c_hsotg_process_control(%struct.s3c_hsotg* %0, %struct.usb_ctrlrequest* %1) #0 {
  %3 = alloca %struct.s3c_hsotg*, align 8
  %4 = alloca %struct.usb_ctrlrequest*, align 8
  %5 = alloca %struct.s3c_hsotg_ep*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.s3c_hsotg* %0, %struct.s3c_hsotg** %3, align 8
  store %struct.usb_ctrlrequest* %1, %struct.usb_ctrlrequest** %4, align 8
  %10 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %3, align 8
  %11 = getelementptr inbounds %struct.s3c_hsotg, %struct.s3c_hsotg* %10, i32 0, i32 4
  %12 = load %struct.s3c_hsotg_ep*, %struct.s3c_hsotg_ep** %11, align 8
  %13 = getelementptr inbounds %struct.s3c_hsotg_ep, %struct.s3c_hsotg_ep* %12, i64 0
  store %struct.s3c_hsotg_ep* %13, %struct.s3c_hsotg_ep** %5, align 8
  store i32 0, i32* %6, align 4
  %14 = load %struct.s3c_hsotg_ep*, %struct.s3c_hsotg_ep** %5, align 8
  %15 = getelementptr inbounds %struct.s3c_hsotg_ep, %struct.s3c_hsotg_ep* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %3, align 8
  %17 = getelementptr inbounds %struct.s3c_hsotg, %struct.s3c_hsotg* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %20 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %23 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %26 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %29 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %18, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24, i32 %27, i64 %30)
  %32 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %33 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @USB_DIR_IN, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 1, i32 0
  %40 = load %struct.s3c_hsotg_ep*, %struct.s3c_hsotg_ep** %5, align 8
  %41 = getelementptr inbounds %struct.s3c_hsotg_ep, %struct.s3c_hsotg_ep* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %3, align 8
  %43 = getelementptr inbounds %struct.s3c_hsotg, %struct.s3c_hsotg* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.s3c_hsotg_ep*, %struct.s3c_hsotg_ep** %5, align 8
  %46 = getelementptr inbounds %struct.s3c_hsotg_ep, %struct.s3c_hsotg_ep* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %44, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %50 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %2
  %54 = load %struct.s3c_hsotg_ep*, %struct.s3c_hsotg_ep** %5, align 8
  %55 = getelementptr inbounds %struct.s3c_hsotg_ep, %struct.s3c_hsotg_ep* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  br label %56

56:                                               ; preds = %53, %2
  %57 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %58 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @USB_TYPE_MASK, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* @USB_TYPE_STANDARD, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %112

64:                                               ; preds = %56
  %65 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %66 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  switch i32 %67, label %111 [
    i32 129, label %68
    i32 130, label %103
    i32 131, label %107
    i32 128, label %107
  ]

68:                                               ; preds = %64
  %69 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %3, align 8
  %70 = getelementptr inbounds %struct.s3c_hsotg, %struct.s3c_hsotg* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @S3C_DCFG, align 4
  %73 = add nsw i32 %71, %72
  %74 = call i32 @readl(i32 %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* @S3C_DCFG_DevAddr_MASK, align 4
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %7, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %7, align 4
  %79 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %80 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @S3C_DCFG_DevAddr_SHIFT, align 4
  %83 = shl i32 %81, %82
  %84 = load i32, i32* %7, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %3, align 8
  %88 = getelementptr inbounds %struct.s3c_hsotg, %struct.s3c_hsotg* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @S3C_DCFG, align 4
  %91 = add nsw i32 %89, %90
  %92 = call i32 @writel(i32 %86, i32 %91)
  %93 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %3, align 8
  %94 = getelementptr inbounds %struct.s3c_hsotg, %struct.s3c_hsotg* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %97 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @dev_info(i32 %95, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %98)
  %100 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %3, align 8
  %101 = load %struct.s3c_hsotg_ep*, %struct.s3c_hsotg_ep** %5, align 8
  %102 = call i32 @s3c_hsotg_send_reply(%struct.s3c_hsotg* %100, %struct.s3c_hsotg_ep* %101, i32* null, i32 0)
  store i32 %102, i32* %6, align 4
  br label %204

103:                                              ; preds = %64
  %104 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %3, align 8
  %105 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %106 = call i32 @s3c_hsotg_process_req_status(%struct.s3c_hsotg* %104, %struct.usb_ctrlrequest* %105)
  store i32 %106, i32* %6, align 4
  br label %111

107:                                              ; preds = %64, %64
  %108 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %3, align 8
  %109 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %110 = call i32 @s3c_hsotg_process_req_feature(%struct.s3c_hsotg* %108, %struct.usb_ctrlrequest* %109)
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %64, %107, %103
  br label %112

112:                                              ; preds = %111, %56
  %113 = load i32, i32* %6, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %139

115:                                              ; preds = %112
  %116 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %3, align 8
  %117 = getelementptr inbounds %struct.s3c_hsotg, %struct.s3c_hsotg* %116, i32 0, i32 3
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = icmp ne %struct.TYPE_2__* %118, null
  br i1 %119, label %120, label %139

120:                                              ; preds = %115
  %121 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %3, align 8
  %122 = getelementptr inbounds %struct.s3c_hsotg, %struct.s3c_hsotg* %121, i32 0, i32 3
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32 (i32*, %struct.usb_ctrlrequest*)*, i32 (i32*, %struct.usb_ctrlrequest*)** %124, align 8
  %126 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %3, align 8
  %127 = getelementptr inbounds %struct.s3c_hsotg, %struct.s3c_hsotg* %126, i32 0, i32 2
  %128 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %129 = call i32 %125(i32* %127, %struct.usb_ctrlrequest* %128)
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* %6, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %120
  %133 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %3, align 8
  %134 = getelementptr inbounds %struct.s3c_hsotg, %struct.s3c_hsotg* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %6, align 4
  %137 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %135, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %136)
  br label %138

138:                                              ; preds = %132, %120
  br label %139

139:                                              ; preds = %138, %115, %112
  %140 = load i32, i32* %6, align 4
  %141 = icmp sgt i32 %140, 0
  br i1 %141, label %142, label %152

142:                                              ; preds = %139
  %143 = load %struct.s3c_hsotg_ep*, %struct.s3c_hsotg_ep** %5, align 8
  %144 = getelementptr inbounds %struct.s3c_hsotg_ep, %struct.s3c_hsotg_ep* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %142
  %148 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %3, align 8
  %149 = load %struct.s3c_hsotg_ep*, %struct.s3c_hsotg_ep** %5, align 8
  %150 = call i32 @s3c_hsotg_send_reply(%struct.s3c_hsotg* %148, %struct.s3c_hsotg_ep* %149, i32* null, i32 0)
  store i32 %150, i32* %6, align 4
  br label %151

151:                                              ; preds = %147, %142
  br label %152

152:                                              ; preds = %151, %139
  %153 = load i32, i32* %6, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %204

155:                                              ; preds = %152
  %156 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %3, align 8
  %157 = getelementptr inbounds %struct.s3c_hsotg, %struct.s3c_hsotg* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.s3c_hsotg_ep*, %struct.s3c_hsotg_ep** %5, align 8
  %160 = getelementptr inbounds %struct.s3c_hsotg_ep, %struct.s3c_hsotg_ep* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %158, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %161)
  %163 = load %struct.s3c_hsotg_ep*, %struct.s3c_hsotg_ep** %5, align 8
  %164 = getelementptr inbounds %struct.s3c_hsotg_ep, %struct.s3c_hsotg_ep* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %155
  %168 = load i32, i32* @S3C_DIEPCTL0, align 4
  br label %171

169:                                              ; preds = %155
  %170 = load i32, i32* @S3C_DOEPCTL0, align 4
  br label %171

171:                                              ; preds = %169, %167
  %172 = phi i32 [ %168, %167 ], [ %170, %169 ]
  store i32 %172, i32* %8, align 4
  %173 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %3, align 8
  %174 = getelementptr inbounds %struct.s3c_hsotg, %struct.s3c_hsotg* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* %8, align 4
  %177 = add nsw i32 %175, %176
  %178 = call i32 @readl(i32 %177)
  store i32 %178, i32* %9, align 4
  %179 = load i32, i32* @S3C_DxEPCTL_Stall, align 4
  %180 = load i32, i32* %9, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %9, align 4
  %182 = load i32, i32* @S3C_DxEPCTL_CNAK, align 4
  %183 = load i32, i32* %9, align 4
  %184 = or i32 %183, %182
  store i32 %184, i32* %9, align 4
  %185 = load i32, i32* %9, align 4
  %186 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %3, align 8
  %187 = getelementptr inbounds %struct.s3c_hsotg, %struct.s3c_hsotg* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* %8, align 4
  %190 = add nsw i32 %188, %189
  %191 = call i32 @writel(i32 %185, i32 %190)
  %192 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %3, align 8
  %193 = getelementptr inbounds %struct.s3c_hsotg, %struct.s3c_hsotg* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* %9, align 4
  %196 = load i32, i32* %8, align 4
  %197 = load %struct.s3c_hsotg*, %struct.s3c_hsotg** %3, align 8
  %198 = getelementptr inbounds %struct.s3c_hsotg, %struct.s3c_hsotg* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* %8, align 4
  %201 = add nsw i32 %199, %200
  %202 = call i32 @readl(i32 %201)
  %203 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %194, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %195, i32 %196, i32 %202)
  br label %204

204:                                              ; preds = %68, %171, %152
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @s3c_hsotg_send_reply(%struct.s3c_hsotg*, %struct.s3c_hsotg_ep*, i32*, i32) #1

declare dso_local i32 @s3c_hsotg_process_req_status(%struct.s3c_hsotg*, %struct.usb_ctrlrequest*) #1

declare dso_local i32 @s3c_hsotg_process_req_feature(%struct.s3c_hsotg*, %struct.usb_ctrlrequest*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
