; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/vhost/extr_vhost.c_vhost_zerocopy_signal_used.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/vhost/extr_vhost.c_vhost_zerocopy_signal_used.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_virtqueue = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@VHOST_DMA_DONE_LEN = common dso_local global i64 0, align 8
@VHOST_DMA_CLEAR_LEN = common dso_local global i64 0, align 8
@UIO_MAXIOV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vhost_zerocopy_signal_used(%struct.vhost_virtqueue* %0) #0 {
  %2 = alloca %struct.vhost_virtqueue*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.vhost_virtqueue* %0, %struct.vhost_virtqueue** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %2, align 8
  %6 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %3, align 4
  br label %8

8:                                                ; preds = %51, %1
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %2, align 8
  %11 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %9, %12
  br i1 %13, label %14, label %56

14:                                               ; preds = %8
  %15 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %2, align 8
  %16 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @VHOST_DMA_DONE_LEN, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %49

25:                                               ; preds = %14
  %26 = load i64, i64* @VHOST_DMA_CLEAR_LEN, align 8
  %27 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %2, align 8
  %28 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i64 %26, i64* %33, align 8
  %34 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %2, align 8
  %35 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %2, align 8
  %38 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %2, align 8
  %39 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @vhost_add_used_and_signal(i32 %36, %struct.vhost_virtqueue* %37, i32 %45, i32 0)
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %50

49:                                               ; preds = %14
  br label %56

50:                                               ; preds = %25
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  %54 = load i32, i32* @UIO_MAXIOV, align 4
  %55 = srem i32 %53, %54
  store i32 %55, i32* %3, align 4
  br label %8

56:                                               ; preds = %49, %8
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i32, i32* %3, align 4
  %61 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %2, align 8
  %62 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %59, %56
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @vhost_add_used_and_signal(i32, %struct.vhost_virtqueue*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
