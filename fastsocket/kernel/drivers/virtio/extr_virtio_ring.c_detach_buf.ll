; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/virtio/extr_virtio_ring.c_detach_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/virtio/extr_virtio_ring.c_detach_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vring_virtqueue = type { i32, i32, %struct.TYPE_4__, i32** }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }

@VRING_DESC_F_INDIRECT = common dso_local global i32 0, align 4
@VRING_DESC_F_NEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vring_virtqueue*, i32)* @detach_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @detach_buf(%struct.vring_virtqueue* %0, i32 %1) #0 {
  %3 = alloca %struct.vring_virtqueue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vring_virtqueue* %0, %struct.vring_virtqueue** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %7 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %6, i32 0, i32 3
  %8 = load i32**, i32*** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds i32*, i32** %8, i64 %10
  store i32* null, i32** %11, align 8
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %14 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @VRING_DESC_F_INDIRECT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %2
  %26 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %27 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @phys_to_virt(i32 %34)
  %36 = call i32 @kfree(i32 %35)
  br label %37

37:                                               ; preds = %25, %2
  br label %38

38:                                               ; preds = %51, %37
  %39 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %40 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @VRING_DESC_F_NEXT, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %38
  %52 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %53 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %5, align 4
  %61 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %62 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  br label %38

65:                                               ; preds = %38
  %66 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %67 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %70 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  store i32 %68, i32* %76, align 4
  %77 = load i32, i32* %4, align 4
  %78 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %79 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %3, align 8
  %81 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  ret void
}

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @phys_to_virt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
