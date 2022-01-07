; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/vhost/extr_vhost.c_vhost_work_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/vhost/extr_vhost.c_vhost_work_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_dev = type { i32, i32, i32 }
%struct.vhost_work = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vhost_dev*, %struct.vhost_work*)* @vhost_work_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vhost_work_queue(%struct.vhost_dev* %0, %struct.vhost_work* %1) #0 {
  %3 = alloca %struct.vhost_dev*, align 8
  %4 = alloca %struct.vhost_work*, align 8
  %5 = alloca i64, align 8
  store %struct.vhost_dev* %0, %struct.vhost_dev** %3, align 8
  store %struct.vhost_work* %1, %struct.vhost_work** %4, align 8
  %6 = load %struct.vhost_dev*, %struct.vhost_dev** %3, align 8
  %7 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %6, i32 0, i32 0
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.vhost_work*, %struct.vhost_work** %4, align 8
  %11 = getelementptr inbounds %struct.vhost_work, %struct.vhost_work* %10, i32 0, i32 1
  %12 = call i64 @list_empty(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %2
  %15 = load %struct.vhost_work*, %struct.vhost_work** %4, align 8
  %16 = getelementptr inbounds %struct.vhost_work, %struct.vhost_work* %15, i32 0, i32 1
  %17 = load %struct.vhost_dev*, %struct.vhost_dev** %3, align 8
  %18 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %17, i32 0, i32 2
  %19 = call i32 @list_add_tail(i32* %16, i32* %18)
  %20 = load %struct.vhost_work*, %struct.vhost_work** %4, align 8
  %21 = getelementptr inbounds %struct.vhost_work, %struct.vhost_work* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = load %struct.vhost_dev*, %struct.vhost_dev** %3, align 8
  %25 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @wake_up_process(i32 %26)
  br label %28

28:                                               ; preds = %14, %2
  %29 = load %struct.vhost_dev*, %struct.vhost_dev** %3, align 8
  %30 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %29, i32 0, i32 0
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @wake_up_process(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
