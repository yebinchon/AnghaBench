; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_u132-hcd.c_u132_hcd_interrupt_recv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_u132-hcd.c_u132_hcd_interrupt_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i64*, i32, i64, i32, i32, i32 }
%struct.u132_endp = type { i64, i32, i32, i64, i64, %struct.u132_ring*, i64, %struct.u132* }
%struct.u132_ring = type { i64 }
%struct.u132 = type { i32, i32, %struct.TYPE_4__*, %struct.u132_udev*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.u132_udev = type { i32 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [28 x i8] c"device has been removed %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"device is being removed urb=%p\0A\00", align 1
@TD_CC_NOERROR = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@TD_DATAUNDERRUN = common dso_local global i32 0, align 4
@URB_SHORT_NOT_OK = common dso_local global i32 0, align 4
@TD_CC_STALL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"urb=%p giving back INTERRUPT %s\0A\00", align 1
@cc_to_text = common dso_local global i32* null, align 8
@cc_to_error = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"CALLBACK called urb=%p unlinked=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.urb*, i64*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @u132_hcd_interrupt_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @u132_hcd_interrupt_recv(i8* %0, %struct.urb* %1, i64* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11) #0 {
  %13 = alloca i8*, align 8
  %14 = alloca %struct.urb*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.u132_endp*, align 8
  %26 = alloca %struct.u132*, align 8
  %27 = alloca i64, align 8
  %28 = alloca %struct.u132_udev*, align 8
  %29 = alloca %struct.u132_ring*, align 8
  %30 = alloca i64*, align 8
  %31 = alloca i64*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store i8* %0, i8** %13, align 8
  store %struct.urb* %1, %struct.urb** %14, align 8
  store i64* %2, i64** %15, align 8
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  store i32 %11, i32* %24, align 4
  %34 = load i8*, i8** %13, align 8
  %35 = bitcast i8* %34 to %struct.u132_endp*
  store %struct.u132_endp* %35, %struct.u132_endp** %25, align 8
  %36 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %37 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %36, i32 0, i32 7
  %38 = load %struct.u132*, %struct.u132** %37, align 8
  store %struct.u132* %38, %struct.u132** %26, align 8
  %39 = load %struct.u132*, %struct.u132** %26, align 8
  %40 = getelementptr inbounds %struct.u132, %struct.u132* %39, i32 0, i32 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %43 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %27, align 8
  %48 = load %struct.u132*, %struct.u132** %26, align 8
  %49 = getelementptr inbounds %struct.u132, %struct.u132* %48, i32 0, i32 3
  %50 = load %struct.u132_udev*, %struct.u132_udev** %49, align 8
  %51 = load i64, i64* %27, align 8
  %52 = getelementptr inbounds %struct.u132_udev, %struct.u132_udev* %50, i64 %51
  store %struct.u132_udev* %52, %struct.u132_udev** %28, align 8
  %53 = load %struct.u132*, %struct.u132** %26, align 8
  %54 = getelementptr inbounds %struct.u132, %struct.u132* %53, i32 0, i32 1
  %55 = call i32 @mutex_lock(i32* %54)
  %56 = load %struct.u132*, %struct.u132** %26, align 8
  %57 = getelementptr inbounds %struct.u132, %struct.u132* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp sgt i32 %58, 1
  br i1 %59, label %60, label %78

60:                                               ; preds = %12
  %61 = load %struct.u132*, %struct.u132** %26, align 8
  %62 = getelementptr inbounds %struct.u132, %struct.u132* %61, i32 0, i32 2
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load %struct.u132*, %struct.u132** %26, align 8
  %66 = getelementptr inbounds %struct.u132, %struct.u132* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 (i32*, i8*, ...) @dev_err(i32* %64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %67)
  %69 = load %struct.u132*, %struct.u132** %26, align 8
  %70 = getelementptr inbounds %struct.u132, %struct.u132* %69, i32 0, i32 1
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load %struct.u132*, %struct.u132** %26, align 8
  %73 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %74 = load %struct.urb*, %struct.urb** %14, align 8
  %75 = load i32, i32* @ENODEV, align 4
  %76 = sub nsw i32 0, %75
  %77 = call i32 @u132_hcd_forget_urb(%struct.u132* %72, %struct.u132_endp* %73, %struct.urb* %74, i32 %76)
  br label %342

78:                                               ; preds = %12
  %79 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %80 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %79, i32 0, i32 6
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %78
  %84 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %85 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %84, i32 0, i32 6
  store i64 0, i64* %85, align 8
  %86 = load %struct.u132*, %struct.u132** %26, align 8
  %87 = getelementptr inbounds %struct.u132, %struct.u132* %86, i32 0, i32 1
  %88 = call i32 @mutex_unlock(i32* %87)
  %89 = load %struct.u132*, %struct.u132** %26, align 8
  %90 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %91 = load %struct.urb*, %struct.urb** %14, align 8
  %92 = load i32, i32* @EINTR, align 4
  %93 = sub nsw i32 0, %92
  %94 = call i32 @u132_hcd_giveback_urb(%struct.u132* %89, %struct.u132_endp* %90, %struct.urb* %91, i32 %93)
  br label %342

95:                                               ; preds = %78
  %96 = load %struct.u132*, %struct.u132** %26, align 8
  %97 = getelementptr inbounds %struct.u132, %struct.u132* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %116

100:                                              ; preds = %95
  %101 = load %struct.u132*, %struct.u132** %26, align 8
  %102 = getelementptr inbounds %struct.u132, %struct.u132* %101, i32 0, i32 2
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load %struct.urb*, %struct.urb** %14, align 8
  %106 = call i32 (i32*, i8*, ...) @dev_err(i32* %104, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), %struct.urb* %105)
  %107 = load %struct.u132*, %struct.u132** %26, align 8
  %108 = getelementptr inbounds %struct.u132, %struct.u132* %107, i32 0, i32 1
  %109 = call i32 @mutex_unlock(i32* %108)
  %110 = load %struct.u132*, %struct.u132** %26, align 8
  %111 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %112 = load %struct.urb*, %struct.urb** %14, align 8
  %113 = load i32, i32* @ENODEV, align 4
  %114 = sub nsw i32 0, %113
  %115 = call i32 @u132_hcd_giveback_urb(%struct.u132* %110, %struct.u132_endp* %111, %struct.urb* %112, i32 %114)
  br label %342

116:                                              ; preds = %95
  %117 = load %struct.urb*, %struct.urb** %14, align 8
  %118 = getelementptr inbounds %struct.urb, %struct.urb* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %325, label %121

121:                                              ; preds = %116
  %122 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %123 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %122, i32 0, i32 5
  %124 = load %struct.u132_ring*, %struct.u132_ring** %123, align 8
  store %struct.u132_ring* %124, %struct.u132_ring** %29, align 8
  %125 = load %struct.urb*, %struct.urb** %14, align 8
  %126 = getelementptr inbounds %struct.urb, %struct.urb* %125, i32 0, i32 0
  %127 = load i64*, i64** %126, align 8
  %128 = load %struct.urb*, %struct.urb** %14, align 8
  %129 = getelementptr inbounds %struct.urb, %struct.urb* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i64, i64* %127, i64 %131
  store i64* %132, i64** %30, align 8
  %133 = load i64*, i64** %15, align 8
  store i64* %133, i64** %31, align 8
  %134 = load i32, i32* %16, align 4
  store i32 %134, i32* %32, align 4
  br label %135

135:                                              ; preds = %139, %121
  %136 = load i32, i32* %32, align 4
  %137 = add nsw i32 %136, -1
  store i32 %137, i32* %32, align 4
  %138 = icmp sgt i32 %136, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %135
  %140 = load i64*, i64** %31, align 8
  %141 = getelementptr inbounds i64, i64* %140, i32 1
  store i64* %141, i64** %31, align 8
  %142 = load i64, i64* %140, align 8
  %143 = load i64*, i64** %30, align 8
  %144 = getelementptr inbounds i64, i64* %143, i32 1
  store i64* %144, i64** %30, align 8
  store i64 %142, i64* %143, align 8
  br label %135

145:                                              ; preds = %135
  %146 = load i32, i32* %16, align 4
  %147 = load %struct.urb*, %struct.urb** %14, align 8
  %148 = getelementptr inbounds %struct.urb, %struct.urb* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = add nsw i32 %149, %146
  store i32 %150, i32* %148, align 8
  %151 = load i32, i32* %19, align 4
  %152 = load i32, i32* @TD_CC_NOERROR, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %228

154:                                              ; preds = %145
  %155 = load %struct.urb*, %struct.urb** %14, align 8
  %156 = getelementptr inbounds %struct.urb, %struct.urb* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.urb*, %struct.urb** %14, align 8
  %159 = getelementptr inbounds %struct.urb, %struct.urb* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = sext i32 %160 to i64
  %162 = icmp sgt i64 %157, %161
  br i1 %162, label %163, label %228

163:                                              ; preds = %154
  %164 = load i32, i32* %17, align 4
  %165 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %166 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 8
  %167 = load %struct.u132_udev*, %struct.u132_udev** %28, align 8
  %168 = getelementptr inbounds %struct.u132_udev, %struct.u132_udev* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %171 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %17, align 4
  %174 = and i32 1, %173
  %175 = call i32 @usb_settoggle(i32 %169, i32 %172, i32 0, i32 %174)
  %176 = load %struct.urb*, %struct.urb** %14, align 8
  %177 = getelementptr inbounds %struct.urb, %struct.urb* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = icmp sgt i32 %178, 0
  br i1 %179, label %180, label %202

180:                                              ; preds = %163
  %181 = load %struct.u132*, %struct.u132** %26, align 8
  %182 = getelementptr inbounds %struct.u132, %struct.u132* %181, i32 0, i32 1
  %183 = call i32 @mutex_unlock(i32* %182)
  %184 = load %struct.u132*, %struct.u132** %26, align 8
  %185 = load %struct.u132_ring*, %struct.u132_ring** %29, align 8
  %186 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %187 = load %struct.urb*, %struct.urb** %14, align 8
  %188 = load i64, i64* %27, align 8
  %189 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %190 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @edset_single(%struct.u132* %184, %struct.u132_ring* %185, %struct.u132_endp* %186, %struct.urb* %187, i64 %188, i32 %191, void (i8*, %struct.urb*, i64*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @u132_hcd_interrupt_recv)
  store i32 %192, i32* %33, align 4
  %193 = load i32, i32* %33, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %180
  %196 = load %struct.u132*, %struct.u132** %26, align 8
  %197 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %198 = load %struct.urb*, %struct.urb** %14, align 8
  %199 = load i32, i32* %33, align 4
  %200 = call i32 @u132_hcd_giveback_urb(%struct.u132* %196, %struct.u132_endp* %197, %struct.urb* %198, i32 %199)
  br label %201

201:                                              ; preds = %195, %180
  br label %227

202:                                              ; preds = %163
  %203 = load %struct.u132_ring*, %struct.u132_ring** %29, align 8
  %204 = getelementptr inbounds %struct.u132_ring, %struct.u132_ring* %203, i32 0, i32 0
  store i64 0, i64* %204, align 8
  %205 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %206 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %205, i32 0, i32 4
  store i64 0, i64* %206, align 8
  %207 = load i64, i64* @jiffies, align 8
  %208 = load %struct.urb*, %struct.urb** %14, align 8
  %209 = getelementptr inbounds %struct.urb, %struct.urb* %208, i32 0, i32 5
  %210 = load i32, i32* %209, align 8
  %211 = call i64 @msecs_to_jiffies(i32 %210)
  %212 = add nsw i64 %207, %211
  %213 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %214 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %213, i32 0, i32 3
  store i64 %212, i64* %214, align 8
  %215 = load %struct.u132*, %struct.u132** %26, align 8
  %216 = load %struct.u132_ring*, %struct.u132_ring** %29, align 8
  %217 = call i32 @u132_ring_cancel_work(%struct.u132* %215, %struct.u132_ring* %216)
  %218 = load %struct.u132*, %struct.u132** %26, align 8
  %219 = load %struct.u132_ring*, %struct.u132_ring** %29, align 8
  %220 = call i32 @u132_ring_queue_work(%struct.u132* %218, %struct.u132_ring* %219, i32 0)
  %221 = load %struct.u132*, %struct.u132** %26, align 8
  %222 = getelementptr inbounds %struct.u132, %struct.u132* %221, i32 0, i32 1
  %223 = call i32 @mutex_unlock(i32* %222)
  %224 = load %struct.u132*, %struct.u132** %26, align 8
  %225 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %226 = call i32 @u132_endp_put_kref(%struct.u132* %224, %struct.u132_endp* %225)
  br label %227

227:                                              ; preds = %202, %201
  br label %342

228:                                              ; preds = %154, %145
  %229 = load i32, i32* %19, align 4
  %230 = load i32, i32* @TD_DATAUNDERRUN, align 4
  %231 = icmp eq i32 %229, %230
  br i1 %231, label %232, label %259

232:                                              ; preds = %228
  %233 = load %struct.urb*, %struct.urb** %14, align 8
  %234 = getelementptr inbounds %struct.urb, %struct.urb* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @URB_SHORT_NOT_OK, align 4
  %237 = and i32 %235, %236
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %259

239:                                              ; preds = %232
  %240 = load i32, i32* %17, align 4
  %241 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %242 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %241, i32 0, i32 1
  store i32 %240, i32* %242, align 8
  %243 = load %struct.u132_udev*, %struct.u132_udev** %28, align 8
  %244 = getelementptr inbounds %struct.u132_udev, %struct.u132_udev* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %247 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* %17, align 4
  %250 = and i32 1, %249
  %251 = call i32 @usb_settoggle(i32 %245, i32 %248, i32 0, i32 %250)
  %252 = load %struct.u132*, %struct.u132** %26, align 8
  %253 = getelementptr inbounds %struct.u132, %struct.u132* %252, i32 0, i32 1
  %254 = call i32 @mutex_unlock(i32* %253)
  %255 = load %struct.u132*, %struct.u132** %26, align 8
  %256 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %257 = load %struct.urb*, %struct.urb** %14, align 8
  %258 = call i32 @u132_hcd_giveback_urb(%struct.u132* %255, %struct.u132_endp* %256, %struct.urb* %257, i32 0)
  br label %342

259:                                              ; preds = %232, %228
  %260 = load i32, i32* %19, align 4
  %261 = load i32, i32* @TD_CC_NOERROR, align 4
  %262 = icmp eq i32 %260, %261
  br i1 %262, label %263, label %276

263:                                              ; preds = %259
  %264 = load i32, i32* %17, align 4
  %265 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %266 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %265, i32 0, i32 1
  store i32 %264, i32* %266, align 8
  %267 = load %struct.u132_udev*, %struct.u132_udev** %28, align 8
  %268 = getelementptr inbounds %struct.u132_udev, %struct.u132_udev* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %271 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* %17, align 4
  %274 = and i32 1, %273
  %275 = call i32 @usb_settoggle(i32 %269, i32 %272, i32 0, i32 %274)
  br label %312

276:                                              ; preds = %259
  %277 = load i32, i32* %19, align 4
  %278 = load i32, i32* @TD_CC_STALL, align 4
  %279 = icmp eq i32 %277, %278
  br i1 %279, label %280, label %290

280:                                              ; preds = %276
  %281 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %282 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %281, i32 0, i32 1
  store i32 2, i32* %282, align 8
  %283 = load %struct.u132_udev*, %struct.u132_udev** %28, align 8
  %284 = getelementptr inbounds %struct.u132_udev, %struct.u132_udev* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %287 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 4
  %289 = call i32 @usb_settoggle(i32 %285, i32 %288, i32 0, i32 0)
  br label %311

290:                                              ; preds = %276
  %291 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %292 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %291, i32 0, i32 1
  store i32 2, i32* %292, align 8
  %293 = load %struct.u132_udev*, %struct.u132_udev** %28, align 8
  %294 = getelementptr inbounds %struct.u132_udev, %struct.u132_udev* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %297 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 4
  %299 = call i32 @usb_settoggle(i32 %295, i32 %298, i32 0, i32 0)
  %300 = load %struct.u132*, %struct.u132** %26, align 8
  %301 = getelementptr inbounds %struct.u132, %struct.u132* %300, i32 0, i32 2
  %302 = load %struct.TYPE_4__*, %struct.TYPE_4__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %302, i32 0, i32 0
  %304 = load %struct.urb*, %struct.urb** %14, align 8
  %305 = load i32*, i32** @cc_to_text, align 8
  %306 = load i32, i32* %19, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %305, i64 %307
  %309 = load i32, i32* %308, align 4
  %310 = call i32 (i32*, i8*, ...) @dev_err(i32* %303, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), %struct.urb* %304, i32 %309)
  br label %311

311:                                              ; preds = %290, %280
  br label %312

312:                                              ; preds = %311, %263
  %313 = load %struct.u132*, %struct.u132** %26, align 8
  %314 = getelementptr inbounds %struct.u132, %struct.u132* %313, i32 0, i32 1
  %315 = call i32 @mutex_unlock(i32* %314)
  %316 = load %struct.u132*, %struct.u132** %26, align 8
  %317 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %318 = load %struct.urb*, %struct.urb** %14, align 8
  %319 = load i32*, i32** @cc_to_error, align 8
  %320 = load i32, i32* %19, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32, i32* %319, i64 %321
  %323 = load i32, i32* %322, align 4
  %324 = call i32 @u132_hcd_giveback_urb(%struct.u132* %316, %struct.u132_endp* %317, %struct.urb* %318, i32 %323)
  br label %342

325:                                              ; preds = %116
  %326 = load %struct.u132*, %struct.u132** %26, align 8
  %327 = getelementptr inbounds %struct.u132, %struct.u132* %326, i32 0, i32 2
  %328 = load %struct.TYPE_4__*, %struct.TYPE_4__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %328, i32 0, i32 0
  %330 = load %struct.urb*, %struct.urb** %14, align 8
  %331 = load %struct.urb*, %struct.urb** %14, align 8
  %332 = getelementptr inbounds %struct.urb, %struct.urb* %331, i32 0, i32 4
  %333 = load i32, i32* %332, align 4
  %334 = call i32 (i32*, i8*, ...) @dev_err(i32* %329, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), %struct.urb* %330, i32 %333)
  %335 = load %struct.u132*, %struct.u132** %26, align 8
  %336 = getelementptr inbounds %struct.u132, %struct.u132* %335, i32 0, i32 1
  %337 = call i32 @mutex_unlock(i32* %336)
  %338 = load %struct.u132*, %struct.u132** %26, align 8
  %339 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %340 = load %struct.urb*, %struct.urb** %14, align 8
  %341 = call i32 @u132_hcd_giveback_urb(%struct.u132* %338, %struct.u132_endp* %339, %struct.urb* %340, i32 0)
  br label %342

342:                                              ; preds = %325, %312, %239, %227, %100, %83, %60
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @u132_hcd_forget_urb(%struct.u132*, %struct.u132_endp*, %struct.urb*, i32) #1

declare dso_local i32 @u132_hcd_giveback_urb(%struct.u132*, %struct.u132_endp*, %struct.urb*, i32) #1

declare dso_local i32 @usb_settoggle(i32, i32, i32, i32) #1

declare dso_local i32 @edset_single(%struct.u132*, %struct.u132_ring*, %struct.u132_endp*, %struct.urb*, i64, i32, void (i8*, %struct.urb*, i64*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @u132_ring_cancel_work(%struct.u132*, %struct.u132_ring*) #1

declare dso_local i32 @u132_ring_queue_work(%struct.u132*, %struct.u132_ring*, i32) #1

declare dso_local i32 @u132_endp_put_kref(%struct.u132*, %struct.u132_endp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
