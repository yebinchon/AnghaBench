; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_uhci-q.c_uhci_submit_common.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_uhci-q.c_uhci_submit_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uhci_hcd = type { i32 }
%struct.urb = type { i32, i32, i64, i32, %struct.TYPE_7__*, %struct.urb_priv* }
%struct.TYPE_7__ = type { i64 }
%struct.urb_priv = type { i32 }
%struct.uhci_qh = type { %struct.uhci_td*, %struct.TYPE_6__* }
%struct.uhci_td = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PIPE_DEVEP_MASK = common dso_local global i64 0, align 8
@USB_SPEED_LOW = common dso_local global i64 0, align 8
@TD_CTRL_LS = common dso_local global i64 0, align 8
@TD_CTRL_SPD = common dso_local global i64 0, align 8
@URB_SHORT_NOT_OK = common dso_local global i32 0, align 4
@TD_TOKEN_TOGGLE_SHIFT = common dso_local global i32 0, align 4
@TD_CTRL_ACTIVE = common dso_local global i64 0, align 8
@URB_ZERO_PACKET = common dso_local global i32 0, align 4
@TD_CTRL_IOC = common dso_local global i64 0, align 8
@USB_PID_OUT = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uhci_hcd*, %struct.urb*, %struct.uhci_qh*)* @uhci_submit_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uhci_submit_common(%struct.uhci_hcd* %0, %struct.urb* %1, %struct.uhci_qh* %2) #0 {
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
  %19 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
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
  %34 = load i32, i32* %12, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %3
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %256

39:                                               ; preds = %3
  %40 = load %struct.urb*, %struct.urb** %6, align 8
  %41 = getelementptr inbounds %struct.urb, %struct.urb* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PIPE_DEVEP_MASK, align 8
  %44 = and i64 %42, %43
  %45 = load %struct.urb*, %struct.urb** %6, align 8
  %46 = getelementptr inbounds %struct.urb, %struct.urb* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = call i64 @usb_packetid(i64 %47)
  %49 = or i64 %44, %48
  store i64 %49, i64* %9, align 8
  %50 = load %struct.urb*, %struct.urb** %6, align 8
  %51 = getelementptr inbounds %struct.urb, %struct.urb* %50, i32 0, i32 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = load %struct.urb*, %struct.urb** %6, align 8
  %54 = getelementptr inbounds %struct.urb, %struct.urb* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @usb_pipeendpoint(i64 %55)
  %57 = load %struct.urb*, %struct.urb** %6, align 8
  %58 = getelementptr inbounds %struct.urb, %struct.urb* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = call i64 @usb_pipeout(i64 %59)
  %61 = call i32 @usb_gettoggle(%struct.TYPE_7__* %52, i32 %56, i64 %60)
  store i32 %61, i32* %16, align 4
  %62 = call i64 @uhci_maxerr(i32 3)
  store i64 %62, i64* %10, align 8
  %63 = load %struct.urb*, %struct.urb** %6, align 8
  %64 = getelementptr inbounds %struct.urb, %struct.urb* %63, i32 0, i32 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @USB_SPEED_LOW, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %39
  %71 = load i64, i64* @TD_CTRL_LS, align 8
  %72 = load i64, i64* %10, align 8
  %73 = or i64 %72, %71
  store i64 %73, i64* %10, align 8
  br label %74

