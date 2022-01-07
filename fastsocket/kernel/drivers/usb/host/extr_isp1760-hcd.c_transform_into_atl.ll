; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_isp1760-hcd.c_transform_into_atl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_isp1760-hcd.c_transform_into_atl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp1760_hcd = type { i32 }
%struct.isp1760_qh = type { i32, i32 }
%struct.isp1760_qtd = type { i32, i32, i32 }
%struct.urb = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ptd = type { i8*, i8*, i8*, i8* }

@RL_COUNTER = common dso_local global i32 0, align 4
@NAK_COUNTER = common dso_local global i32 0, align 4
@PTD_VALID = common dso_local global i32 0, align 4
@PTD_TRANS_BULK = common dso_local global i32 0, align 4
@PTD_TRANS_INT = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@PTD_TRANS_SPLIT = common dso_local global i32 0, align 4
@USB_SPEED_LOW = common dso_local global i64 0, align 8
@PTD_SE_USB_LOSPEED = common dso_local global i32 0, align 4
@PTD_ACTIVE = common dso_local global i32 0, align 4
@ERR_COUNTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp1760_hcd*, %struct.isp1760_qh*, %struct.isp1760_qtd*, %struct.urb*, i32, %struct.ptd*)* @transform_into_atl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transform_into_atl(%struct.isp1760_hcd* %0, %struct.isp1760_qh* %1, %struct.isp1760_qtd* %2, %struct.urb* %3, i32 %4, %struct.ptd* %5) #0 {
  %7 = alloca %struct.isp1760_hcd*, align 8
  %8 = alloca %struct.isp1760_qh*, align 8
  %9 = alloca %struct.isp1760_qtd*, align 8
  %10 = alloca %struct.urb*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ptd*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.isp1760_hcd* %0, %struct.isp1760_hcd** %7, align 8
  store %struct.isp1760_qh* %1, %struct.isp1760_qh** %8, align 8
  store %struct.isp1760_qtd* %2, %struct.isp1760_qtd** %9, align 8
  store %struct.urb* %3, %struct.urb** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.ptd* %5, %struct.ptd** %12, align 8
  %22 = load i32, i32* @RL_COUNTER, align 4
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* @NAK_COUNTER, align 4
  store i32 %23, i32* %21, align 4
  %24 = load %struct.urb*, %struct.urb** %10, align 8
  %25 = getelementptr inbounds %struct.urb, %struct.urb* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = load %struct.urb*, %struct.urb** %10, align 8
  %28 = getelementptr inbounds %struct.urb, %struct.urb* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.urb*, %struct.urb** %10, align 8
  %31 = getelementptr inbounds %struct.urb, %struct.urb* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @usb_pipeout(i32 %32)
  %34 = call i32 @usb_maxpacket(%struct.TYPE_6__* %26, i32 %29, i32 %33)
  store i32 %34, i32* %17, align 4
  %35 = load i32, i32* %17, align 4
  %36 = ashr i32 %35, 11
  %37 = and i32 %36, 3
  %38 = add nsw i32 1, %37
  store i32 %38, i32* %18, align 4
  %39 = load i32, i32* %17, align 4
  %40 = and i32 %39, 2047
  store i32 %40, i32* %17, align 4
  %41 = load i32, i32* @PTD_VALID, align 4
  store i32 %41, i32* %13, align 4
  %42 = load %struct.isp1760_qtd*, %struct.isp1760_qtd** %9, align 8
  %43 = getelementptr inbounds %struct.isp1760_qtd, %struct.isp1760_qtd* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @PTD_LENGTH(i32 %44)
  %46 = load i32, i32* %13, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %17, align 4
  %49 = call i32 @PTD_MAXPACKET(i32 %48)
  %50 = load i32, i32* %13, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %13, align 4
  %52 = load %struct.urb*, %struct.urb** %10, align 8
  %53 = getelementptr inbounds %struct.urb, %struct.urb* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @usb_pipeendpoint(i32 %54)
  %56 = call i32 @PTD_ENDPOINT(i32 %55)
  %57 = load i32, i32* %13, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %13, align 4
  %59 = load %struct.urb*, %struct.urb** %10, align 8
  %60 = getelementptr inbounds %struct.urb, %struct.urb* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @usb_pipeendpoint(i32 %61)
  %63 = ashr i32 %62, 1
  store i32 %63, i32* %14, align 4
  %64 = load %struct.urb*, %struct.urb** %10, align 8
  %65 = getelementptr inbounds %struct.urb, %struct.urb* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @usb_pipedevice(i32 %66)
  %68 = call i32 @PTD_DEVICE_ADDR(i32 %67)
  %69 = load i32, i32* %14, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %14, align 4
  %71 = load %struct.isp1760_qtd*, %struct.isp1760_qtd** %9, align 8
  %72 = getelementptr inbounds %struct.isp1760_qtd, %struct.isp1760_qtd* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %19, align 4
  %74 = load i32, i32* %19, align 4
  %75 = call i32 @PTD_PID_TOKEN(i32 %74)
  %76 = load i32, i32* %14, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %14, align 4
  %78 = load %struct.urb*, %struct.urb** %10, align 8
  %79 = getelementptr inbounds %struct.urb, %struct.urb* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @usb_pipebulk(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %6
  %84 = load i32, i32* @PTD_TRANS_BULK, align 4
  %85 = load i32, i32* %14, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %14, align 4
  br label %98

87:                                               ; preds = %6
  %88 = load %struct.urb*, %struct.urb** %10, align 8
  %89 = getelementptr inbounds %struct.urb, %struct.urb* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @usb_pipeint(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %87
  %94 = load i32, i32* @PTD_TRANS_INT, align 4
  %95 = load i32, i32* %14, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %14, align 4
  br label %97

97:                                               ; preds = %93, %87
  br label %98

98:                                               ; preds = %97, %83
  %99 = load %struct.urb*, %struct.urb** %10, align 8
  %100 = getelementptr inbounds %struct.urb, %struct.urb* %99, i32 0, i32 1
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @USB_SPEED_HIGH, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %159

106:                                              ; preds = %98
  %107 = load i32, i32* @PTD_TRANS_SPLIT, align 4
  %108 = load i32, i32* %14, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %14, align 4
  %110 = load %struct.urb*, %struct.urb** %10, align 8
  %111 = getelementptr inbounds %struct.urb, %struct.urb* %110, i32 0, i32 1
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @USB_SPEED_LOW, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %106
  %118 = load i32, i32* @PTD_SE_USB_LOSPEED, align 4
  %119 = load i32, i32* %14, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %14, align 4
  br label %121

121:                                              ; preds = %117, %106
  %122 = load %struct.urb*, %struct.urb** %10, align 8
  %123 = getelementptr inbounds %struct.urb, %struct.urb* %122, i32 0, i32 1
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @PTD_PORT_NUM(i32 %126)
  %128 = load i32, i32* %14, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %14, align 4
  %130 = load %struct.urb*, %struct.urb** %10, align 8
  %131 = getelementptr inbounds %struct.urb, %struct.urb* %130, i32 0, i32 1
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @PTD_HUB_NUM(i32 %138)
  %140 = load i32, i32* %14, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %14, align 4
  %142 = load %struct.urb*, %struct.urb** %10, align 8
  %143 = getelementptr inbounds %struct.urb, %struct.urb* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i64 @usb_pipeint(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %158

147:                                              ; preds = %121
  %148 = load %struct.urb*, %struct.urb** %10, align 8
  %149 = getelementptr inbounds %struct.urb, %struct.urb* %148, i32 0, i32 1
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @USB_SPEED_LOW, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %147
  %156 = load i32, i32* %14, align 4
  %157 = or i32 %156, 131072
  store i32 %157, i32* %14, align 4
  br label %158

158:                                              ; preds = %155, %147, %121
  store i32 0, i32* %16, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  br label %181

159:                                              ; preds = %98
  %160 = load i32, i32* %18, align 4
  %161 = call i32 @PTD_MULTI(i32 %160)
  %162 = load i32, i32* %13, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %13, align 4
  %164 = load %struct.urb*, %struct.urb** %10, align 8
  %165 = getelementptr inbounds %struct.urb, %struct.urb* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = call i64 @usb_pipecontrol(i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %175, label %169

169:                                              ; preds = %159
  %170 = load %struct.urb*, %struct.urb** %10, align 8
  %171 = getelementptr inbounds %struct.urb, %struct.urb* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call i64 @usb_pipebulk(i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %169, %159
  %176 = load %struct.isp1760_qh*, %struct.isp1760_qh** %8, align 8
  %177 = getelementptr inbounds %struct.isp1760_qh, %struct.isp1760_qh* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  store i32 %178, i32* %16, align 4
  br label %180

179:                                              ; preds = %169
  store i32 0, i32* %16, align 4
  br label %180

180:                                              ; preds = %179, %175
  br label %181

181:                                              ; preds = %180, %158
  store i32 0, i32* %15, align 4
  %182 = load i32, i32* %11, align 4
  %183 = call i32 @base_to_chip(i32 %182)
  %184 = call i32 @PTD_DATA_START_ADDR(i32 %183)
  %185 = load i32, i32* %15, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %15, align 4
  %187 = load i32, i32* %20, align 4
  %188 = call i32 @PTD_RL_CNT(i32 %187)
  %189 = load i32, i32* %15, align 4
  %190 = or i32 %189, %188
  store i32 %190, i32* %15, align 4
  %191 = load i32, i32* %21, align 4
  %192 = call i32 @PTD_NAC_CNT(i32 %191)
  %193 = load i32, i32* %16, align 4
  %194 = or i32 %193, %192
  store i32 %194, i32* %16, align 4
  %195 = load %struct.urb*, %struct.urb** %10, align 8
  %196 = getelementptr inbounds %struct.urb, %struct.urb* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i64 @usb_pipecontrol(i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %207

200:                                              ; preds = %181
  %201 = load %struct.isp1760_qtd*, %struct.isp1760_qtd** %9, align 8
  %202 = getelementptr inbounds %struct.isp1760_qtd, %struct.isp1760_qtd* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @PTD_DATA_TOGGLE(i32 %203)
  %205 = load i32, i32* %16, align 4
  %206 = or i32 %205, %204
  store i32 %206, i32* %16, align 4
  br label %213

207:                                              ; preds = %181
  %208 = load %struct.isp1760_qh*, %struct.isp1760_qh** %8, align 8
  %209 = getelementptr inbounds %struct.isp1760_qh, %struct.isp1760_qh* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* %16, align 4
  %212 = or i32 %211, %210
  store i32 %212, i32* %16, align 4
  br label %213

213:                                              ; preds = %207, %200
  %214 = load i32, i32* @PTD_ACTIVE, align 4
  %215 = load i32, i32* %16, align 4
  %216 = or i32 %215, %214
  store i32 %216, i32* %16, align 4
  %217 = load i32, i32* @ERR_COUNTER, align 4
  %218 = call i32 @PTD_CERR(i32 %217)
  %219 = load i32, i32* %16, align 4
  %220 = or i32 %219, %218
  store i32 %220, i32* %16, align 4
  %221 = load %struct.ptd*, %struct.ptd** %12, align 8
  %222 = call i32 @memset(%struct.ptd* %221, i32 0, i32 32)
  %223 = load i32, i32* %13, align 4
  %224 = call i8* @cpu_to_le32(i32 %223)
  %225 = load %struct.ptd*, %struct.ptd** %12, align 8
  %226 = getelementptr inbounds %struct.ptd, %struct.ptd* %225, i32 0, i32 3
  store i8* %224, i8** %226, align 8
  %227 = load i32, i32* %14, align 4
  %228 = call i8* @cpu_to_le32(i32 %227)
  %229 = load %struct.ptd*, %struct.ptd** %12, align 8
  %230 = getelementptr inbounds %struct.ptd, %struct.ptd* %229, i32 0, i32 2
  store i8* %228, i8** %230, align 8
  %231 = load i32, i32* %15, align 4
  %232 = call i8* @cpu_to_le32(i32 %231)
  %233 = load %struct.ptd*, %struct.ptd** %12, align 8
  %234 = getelementptr inbounds %struct.ptd, %struct.ptd* %233, i32 0, i32 1
  store i8* %232, i8** %234, align 8
  %235 = load i32, i32* %16, align 4
  %236 = call i8* @cpu_to_le32(i32 %235)
  %237 = load %struct.ptd*, %struct.ptd** %12, align 8
  %238 = getelementptr inbounds %struct.ptd, %struct.ptd* %237, i32 0, i32 0
  store i8* %236, i8** %238, align 8
  ret void
}

declare dso_local i32 @usb_maxpacket(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @usb_pipeout(i32) #1

declare dso_local i32 @PTD_LENGTH(i32) #1

declare dso_local i32 @PTD_MAXPACKET(i32) #1

declare dso_local i32 @PTD_ENDPOINT(i32) #1

declare dso_local i32 @usb_pipeendpoint(i32) #1

declare dso_local i32 @PTD_DEVICE_ADDR(i32) #1

declare dso_local i32 @usb_pipedevice(i32) #1

declare dso_local i32 @PTD_PID_TOKEN(i32) #1

declare dso_local i64 @usb_pipebulk(i32) #1

declare dso_local i64 @usb_pipeint(i32) #1

declare dso_local i32 @PTD_PORT_NUM(i32) #1

declare dso_local i32 @PTD_HUB_NUM(i32) #1

declare dso_local i32 @PTD_MULTI(i32) #1

declare dso_local i64 @usb_pipecontrol(i32) #1

declare dso_local i32 @PTD_DATA_START_ADDR(i32) #1

declare dso_local i32 @base_to_chip(i32) #1

declare dso_local i32 @PTD_RL_CNT(i32) #1

declare dso_local i32 @PTD_NAC_CNT(i32) #1

declare dso_local i32 @PTD_DATA_TOGGLE(i32) #1

declare dso_local i32 @PTD_CERR(i32) #1

declare dso_local i32 @memset(%struct.ptd*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
