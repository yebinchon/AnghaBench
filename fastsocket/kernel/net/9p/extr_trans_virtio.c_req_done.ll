; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_trans_virtio.c_req_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_trans_virtio.c_req_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.virtio_chan* }
%struct.virtio_chan = type { i32, i32 }
%struct.p9_fcall = type { %struct.p9_fcall* }
%struct.p9_req_t = type { i32 }

@P9_DEBUG_TRANS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c": request done\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c": rc %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c": lookup tag %d\0A\00", align 1
@REQ_STATUS_RCVD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtqueue*)* @req_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @req_done(%struct.virtqueue* %0) #0 {
  %2 = alloca %struct.virtqueue*, align 8
  %3 = alloca %struct.virtio_chan*, align 8
  %4 = alloca %struct.p9_fcall*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.p9_req_t*, align 8
  store %struct.virtqueue* %0, %struct.virtqueue** %2, align 8
  %7 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %8 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.virtio_chan*, %struct.virtio_chan** %10, align 8
  store %struct.virtio_chan* %11, %struct.virtio_chan** %3, align 8
  %12 = load i32, i32* @P9_DEBUG_TRANS, align 4
  %13 = call i32 (i32, i8*, ...) @P9_DPRINTK(i32 %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %20, %1
  %15 = load %struct.virtio_chan*, %struct.virtio_chan** %3, align 8
  %16 = getelementptr inbounds %struct.virtio_chan, %struct.virtio_chan* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.p9_fcall* @virtqueue_get_buf(i32 %17, i32* %5)
  store %struct.p9_fcall* %18, %struct.p9_fcall** %4, align 8
  %19 = icmp ne %struct.p9_fcall* %18, null
  br i1 %19, label %20, label %44

20:                                               ; preds = %14
  %21 = load i32, i32* @P9_DEBUG_TRANS, align 4
  %22 = load %struct.p9_fcall*, %struct.p9_fcall** %4, align 8
  %23 = call i32 (i32, i8*, ...) @P9_DPRINTK(i32 %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %struct.p9_fcall* %22)
  %24 = load i32, i32* @P9_DEBUG_TRANS, align 4
  %25 = load %struct.p9_fcall*, %struct.p9_fcall** %4, align 8
  %26 = getelementptr inbounds %struct.p9_fcall, %struct.p9_fcall* %25, i32 0, i32 0
  %27 = load %struct.p9_fcall*, %struct.p9_fcall** %26, align 8
  %28 = call i32 (i32, i8*, ...) @P9_DPRINTK(i32 %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), %struct.p9_fcall* %27)
  %29 = load %struct.virtio_chan*, %struct.virtio_chan** %3, align 8
  %30 = getelementptr inbounds %struct.virtio_chan, %struct.virtio_chan* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.p9_fcall*, %struct.p9_fcall** %4, align 8
  %33 = getelementptr inbounds %struct.p9_fcall, %struct.p9_fcall* %32, i32 0, i32 0
  %34 = load %struct.p9_fcall*, %struct.p9_fcall** %33, align 8
  %35 = call %struct.p9_req_t* @p9_tag_lookup(i32 %31, %struct.p9_fcall* %34)
  store %struct.p9_req_t* %35, %struct.p9_req_t** %6, align 8
  %36 = load i32, i32* @REQ_STATUS_RCVD, align 4
  %37 = load %struct.p9_req_t*, %struct.p9_req_t** %6, align 8
  %38 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.virtio_chan*, %struct.virtio_chan** %3, align 8
  %40 = getelementptr inbounds %struct.virtio_chan, %struct.virtio_chan* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.p9_req_t*, %struct.p9_req_t** %6, align 8
  %43 = call i32 @p9_client_cb(i32 %41, %struct.p9_req_t* %42)
  br label %14

44:                                               ; preds = %14
  ret void
}

declare dso_local i32 @P9_DPRINTK(i32, i8*, ...) #1

declare dso_local %struct.p9_fcall* @virtqueue_get_buf(i32, i32*) #1

declare dso_local %struct.p9_req_t* @p9_tag_lookup(i32, %struct.p9_fcall*) #1

declare dso_local i32 @p9_client_cb(i32, %struct.p9_req_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
