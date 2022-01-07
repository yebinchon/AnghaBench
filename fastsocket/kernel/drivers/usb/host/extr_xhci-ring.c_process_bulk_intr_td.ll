; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-ring.c_process_bulk_intr_td.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-ring.c_process_bulk_intr_td.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.xhci_td = type { %struct.TYPE_7__*, %union.xhci_trb* }
%struct.TYPE_7__ = type { i32, i64, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%union.xhci_trb = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }
%struct.xhci_transfer_event = type { i32, i32 }
%struct.xhci_virt_ep = type { i32 }
%struct.xhci_ring = type { %struct.xhci_segment*, %union.xhci_trb* }
%struct.xhci_segment = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"WARN Successful completion on short TX\0A\00", align 1
@URB_SHORT_NOT_OK = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@XHCI_TRUST_TX_LENGTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"ep %#x - asked for %d bytes, %d bytes untransferred\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"HC gave bad length of %d bytes left\0A\00", align 1
@EINPROGRESS = common dso_local global i32 0, align 4
@COMP_STOP_INVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xhci_hcd*, %struct.xhci_td*, %union.xhci_trb*, %struct.xhci_transfer_event*, %struct.xhci_virt_ep*, i32*)* @process_bulk_intr_td to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_bulk_intr_td(%struct.xhci_hcd* %0, %struct.xhci_td* %1, %union.xhci_trb* %2, %struct.xhci_transfer_event* %3, %struct.xhci_virt_ep* %4, i32* %5) #0 {
  %7 = alloca %struct.xhci_hcd*, align 8
  %8 = alloca %struct.xhci_td*, align 8
  %9 = alloca %union.xhci_trb*, align 8
  %10 = alloca %struct.xhci_transfer_event*, align 8
  %11 = alloca %struct.xhci_virt_ep*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.xhci_ring*, align 8
  %14 = alloca %union.xhci_trb*, align 8
  %15 = alloca %struct.xhci_segment*, align 8
  %16 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %7, align 8
  store %struct.xhci_td* %1, %struct.xhci_td** %8, align 8
  store %union.xhci_trb* %2, %union.xhci_trb** %9, align 8
  store %struct.xhci_transfer_event* %3, %struct.xhci_transfer_event** %10, align 8
  store %struct.xhci_virt_ep* %4, %struct.xhci_virt_ep** %11, align 8
  store i32* %5, i32** %12, align 8
  %17 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %11, align 8
  %18 = load %struct.xhci_transfer_event*, %struct.xhci_transfer_event** %10, align 8
  %19 = getelementptr inbounds %struct.xhci_transfer_event, %struct.xhci_transfer_event* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le64_to_cpu(i32 %20)
  %22 = call %struct.xhci_ring* @xhci_dma_to_transfer_ring(%struct.xhci_virt_ep* %17, i32 %21)
  store %struct.xhci_ring* %22, %struct.xhci_ring** %13, align 8
  %23 = load %struct.xhci_transfer_event*, %struct.xhci_transfer_event** %10, align 8
  %24 = getelementptr inbounds %struct.xhci_transfer_event, %struct.xhci_transfer_event* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le32_to_cpu(i32 %25)
  %27 = call i32 @GET_COMP_CODE(i32 %26)
  store i32 %27, i32* %16, align 4
  %28 = load i32, i32* %16, align 4
  switch i32 %28, label %87 [
    i32 128, label %29
    i32 129, label %71
  ]

29:                                               ; preds = %6
  %30 = load %union.xhci_trb*, %union.xhci_trb** %9, align 8
  %31 = load %struct.xhci_td*, %struct.xhci_td** %8, align 8
  %32 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %31, i32 0, i32 1
  %33 = load %union.xhci_trb*, %union.xhci_trb** %32, align 8
  %34 = icmp ne %union.xhci_trb* %30, %33
  br i1 %34, label %42, label %35

