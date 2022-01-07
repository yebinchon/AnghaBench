; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_sync.c_xfs_quiesce_attr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_sync.c_xfs_quiesce_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32 }

@.str = private unnamed_addr constant [80 x i8] c"xfs_attr_quiesce: failed to log sb changes. Frozen image may not be consistent.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_quiesce_attr(%struct.xfs_mount* %0) #0 {
  %2 = alloca %struct.xfs_mount*, align 8
  %3 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %9, %1
  %5 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %6 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %5, i32 0, i32 0
  %7 = call i64 @atomic_read(i32* %6)
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = call i32 @delay(i32 100)
  br label %4

11:                                               ; preds = %4
  %12 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %13 = call i32 @xfs_quiesce_fs(%struct.xfs_mount* %12)
  %14 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %15 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %14, i32 0, i32 0
  %16 = call i64 @atomic_read(i32* %15)
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON(i32 %18)
  %20 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %21 = call i32 @xfs_log_sbcount(%struct.xfs_mount* %20, i32 1)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %11
  %25 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %26 = call i32 @xfs_warn(%struct.xfs_mount* %25, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %11
  %28 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %29 = call i32 @xfs_log_unmount_write(%struct.xfs_mount* %28)
  %30 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %31 = call i32 @xfs_unmountfs_writesb(%struct.xfs_mount* %30)
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @delay(i32) #1

declare dso_local i32 @xfs_quiesce_fs(%struct.xfs_mount*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @xfs_log_sbcount(%struct.xfs_mount*, i32) #1

declare dso_local i32 @xfs_warn(%struct.xfs_mount*, i8*) #1

declare dso_local i32 @xfs_log_unmount_write(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_unmountfs_writesb(%struct.xfs_mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
