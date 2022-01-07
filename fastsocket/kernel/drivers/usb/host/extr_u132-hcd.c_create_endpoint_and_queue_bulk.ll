; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_u132-hcd.c_create_endpoint_and_queue_bulk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_u132-hcd.c_create_endpoint_and_queue_bulk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.u132 = type { i32, %struct.u132_ring*, %struct.u132_endp** }
%struct.u132_ring = type { i32, %struct.u132_endp* }
%struct.u132_endp = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, i64, %struct.urb**, i64, i32, %struct.u132_ring*, i32, %struct.TYPE_3__*, %struct.u132*, i64, i64, i64, i64, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.u132_endp* }
%struct.u132_udev = type { i32*, i32*, i32 }
%struct.urb = type { %struct.u132*, i32, %struct.TYPE_3__* }
%struct.usb_device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@u132_hcd_endp_work_scheduler = common dso_local global i32 0, align 4
@ENDP_QUEUE_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.u132*, %struct.u132_udev*, %struct.urb*, %struct.usb_device*, i32, i32, i32, i32)* @create_endpoint_and_queue_bulk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_endpoint_and_queue_bulk(%struct.u132* %0, %struct.u132_udev* %1, %struct.urb* %2, %struct.usb_device* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.u132*, align 8
  %11 = alloca %struct.u132_udev*, align 8
  %12 = alloca %struct.urb*, align 8
  %13 = alloca %struct.usb_device*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.u132_ring*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.u132_endp*, align 8
  store %struct.u132* %0, %struct.u132** %10, align 8
  store %struct.u132_udev* %1, %struct.u132_udev** %11, align 8
  store %struct.urb* %2, %struct.urb** %12, align 8
  store %struct.usb_device* %3, %struct.usb_device** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %24 = load i32, i32* %17, align 4
  %25 = call %struct.u132_endp* @kmalloc(i32 144, i32 %24)
  store %struct.u132_endp* %25, %struct.u132_endp** %23, align 8
  %26 = load %struct.u132_endp*, %struct.u132_endp** %23, align 8
  %27 = icmp ne %struct.u132_endp* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %8
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %9, align 4
  br label %228

31:                                               ; preds = %8
  %32 = load %struct.u132_endp*, %struct.u132_endp** %23, align 8
  %33 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %32, i32 0, i32 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = call i32 @spin_lock_init(i32* %34)
  %36 = load %struct.u132_endp*, %struct.u132_endp** %23, align 8
  %37 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %36, i32 0, i32 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %20, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %38, i64 %39)
  %41 = load %struct.u132*, %struct.u132** %10, align 8
  %42 = call i32 @u132_to_hcd(%struct.u132* %41)
  %43 = load %struct.urb*, %struct.urb** %12, align 8
  %44 = call i32 @usb_hcd_link_urb_to_ep(i32 %42, %struct.urb* %43)
  store i32 %44, i32* %21, align 4
  %45 = load i32, i32* %21, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %31
  %48 = load %struct.u132_endp*, %struct.u132_endp** %23, align 8
  %49 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %48, i32 0, i32 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %20, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  %53 = load %struct.u132_endp*, %struct.u132_endp** %23, align 8
  %54 = call i32 @kfree(%struct.u132_endp* %53)
  %55 = load i32, i32* %21, align 4
  store i32 %55, i32* %9, align 4
  br label %228

