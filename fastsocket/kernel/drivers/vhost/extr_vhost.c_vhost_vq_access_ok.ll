; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/vhost/extr_vhost.c_vhost_vq_access_ok.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/vhost/extr_vhost.c_vhost_vq_access_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_virtqueue = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vhost_vq_access_ok(%struct.vhost_virtqueue* %0) #0 {
  %2 = alloca %struct.vhost_virtqueue*, align 8
  store %struct.vhost_virtqueue* %0, %struct.vhost_virtqueue** %2, align 8
  %3 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %2, align 8
  %4 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %2, align 8
  %7 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %2, align 8
  %10 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %2, align 8
  %13 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %2, align 8
  %16 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @vq_access_ok(i32 %5, i32 %8, i32 %11, i32 %14, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %1
  %21 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %2, align 8
  %22 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %2, align 8
  %25 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %2, align 8
  %26 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @vq_log_access_ok(i32 %23, %struct.vhost_virtqueue* %24, i32 %27)
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %20, %1
  %31 = phi i1 [ false, %1 ], [ %29, %20 ]
  %32 = zext i1 %31 to i32
  ret i32 %32
}

declare dso_local i64 @vq_access_ok(i32, i32, i32, i32, i32) #1

declare dso_local i64 @vq_log_access_ok(i32, %struct.vhost_virtqueue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
