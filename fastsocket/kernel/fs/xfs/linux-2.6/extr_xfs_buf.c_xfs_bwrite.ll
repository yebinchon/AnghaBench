; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_buf.c_xfs_bwrite.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_buf.c_xfs_bwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32 }
%struct.xfs_buf = type { i32 }

@XBF_WRITE = common dso_local global i32 0, align 4
@XBF_ASYNC = common dso_local global i32 0, align 4
@XBF_READ = common dso_local global i32 0, align 4
@SHUTDOWN_META_IO_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_bwrite(%struct.xfs_mount* %0, %struct.xfs_buf* %1) #0 {
  %3 = alloca %struct.xfs_mount*, align 8
  %4 = alloca %struct.xfs_buf*, align 8
  %5 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %3, align 8
  store %struct.xfs_buf* %1, %struct.xfs_buf** %4, align 8
  %6 = load i32, i32* @XBF_WRITE, align 4
  %7 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %8 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = or i32 %9, %6
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @XBF_ASYNC, align 4
  %12 = load i32, i32* @XBF_READ, align 4
  %13 = or i32 %11, %12
  %14 = xor i32 %13, -1
  %15 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %16 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %20 = call i32 @xfs_buf_delwri_dequeue(%struct.xfs_buf* %19)
  %21 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %22 = call i32 @xfs_bdstrat_cb(%struct.xfs_buf* %21)
  %23 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %24 = call i32 @xfs_buf_iowait(%struct.xfs_buf* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %29 = load i32, i32* @SHUTDOWN_META_IO_ERROR, align 4
  %30 = call i32 @xfs_force_shutdown(%struct.xfs_mount* %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %2
  %32 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %33 = call i32 @xfs_buf_relse(%struct.xfs_buf* %32)
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @xfs_buf_delwri_dequeue(%struct.xfs_buf*) #1

declare dso_local i32 @xfs_bdstrat_cb(%struct.xfs_buf*) #1

declare dso_local i32 @xfs_buf_iowait(%struct.xfs_buf*) #1

declare dso_local i32 @xfs_force_shutdown(%struct.xfs_mount*, i32) #1

declare dso_local i32 @xfs_buf_relse(%struct.xfs_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