35:                                               ; preds = %29
  %36 = load %struct.xhci_transfer_event*, %struct.xhci_transfer_event** %10, align 8
  %37 = getelementptr inbounds %struct.xhci_transfer_event, %struct.xhci_transfer_event* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @le32_to_cpu(i32 %38)
  %40 = call i64 @EVENT_TRB_LEN(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %68

42:                                               ; preds = %35, %29
  %43 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %44 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_warn(%struct.xhci_hcd* %43, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.xhci_td*, %struct.xhci_td** %8, align 8
  %46 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @URB_SHORT_NOT_OK, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %42
  %54 = load i32, i32* @EREMOTEIO, align 4
  %55 = sub nsw i32 0, %54
  %56 = load i32*, i32** %12, align 8
  store i32 %55, i32* %56, align 4
  br label %59

57:                                               ; preds = %42
  %58 = load i32*, i32** %12, align 8
  store i32 0, i32* %58, align 4
  br label %59

59:                                               ; preds = %57, %53
  %60 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %61 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @XHCI_TRUST_TX_LENGTH, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  store i32 129, i32* %16, align 4
  br label %67

67:                                               ; preds = %66, %59
  br label %70

68:                                               ; preds = %35
  %69 = load i32*, i32** %12, align 8
  store i32 0, i32* %69, align 4
  br label %70

70:                                               ; preds = %68, %67
  br label %88

71:                                               ; preds = %6
  %72 = load %struct.xhci_td*, %struct.xhci_td** %8, align 8
  %73 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %72, i32 0, i32 0
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @URB_SHORT_NOT_OK, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %71
  %81 = load i32, i32* @EREMOTEIO, align 4
  %82 = sub nsw i32 0, %81
  %83 = load i32*, i32** %12, align 8
  store i32 %82, i32* %83, align 4
  br label %86

84:                                               ; preds = %71
  %85 = load i32*, i32** %12, align 8
  store i32 0, i32* %85, align 4
  br label %86

86:                                               ; preds = %84, %80
  br label %88

87:                                               ; preds = %6
  br label %88

88:                                               ; preds = %87, %86, %70
  %89 = load i32, i32* %16, align 4
  %90 = icmp eq i32 %89, 129
  br i1 %90, label %91, label %112

91:                                               ; preds = %88
  %92 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %93 = load %struct.xhci_td*, %struct.xhci_td** %8, align 8
  %94 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %93, i32 0, i32 0
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 3
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.xhci_td*, %struct.xhci_td** %8, align 8
  %102 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %101, i32 0, i32 0
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.xhci_transfer_event*, %struct.xhci_transfer_event** %10, align 8
  %107 = getelementptr inbounds %struct.xhci_transfer_event, %struct.xhci_transfer_event* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @le32_to_cpu(i32 %108)
  %110 = call i64 @EVENT_TRB_LEN(i32 %109)
  %111 = call i32 @xhci_dbg(%struct.xhci_hcd* %92, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %100, i64 %105, i64 %110)
  br label %112

112:                                              ; preds = %91, %88
  %113 = load %union.xhci_trb*, %union.xhci_trb** %9, align 8
  %114 = load %struct.xhci_td*, %struct.xhci_td** %8, align 8
  %115 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %114, i32 0, i32 1
  %116 = load %union.xhci_trb*, %union.xhci_trb** %115, align 8
  %117 = icmp eq %union.xhci_trb* %113, %116
  br i1 %117, label %118, label %221

118:                                              ; preds = %112
  %119 = load %struct.xhci_transfer_event*, %struct.xhci_transfer_event** %10, align 8
  %120 = getelementptr inbounds %struct.xhci_transfer_event, %struct.xhci_transfer_event* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @le32_to_cpu(i32 %121)
  %123 = call i64 @EVENT_TRB_LEN(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %202

125:                                              ; preds = %118
  %126 = load %struct.xhci_td*, %struct.xhci_td** %8, align 8
  %127 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %126, i32 0, i32 0
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.xhci_transfer_event*, %struct.xhci_transfer_event** %10, align 8
  %132 = getelementptr inbounds %struct.xhci_transfer_event, %struct.xhci_transfer_event* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @le32_to_cpu(i32 %133)
  %135 = call i64 @EVENT_TRB_LEN(i32 %134)
  %136 = sub nsw i64 %130, %135
  %137 = load %struct.xhci_td*, %struct.xhci_td** %8, align 8
  %138 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %137, i32 0, i32 0
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 2
  store i64 %136, i64* %140, align 8
  %141 = load %struct.xhci_td*, %struct.xhci_td** %8, align 8
  %142 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %141, i32 0, i32 0
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.xhci_td*, %struct.xhci_td** %8, align 8
  %147 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %146, i32 0, i32 0
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = icmp slt i64 %145, %150
  br i1 %151, label %152, label %179

152:                                              ; preds = %125
  %153 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %154 = load %struct.xhci_transfer_event*, %struct.xhci_transfer_event** %10, align 8
  %155 = getelementptr inbounds %struct.xhci_transfer_event, %struct.xhci_transfer_event* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @le32_to_cpu(i32 %156)
  %158 = call i64 @EVENT_TRB_LEN(i32 %157)
  %159 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_warn(%struct.xhci_hcd* %153, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %158)
  %160 = load %struct.xhci_td*, %struct.xhci_td** %8, align 8
  %161 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %160, i32 0, i32 0
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 2
  store i64 0, i64* %163, align 8
  %164 = load %struct.xhci_td*, %struct.xhci_td** %8, align 8
  %165 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %164, i32 0, i32 0
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @URB_SHORT_NOT_OK, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %152
  %173 = load i32, i32* @EREMOTEIO, align 4
  %174 = sub nsw i32 0, %173
  %175 = load i32*, i32** %12, align 8
  store i32 %174, i32* %175, align 4
  br label %178

176:                                              ; preds = %152
  %177 = load i32*, i32** %12, align 8
  store i32 0, i32* %177, align 4
  br label %178

178:                                              ; preds = %176, %172
  br label %179

179:                                              ; preds = %178, %125
  %180 = load i32*, i32** %12, align 8
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @EINPROGRESS, align 4
  %183 = sub nsw i32 0, %182
  %184 = icmp eq i32 %181, %183
  br i1 %184, label %185, label %201

185:                                              ; preds = %179
  %186 = load %struct.xhci_td*, %struct.xhci_td** %8, align 8
  %187 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %186, i32 0, i32 0
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @URB_SHORT_NOT_OK, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %185
  %195 = load i32, i32* @EREMOTEIO, align 4
  %196 = sub nsw i32 0, %195
  %197 = load i32*, i32** %12, align 8
  store i32 %196, i32* %197, align 4
  br label %200

198:                                              ; preds = %185
  %199 = load i32*, i32** %12, align 8
  store i32 0, i32* %199, align 4
  br label %200

200:                                              ; preds = %198, %194
  br label %201

201:                                              ; preds = %200, %179
  br label %220

202:                                              ; preds = %118
  %203 = load %struct.xhci_td*, %struct.xhci_td** %8, align 8
  %204 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %203, i32 0, i32 0
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.xhci_td*, %struct.xhci_td** %8, align 8
  %209 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %208, i32 0, i32 0
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 2
  store i64 %207, i64* %211, align 8
  %212 = load i32*, i32** %12, align 8
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @EREMOTEIO, align 4
  %215 = sub nsw i32 0, %214
  %216 = icmp eq i32 %213, %215
  br i1 %216, label %217, label %219

217:                                              ; preds = %202
  %218 = load i32*, i32** %12, align 8
  store i32 0, i32* %218, align 4
  br label %219

219:                                              ; preds = %217, %202
  br label %220

220:                                              ; preds = %219, %201
  br label %300

221:                                              ; preds = %112
  %222 = load %struct.xhci_td*, %struct.xhci_td** %8, align 8
  %223 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %222, i32 0, i32 0
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 2
  store i64 0, i64* %225, align 8
  %226 = load %struct.xhci_ring*, %struct.xhci_ring** %13, align 8
  %227 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %226, i32 0, i32 1
  %228 = load %union.xhci_trb*, %union.xhci_trb** %227, align 8
  store %union.xhci_trb* %228, %union.xhci_trb** %14, align 8
  %229 = load %struct.xhci_ring*, %struct.xhci_ring** %13, align 8
  %230 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %229, i32 0, i32 0
  %231 = load %struct.xhci_segment*, %struct.xhci_segment** %230, align 8
  store %struct.xhci_segment* %231, %struct.xhci_segment** %15, align 8
  br label %232

232:                                              ; preds = %270, %221
  %233 = load %union.xhci_trb*, %union.xhci_trb** %14, align 8
  %234 = load %union.xhci_trb*, %union.xhci_trb** %9, align 8
  %235 = icmp ne %union.xhci_trb* %233, %234
  br i1 %235, label %236, label %274

236:                                              ; preds = %232
  %237 = load %union.xhci_trb*, %union.xhci_trb** %14, align 8
  %238 = bitcast %union.xhci_trb* %237 to %struct.TYPE_8__*
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 0
  %240 = load i32*, i32** %239, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 3
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @TRB_TYPE_NOOP_LE32(i32 %242)
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %269, label %245

245:                                              ; preds = %236
  %246 = load %union.xhci_trb*, %union.xhci_trb** %14, align 8
  %247 = bitcast %union.xhci_trb* %246 to %struct.TYPE_8__*
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 0
  %249 = load i32*, i32** %248, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 3
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @TRB_TYPE_LINK_LE32(i32 %251)
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %269, label %254

254:                                              ; preds = %245
  %255 = load %union.xhci_trb*, %union.xhci_trb** %14, align 8
  %256 = bitcast %union.xhci_trb* %255 to %struct.TYPE_8__*
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 0
  %258 = load i32*, i32** %257, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 2
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @le32_to_cpu(i32 %260)
  %262 = call i64 @TRB_LEN(i32 %261)
  %263 = load %struct.xhci_td*, %struct.xhci_td** %8, align 8
  %264 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %263, i32 0, i32 0
  %265 = load %struct.TYPE_7__*, %struct.TYPE_7__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 2
  %267 = load i64, i64* %266, align 8
  %268 = add nsw i64 %267, %262
  store i64 %268, i64* %266, align 8
  br label %269

269:                                              ; preds = %254, %245, %236
  br label %270

270:                                              ; preds = %269
  %271 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %272 = load %struct.xhci_ring*, %struct.xhci_ring** %13, align 8
  %273 = call i32 @next_trb(%struct.xhci_hcd* %271, %struct.xhci_ring* %272, %struct.xhci_segment** %15, %union.xhci_trb** %14)
  br label %232

274:                                              ; preds = %232
  %275 = load i32, i32* %16, align 4
  %276 = load i32, i32* @COMP_STOP_INVAL, align 4
  %277 = icmp ne i32 %275, %276
  br i1 %277, label %278, label %299

278:                                              ; preds = %274
  %279 = load %union.xhci_trb*, %union.xhci_trb** %14, align 8
  %280 = bitcast %union.xhci_trb* %279 to %struct.TYPE_8__*
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %280, i32 0, i32 0
  %282 = load i32*, i32** %281, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 2
  %284 = load i32, i32* %283, align 4
  %285 = call i32 @le32_to_cpu(i32 %284)
  %286 = call i64 @TRB_LEN(i32 %285)
  %287 = load %struct.xhci_transfer_event*, %struct.xhci_transfer_event** %10, align 8
  %288 = getelementptr inbounds %struct.xhci_transfer_event, %struct.xhci_transfer_event* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = call i32 @le32_to_cpu(i32 %289)
  %291 = call i64 @EVENT_TRB_LEN(i32 %290)
  %292 = sub nsw i64 %286, %291
  %293 = load %struct.xhci_td*, %struct.xhci_td** %8, align 8
  %294 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %293, i32 0, i32 0
  %295 = load %struct.TYPE_7__*, %struct.TYPE_7__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %295, i32 0, i32 2
  %297 = load i64, i64* %296, align 8
  %298 = add nsw i64 %297, %292
  store i64 %298, i64* %296, align 8
  br label %299

299:                                              ; preds = %278, %274
  br label %300

300:                                              ; preds = %299, %220
  %301 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %302 = load %struct.xhci_td*, %struct.xhci_td** %8, align 8
  %303 = load %union.xhci_trb*, %union.xhci_trb** %9, align 8
  %304 = load %struct.xhci_transfer_event*, %struct.xhci_transfer_event** %10, align 8
  %305 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %11, align 8
  %306 = load i32*, i32** %12, align 8
  %307 = call i32 @finish_td(%struct.xhci_hcd* %301, %struct.xhci_td* %302, %union.xhci_trb* %303, %struct.xhci_transfer_event* %304, %struct.xhci_virt_ep* %305, i32* %306, i32 0)
  ret i32 %307
}

declare dso_local %struct.xhci_ring* @xhci_dma_to_transfer_ring(%struct.xhci_virt_ep*, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @GET_COMP_CODE(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @EVENT_TRB_LEN(i32) #1

declare dso_local i32 @xhci_warn(%struct.xhci_hcd*, i8*, ...) #1

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*, i32, i64, i64) #1

declare dso_local i32 @TRB_TYPE_NOOP_LE32(i32) #1

declare dso_local i32 @TRB_TYPE_LINK_LE32(i32) #1

declare dso_local i64 @TRB_LEN(i32) #1

declare dso_local i32 @next_trb(%struct.xhci_hcd*, %struct.xhci_ring*, %struct.xhci_segment**, %union.xhci_trb**) #1

declare dso_local i32 @finish_td(%struct.xhci_hcd*, %struct.xhci_td*, %union.xhci_trb*, %struct.xhci_transfer_event*, %struct.xhci_virt_ep*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
