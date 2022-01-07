; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_file.c_sysfs_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_file.c_sysfs_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_5__, %struct.sysfs_buffer* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.sysfs_dirent* }
%struct.sysfs_dirent = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.sysfs_open_dirent* }
%struct.sysfs_open_dirent = type { i32, i32 }
%struct.sysfs_buffer = type { i64, i32 }

@DEFAULT_POLLMASK = common dso_local global i32 0, align 4
@POLLERR = common dso_local global i32 0, align 4
@POLLPRI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @sysfs_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysfs_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sysfs_buffer*, align 8
  %7 = alloca %struct.sysfs_dirent*, align 8
  %8 = alloca %struct.sysfs_open_dirent*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 1
  %11 = load %struct.sysfs_buffer*, %struct.sysfs_buffer** %10, align 8
  store %struct.sysfs_buffer* %11, %struct.sysfs_buffer** %6, align 8
  %12 = load %struct.file*, %struct.file** %4, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %16, align 8
  store %struct.sysfs_dirent* %17, %struct.sysfs_dirent** %7, align 8
  %18 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %7, align 8
  %19 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.sysfs_open_dirent*, %struct.sysfs_open_dirent** %20, align 8
  store %struct.sysfs_open_dirent* %21, %struct.sysfs_open_dirent** %8, align 8
  %22 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %7, align 8
  %23 = call i32 @sysfs_get_active_two(%struct.sysfs_dirent* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  br label %44

26:                                               ; preds = %2
  %27 = load %struct.file*, %struct.file** %4, align 8
  %28 = load %struct.sysfs_open_dirent*, %struct.sysfs_open_dirent** %8, align 8
  %29 = getelementptr inbounds %struct.sysfs_open_dirent, %struct.sysfs_open_dirent* %28, i32 0, i32 1
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @poll_wait(%struct.file* %27, i32* %29, i32* %30)
  %32 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %7, align 8
  %33 = call i32 @sysfs_put_active_two(%struct.sysfs_dirent* %32)
  %34 = load %struct.sysfs_buffer*, %struct.sysfs_buffer** %6, align 8
  %35 = getelementptr inbounds %struct.sysfs_buffer, %struct.sysfs_buffer* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.sysfs_open_dirent*, %struct.sysfs_open_dirent** %8, align 8
  %38 = getelementptr inbounds %struct.sysfs_open_dirent, %struct.sysfs_open_dirent* %37, i32 0, i32 0
  %39 = call i64 @atomic_read(i32* %38)
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %26
  br label %44

42:                                               ; preds = %26
  %43 = load i32, i32* @DEFAULT_POLLMASK, align 4
  store i32 %43, i32* %3, align 4
  br label %52

44:                                               ; preds = %41, %25
  %45 = load %struct.sysfs_buffer*, %struct.sysfs_buffer** %6, align 8
  %46 = getelementptr inbounds %struct.sysfs_buffer, %struct.sysfs_buffer* %45, i32 0, i32 1
  store i32 1, i32* %46, align 8
  %47 = load i32, i32* @DEFAULT_POLLMASK, align 4
  %48 = load i32, i32* @POLLERR, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @POLLPRI, align 4
  %51 = or i32 %49, %50
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %44, %42
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @sysfs_get_active_two(%struct.sysfs_dirent*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i32 @sysfs_put_active_two(%struct.sysfs_dirent*) #1

declare dso_local i64 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
