; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_trans_virtio.c_p9_virtio_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/9p/extr_trans_virtio.c_p9_virtio_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_client = type { i32, %struct.virtio_chan* }
%struct.virtio_chan = type { i32, i32 }
%struct.p9_req_t = type { %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i8*, i32 }

@P9_DEBUG_TRANS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"9p debug: virtio request\0A\00", align 1
@VIRTQUEUE_NUM = common dso_local global i64 0, align 8
@REQ_STATUS_SENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"9p debug: virtio rpc add_buf returned failure\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"9p debug: virtio request kicked\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.p9_client*, %struct.p9_req_t*)* @p9_virtio_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p9_virtio_request(%struct.p9_client* %0, %struct.p9_req_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.p9_client*, align 8
  %5 = alloca %struct.p9_req_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.virtio_chan*, align 8
  %9 = alloca i8*, align 8
  store %struct.p9_client* %0, %struct.p9_client** %4, align 8
  store %struct.p9_req_t* %1, %struct.p9_req_t** %5, align 8
  %10 = load %struct.p9_client*, %struct.p9_client** %4, align 8
  %11 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %10, i32 0, i32 1
  %12 = load %struct.virtio_chan*, %struct.virtio_chan** %11, align 8
  store %struct.virtio_chan* %12, %struct.virtio_chan** %8, align 8
  %13 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %14 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = getelementptr inbounds i8, i8* %16, i64 4
  store i8* %17, i8** %9, align 8
  %18 = load i32, i32* @P9_DEBUG_TRANS, align 4
  %19 = call i32 @P9_DPRINTK(i32 %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.virtio_chan*, %struct.virtio_chan** %8, align 8
  %21 = getelementptr inbounds %struct.virtio_chan, %struct.virtio_chan* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i64, i64* @VIRTQUEUE_NUM, align 8
  %24 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %25 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %30 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @pack_sg_list(i32 %22, i32 0, i64 %23, i8* %28, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load %struct.virtio_chan*, %struct.virtio_chan** %8, align 8
  %36 = getelementptr inbounds %struct.virtio_chan, %struct.virtio_chan* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i64, i64* @VIRTQUEUE_NUM, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = sub nsw i64 %39, %41
  %43 = load i8*, i8** %9, align 8
  %44 = load %struct.p9_client*, %struct.p9_client** %4, align 8
  %45 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @pack_sg_list(i32 %37, i32 %38, i64 %42, i8* %43, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* @REQ_STATUS_SENT, align 4
  %49 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %50 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load %struct.virtio_chan*, %struct.virtio_chan** %8, align 8
  %52 = getelementptr inbounds %struct.virtio_chan, %struct.virtio_chan* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.virtio_chan*, %struct.virtio_chan** %8, align 8
  %55 = getelementptr inbounds %struct.virtio_chan, %struct.virtio_chan* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.p9_req_t*, %struct.p9_req_t** %5, align 8
  %60 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = call i64 @virtqueue_add_buf(i32 %53, i32 %56, i32 %57, i32 %58, %struct.TYPE_2__* %61)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %2
  %65 = load i32, i32* @P9_DEBUG_TRANS, align 4
  %66 = call i32 @P9_DPRINTK(i32 %65, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %76

69:                                               ; preds = %2
  %70 = load %struct.virtio_chan*, %struct.virtio_chan** %8, align 8
  %71 = getelementptr inbounds %struct.virtio_chan, %struct.virtio_chan* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @virtqueue_kick(i32 %72)
  %74 = load i32, i32* @P9_DEBUG_TRANS, align 4
  %75 = call i32 @P9_DPRINTK(i32 %74, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %69, %64
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @P9_DPRINTK(i32, i8*) #1

declare dso_local i32 @pack_sg_list(i32, i32, i64, i8*, i32) #1

declare dso_local i64 @virtqueue_add_buf(i32, i32, i32, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @virtqueue_kick(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
