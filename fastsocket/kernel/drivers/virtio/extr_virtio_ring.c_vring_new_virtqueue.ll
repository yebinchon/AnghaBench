; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/virtio/extr_virtio_ring.c_vring_new_virtqueue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/virtio/extr_virtio_ring.c_vring_new_virtqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { void (%struct.virtqueue*)*, i8*, i32, %struct.virtio_device* }
%struct.virtio_device = type { i32, i32 }
%struct.vring_virtqueue = type { void (%struct.virtqueue*)*, i32, i32, i32, %struct.virtqueue, i32**, %struct.TYPE_6__, i64, i8*, i8*, i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Bad virtqueue length %u\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@VIRTIO_RING_F_INDIRECT_DESC = common dso_local global i32 0, align 4
@VIRTIO_RING_F_EVENT_IDX = common dso_local global i32 0, align 4
@VRING_AVAIL_F_NO_INTERRUPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.virtqueue* @vring_new_virtqueue(i32 %0, i32 %1, %struct.virtio_device* %2, i8* %3, void (%struct.virtqueue*)* %4, void (%struct.virtqueue*)* %5, i8* %6) #0 {
  %8 = alloca %struct.virtqueue*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.virtio_device*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca void (%struct.virtqueue*)*, align 8
  %14 = alloca void (%struct.virtqueue*)*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.vring_virtqueue*, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store %struct.virtio_device* %2, %struct.virtio_device** %11, align 8
  store i8* %3, i8** %12, align 8
  store void (%struct.virtqueue*)* %4, void (%struct.virtqueue*)** %13, align 8
  store void (%struct.virtqueue*)* %5, void (%struct.virtqueue*)** %14, align 8
  store i8* %6, i8** %15, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = sub i32 %19, 1
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %7
  %24 = load %struct.virtio_device*, %struct.virtio_device** %11, align 8
  %25 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %24, i32 0, i32 1
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @dev_warn(i32* %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %26)
  store %struct.virtqueue* null, %struct.virtqueue** %8, align 8
  br label %134

28:                                               ; preds = %7
  %29 = load i32, i32* %9, align 4
  %30 = zext i32 %29 to i64
  %31 = mul i64 8, %30
  %32 = add i64 120, %31
  %33 = trunc i64 %32 to i32
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.vring_virtqueue* @kmalloc(i32 %33, i32 %34)
  store %struct.vring_virtqueue* %35, %struct.vring_virtqueue** %16, align 8
  %36 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %16, align 8
  %37 = icmp ne %struct.vring_virtqueue* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %28
  store %struct.virtqueue* null, %struct.virtqueue** %8, align 8
  br label %134

39:                                               ; preds = %28
  %40 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %16, align 8
  %41 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %40, i32 0, i32 6
  %42 = load i32, i32* %9, align 4
  %43 = load i8*, i8** %12, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @vring_init(%struct.TYPE_6__* %41, i32 %42, i8* %43, i32 %44)
  %46 = load void (%struct.virtqueue*)*, void (%struct.virtqueue*)** %14, align 8
  %47 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %16, align 8
  %48 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %48, i32 0, i32 0
  store void (%struct.virtqueue*)* %46, void (%struct.virtqueue*)** %49, align 8
  %50 = load %struct.virtio_device*, %struct.virtio_device** %11, align 8
  %51 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %16, align 8
  %52 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %52, i32 0, i32 3
  store %struct.virtio_device* %50, %struct.virtio_device** %53, align 8
  %54 = load i8*, i8** %15, align 8
  %55 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %16, align 8
  %56 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %56, i32 0, i32 1
  store i8* %54, i8** %57, align 8
  %58 = load void (%struct.virtqueue*)*, void (%struct.virtqueue*)** %13, align 8
  %59 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %16, align 8
  %60 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %59, i32 0, i32 0
  store void (%struct.virtqueue*)* %58, void (%struct.virtqueue*)** %60, align 8
  %61 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %16, align 8
  %62 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %61, i32 0, i32 1
  store i32 0, i32* %62, align 8
  %63 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %16, align 8
  %64 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %63, i32 0, i32 11
  store i64 0, i64* %64, align 8
  %65 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %16, align 8
  %66 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %65, i32 0, i32 10
  store i64 0, i64* %66, align 8
  %67 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %16, align 8
  %68 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %68, i32 0, i32 2
  %70 = load %struct.virtio_device*, %struct.virtio_device** %11, align 8
  %71 = getelementptr inbounds %struct.virtio_device, %struct.virtio_device* %70, i32 0, i32 0
  %72 = call i32 @list_add_tail(i32* %69, i32* %71)
  %73 = load %struct.virtio_device*, %struct.virtio_device** %11, align 8
  %74 = load i32, i32* @VIRTIO_RING_F_INDIRECT_DESC, align 4
  %75 = call i8* @virtio_has_feature(%struct.virtio_device* %73, i32 %74)
  %76 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %16, align 8
  %77 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %76, i32 0, i32 9
  store i8* %75, i8** %77, align 8
  %78 = load %struct.virtio_device*, %struct.virtio_device** %11, align 8
  %79 = load i32, i32* @VIRTIO_RING_F_EVENT_IDX, align 4
  %80 = call i8* @virtio_has_feature(%struct.virtio_device* %78, i32 %79)
  %81 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %16, align 8
  %82 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %81, i32 0, i32 8
  store i8* %80, i8** %82, align 8
  %83 = load void (%struct.virtqueue*)*, void (%struct.virtqueue*)** %14, align 8
  %84 = icmp ne void (%struct.virtqueue*)* %83, null
  br i1 %84, label %94, label %85

85:                                               ; preds = %39
  %86 = load i32, i32* @VRING_AVAIL_F_NO_INTERRUPT, align 4
  %87 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %16, align 8
  %88 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %87, i32 0, i32 6
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %86
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %85, %39
  %95 = load i32, i32* %9, align 4
  %96 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %16, align 8
  %97 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 8
  %98 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %16, align 8
  %99 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %98, i32 0, i32 7
  store i64 0, i64* %99, align 8
  store i32 0, i32* %17, align 4
  br label %100

100:                                              ; preds = %122, %94
  %101 = load i32, i32* %17, align 4
  %102 = load i32, i32* %9, align 4
  %103 = sub i32 %102, 1
  %104 = icmp ult i32 %101, %103
  br i1 %104, label %105, label %125

105:                                              ; preds = %100
  %106 = load i32, i32* %17, align 4
  %107 = add i32 %106, 1
  %108 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %16, align 8
  %109 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %108, i32 0, i32 6
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = load i32, i32* %17, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  store i32 %107, i32* %115, align 4
  %116 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %16, align 8
  %117 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %116, i32 0, i32 5
  %118 = load i32**, i32*** %117, align 8
  %119 = load i32, i32* %17, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i32*, i32** %118, i64 %120
  store i32* null, i32** %121, align 8
  br label %122

122:                                              ; preds = %105
  %123 = load i32, i32* %17, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %17, align 4
  br label %100

125:                                              ; preds = %100
  %126 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %16, align 8
  %127 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %126, i32 0, i32 5
  %128 = load i32**, i32*** %127, align 8
  %129 = load i32, i32* %17, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i32*, i32** %128, i64 %130
  store i32* null, i32** %131, align 8
  %132 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %16, align 8
  %133 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %132, i32 0, i32 4
  store %struct.virtqueue* %133, %struct.virtqueue** %8, align 8
  br label %134

134:                                              ; preds = %125, %38, %23
  %135 = load %struct.virtqueue*, %struct.virtqueue** %8, align 8
  ret %struct.virtqueue* %135
}

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local %struct.vring_virtqueue* @kmalloc(i32, i32) #1

declare dso_local i32 @vring_init(%struct.TYPE_6__*, i32, i8*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i8* @virtio_has_feature(%struct.virtio_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
