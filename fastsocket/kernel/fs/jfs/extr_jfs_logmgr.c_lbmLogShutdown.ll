; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_logmgr.c_lbmLogShutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_logmgr.c_lbmLogShutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jfs_log = type { %struct.lbuf* }
%struct.lbuf = type { i32, %struct.lbuf* }

@.str = private unnamed_addr constant [25 x i8] c"lbmLogShutdown: log:0x%p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jfs_log*)* @lbmLogShutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lbmLogShutdown(%struct.jfs_log* %0) #0 {
  %2 = alloca %struct.jfs_log*, align 8
  %3 = alloca %struct.lbuf*, align 8
  %4 = alloca %struct.lbuf*, align 8
  store %struct.jfs_log* %0, %struct.jfs_log** %2, align 8
  %5 = load %struct.jfs_log*, %struct.jfs_log** %2, align 8
  %6 = call i32 @jfs_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.jfs_log* %5)
  %7 = load %struct.jfs_log*, %struct.jfs_log** %2, align 8
  %8 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %7, i32 0, i32 0
  %9 = load %struct.lbuf*, %struct.lbuf** %8, align 8
  store %struct.lbuf* %9, %struct.lbuf** %3, align 8
  br label %10

10:                                               ; preds = %13, %1
  %11 = load %struct.lbuf*, %struct.lbuf** %3, align 8
  %12 = icmp ne %struct.lbuf* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %10
  %14 = load %struct.lbuf*, %struct.lbuf** %3, align 8
  %15 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %14, i32 0, i32 1
  %16 = load %struct.lbuf*, %struct.lbuf** %15, align 8
  store %struct.lbuf* %16, %struct.lbuf** %4, align 8
  %17 = load %struct.lbuf*, %struct.lbuf** %3, align 8
  %18 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @__free_page(i32 %19)
  %21 = load %struct.lbuf*, %struct.lbuf** %3, align 8
  %22 = call i32 @kfree(%struct.lbuf* %21)
  %23 = load %struct.lbuf*, %struct.lbuf** %4, align 8
  store %struct.lbuf* %23, %struct.lbuf** %3, align 8
  br label %10

24:                                               ; preds = %10
  ret void
}

declare dso_local i32 @jfs_info(i8*, %struct.jfs_log*) #1

declare dso_local i32 @__free_page(i32) #1

declare dso_local i32 @kfree(%struct.lbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
