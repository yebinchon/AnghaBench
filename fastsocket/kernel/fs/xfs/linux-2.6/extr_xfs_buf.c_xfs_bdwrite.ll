; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_buf.c_xfs_bdwrite.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_buf.c_xfs_bdwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { i32 }

@_RET_IP_ = common dso_local global i32 0, align 4
@XBF_READ = common dso_local global i32 0, align 4
@XBF_DELWRI = common dso_local global i32 0, align 4
@XBF_ASYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_bdwrite(i8* %0, %struct.xfs_buf* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.xfs_buf*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.xfs_buf* %1, %struct.xfs_buf** %4, align 8
  %5 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %6 = load i32, i32* @_RET_IP_, align 4
  %7 = call i32 @trace_xfs_buf_bdwrite(%struct.xfs_buf* %5, i32 %6)
  %8 = load i32, i32* @XBF_READ, align 4
  %9 = xor i32 %8, -1
  %10 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %11 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, %9
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* @XBF_DELWRI, align 4
  %15 = load i32, i32* @XBF_ASYNC, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %18 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %22 = call i32 @xfs_buf_delwri_queue(%struct.xfs_buf* %21, i32 1)
  ret void
}

declare dso_local i32 @trace_xfs_buf_bdwrite(%struct.xfs_buf*, i32) #1

declare dso_local i32 @xfs_buf_delwri_queue(%struct.xfs_buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
