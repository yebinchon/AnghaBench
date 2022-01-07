; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/extr_evtchn.c_evtchn_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/extr_evtchn.c_evtchn_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.per_user_data = type { %struct.per_user_data*, i64 }
%struct.inode = type { i32 }
%struct.file = type { %struct.per_user_data* }

@port_user_lock = common dso_local global i32 0, align 4
@NR_EVENT_CHANNELS = common dso_local global i32 0, align 4
@port_user = common dso_local global %struct.per_user_data** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @evtchn_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evtchn_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.per_user_data*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.per_user_data*, %struct.per_user_data** %8, align 8
  store %struct.per_user_data* %9, %struct.per_user_data** %6, align 8
  %10 = call i32 @spin_lock_irq(i32* @port_user_lock)
  %11 = load %struct.per_user_data*, %struct.per_user_data** %6, align 8
  %12 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @free_page(i64 %13)
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %36, %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @NR_EVENT_CHANNELS, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %39

19:                                               ; preds = %15
  %20 = load %struct.per_user_data**, %struct.per_user_data*** @port_user, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.per_user_data*, %struct.per_user_data** %20, i64 %22
  %24 = load %struct.per_user_data*, %struct.per_user_data** %23, align 8
  %25 = load %struct.per_user_data*, %struct.per_user_data** %6, align 8
  %26 = icmp ne %struct.per_user_data* %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %36

28:                                               ; preds = %19
  %29 = load %struct.per_user_data**, %struct.per_user_data*** @port_user, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.per_user_data*, %struct.per_user_data** %29, i64 %31
  %33 = load %struct.per_user_data*, %struct.per_user_data** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @evtchn_unbind_from_user(%struct.per_user_data* %33, i32 %34)
  br label %36

36:                                               ; preds = %28, %27
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %15

39:                                               ; preds = %15
  %40 = call i32 @spin_unlock_irq(i32* @port_user_lock)
  %41 = load %struct.per_user_data*, %struct.per_user_data** %6, align 8
  %42 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %41, i32 0, i32 0
  %43 = load %struct.per_user_data*, %struct.per_user_data** %42, align 8
  %44 = call i32 @kfree(%struct.per_user_data* %43)
  %45 = load %struct.per_user_data*, %struct.per_user_data** %6, align 8
  %46 = call i32 @kfree(%struct.per_user_data* %45)
  ret i32 0
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @evtchn_unbind_from_user(%struct.per_user_data*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @kfree(%struct.per_user_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
