; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_uhci-q.c_uhci_submit_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_uhci-q.c_uhci_submit_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uhci_hcd = type { i32 }
%struct.urb = type { i32, i32, i64, i32, %struct.TYPE_6__*, %struct.urb_priv* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.urb_priv = type { i32 }
%struct.uhci_qh = type { i64, i32, %struct.uhci_td*, %struct.TYPE_5__* }
%struct.uhci_td = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@PIPE_DEVEP_MASK = common dso_local global i64 0, align 8
@USB_PID_SETUP = common dso_local global i64 0, align 8
@USB_SPEED_LOW = common dso_local global i64 0, align 8
@TD_CTRL_LS = common dso_local global i64 0, align 8
@TD_CTRL_ACTIVE = common dso_local global i64 0, align 8
@USB_PID_OUT = common dso_local global i64 0, align 8
@USB_PID_IN = common dso_local global i64 0, align 8
@TD_CTRL_SPD = common dso_local global i64 0, align 8
@TD_TOKEN_TOGGLE = common dso_local global i64 0, align 8
@TD_CTRL_IOC = common dso_local global i64 0, align 8
@USB_STATE_CONFIGURED = common dso_local global i64 0, align 8
@SKEL_LS_CONTROL = common dso_local global i32 0, align 4
@SKEL_FS_CONTROL = common dso_local global i32 0, align 4
@QH_STATE_ACTIVE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uhci_hcd*, %struct.urb*, %struct.uhci_qh*)* @uhci_submit_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uhci_submit_control(%struct.uhci_hcd* %0, %struct.urb* %1, %struct.uhci_qh* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uhci_hcd*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca %struct.uhci_qh*, align 8
  %8 = alloca %struct.uhci_td*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.urb_priv*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.uhci_hcd* %0, %struct.uhci_hcd** %5, align 8
  store %struct.urb* %1, %struct.urb** %6, align 8
  store %struct.uhci_qh* %2, %struct.uhci_qh** %7, align 8
  %18 = load %struct.uhci_qh*, %struct.uhci_qh** %7, align 8
  %19 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %18, i32 0, i32 3
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @le16_to_cpu(i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load %struct.urb*, %struct.urb** %6, align 8
  %26 = getelementptr inbounds %struct.urb, %struct.urb* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %12, align 4
  %28 = load %struct.urb*, %struct.urb** %6, align 8
  %29 = getelementptr inbounds %struct.urb, %struct.urb* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %13, align 4
  %31 = load %struct.urb*, %struct.urb** %6, align 8
  %32 = getelementptr inbounds %struct.urb, %struct.urb* %31, i32 0, i32 5
  %33 = load %struct.urb_priv*, %struct.urb_priv** %32, align 8
  store %struct.urb_priv* %33, %struct.urb_priv** %15, align 8
  %34 = load %struct.urb*, %struct.urb** %6, align 8
  %35 = getelementptr inbounds %struct.urb, %struct.urb* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PIPE_DEVEP_MASK, align 8
  %38 = and i64 %36, %37
  %39 = load i64, i64* @USB_PID_SETUP, align 8
  %40 = or i64 %38, %39
  store i64 %40, i64* %9, align 8
  %41 = call i64 @uhci_maxerr(i32 3)
  store i64 %41, i64* %10, align 8
  %42 = load %struct.urb*, %struct.urb** %6, align 8
  %43 = getelementptr inbounds %struct.urb, %struct.urb* %42, i32 0, i32 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @USB_SPEED_LOW, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %3
  %50 = load i64, i64* @TD_CTRL_LS, align 8
  %51 = load i64, i64* %10, align 8
  %52 = or i64 %51, %50
  store i64 %52, i64* %10, align 8
  br label %53

53:                                               ; preds = %49, %3
  %54 = load %struct.uhci_qh*, %struct.uhci_qh** %7, align 8
  %55 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %54, i32 0, i32 2
  %56 = load %struct.uhci_td*, %struct.uhci_td** %55, align 8
  store %struct.uhci_td* %56, %struct.uhci_td** %8, align 8
  %57 = load %struct.uhci_td*, %struct.uhci_td** %8, align 8
  %58 = load %struct.urb_priv*, %struct.urb_priv** %15, align 8
  %59 = call i32 @uhci_add_td_to_urbp(%struct.uhci_td* %57, %struct.urb_priv* %58)
  %60 = load %struct.uhci_td*, %struct.uhci_td** %8, align 8
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* %9, align 8
  %63 = call i64 @uhci_explen(i32 8)
  %64 = or i64 %62, %63
  %65 = load %struct.urb*, %struct.urb** %6, align 8
  %66 = getelementptr inbounds %struct.urb, %struct.urb* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @uhci_fill_td(%struct.uhci_td* %60, i64 %61, i64 %64, i32 %67)
  %69 = load %struct.uhci_td*, %struct.uhci_td** %8, align 8
  %70 = getelementptr inbounds %struct.uhci_td, %struct.uhci_td* %69, i32 0, i32 1
  store i32* %70, i32** %14, align 8
  %71 = load i64, i64* @TD_CTRL_ACTIVE, align 8
  %72 = load i64, i64* %10, align 8
  %73 = or i64 %72, %71
  store i64 %73, i64* %10, align 8
  %74 = load %struct.urb*, %struct.urb** %6, align 8
  %75 = getelementptr inbounds %struct.urb, %struct.urb* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = call i64 @usb_pipeout(i64 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %53
  %80 = load i32, i32* %12, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %79, %53
  %83 = load i64, i64* @USB_PID_SETUP, align 8
  %84 = load i64, i64* @USB_PID_OUT, align 8
  %85 = xor i64 %83, %84
  %86 = load i64, i64* %9, align 8
  %87 = xor i64 %86, %85
  store i64 %87, i64* %9, align 8
  br label %97

88:                                               ; preds = %79
  %89 = load i64, i64* @USB_PID_SETUP, align 8
  %90 = load i64, i64* @USB_PID_IN, align 8
  %91 = xor i64 %89, %90
  %92 = load i64, i64* %9, align 8
  %93 = xor i64 %92, %91
  store i64 %93, i64* %9, align 8
  %94 = load i64, i64* @TD_CTRL_SPD, align 8
  %95 = load i64, i64* %10, align 8
  %96 = or i64 %95, %94
  store i64 %96, i64* %10, align 8
  br label %97

97:                                               ; preds = %88, %82
  br label %98

98:                                               ; preds = %118, %97
  %99 = load i32, i32* %12, align 4
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %144

101:                                              ; preds = %98
  %102 = load i32, i32* %11, align 4
  store i32 %102, i32* %17, align 4
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* %17, align 4
  %105 = icmp sle i32 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %101
  %107 = load i32, i32* %12, align 4
  store i32 %107, i32* %17, align 4
  %108 = load i64, i64* @TD_CTRL_SPD, align 8
  %109 = xor i64 %108, -1
  %110 = load i64, i64* %10, align 8
  %111 = and i64 %110, %109
  store i64 %111, i64* %10, align 8
  br label %112

112:                                              ; preds = %106, %101
  %113 = load %struct.uhci_hcd*, %struct.uhci_hcd** %5, align 8
  %114 = call %struct.uhci_td* @uhci_alloc_td(%struct.uhci_hcd* %113)
  store %struct.uhci_td* %114, %struct.uhci_td** %8, align 8
  %115 = load %struct.uhci_td*, %struct.uhci_td** %8, align 8
  %116 = icmp ne %struct.uhci_td* %115, null
  br i1 %116, label %118, label %117

117:                                              ; preds = %112
  br label %234

118:                                              ; preds = %112
  %119 = load %struct.uhci_td*, %struct.uhci_td** %8, align 8
  %120 = call i32 @LINK_TO_TD(%struct.uhci_td* %119)
  %121 = load i32*, i32** %14, align 8
  store i32 %120, i32* %121, align 4
  %122 = load i64, i64* @TD_TOKEN_TOGGLE, align 8
  %123 = load i64, i64* %9, align 8
  %124 = xor i64 %123, %122
  store i64 %124, i64* %9, align 8
  %125 = load %struct.uhci_td*, %struct.uhci_td** %8, align 8
  %126 = load %struct.urb_priv*, %struct.urb_priv** %15, align 8
  %127 = call i32 @uhci_add_td_to_urbp(%struct.uhci_td* %125, %struct.urb_priv* %126)
  %128 = load %struct.uhci_td*, %struct.uhci_td** %8, align 8
  %129 = load i64, i64* %10, align 8
  %130 = load i64, i64* %9, align 8
  %131 = load i32, i32* %17, align 4
  %132 = call i64 @uhci_explen(i32 %131)
  %133 = or i64 %130, %132
  %134 = load i32, i32* %13, align 4
  %135 = call i32 @uhci_fill_td(%struct.uhci_td* %128, i64 %129, i64 %133, i32 %134)
  %136 = load %struct.uhci_td*, %struct.uhci_td** %8, align 8
  %137 = getelementptr inbounds %struct.uhci_td, %struct.uhci_td* %136, i32 0, i32 1
  store i32* %137, i32** %14, align 8
  %138 = load i32, i32* %17, align 4
  %139 = load i32, i32* %13, align 4
  %140 = add nsw i32 %139, %138
  store i32 %140, i32* %13, align 4
  %141 = load i32, i32* %17, align 4
  %142 = load i32, i32* %12, align 4
  %143 = sub nsw i32 %142, %141
  store i32 %143, i32* %12, align 4
  br label %98

144:                                              ; preds = %98
  %145 = load %struct.uhci_hcd*, %struct.uhci_hcd** %5, align 8
  %146 = call %struct.uhci_td* @uhci_alloc_td(%struct.uhci_hcd* %145)
  store %struct.uhci_td* %146, %struct.uhci_td** %8, align 8
  %147 = load %struct.uhci_td*, %struct.uhci_td** %8, align 8
  %148 = icmp ne %struct.uhci_td* %147, null
  br i1 %148, label %150, label %149

149:                                              ; preds = %144
  br label %234

150:                                              ; preds = %144
  %151 = load %struct.uhci_td*, %struct.uhci_td** %8, align 8
  %152 = call i32 @LINK_TO_TD(%struct.uhci_td* %151)
  %153 = load i32*, i32** %14, align 8
  store i32 %152, i32* %153, align 4
  %154 = load i64, i64* @USB_PID_IN, align 8
  %155 = load i64, i64* @USB_PID_OUT, align 8
  %156 = xor i64 %154, %155
  %157 = load i64, i64* %9, align 8
  %158 = xor i64 %157, %156
  store i64 %158, i64* %9, align 8
  %159 = load i64, i64* @TD_TOKEN_TOGGLE, align 8
  %160 = load i64, i64* %9, align 8
  %161 = or i64 %160, %159
  store i64 %161, i64* %9, align 8
  %162 = load %struct.uhci_td*, %struct.uhci_td** %8, align 8
  %163 = load %struct.urb_priv*, %struct.urb_priv** %15, align 8
  %164 = call i32 @uhci_add_td_to_urbp(%struct.uhci_td* %162, %struct.urb_priv* %163)
  %165 = load %struct.uhci_td*, %struct.uhci_td** %8, align 8
  %166 = load i64, i64* %10, align 8
  %167 = load i64, i64* @TD_CTRL_IOC, align 8
  %168 = or i64 %166, %167
  %169 = load i64, i64* %9, align 8
  %170 = call i64 @uhci_explen(i32 0)
  %171 = or i64 %169, %170
  %172 = call i32 @uhci_fill_td(%struct.uhci_td* %165, i64 %168, i64 %171, i32 0)
  %173 = load %struct.uhci_td*, %struct.uhci_td** %8, align 8
  %174 = getelementptr inbounds %struct.uhci_td, %struct.uhci_td* %173, i32 0, i32 1
  store i32* %174, i32** %14, align 8
  %175 = load %struct.uhci_hcd*, %struct.uhci_hcd** %5, align 8
  %176 = call %struct.uhci_td* @uhci_alloc_td(%struct.uhci_hcd* %175)
  store %struct.uhci_td* %176, %struct.uhci_td** %8, align 8
  %177 = load %struct.uhci_td*, %struct.uhci_td** %8, align 8
  %178 = icmp ne %struct.uhci_td* %177, null
  br i1 %178, label %180, label %179

179:                                              ; preds = %150
  br label %234

180:                                              ; preds = %150
  %181 = load %struct.uhci_td*, %struct.uhci_td** %8, align 8
  %182 = call i32 @LINK_TO_TD(%struct.uhci_td* %181)
  %183 = load i32*, i32** %14, align 8
  store i32 %182, i32* %183, align 4
  %184 = load %struct.uhci_td*, %struct.uhci_td** %8, align 8
  %185 = load i64, i64* @USB_PID_OUT, align 8
  %186 = call i64 @uhci_explen(i32 0)
  %187 = or i64 %185, %186
  %188 = call i32 @uhci_fill_td(%struct.uhci_td* %184, i64 0, i64 %187, i32 0)
  %189 = call i32 (...) @wmb()
  %190 = load i64, i64* @TD_CTRL_ACTIVE, align 8
  %191 = call i32 @cpu_to_le32(i64 %190)
  %192 = load %struct.uhci_qh*, %struct.uhci_qh** %7, align 8
  %193 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %192, i32 0, i32 2
  %194 = load %struct.uhci_td*, %struct.uhci_td** %193, align 8
  %195 = getelementptr inbounds %struct.uhci_td, %struct.uhci_td* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = or i32 %196, %191
  store i32 %197, i32* %195, align 4
  %198 = load %struct.uhci_td*, %struct.uhci_td** %8, align 8
  %199 = load %struct.uhci_qh*, %struct.uhci_qh** %7, align 8
  %200 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %199, i32 0, i32 2
  store %struct.uhci_td* %198, %struct.uhci_td** %200, align 8
  %201 = load %struct.urb*, %struct.urb** %6, align 8
  %202 = getelementptr inbounds %struct.urb, %struct.urb* %201, i32 0, i32 4
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @USB_SPEED_LOW, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %216, label %208

208:                                              ; preds = %180
  %209 = load %struct.urb*, %struct.urb** %6, align 8
  %210 = getelementptr inbounds %struct.urb, %struct.urb* %209, i32 0, i32 4
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @USB_STATE_CONFIGURED, align 8
  %215 = icmp ne i64 %213, %214
  br i1 %215, label %216, label %218

216:                                              ; preds = %208, %180
  %217 = load i32, i32* @SKEL_LS_CONTROL, align 4
  store i32 %217, i32* %16, align 4
  br label %223

218:                                              ; preds = %208
  %219 = load i32, i32* @SKEL_FS_CONTROL, align 4
  store i32 %219, i32* %16, align 4
  %220 = load %struct.uhci_hcd*, %struct.uhci_hcd** %5, align 8
  %221 = load %struct.urb*, %struct.urb** %6, align 8
  %222 = call i32 @uhci_add_fsbr(%struct.uhci_hcd* %220, %struct.urb* %221)
  br label %223

223:                                              ; preds = %218, %216
  %224 = load %struct.uhci_qh*, %struct.uhci_qh** %7, align 8
  %225 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @QH_STATE_ACTIVE, align 8
  %228 = icmp ne i64 %226, %227
  br i1 %228, label %229, label %233

229:                                              ; preds = %223
  %230 = load i32, i32* %16, align 4
  %231 = load %struct.uhci_qh*, %struct.uhci_qh** %7, align 8
  %232 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %231, i32 0, i32 1
  store i32 %230, i32* %232, align 8
  br label %233

233:                                              ; preds = %229, %223
  store i32 0, i32* %4, align 4
  br label %241

234:                                              ; preds = %179, %149, %117
  %235 = load %struct.uhci_qh*, %struct.uhci_qh** %7, align 8
  %236 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %235, i32 0, i32 2
  %237 = load %struct.uhci_td*, %struct.uhci_td** %236, align 8
  %238 = call i32 @uhci_remove_td_from_urbp(%struct.uhci_td* %237)
  %239 = load i32, i32* @ENOMEM, align 4
  %240 = sub nsw i32 0, %239
  store i32 %240, i32* %4, align 4
  br label %241

241:                                              ; preds = %234, %233
  %242 = load i32, i32* %4, align 4
  ret i32 %242
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @uhci_maxerr(i32) #1

declare dso_local i32 @uhci_add_td_to_urbp(%struct.uhci_td*, %struct.urb_priv*) #1

declare dso_local i32 @uhci_fill_td(%struct.uhci_td*, i64, i64, i32) #1

declare dso_local i64 @uhci_explen(i32) #1

declare dso_local i64 @usb_pipeout(i64) #1

declare dso_local %struct.uhci_td* @uhci_alloc_td(%struct.uhci_hcd*) #1

declare dso_local i32 @LINK_TO_TD(%struct.uhci_td*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @uhci_add_fsbr(%struct.uhci_hcd*, %struct.urb*) #1

declare dso_local i32 @uhci_remove_td_from_urbp(%struct.uhci_td*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
