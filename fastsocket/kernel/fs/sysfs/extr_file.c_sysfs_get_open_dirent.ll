; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_file.c_sysfs_get_open_dirent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_file.c_sysfs_get_open_dirent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysfs_dirent = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.sysfs_open_dirent* }
%struct.sysfs_open_dirent = type { i32, i32, i32, i32 }
%struct.sysfs_buffer = type { i32 }

@sysfs_open_dirent_lock = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sysfs_dirent*, %struct.sysfs_buffer*)* @sysfs_get_open_dirent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysfs_get_open_dirent(%struct.sysfs_dirent* %0, %struct.sysfs_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sysfs_dirent*, align 8
  %5 = alloca %struct.sysfs_buffer*, align 8
  %6 = alloca %struct.sysfs_open_dirent*, align 8
  %7 = alloca %struct.sysfs_open_dirent*, align 8
  store %struct.sysfs_dirent* %0, %struct.sysfs_dirent** %4, align 8
  store %struct.sysfs_buffer* %1, %struct.sysfs_buffer** %5, align 8
  store %struct.sysfs_open_dirent* null, %struct.sysfs_open_dirent** %7, align 8
  br label %8

8:                                                ; preds = %54, %2
  %9 = call i32 @spin_lock_irq(i32* @sysfs_open_dirent_lock)
  %10 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %4, align 8
  %11 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.sysfs_open_dirent*, %struct.sysfs_open_dirent** %12, align 8
  %14 = icmp ne %struct.sysfs_open_dirent* %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %8
  %16 = load %struct.sysfs_open_dirent*, %struct.sysfs_open_dirent** %7, align 8
  %17 = icmp ne %struct.sysfs_open_dirent* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load %struct.sysfs_open_dirent*, %struct.sysfs_open_dirent** %7, align 8
  %20 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %4, align 8
  %21 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store %struct.sysfs_open_dirent* %19, %struct.sysfs_open_dirent** %22, align 8
  store %struct.sysfs_open_dirent* null, %struct.sysfs_open_dirent** %7, align 8
  br label %23

23:                                               ; preds = %18, %15, %8
  %24 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %4, align 8
  %25 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.sysfs_open_dirent*, %struct.sysfs_open_dirent** %26, align 8
  store %struct.sysfs_open_dirent* %27, %struct.sysfs_open_dirent** %6, align 8
  %28 = load %struct.sysfs_open_dirent*, %struct.sysfs_open_dirent** %6, align 8
  %29 = icmp ne %struct.sysfs_open_dirent* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %23
  %31 = load %struct.sysfs_open_dirent*, %struct.sysfs_open_dirent** %6, align 8
  %32 = getelementptr inbounds %struct.sysfs_open_dirent, %struct.sysfs_open_dirent* %31, i32 0, i32 3
  %33 = call i32 @atomic_inc(i32* %32)
  %34 = load %struct.sysfs_buffer*, %struct.sysfs_buffer** %5, align 8
  %35 = getelementptr inbounds %struct.sysfs_buffer, %struct.sysfs_buffer* %34, i32 0, i32 0
  %36 = load %struct.sysfs_open_dirent*, %struct.sysfs_open_dirent** %6, align 8
  %37 = getelementptr inbounds %struct.sysfs_open_dirent, %struct.sysfs_open_dirent* %36, i32 0, i32 0
  %38 = call i32 @list_add_tail(i32* %35, i32* %37)
  br label %39

39:                                               ; preds = %30, %23
  %40 = call i32 @spin_unlock_irq(i32* @sysfs_open_dirent_lock)
  %41 = load %struct.sysfs_open_dirent*, %struct.sysfs_open_dirent** %6, align 8
  %42 = icmp ne %struct.sysfs_open_dirent* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load %struct.sysfs_open_dirent*, %struct.sysfs_open_dirent** %7, align 8
  %45 = call i32 @kfree(%struct.sysfs_open_dirent* %44)
  store i32 0, i32* %3, align 4
  br label %67

46:                                               ; preds = %39
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call %struct.sysfs_open_dirent* @kmalloc(i32 16, i32 %47)
  store %struct.sysfs_open_dirent* %48, %struct.sysfs_open_dirent** %7, align 8
  %49 = load %struct.sysfs_open_dirent*, %struct.sysfs_open_dirent** %7, align 8
  %50 = icmp ne %struct.sysfs_open_dirent* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %67

54:                                               ; preds = %46
  %55 = load %struct.sysfs_open_dirent*, %struct.sysfs_open_dirent** %7, align 8
  %56 = getelementptr inbounds %struct.sysfs_open_dirent, %struct.sysfs_open_dirent* %55, i32 0, i32 3
  %57 = call i32 @atomic_set(i32* %56, i32 0)
  %58 = load %struct.sysfs_open_dirent*, %struct.sysfs_open_dirent** %7, align 8
  %59 = getelementptr inbounds %struct.sysfs_open_dirent, %struct.sysfs_open_dirent* %58, i32 0, i32 2
  %60 = call i32 @atomic_set(i32* %59, i32 1)
  %61 = load %struct.sysfs_open_dirent*, %struct.sysfs_open_dirent** %7, align 8
  %62 = getelementptr inbounds %struct.sysfs_open_dirent, %struct.sysfs_open_dirent* %61, i32 0, i32 1
  %63 = call i32 @init_waitqueue_head(i32* %62)
  %64 = load %struct.sysfs_open_dirent*, %struct.sysfs_open_dirent** %7, align 8
  %65 = getelementptr inbounds %struct.sysfs_open_dirent, %struct.sysfs_open_dirent* %64, i32 0, i32 0
  %66 = call i32 @INIT_LIST_HEAD(i32* %65)
  br label %8

67:                                               ; preds = %51, %43
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @kfree(%struct.sysfs_open_dirent*) #1

declare dso_local %struct.sysfs_open_dirent* @kmalloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
