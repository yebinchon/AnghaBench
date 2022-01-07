; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_file.c_sysfs_put_open_dirent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_file.c_sysfs_put_open_dirent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysfs_dirent = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.sysfs_open_dirent* }
%struct.sysfs_open_dirent = type { i32 }
%struct.sysfs_buffer = type { i32 }

@sysfs_open_dirent_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sysfs_dirent*, %struct.sysfs_buffer*)* @sysfs_put_open_dirent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sysfs_put_open_dirent(%struct.sysfs_dirent* %0, %struct.sysfs_buffer* %1) #0 {
  %3 = alloca %struct.sysfs_dirent*, align 8
  %4 = alloca %struct.sysfs_buffer*, align 8
  %5 = alloca %struct.sysfs_open_dirent*, align 8
  %6 = alloca i64, align 8
  store %struct.sysfs_dirent* %0, %struct.sysfs_dirent** %3, align 8
  store %struct.sysfs_buffer* %1, %struct.sysfs_buffer** %4, align 8
  %7 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %3, align 8
  %8 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.sysfs_open_dirent*, %struct.sysfs_open_dirent** %9, align 8
  store %struct.sysfs_open_dirent* %10, %struct.sysfs_open_dirent** %5, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @spin_lock_irqsave(i32* @sysfs_open_dirent_lock, i64 %11)
  %13 = load %struct.sysfs_buffer*, %struct.sysfs_buffer** %4, align 8
  %14 = getelementptr inbounds %struct.sysfs_buffer, %struct.sysfs_buffer* %13, i32 0, i32 0
  %15 = call i32 @list_del(i32* %14)
  %16 = load %struct.sysfs_open_dirent*, %struct.sysfs_open_dirent** %5, align 8
  %17 = getelementptr inbounds %struct.sysfs_open_dirent, %struct.sysfs_open_dirent* %16, i32 0, i32 0
  %18 = call i64 @atomic_dec_and_test(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %3, align 8
  %22 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store %struct.sysfs_open_dirent* null, %struct.sysfs_open_dirent** %23, align 8
  br label %25

24:                                               ; preds = %2
  store %struct.sysfs_open_dirent* null, %struct.sysfs_open_dirent** %5, align 8
  br label %25

25:                                               ; preds = %24, %20
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* @sysfs_open_dirent_lock, i64 %26)
  %28 = load %struct.sysfs_open_dirent*, %struct.sysfs_open_dirent** %5, align 8
  %29 = call i32 @kfree(%struct.sysfs_open_dirent* %28)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.sysfs_open_dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