74:                                               ; preds = %70, %39
  %75 = load %struct.urb*, %struct.urb** %6, align 8
  %76 = getelementptr inbounds %struct.urb, %struct.urb* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = call i64 @usb_pipein(i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load i64, i64* @TD_CTRL_SPD, align 8
  %82 = load i64, i64* %10, align 8
  %83 = or i64 %82, %81
  store i64 %83, i64* %10, align 8
  br label %84

84:                                               ; preds = %80, %74
  store i32* null, i32** %14, align 8
  %85 = load %struct.uhci_qh*, %struct.uhci_qh** %7, align 8
  %86 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %85, i32 0, i32 0
  %87 = load %struct.uhci_td*, %struct.uhci_td** %86, align 8
  store %struct.uhci_td* %87, %struct.uhci_td** %8, align 8
  br label %88

88:                                               ; preds = %150, %84
  %89 = load i32, i32* %11, align 4
  store i32 %89, i32* %17, align 4
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* %17, align 4
  %92 = icmp sle i32 %90, %91
  br i1 %92, label %93, label %107

93:                                               ; preds = %88
  %94 = load i32, i32* %12, align 4
  store i32 %94, i32* %17, align 4
  %95 = load %struct.urb*, %struct.urb** %6, align 8
  %96 = getelementptr inbounds %struct.urb, %struct.urb* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @URB_SHORT_NOT_OK, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %93
  %102 = load i64, i64* @TD_CTRL_SPD, align 8
  %103 = xor i64 %102, -1
  %104 = load i64, i64* %10, align 8
  %105 = and i64 %104, %103
  store i64 %105, i64* %10, align 8
  br label %106

106:                                              ; preds = %101, %93
  br label %107

107:                                              ; preds = %106, %88
  %108 = load i32*, i32** %14, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %120

110:                                              ; preds = %107
  %111 = load %struct.uhci_hcd*, %struct.uhci_hcd** %5, align 8
  %112 = call %struct.uhci_td* @uhci_alloc_td(%struct.uhci_hcd* %111)
  store %struct.uhci_td* %112, %struct.uhci_td** %8, align 8
  %113 = load %struct.uhci_td*, %struct.uhci_td** %8, align 8
  %114 = icmp ne %struct.uhci_td* %113, null
  br i1 %114, label %116, label %115

115:                                              ; preds = %110
  br label %249

116:                                              ; preds = %110
  %117 = load %struct.uhci_td*, %struct.uhci_td** %8, align 8
  %118 = call i32 @LINK_TO_TD(%struct.uhci_td* %117)
  %119 = load i32*, i32** %14, align 8
  store i32 %118, i32* %119, align 4
  br label %120

120:                                              ; preds = %116, %107
  %121 = load %struct.uhci_td*, %struct.uhci_td** %8, align 8
  %122 = load %struct.urb_priv*, %struct.urb_priv** %15, align 8
  %123 = call i32 @uhci_add_td_to_urbp(%struct.uhci_td* %121, %struct.urb_priv* %122)
  %124 = load %struct.uhci_td*, %struct.uhci_td** %8, align 8
  %125 = load i64, i64* %10, align 8
  %126 = load i64, i64* %9, align 8
  %127 = load i32, i32* %17, align 4
  %128 = call i64 @uhci_explen(i32 %127)
  %129 = or i64 %126, %128
  %130 = load i32, i32* %16, align 4
  %131 = load i32, i32* @TD_TOKEN_TOGGLE_SHIFT, align 4
  %132 = shl i32 %130, %131
  %133 = zext i32 %132 to i64
  %134 = or i64 %129, %133
  %135 = load i32, i32* %13, align 4
  %136 = call i32 @uhci_fill_td(%struct.uhci_td* %124, i64 %125, i64 %134, i32 %135)
  %137 = load %struct.uhci_td*, %struct.uhci_td** %8, align 8
  %138 = getelementptr inbounds %struct.uhci_td, %struct.uhci_td* %137, i32 0, i32 1
  store i32* %138, i32** %14, align 8
  %139 = load i64, i64* @TD_CTRL_ACTIVE, align 8
  %140 = load i64, i64* %10, align 8
  %141 = or i64 %140, %139
  store i64 %141, i64* %10, align 8
  %142 = load i32, i32* %17, align 4
  %143 = load i32, i32* %13, align 4
  %144 = add nsw i32 %143, %142
  store i32 %144, i32* %13, align 4
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* %12, align 4
  %147 = sub nsw i32 %146, %145
  store i32 %147, i32* %12, align 4
  %148 = load i32, i32* %16, align 4
  %149 = xor i32 %148, 1
  store i32 %149, i32* %16, align 4
  br label %150

150:                                              ; preds = %120
  %151 = load i32, i32* %12, align 4
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %88, label %153

153:                                              ; preds = %150
  %154 = load %struct.urb*, %struct.urb** %6, align 8
  %155 = getelementptr inbounds %struct.urb, %struct.urb* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @URB_ZERO_PACKET, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %203

160:                                              ; preds = %153
  %161 = load %struct.urb*, %struct.urb** %6, align 8
  %162 = getelementptr inbounds %struct.urb, %struct.urb* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = call i64 @usb_pipeout(i64 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %203

166:                                              ; preds = %160
  %167 = load i32, i32* %12, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %203

169:                                              ; preds = %166
  %170 = load %struct.urb*, %struct.urb** %6, align 8
  %171 = getelementptr inbounds %struct.urb, %struct.urb* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = icmp sgt i32 %172, 0
  br i1 %173, label %174, label %203

174:                                              ; preds = %169
  %175 = load %struct.uhci_hcd*, %struct.uhci_hcd** %5, align 8
  %176 = call %struct.uhci_td* @uhci_alloc_td(%struct.uhci_hcd* %175)
  store %struct.uhci_td* %176, %struct.uhci_td** %8, align 8
  %177 = load %struct.uhci_td*, %struct.uhci_td** %8, align 8
  %178 = icmp ne %struct.uhci_td* %177, null
  br i1 %178, label %180, label %179

179:                                              ; preds = %174
  br label %249

180:                                              ; preds = %174
  %181 = load %struct.uhci_td*, %struct.uhci_td** %8, align 8
  %182 = call i32 @LINK_TO_TD(%struct.uhci_td* %181)
  %183 = load i32*, i32** %14, align 8
  store i32 %182, i32* %183, align 4
  %184 = load %struct.uhci_td*, %struct.uhci_td** %8, align 8
  %185 = load %struct.urb_priv*, %struct.urb_priv** %15, align 8
  %186 = call i32 @uhci_add_td_to_urbp(%struct.uhci_td* %184, %struct.urb_priv* %185)
  %187 = load %struct.uhci_td*, %struct.uhci_td** %8, align 8
  %188 = load i64, i64* %10, align 8
  %189 = load i64, i64* %9, align 8
  %190 = call i64 @uhci_explen(i32 0)
  %191 = or i64 %189, %190
  %192 = load i32, i32* %16, align 4
  %193 = load i32, i32* @TD_TOKEN_TOGGLE_SHIFT, align 4
  %194 = shl i32 %192, %193
  %195 = zext i32 %194 to i64
  %196 = or i64 %191, %195
  %197 = load i32, i32* %13, align 4
  %198 = call i32 @uhci_fill_td(%struct.uhci_td* %187, i64 %188, i64 %196, i32 %197)
  %199 = load %struct.uhci_td*, %struct.uhci_td** %8, align 8
  %200 = getelementptr inbounds %struct.uhci_td, %struct.uhci_td* %199, i32 0, i32 1
  store i32* %200, i32** %14, align 8
  %201 = load i32, i32* %16, align 4
  %202 = xor i32 %201, 1
  store i32 %202, i32* %16, align 4
  br label %203

203:                                              ; preds = %180, %169, %166, %160, %153
  %204 = load i64, i64* @TD_CTRL_IOC, align 8
  %205 = call i32 @cpu_to_le32(i64 %204)
  %206 = load %struct.uhci_td*, %struct.uhci_td** %8, align 8
  %207 = getelementptr inbounds %struct.uhci_td, %struct.uhci_td* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = or i32 %208, %205
  store i32 %209, i32* %207, align 4
  %210 = load %struct.uhci_hcd*, %struct.uhci_hcd** %5, align 8
  %211 = call %struct.uhci_td* @uhci_alloc_td(%struct.uhci_hcd* %210)
  store %struct.uhci_td* %211, %struct.uhci_td** %8, align 8
  %212 = load %struct.uhci_td*, %struct.uhci_td** %8, align 8
  %213 = icmp ne %struct.uhci_td* %212, null
  br i1 %213, label %215, label %214

214:                                              ; preds = %203
  br label %249

215:                                              ; preds = %203
  %216 = load %struct.uhci_td*, %struct.uhci_td** %8, align 8
  %217 = call i32 @LINK_TO_TD(%struct.uhci_td* %216)
  %218 = load i32*, i32** %14, align 8
  store i32 %217, i32* %218, align 4
  %219 = load %struct.uhci_td*, %struct.uhci_td** %8, align 8
  %220 = load i64, i64* @USB_PID_OUT, align 8
  %221 = call i64 @uhci_explen(i32 0)
  %222 = or i64 %220, %221
  %223 = call i32 @uhci_fill_td(%struct.uhci_td* %219, i64 0, i64 %222, i32 0)
  %224 = call i32 (...) @wmb()
  %225 = load i64, i64* @TD_CTRL_ACTIVE, align 8
  %226 = call i32 @cpu_to_le32(i64 %225)
  %227 = load %struct.uhci_qh*, %struct.uhci_qh** %7, align 8
  %228 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %227, i32 0, i32 0
  %229 = load %struct.uhci_td*, %struct.uhci_td** %228, align 8
  %230 = getelementptr inbounds %struct.uhci_td, %struct.uhci_td* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = or i32 %231, %226
  store i32 %232, i32* %230, align 4
  %233 = load %struct.uhci_td*, %struct.uhci_td** %8, align 8
  %234 = load %struct.uhci_qh*, %struct.uhci_qh** %7, align 8
  %235 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %234, i32 0, i32 0
  store %struct.uhci_td* %233, %struct.uhci_td** %235, align 8
  %236 = load %struct.urb*, %struct.urb** %6, align 8
  %237 = getelementptr inbounds %struct.urb, %struct.urb* %236, i32 0, i32 4
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %237, align 8
  %239 = load %struct.urb*, %struct.urb** %6, align 8
  %240 = getelementptr inbounds %struct.urb, %struct.urb* %239, i32 0, i32 2
  %241 = load i64, i64* %240, align 8
  %242 = call i32 @usb_pipeendpoint(i64 %241)
  %243 = load %struct.urb*, %struct.urb** %6, align 8
  %244 = getelementptr inbounds %struct.urb, %struct.urb* %243, i32 0, i32 2
  %245 = load i64, i64* %244, align 8
  %246 = call i64 @usb_pipeout(i64 %245)
  %247 = load i32, i32* %16, align 4
  %248 = call i32 @usb_settoggle(%struct.TYPE_7__* %238, i32 %242, i64 %246, i32 %247)
  store i32 0, i32* %4, align 4
  br label %256

249:                                              ; preds = %214, %179, %115
  %250 = load %struct.uhci_qh*, %struct.uhci_qh** %7, align 8
  %251 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %250, i32 0, i32 0
  %252 = load %struct.uhci_td*, %struct.uhci_td** %251, align 8
  %253 = call i32 @uhci_remove_td_from_urbp(%struct.uhci_td* %252)
  %254 = load i32, i32* @ENOMEM, align 4
  %255 = sub nsw i32 0, %254
  store i32 %255, i32* %4, align 4
  br label %256

256:                                              ; preds = %249, %215, %36
  %257 = load i32, i32* %4, align 4
  ret i32 %257
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @usb_packetid(i64) #1

declare dso_local i32 @usb_gettoggle(%struct.TYPE_7__*, i32, i64) #1

declare dso_local i32 @usb_pipeendpoint(i64) #1

declare dso_local i64 @usb_pipeout(i64) #1

declare dso_local i64 @uhci_maxerr(i32) #1

declare dso_local i64 @usb_pipein(i64) #1

declare dso_local %struct.uhci_td* @uhci_alloc_td(%struct.uhci_hcd*) #1

declare dso_local i32 @LINK_TO_TD(%struct.uhci_td*) #1

declare dso_local i32 @uhci_add_td_to_urbp(%struct.uhci_td*, %struct.urb_priv*) #1

declare dso_local i32 @uhci_fill_td(%struct.uhci_td*, i64, i64, i32) #1

declare dso_local i64 @uhci_explen(i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @usb_settoggle(%struct.TYPE_7__*, i32, i64, i32) #1

declare dso_local i32 @uhci_remove_td_from_urbp(%struct.uhci_td*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
