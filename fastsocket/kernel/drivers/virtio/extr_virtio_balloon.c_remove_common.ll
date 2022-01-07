; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/virtio/extr_virtio_balloon.c_remove_common.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/virtio/extr_virtio_balloon.c_remove_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_balloon = type { %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtio_balloon*)* @remove_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_common(%struct.virtio_balloon* %0) #0 {
  %2 = alloca %struct.virtio_balloon*, align 8
  store %struct.virtio_balloon* %0, %struct.virtio_balloon** %2, align 8
  br label %3

3:                                                ; preds = %8, %1
  %4 = load %struct.virtio_balloon*, %struct.virtio_balloon** %2, align 8
  %5 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %3
  %9 = load %struct.virtio_balloon*, %struct.virtio_balloon** %2, align 8
  %10 = load %struct.virtio_balloon*, %struct.virtio_balloon** %2, align 8
  %11 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @leak_balloon(%struct.virtio_balloon* %9, i64 %12)
  br label %3

14:                                               ; preds = %3
  %15 = load %struct.virtio_balloon*, %struct.virtio_balloon** %2, align 8
  %16 = call i32 @update_balloon_size(%struct.virtio_balloon* %15)
  %17 = load %struct.virtio_balloon*, %struct.virtio_balloon** %2, align 8
  %18 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %22, align 8
  %24 = load %struct.virtio_balloon*, %struct.virtio_balloon** %2, align 8
  %25 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = call i32 %23(%struct.TYPE_5__* %26)
  %28 = load %struct.virtio_balloon*, %struct.virtio_balloon** %2, align 8
  %29 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %33, align 8
  %35 = load %struct.virtio_balloon*, %struct.virtio_balloon** %2, align 8
  %36 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = call i32 %34(%struct.TYPE_5__* %37)
  ret void
}

declare dso_local i32 @leak_balloon(%struct.virtio_balloon*, i64) #1

declare dso_local i32 @update_balloon_size(%struct.virtio_balloon*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
