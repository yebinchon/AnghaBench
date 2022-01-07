; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/vhost/extr_vhost.c_vhost_init_used.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/vhost/extr_vhost.c_vhost_init_used.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_virtqueue = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vhost_init_used(%struct.vhost_virtqueue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vhost_virtqueue*, align 8
  %4 = alloca i32, align 4
  store %struct.vhost_virtqueue* %0, %struct.vhost_virtqueue** %3, align 8
  %5 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %3, align 8
  %6 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

10:                                               ; preds = %1
  %11 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %3, align 8
  %12 = call i32 @vhost_update_used_flags(%struct.vhost_virtqueue* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %28

17:                                               ; preds = %10
  %18 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %3, align 8
  %19 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %3, align 8
  %21 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %3, align 8
  %24 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @get_user(i32 %22, i32* %26)
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %17, %15, %9
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @vhost_update_used_flags(%struct.vhost_virtqueue*) #1

declare dso_local i32 @get_user(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
