; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/virtio/extr_virtio_ring.c_virtqueue_detach_unused_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/virtio/extr_virtio_ring.c_virtqueue_detach_unused_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { i32 }
%struct.vring_virtqueue = type { i32, %struct.TYPE_4__, i8** }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @virtqueue_detach_unused_buf(%struct.virtqueue* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.virtqueue*, align 8
  %4 = alloca %struct.vring_virtqueue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.virtqueue* %0, %struct.virtqueue** %3, align 8
  %7 = load %struct.virtqueue*, %struct.virtqueue** %3, align 8
  %8 = call %struct.vring_virtqueue* @to_vvq(%struct.virtqueue* %7)
  store %struct.vring_virtqueue* %8, %struct.vring_virtqueue** %4, align 8
  %9 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %10 = call i32 @START_USE(%struct.vring_virtqueue* %9)
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %49, %1
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %14 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ult i32 %12, %16
  br i1 %17, label %18, label %52

18:                                               ; preds = %11
  %19 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %20 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %19, i32 0, i32 2
  %21 = load i8**, i8*** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %18
  br label %49

28:                                               ; preds = %18
  %29 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %30 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %29, i32 0, i32 2
  %31 = load i8**, i8*** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %31, i64 %33
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %6, align 8
  %36 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @detach_buf(%struct.vring_virtqueue* %36, i32 %37)
  %39 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %40 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %43, align 4
  %46 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %47 = call i32 @END_USE(%struct.vring_virtqueue* %46)
  %48 = load i8*, i8** %6, align 8
  store i8* %48, i8** %2, align 8
  br label %65

49:                                               ; preds = %27
  %50 = load i32, i32* %5, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %11

52:                                               ; preds = %11
  %53 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %54 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %57 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %55, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @BUG_ON(i32 %61)
  %63 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %4, align 8
  %64 = call i32 @END_USE(%struct.vring_virtqueue* %63)
  store i8* null, i8** %2, align 8
  br label %65

65:                                               ; preds = %52, %28
  %66 = load i8*, i8** %2, align 8
  ret i8* %66
}

declare dso_local %struct.vring_virtqueue* @to_vvq(%struct.virtqueue*) #1

declare dso_local i32 @START_USE(%struct.vring_virtqueue*) #1

declare dso_local i32 @detach_buf(%struct.vring_virtqueue*, i32) #1

declare dso_local i32 @END_USE(%struct.vring_virtqueue*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
