; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_logmgr.c_lbmDirectWrite.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_logmgr.c_lbmDirectWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jfs_log = type { i32, i64 }
%struct.lbuf = type { i32, i32, i64 }

@.str = private unnamed_addr constant [42 x i8] c"lbmDirectWrite: bp:0x%p flag:0x%x pn:0x%x\00", align 1
@lbmDIRECT = common dso_local global i32 0, align 4
@L2LOGPSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jfs_log*, %struct.lbuf*, i32)* @lbmDirectWrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lbmDirectWrite(%struct.jfs_log* %0, %struct.lbuf* %1, i32 %2) #0 {
  %4 = alloca %struct.jfs_log*, align 8
  %5 = alloca %struct.lbuf*, align 8
  %6 = alloca i32, align 4
  store %struct.jfs_log* %0, %struct.jfs_log** %4, align 8
  store %struct.lbuf* %1, %struct.lbuf** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.lbuf*, %struct.lbuf** %5, align 8
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.lbuf*, %struct.lbuf** %5, align 8
  %10 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @jfs_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), %struct.lbuf* %7, i32 %8, i32 %11)
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @lbmDIRECT, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.lbuf*, %struct.lbuf** %5, align 8
  %17 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %19 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.lbuf*, %struct.lbuf** %5, align 8
  %22 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @L2LOGPSIZE, align 4
  %25 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %26 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %24, %27
  %29 = shl i32 %23, %28
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %20, %30
  %32 = load %struct.lbuf*, %struct.lbuf** %5, align 8
  %33 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %32, i32 0, i32 2
  store i64 %31, i64* %33, align 8
  %34 = load %struct.lbuf*, %struct.lbuf** %5, align 8
  %35 = call i32 @lbmStartIO(%struct.lbuf* %34)
  ret void
}

declare dso_local i32 @jfs_info(i8*, %struct.lbuf*, i32, i32) #1

declare dso_local i32 @lbmStartIO(%struct.lbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