56:                                               ; preds = %31
  %57 = load %struct.u132*, %struct.u132** %10, align 8
  %58 = getelementptr inbounds %struct.u132, %struct.u132* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 8
  store i32 %60, i32* %22, align 4
  %61 = load %struct.u132_endp*, %struct.u132_endp** %23, align 8
  %62 = load %struct.u132*, %struct.u132** %10, align 8
  %63 = getelementptr inbounds %struct.u132, %struct.u132* %62, i32 0, i32 2
  %64 = load %struct.u132_endp**, %struct.u132_endp*** %63, align 8
  %65 = load i32, i32* %22, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.u132_endp*, %struct.u132_endp** %64, i64 %67
  store %struct.u132_endp* %61, %struct.u132_endp** %68, align 8
  %69 = load %struct.urb*, %struct.urb** %12, align 8
  %70 = getelementptr inbounds %struct.urb, %struct.urb* %69, i32 0, i32 2
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  store %struct.u132_endp* %61, %struct.u132_endp** %72, align 8
  %73 = load %struct.u132_endp*, %struct.u132_endp** %23, align 8
  %74 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %73, i32 0, i32 22
  %75 = load i32, i32* @u132_hcd_endp_work_scheduler, align 4
  %76 = call i32 @INIT_DELAYED_WORK(i32* %74, i32 %75)
  %77 = load %struct.u132_endp*, %struct.u132_endp** %23, align 8
  %78 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %77, i32 0, i32 21
  %79 = call i32 @INIT_LIST_HEAD(i32* %78)
  %80 = load %struct.u132_endp*, %struct.u132_endp** %23, align 8
  %81 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %80, i32 0, i32 20
  store i64 0, i64* %81, align 8
  %82 = load %struct.u132_endp*, %struct.u132_endp** %23, align 8
  %83 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %82, i32 0, i32 19
  store i64 0, i64* %83, align 8
  %84 = load %struct.u132_endp*, %struct.u132_endp** %23, align 8
  %85 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %84, i32 0, i32 18
  store i64 0, i64* %85, align 8
  %86 = load %struct.u132_endp*, %struct.u132_endp** %23, align 8
  %87 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %86, i32 0, i32 17
  store i64 0, i64* %87, align 8
  %88 = load i32, i32* %22, align 4
  %89 = load %struct.u132_endp*, %struct.u132_endp** %23, align 8
  %90 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.u132*, %struct.u132** %10, align 8
  %92 = load %struct.u132_endp*, %struct.u132_endp** %23, align 8
  %93 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %92, i32 0, i32 16
  store %struct.u132* %91, %struct.u132** %93, align 8
  %94 = load %struct.urb*, %struct.urb** %12, align 8
  %95 = getelementptr inbounds %struct.urb, %struct.urb* %94, i32 0, i32 2
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = load %struct.u132_endp*, %struct.u132_endp** %23, align 8
  %98 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %97, i32 0, i32 15
  store %struct.TYPE_3__* %96, %struct.TYPE_3__** %98, align 8
  %99 = load %struct.urb*, %struct.urb** %12, align 8
  %100 = getelementptr inbounds %struct.urb, %struct.urb* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @usb_pipetype(i32 %101)
  %103 = load %struct.u132_endp*, %struct.u132_endp** %23, align 8
  %104 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %103, i32 0, i32 14
  store i32 %102, i32* %104, align 8
  %105 = load %struct.u132*, %struct.u132** %10, align 8
  %106 = load %struct.u132_endp*, %struct.u132_endp** %23, align 8
  %107 = call i32 @u132_endp_init_kref(%struct.u132* %105, %struct.u132_endp* %106)
  %108 = load %struct.urb*, %struct.urb** %12, align 8
  %109 = getelementptr inbounds %struct.urb, %struct.urb* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i64 @usb_pipein(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %135

113:                                              ; preds = %56
  %114 = load %struct.u132_endp*, %struct.u132_endp** %23, align 8
  %115 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %114, i32 0, i32 1
  store i32 2, i32* %115, align 4
  %116 = load %struct.u132_udev*, %struct.u132_udev** %11, align 8
  %117 = getelementptr inbounds %struct.u132_udev, %struct.u132_udev* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %15, align 4
  %120 = call i32 @usb_settoggle(i32 %118, i32 %119, i32 0, i32 0)
  store i32 3, i32* %18, align 4
  %121 = load %struct.u132_endp*, %struct.u132_endp** %23, align 8
  %122 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %121, i32 0, i32 2
  store i32 1, i32* %122, align 8
  %123 = load %struct.u132_endp*, %struct.u132_endp** %23, align 8
  %124 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %123, i32 0, i32 3
  store i32 0, i32* %124, align 4
  %125 = load i32, i32* %22, align 4
  %126 = load %struct.u132_udev*, %struct.u132_udev** %11, align 8
  %127 = getelementptr inbounds %struct.u132_udev, %struct.u132_udev* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %15, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  store i32 %125, i32* %131, align 4
  %132 = load %struct.u132*, %struct.u132** %10, align 8
  %133 = load %struct.u132_udev*, %struct.u132_udev** %11, align 8
  %134 = call i32 @u132_udev_get_kref(%struct.u132* %132, %struct.u132_udev* %133)
  br label %157

135:                                              ; preds = %56
  %136 = load %struct.u132_endp*, %struct.u132_endp** %23, align 8
  %137 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %136, i32 0, i32 1
  store i32 2, i32* %137, align 4
  %138 = load %struct.u132_udev*, %struct.u132_udev** %11, align 8
  %139 = getelementptr inbounds %struct.u132_udev, %struct.u132_udev* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %15, align 4
  %142 = call i32 @usb_settoggle(i32 %140, i32 %141, i32 1, i32 0)
  store i32 2, i32* %18, align 4
  %143 = load %struct.u132_endp*, %struct.u132_endp** %23, align 8
  %144 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %143, i32 0, i32 2
  store i32 0, i32* %144, align 8
  %145 = load %struct.u132_endp*, %struct.u132_endp** %23, align 8
  %146 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %145, i32 0, i32 3
  store i32 1, i32* %146, align 4
  %147 = load i32, i32* %22, align 4
  %148 = load %struct.u132_udev*, %struct.u132_udev** %11, align 8
  %149 = getelementptr inbounds %struct.u132_udev, %struct.u132_udev* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %15, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  store i32 %147, i32* %153, align 4
  %154 = load %struct.u132*, %struct.u132** %10, align 8
  %155 = load %struct.u132_udev*, %struct.u132_udev** %11, align 8
  %156 = call i32 @u132_udev_get_kref(%struct.u132* %154, %struct.u132_udev* %155)
  br label %157

157:                                              ; preds = %135, %113
  %158 = load %struct.u132*, %struct.u132** %10, align 8
  %159 = getelementptr inbounds %struct.u132, %struct.u132* %158, i32 0, i32 1
  %160 = load %struct.u132_ring*, %struct.u132_ring** %159, align 8
  %161 = load i32, i32* %18, align 4
  %162 = sub nsw i32 %161, 1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.u132_ring, %struct.u132_ring* %160, i64 %163
  %165 = load %struct.u132_endp*, %struct.u132_endp** %23, align 8
  %166 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %165, i32 0, i32 13
  store %struct.u132_ring* %164, %struct.u132_ring** %166, align 8
  store %struct.u132_ring* %164, %struct.u132_ring** %19, align 8
  %167 = load %struct.u132_ring*, %struct.u132_ring** %19, align 8
  %168 = getelementptr inbounds %struct.u132_ring, %struct.u132_ring* %167, i32 0, i32 1
  %169 = load %struct.u132_endp*, %struct.u132_endp** %168, align 8
  %170 = icmp ne %struct.u132_endp* %169, null
  br i1 %170, label %171, label %179

171:                                              ; preds = %157
  %172 = load %struct.u132_endp*, %struct.u132_endp** %23, align 8
  %173 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %172, i32 0, i32 12
  %174 = load %struct.u132_ring*, %struct.u132_ring** %19, align 8
  %175 = getelementptr inbounds %struct.u132_ring, %struct.u132_ring* %174, i32 0, i32 1
  %176 = load %struct.u132_endp*, %struct.u132_endp** %175, align 8
  %177 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %176, i32 0, i32 12
  %178 = call i32 @list_add_tail(i32* %173, i32* %177)
  br label %186

179:                                              ; preds = %157
  %180 = load %struct.u132_endp*, %struct.u132_endp** %23, align 8
  %181 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %180, i32 0, i32 12
  %182 = call i32 @INIT_LIST_HEAD(i32* %181)
  %183 = load %struct.u132_endp*, %struct.u132_endp** %23, align 8
  %184 = load %struct.u132_ring*, %struct.u132_ring** %19, align 8
  %185 = getelementptr inbounds %struct.u132_ring, %struct.u132_ring* %184, i32 0, i32 1
  store %struct.u132_endp* %183, %struct.u132_endp** %185, align 8
  br label %186

186:                                              ; preds = %179, %171
  %187 = load %struct.u132_ring*, %struct.u132_ring** %19, align 8
  %188 = getelementptr inbounds %struct.u132_ring, %struct.u132_ring* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %188, align 8
  %191 = load %struct.u132*, %struct.u132** %10, align 8
  %192 = load %struct.urb*, %struct.urb** %12, align 8
  %193 = getelementptr inbounds %struct.urb, %struct.urb* %192, i32 0, i32 0
  store %struct.u132* %191, %struct.u132** %193, align 8
  %194 = load i32, i32* %16, align 4
  %195 = load %struct.u132_endp*, %struct.u132_endp** %23, align 8
  %196 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %195, i32 0, i32 4
  store i32 %194, i32* %196, align 8
  %197 = load i32, i32* %14, align 4
  %198 = load %struct.u132_endp*, %struct.u132_endp** %23, align 8
  %199 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %198, i32 0, i32 5
  store i32 %197, i32* %199, align 4
  %200 = load i32, i32* %15, align 4
  %201 = load %struct.u132_endp*, %struct.u132_endp** %23, align 8
  %202 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %201, i32 0, i32 6
  store i32 %200, i32* %202, align 8
  %203 = load %struct.u132_endp*, %struct.u132_endp** %23, align 8
  %204 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %203, i32 0, i32 7
  store i32 1, i32* %204, align 4
  %205 = load %struct.u132_endp*, %struct.u132_endp** %23, align 8
  %206 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %205, i32 0, i32 9
  store i64 0, i64* %206, align 8
  %207 = load %struct.u132_endp*, %struct.u132_endp** %23, align 8
  %208 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %207, i32 0, i32 11
  store i64 0, i64* %208, align 8
  %209 = load %struct.urb*, %struct.urb** %12, align 8
  %210 = load %struct.u132_endp*, %struct.u132_endp** %23, align 8
  %211 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %210, i32 0, i32 10
  %212 = load %struct.urb**, %struct.urb*** %211, align 8
  %213 = load i64, i64* @ENDP_QUEUE_MASK, align 8
  %214 = load %struct.u132_endp*, %struct.u132_endp** %23, align 8
  %215 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %214, i32 0, i32 9
  %216 = load i64, i64* %215, align 8
  %217 = add nsw i64 %216, 1
  store i64 %217, i64* %215, align 8
  %218 = and i64 %213, %216
  %219 = getelementptr inbounds %struct.urb*, %struct.urb** %212, i64 %218
  store %struct.urb* %209, %struct.urb** %219, align 8
  %220 = load %struct.u132_endp*, %struct.u132_endp** %23, align 8
  %221 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %220, i32 0, i32 8
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 0
  %223 = load i64, i64* %20, align 8
  %224 = call i32 @spin_unlock_irqrestore(i32* %222, i64 %223)
  %225 = load %struct.u132*, %struct.u132** %10, align 8
  %226 = load %struct.u132_endp*, %struct.u132_endp** %23, align 8
  %227 = call i32 @u132_endp_queue_work(%struct.u132* %225, %struct.u132_endp* %226, i32 0)
  store i32 0, i32* %9, align 4
  br label %228

228:                                              ; preds = %186, %47, %28
  %229 = load i32, i32* %9, align 4
  ret i32 %229
}

declare dso_local %struct.u132_endp* @kmalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @usb_hcd_link_urb_to_ep(i32, %struct.urb*) #1

declare dso_local i32 @u132_to_hcd(%struct.u132*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.u132_endp*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @usb_pipetype(i32) #1

declare dso_local i32 @u132_endp_init_kref(%struct.u132*, %struct.u132_endp*) #1

declare dso_local i64 @usb_pipein(i32) #1

declare dso_local i32 @usb_settoggle(i32, i32, i32, i32) #1

declare dso_local i32 @u132_udev_get_kref(%struct.u132*, %struct.u132_udev*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @u132_endp_queue_work(%struct.u132*, %struct.u132_endp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
