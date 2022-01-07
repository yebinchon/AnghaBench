; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/notify/inotify/extr_inotify.c_pin_to_kill.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/notify/inotify/extr_inotify.c_pin_to_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inotify_handle = type { i32, i32 }
%struct.inotify_watch = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.super_block* }
%struct.super_block = type { i32, i32, i32, i32 }

@sb_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inotify_handle*, %struct.inotify_watch*)* @pin_to_kill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pin_to_kill(%struct.inotify_handle* %0, %struct.inotify_watch* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inotify_handle*, align 8
  %5 = alloca %struct.inotify_watch*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32, align 4
  store %struct.inotify_handle* %0, %struct.inotify_handle** %4, align 8
  store %struct.inotify_watch* %1, %struct.inotify_watch** %5, align 8
  %8 = load %struct.inotify_watch*, %struct.inotify_watch** %5, align 8
  %9 = getelementptr inbounds %struct.inotify_watch, %struct.inotify_watch* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.super_block*, %struct.super_block** %11, align 8
  store %struct.super_block* %12, %struct.super_block** %6, align 8
  %13 = load %struct.inotify_watch*, %struct.inotify_watch** %5, align 8
  %14 = getelementptr inbounds %struct.inotify_watch, %struct.inotify_watch* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  %16 = load %struct.super_block*, %struct.super_block** %6, align 8
  %17 = getelementptr inbounds %struct.super_block, %struct.super_block* %16, i32 0, i32 3
  %18 = call i64 @atomic_inc_not_zero(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.inotify_watch*, %struct.inotify_watch** %5, align 8
  %22 = call i32 @get_inotify_watch(%struct.inotify_watch* %21)
  %23 = load %struct.inotify_handle*, %struct.inotify_handle** %4, align 8
  %24 = getelementptr inbounds %struct.inotify_handle, %struct.inotify_handle* %23, i32 0, i32 0
  %25 = call i32 @mutex_unlock(i32* %24)
  store i32 1, i32* %3, align 4
  br label %80

26:                                               ; preds = %2
  %27 = call i32 @spin_lock(i32* @sb_lock)
  %28 = load %struct.super_block*, %struct.super_block** %6, align 8
  %29 = getelementptr inbounds %struct.super_block, %struct.super_block* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  %32 = call i32 @spin_unlock(i32* @sb_lock)
  %33 = load %struct.inotify_handle*, %struct.inotify_handle** %4, align 8
  %34 = getelementptr inbounds %struct.inotify_handle, %struct.inotify_handle* %33, i32 0, i32 0
  %35 = call i32 @mutex_unlock(i32* %34)
  %36 = load %struct.super_block*, %struct.super_block** %6, align 8
  %37 = getelementptr inbounds %struct.super_block, %struct.super_block* %36, i32 0, i32 1
  %38 = call i32 @down_read(i32* %37)
  %39 = load %struct.super_block*, %struct.super_block** %6, align 8
  %40 = getelementptr inbounds %struct.super_block, %struct.super_block* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i64 @likely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %26
  %48 = load %struct.super_block*, %struct.super_block** %6, align 8
  %49 = call i32 @drop_super(%struct.super_block* %48)
  store i32 0, i32* %3, align 4
  br label %80

50:                                               ; preds = %26
  %51 = load %struct.inotify_handle*, %struct.inotify_handle** %4, align 8
  %52 = getelementptr inbounds %struct.inotify_handle, %struct.inotify_handle* %51, i32 0, i32 0
  %53 = call i32 @mutex_lock(i32* %52)
  %54 = load %struct.inotify_handle*, %struct.inotify_handle** %4, align 8
  %55 = getelementptr inbounds %struct.inotify_handle, %struct.inotify_handle* %54, i32 0, i32 1
  %56 = load i32, i32* %7, align 4
  %57 = call %struct.inotify_watch* @idr_find(i32* %55, i32 %56)
  %58 = load %struct.inotify_watch*, %struct.inotify_watch** %5, align 8
  %59 = icmp ne %struct.inotify_watch* %57, %58
  br i1 %59, label %68, label %60

60:                                               ; preds = %50
  %61 = load %struct.inotify_watch*, %struct.inotify_watch** %5, align 8
  %62 = getelementptr inbounds %struct.inotify_watch, %struct.inotify_watch* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load %struct.super_block*, %struct.super_block** %64, align 8
  %66 = load %struct.super_block*, %struct.super_block** %6, align 8
  %67 = icmp ne %struct.super_block* %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %60, %50
  %69 = load %struct.inotify_handle*, %struct.inotify_handle** %4, align 8
  %70 = getelementptr inbounds %struct.inotify_handle, %struct.inotify_handle* %69, i32 0, i32 0
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load %struct.super_block*, %struct.super_block** %6, align 8
  %73 = call i32 @drop_super(%struct.super_block* %72)
  store i32 0, i32* %3, align 4
  br label %80

74:                                               ; preds = %60
  %75 = load %struct.inotify_watch*, %struct.inotify_watch** %5, align 8
  %76 = call i32 @get_inotify_watch(%struct.inotify_watch* %75)
  %77 = load %struct.inotify_handle*, %struct.inotify_handle** %4, align 8
  %78 = getelementptr inbounds %struct.inotify_handle, %struct.inotify_handle* %77, i32 0, i32 0
  %79 = call i32 @mutex_unlock(i32* %78)
  store i32 2, i32* %3, align 4
  br label %80

80:                                               ; preds = %74, %68, %47, %20
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i64 @atomic_inc_not_zero(i32*) #1

declare dso_local i32 @get_inotify_watch(%struct.inotify_watch*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @drop_super(%struct.super_block*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.inotify_watch* @idr_find(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
