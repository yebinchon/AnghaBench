; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci.c_xhci_urb_dequeue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci.c_xhci_urb_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.urb = type { %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.urb_priv* }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.urb_priv = type { i32, i32, %struct.xhci_td** }
%struct.xhci_td = type { i32, i32, i32, i32 }
%struct.xhci_hcd = type { i32, i32, %struct.TYPE_8__**, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { %struct.xhci_virt_ep* }
%struct.xhci_virt_ep = type { i32, %struct.TYPE_12__, i32, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.xhci_ring = type { i32 }

@XHCI_STATE_HALTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"HW died, freeing TD.\0A\00", align 1
@ESHUTDOWN = common dso_local global i32 0, align 4
@XHCI_STATE_DYING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"Ep 0x%x: URB %p to be canceled on non-responsive xHCI host.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"Cancel URB %p, dev %s, ep 0x%x, starting at offset 0x%llx\0A\00", align 1
@EP_HALT_PENDING = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@XHCI_STOP_EP_CMD_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xhci_urb_dequeue(%struct.usb_hcd* %0, %struct.urb* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_hcd*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.xhci_hcd*, align 8
  %13 = alloca %struct.urb_priv*, align 8
  %14 = alloca %struct.xhci_td*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.xhci_ring*, align 8
  %17 = alloca %struct.xhci_virt_ep*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %5, align 8
  store %struct.urb* %1, %struct.urb** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %19 = call %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd* %18)
  store %struct.xhci_hcd* %19, %struct.xhci_hcd** %12, align 8
  %20 = load %struct.xhci_hcd*, %struct.xhci_hcd** %12, align 8
  %21 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %20, i32 0, i32 1
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %25 = load %struct.urb*, %struct.urb** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @usb_hcd_check_unlink_urb(%struct.usb_hcd* %24, %struct.urb* %25, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %3
  %31 = load %struct.urb*, %struct.urb** %6, align 8
  %32 = getelementptr inbounds %struct.urb, %struct.urb* %31, i32 0, i32 2
  %33 = load %struct.urb_priv*, %struct.urb_priv** %32, align 8
  %34 = icmp ne %struct.urb_priv* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %30, %3
  br label %275

36:                                               ; preds = %30
  %37 = load %struct.xhci_hcd*, %struct.xhci_hcd** %12, align 8
  %38 = load %struct.xhci_hcd*, %struct.xhci_hcd** %12, align 8
  %39 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %38, i32 0, i32 3
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = call i32 @xhci_readl(%struct.xhci_hcd* %37, i32* %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %52, label %45

45:                                               ; preds = %36
  %46 = load %struct.xhci_hcd*, %struct.xhci_hcd** %12, align 8
  %47 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @XHCI_STATE_HALTED, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %113

52:                                               ; preds = %45, %36
  %53 = load %struct.xhci_hcd*, %struct.xhci_hcd** %12, align 8
  %54 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_dbg(%struct.xhci_hcd* %53, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %55 = load %struct.urb*, %struct.urb** %6, align 8
  %56 = getelementptr inbounds %struct.urb, %struct.urb* %55, i32 0, i32 2
  %57 = load %struct.urb_priv*, %struct.urb_priv** %56, align 8
  store %struct.urb_priv* %57, %struct.urb_priv** %13, align 8
  %58 = load %struct.urb_priv*, %struct.urb_priv** %13, align 8
  %59 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %10, align 4
  br label %61

61:                                               ; preds = %93, %52
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.urb_priv*, %struct.urb_priv** %13, align 8
  %64 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %96

67:                                               ; preds = %61
  %68 = load %struct.urb_priv*, %struct.urb_priv** %13, align 8
  %69 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %68, i32 0, i32 2
  %70 = load %struct.xhci_td**, %struct.xhci_td*** %69, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.xhci_td*, %struct.xhci_td** %70, i64 %72
  %74 = load %struct.xhci_td*, %struct.xhci_td** %73, align 8
  store %struct.xhci_td* %74, %struct.xhci_td** %14, align 8
  %75 = load %struct.xhci_td*, %struct.xhci_td** %14, align 8
  %76 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %75, i32 0, i32 3
  %77 = call i32 @list_empty(i32* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %67
  %80 = load %struct.xhci_td*, %struct.xhci_td** %14, align 8
  %81 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %80, i32 0, i32 3
  %82 = call i32 @list_del_init(i32* %81)
  br label %83

83:                                               ; preds = %79, %67
  %84 = load %struct.xhci_td*, %struct.xhci_td** %14, align 8
  %85 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %84, i32 0, i32 0
  %86 = call i32 @list_empty(i32* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %83
  %89 = load %struct.xhci_td*, %struct.xhci_td** %14, align 8
  %90 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %89, i32 0, i32 0
  %91 = call i32 @list_del_init(i32* %90)
  br label %92

92:                                               ; preds = %88, %83
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %10, align 4
  br label %61

96:                                               ; preds = %61
  %97 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %98 = load %struct.urb*, %struct.urb** %6, align 8
  %99 = call i32 @usb_hcd_unlink_urb_from_ep(%struct.usb_hcd* %97, %struct.urb* %98)
  %100 = load %struct.xhci_hcd*, %struct.xhci_hcd** %12, align 8
  %101 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %100, i32 0, i32 1
  %102 = load i64, i64* %8, align 8
  %103 = call i32 @spin_unlock_irqrestore(i32* %101, i64 %102)
  %104 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %105 = load %struct.urb*, %struct.urb** %6, align 8
  %106 = load i32, i32* @ESHUTDOWN, align 4
  %107 = sub nsw i32 0, %106
  %108 = call i32 @usb_hcd_giveback_urb(%struct.usb_hcd* %104, %struct.urb* %105, i32 %107)
  %109 = load %struct.xhci_hcd*, %struct.xhci_hcd** %12, align 8
  %110 = load %struct.urb_priv*, %struct.urb_priv** %13, align 8
  %111 = call i32 @xhci_urb_free_priv(%struct.xhci_hcd* %109, %struct.urb_priv* %110)
  %112 = load i32, i32* %9, align 4
  store i32 %112, i32* %4, align 4
  br label %281

113:                                              ; preds = %45
  %114 = load %struct.xhci_hcd*, %struct.xhci_hcd** %12, align 8
  %115 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @XHCI_STATE_DYING, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %127, label %120

120:                                              ; preds = %113
  %121 = load %struct.xhci_hcd*, %struct.xhci_hcd** %12, align 8
  %122 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @XHCI_STATE_HALTED, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %120, %113
  %128 = load %struct.xhci_hcd*, %struct.xhci_hcd** %12, align 8
  %129 = load %struct.urb*, %struct.urb** %6, align 8
  %130 = getelementptr inbounds %struct.urb, %struct.urb* %129, i32 0, i32 1
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.urb*, %struct.urb** %6, align 8
  %136 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_dbg(%struct.xhci_hcd* %128, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %134, %struct.urb* %135)
  br label %275

137:                                              ; preds = %120
  %138 = load %struct.urb*, %struct.urb** %6, align 8
  %139 = getelementptr inbounds %struct.urb, %struct.urb* %138, i32 0, i32 1
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = call i32 @xhci_get_endpoint_index(%struct.TYPE_11__* %141)
  store i32 %142, i32* %15, align 4
  %143 = load %struct.xhci_hcd*, %struct.xhci_hcd** %12, align 8
  %144 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %143, i32 0, i32 2
  %145 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %144, align 8
  %146 = load %struct.urb*, %struct.urb** %6, align 8
  %147 = getelementptr inbounds %struct.urb, %struct.urb* %146, i32 0, i32 0
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %145, i64 %150
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %153, align 8
  %155 = load i32, i32* %15, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %154, i64 %156
  store %struct.xhci_virt_ep* %157, %struct.xhci_virt_ep** %17, align 8
  %158 = load %struct.xhci_hcd*, %struct.xhci_hcd** %12, align 8
  %159 = load %struct.urb*, %struct.urb** %6, align 8
  %160 = call %struct.xhci_ring* @xhci_urb_to_transfer_ring(%struct.xhci_hcd* %158, %struct.urb* %159)
  store %struct.xhci_ring* %160, %struct.xhci_ring** %16, align 8
  %161 = load %struct.xhci_ring*, %struct.xhci_ring** %16, align 8
  %162 = icmp ne %struct.xhci_ring* %161, null
  br i1 %162, label %166, label %163

163:                                              ; preds = %137
  %164 = load i32, i32* @EINVAL, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %9, align 4
  br label %275

166:                                              ; preds = %137
  %167 = load %struct.urb*, %struct.urb** %6, align 8
  %168 = getelementptr inbounds %struct.urb, %struct.urb* %167, i32 0, i32 2
  %169 = load %struct.urb_priv*, %struct.urb_priv** %168, align 8
  store %struct.urb_priv* %169, %struct.urb_priv** %13, align 8
  %170 = load %struct.urb_priv*, %struct.urb_priv** %13, align 8
  %171 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  store i32 %172, i32* %10, align 4
  %173 = load i32, i32* %10, align 4
  %174 = load %struct.urb_priv*, %struct.urb_priv** %13, align 8
  %175 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = icmp slt i32 %173, %176
  br i1 %177, label %178, label %212

178:                                              ; preds = %166
  %179 = load %struct.xhci_hcd*, %struct.xhci_hcd** %12, align 8
  %180 = load %struct.urb*, %struct.urb** %6, align 8
  %181 = load %struct.urb*, %struct.urb** %6, align 8
  %182 = getelementptr inbounds %struct.urb, %struct.urb* %181, i32 0, i32 0
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.urb*, %struct.urb** %6, align 8
  %187 = getelementptr inbounds %struct.urb, %struct.urb* %186, i32 0, i32 1
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.urb_priv*, %struct.urb_priv** %13, align 8
  %193 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %192, i32 0, i32 2
  %194 = load %struct.xhci_td**, %struct.xhci_td*** %193, align 8
  %195 = load i32, i32* %10, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.xhci_td*, %struct.xhci_td** %194, i64 %196
  %198 = load %struct.xhci_td*, %struct.xhci_td** %197, align 8
  %199 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.urb_priv*, %struct.urb_priv** %13, align 8
  %202 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %201, i32 0, i32 2
  %203 = load %struct.xhci_td**, %struct.xhci_td*** %202, align 8
  %204 = load i32, i32* %10, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.xhci_td*, %struct.xhci_td** %203, i64 %205
  %207 = load %struct.xhci_td*, %struct.xhci_td** %206, align 8
  %208 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = call i64 @xhci_trb_virt_to_dma(i32 %200, i32 %209)
  %211 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_dbg(%struct.xhci_hcd* %179, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), %struct.urb* %180, i32 %185, i32 %191, i64 %210)
  br label %212

212:                                              ; preds = %178, %166
  br label %213

213:                                              ; preds = %232, %212
  %214 = load i32, i32* %10, align 4
  %215 = load %struct.urb_priv*, %struct.urb_priv** %13, align 8
  %216 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = icmp slt i32 %214, %217
  br i1 %218, label %219, label %235

219:                                              ; preds = %213
  %220 = load %struct.urb_priv*, %struct.urb_priv** %13, align 8
  %221 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %220, i32 0, i32 2
  %222 = load %struct.xhci_td**, %struct.xhci_td*** %221, align 8
  %223 = load i32, i32* %10, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.xhci_td*, %struct.xhci_td** %222, i64 %224
  %226 = load %struct.xhci_td*, %struct.xhci_td** %225, align 8
  store %struct.xhci_td* %226, %struct.xhci_td** %14, align 8
  %227 = load %struct.xhci_td*, %struct.xhci_td** %14, align 8
  %228 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %227, i32 0, i32 0
  %229 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %17, align 8
  %230 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %229, i32 0, i32 3
  %231 = call i32 @list_add_tail(i32* %228, i32* %230)
  br label %232

232:                                              ; preds = %219
  %233 = load i32, i32* %10, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %10, align 4
  br label %213

235:                                              ; preds = %213
  %236 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %17, align 8
  %237 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* @EP_HALT_PENDING, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %274, label %242

242:                                              ; preds = %235
  %243 = load i32, i32* @EP_HALT_PENDING, align 4
  %244 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %17, align 8
  %245 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = or i32 %246, %243
  store i32 %247, i32* %245, align 8
  %248 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %17, align 8
  %249 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 8
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %249, align 8
  %252 = load i64, i64* @jiffies, align 8
  %253 = load i32, i32* @XHCI_STOP_EP_CMD_TIMEOUT, align 4
  %254 = load i32, i32* @HZ, align 4
  %255 = mul nsw i32 %253, %254
  %256 = sext i32 %255 to i64
  %257 = add nsw i64 %252, %256
  %258 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %17, align 8
  %259 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %259, i32 0, i32 0
  store i64 %257, i64* %260, align 8
  %261 = load %struct.xhci_virt_ep*, %struct.xhci_virt_ep** %17, align 8
  %262 = getelementptr inbounds %struct.xhci_virt_ep, %struct.xhci_virt_ep* %261, i32 0, i32 1
  %263 = call i32 @add_timer(%struct.TYPE_12__* %262)
  %264 = load %struct.xhci_hcd*, %struct.xhci_hcd** %12, align 8
  %265 = load %struct.urb*, %struct.urb** %6, align 8
  %266 = getelementptr inbounds %struct.urb, %struct.urb* %265, i32 0, i32 0
  %267 = load %struct.TYPE_10__*, %struct.TYPE_10__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = load i32, i32* %15, align 4
  %271 = call i32 @xhci_queue_stop_endpoint(%struct.xhci_hcd* %264, i64 %269, i32 %270, i32 0)
  %272 = load %struct.xhci_hcd*, %struct.xhci_hcd** %12, align 8
  %273 = call i32 @xhci_ring_cmd_db(%struct.xhci_hcd* %272)
  br label %274

274:                                              ; preds = %242, %235
  br label %275

275:                                              ; preds = %274, %163, %127, %35
  %276 = load %struct.xhci_hcd*, %struct.xhci_hcd** %12, align 8
  %277 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %276, i32 0, i32 1
  %278 = load i64, i64* %8, align 8
  %279 = call i32 @spin_unlock_irqrestore(i32* %277, i64 %278)
  %280 = load i32, i32* %9, align 4
  store i32 %280, i32* %4, align 4
  br label %281

281:                                              ; preds = %275, %96
  %282 = load i32, i32* %4, align 4
  ret i32 %282
}

declare dso_local %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @usb_hcd_check_unlink_urb(%struct.usb_hcd*, %struct.urb*, i32) #1

declare dso_local i32 @xhci_readl(%struct.xhci_hcd*, i32*) #1

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*, ...) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @usb_hcd_unlink_urb_from_ep(%struct.usb_hcd*, %struct.urb*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @usb_hcd_giveback_urb(%struct.usb_hcd*, %struct.urb*, i32) #1

declare dso_local i32 @xhci_urb_free_priv(%struct.xhci_hcd*, %struct.urb_priv*) #1

declare dso_local i32 @xhci_get_endpoint_index(%struct.TYPE_11__*) #1

declare dso_local %struct.xhci_ring* @xhci_urb_to_transfer_ring(%struct.xhci_hcd*, %struct.urb*) #1

declare dso_local i64 @xhci_trb_virt_to_dma(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @add_timer(%struct.TYPE_12__*) #1

declare dso_local i32 @xhci_queue_stop_endpoint(%struct.xhci_hcd*, i64, i32, i32) #1

declare dso_local i32 @xhci_ring_cmd_db(%struct.xhci_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
