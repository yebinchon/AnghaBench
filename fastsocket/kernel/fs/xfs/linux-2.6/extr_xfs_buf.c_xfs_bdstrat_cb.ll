; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_buf.c_xfs_bdstrat_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_buf.c_xfs_bdstrat_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@_RET_IP_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_bdstrat_cb(%struct.xfs_buf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xfs_buf*, align 8
  store %struct.xfs_buf* %0, %struct.xfs_buf** %3, align 8
  %4 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %5 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @XFS_FORCED_SHUTDOWN(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %1
  %12 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %13 = load i32, i32* @_RET_IP_, align 4
  %14 = call i32 @trace_xfs_bdstrat_shut(%struct.xfs_buf* %12, i32 %13)
  %15 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %16 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %11
  %20 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %21 = call i32 @XFS_BUF_ISREAD(%struct.xfs_buf* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %25 = call i32 @xfs_bioerror_relse(%struct.xfs_buf* %24)
  store i32 %25, i32* %2, align 4
  br label %32

26:                                               ; preds = %19, %11
  %27 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %28 = call i32 @xfs_bioerror(%struct.xfs_buf* %27)
  store i32 %28, i32* %2, align 4
  br label %32

29:                                               ; preds = %1
  %30 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %31 = call i32 @xfs_buf_iorequest(%struct.xfs_buf* %30)
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %29, %26, %23
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i64 @XFS_FORCED_SHUTDOWN(i32) #1

declare dso_local i32 @trace_xfs_bdstrat_shut(%struct.xfs_buf*, i32) #1

declare dso_local i32 @XFS_BUF_ISREAD(%struct.xfs_buf*) #1

declare dso_local i32 @xfs_bioerror_relse(%struct.xfs_buf*) #1

declare dso_local i32 @xfs_bioerror(%struct.xfs_buf*) #1

declare dso_local i32 @xfs_buf_iorequest(%struct.xfs_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
