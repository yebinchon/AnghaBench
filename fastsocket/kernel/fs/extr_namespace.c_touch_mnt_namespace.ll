; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namespace.c_touch_mnt_namespace.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namespace.c_touch_mnt_namespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mnt_namespace = type { i32, i64 }

@event = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mnt_namespace*)* @touch_mnt_namespace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @touch_mnt_namespace(%struct.mnt_namespace* %0) #0 {
  %2 = alloca %struct.mnt_namespace*, align 8
  store %struct.mnt_namespace* %0, %struct.mnt_namespace** %2, align 8
  %3 = load %struct.mnt_namespace*, %struct.mnt_namespace** %2, align 8
  %4 = icmp ne %struct.mnt_namespace* %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = load i64, i64* @event, align 8
  %7 = add nsw i64 %6, 1
  store i64 %7, i64* @event, align 8
  %8 = load %struct.mnt_namespace*, %struct.mnt_namespace** %2, align 8
  %9 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %8, i32 0, i32 1
  store i64 %7, i64* %9, align 8
  %10 = load %struct.mnt_namespace*, %struct.mnt_namespace** %2, align 8
  %11 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %10, i32 0, i32 0
  %12 = call i32 @wake_up_interruptible(i32* %11)
  br label %13

13:                                               ; preds = %5, %1
  ret void
}

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
