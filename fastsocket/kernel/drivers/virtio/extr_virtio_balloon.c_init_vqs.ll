; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/virtio/extr_virtio_balloon.c_init_vqs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/virtio/extr_virtio_balloon.c_init_vqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_balloon = type { %struct.virtqueue*, i32, %struct.TYPE_5__*, %struct.virtqueue*, %struct.virtqueue* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_5__*, i32, %struct.virtqueue**, i32**, i8**)* }
%struct.virtqueue = type { i32 }
%struct.scatterlist = type { i32 }

@balloon_ack = common dso_local global i32* null, align 8
@stats_request = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"inflate\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"deflate\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@__const.init_vqs.names = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0)], align 16
@VIRTIO_BALLOON_F_STATS_VQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_balloon*)* @init_vqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_vqs(%struct.virtio_balloon* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.virtio_balloon*, align 8
  %4 = alloca [3 x %struct.virtqueue*], align 16
  %5 = alloca [3 x i32*], align 16
  %6 = alloca [3 x i8*], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.scatterlist, align 4
  store %struct.virtio_balloon* %0, %struct.virtio_balloon** %3, align 8
  %10 = getelementptr inbounds [3 x i32*], [3 x i32*]* %5, i64 0, i64 0
  %11 = load i32*, i32** @balloon_ack, align 8
  store i32* %11, i32** %10, align 8
  %12 = getelementptr inbounds i32*, i32** %10, i64 1
  %13 = load i32*, i32** @balloon_ack, align 8
  store i32* %13, i32** %12, align 8
  %14 = getelementptr inbounds i32*, i32** %12, i64 1
  %15 = load i32*, i32** @stats_request, align 8
  store i32* %15, i32** %14, align 8
  %16 = bitcast [3 x i8*]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 16 bitcast ([3 x i8*]* @__const.init_vqs.names to i8*), i64 24, i1 false)
  %17 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %18 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %17, i32 0, i32 2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = load i32, i32* @VIRTIO_BALLOON_F_STATS_VQ, align 4
  %21 = call i64 @virtio_has_feature(%struct.TYPE_5__* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 3, i32 2
  store i32 %24, i32* %8, align 4
  %25 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %26 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %25, i32 0, i32 2
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32 (%struct.TYPE_5__*, i32, %struct.virtqueue**, i32**, i8**)*, i32 (%struct.TYPE_5__*, i32, %struct.virtqueue**, i32**, i8**)** %30, align 8
  %32 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %33 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %32, i32 0, i32 2
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = getelementptr inbounds [3 x %struct.virtqueue*], [3 x %struct.virtqueue*]* %4, i64 0, i64 0
  %37 = getelementptr inbounds [3 x i32*], [3 x i32*]* %5, i64 0, i64 0
  %38 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 0
  %39 = call i32 %31(%struct.TYPE_5__* %34, i32 %35, %struct.virtqueue** %36, i32** %37, i8** %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %1
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %2, align 4
  br label %82

44:                                               ; preds = %1
  %45 = getelementptr inbounds [3 x %struct.virtqueue*], [3 x %struct.virtqueue*]* %4, i64 0, i64 0
  %46 = load %struct.virtqueue*, %struct.virtqueue** %45, align 16
  %47 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %48 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %47, i32 0, i32 4
  store %struct.virtqueue* %46, %struct.virtqueue** %48, align 8
  %49 = getelementptr inbounds [3 x %struct.virtqueue*], [3 x %struct.virtqueue*]* %4, i64 0, i64 1
  %50 = load %struct.virtqueue*, %struct.virtqueue** %49, align 8
  %51 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %52 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %51, i32 0, i32 3
  store %struct.virtqueue* %50, %struct.virtqueue** %52, align 8
  %53 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %54 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %53, i32 0, i32 2
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = load i32, i32* @VIRTIO_BALLOON_F_STATS_VQ, align 4
  %57 = call i64 @virtio_has_feature(%struct.TYPE_5__* %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %81

59:                                               ; preds = %44
  %60 = getelementptr inbounds [3 x %struct.virtqueue*], [3 x %struct.virtqueue*]* %4, i64 0, i64 2
  %61 = load %struct.virtqueue*, %struct.virtqueue** %60, align 16
  %62 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %63 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %62, i32 0, i32 0
  store %struct.virtqueue* %61, %struct.virtqueue** %63, align 8
  %64 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %65 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @sg_init_one(%struct.scatterlist* %9, i32 %66, i32 4)
  %68 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %69 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %68, i32 0, i32 0
  %70 = load %struct.virtqueue*, %struct.virtqueue** %69, align 8
  %71 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %72 = call i64 @virtqueue_add_buf(%struct.virtqueue* %70, %struct.scatterlist* %9, i32 1, i32 0, %struct.virtio_balloon* %71)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %59
  %75 = call i32 (...) @BUG()
  br label %76

76:                                               ; preds = %74, %59
  %77 = load %struct.virtio_balloon*, %struct.virtio_balloon** %3, align 8
  %78 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %77, i32 0, i32 0
  %79 = load %struct.virtqueue*, %struct.virtqueue** %78, align 8
  %80 = call i32 @virtqueue_kick(%struct.virtqueue* %79)
  br label %81

81:                                               ; preds = %76, %44
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %81, %42
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @virtio_has_feature(%struct.TYPE_5__*, i32) #2

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i32, i32) #2

declare dso_local i64 @virtqueue_add_buf(%struct.virtqueue*, %struct.scatterlist*, i32, i32, %struct.virtio_balloon*) #2

declare dso_local i32 @BUG(...) #2

declare dso_local i32 @virtqueue_kick(%struct.virtqueue*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
