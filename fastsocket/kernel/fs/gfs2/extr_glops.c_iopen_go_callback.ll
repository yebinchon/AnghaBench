; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_glops.c_iopen_go_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_glops.c_iopen_go_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_glock = type { i64, i64, i32, %struct.gfs2_sbd*, i64 }
%struct.gfs2_sbd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.gfs2_inode = type { i32 }

@MS_RDONLY = common dso_local global i32 0, align 4
@LM_ST_UNLOCKED = common dso_local global i64 0, align 8
@LM_ST_SHARED = common dso_local global i64 0, align 8
@gfs2_delete_workqueue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_glock*, i32)* @iopen_go_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iopen_go_callback(%struct.gfs2_glock* %0, i32 %1) #0 {
  %3 = alloca %struct.gfs2_glock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gfs2_inode*, align 8
  %6 = alloca %struct.gfs2_sbd*, align 8
  store %struct.gfs2_glock* %0, %struct.gfs2_glock** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %8 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %7, i32 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.gfs2_inode*
  store %struct.gfs2_inode* %10, %struct.gfs2_inode** %5, align 8
  %11 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %12 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %11, i32 0, i32 3
  %13 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %12, align 8
  store %struct.gfs2_sbd* %13, %struct.gfs2_sbd** %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %18 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MS_RDONLY, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %16, %2
  br label %53

26:                                               ; preds = %16
  %27 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %28 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @LM_ST_UNLOCKED, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %53

32:                                               ; preds = %26
  %33 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %34 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @LM_ST_SHARED, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %32
  %39 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %40 = icmp ne %struct.gfs2_inode* %39, null
  br i1 %40, label %41, label %53

41:                                               ; preds = %38
  %42 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %43 = call i32 @gfs2_glock_hold(%struct.gfs2_glock* %42)
  %44 = load i32, i32* @gfs2_delete_workqueue, align 4
  %45 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %46 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %45, i32 0, i32 2
  %47 = call i64 @queue_work(i32 %44, i32* %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %51 = call i32 @gfs2_glock_put_nolock(%struct.gfs2_glock* %50)
  br label %52

52:                                               ; preds = %49, %41
  br label %53

53:                                               ; preds = %25, %52, %38, %32, %26
  ret void
}

declare dso_local i32 @gfs2_glock_hold(%struct.gfs2_glock*) #1

declare dso_local i64 @queue_work(i32, i32*) #1

declare dso_local i32 @gfs2_glock_put_nolock(%struct.gfs2_glock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
