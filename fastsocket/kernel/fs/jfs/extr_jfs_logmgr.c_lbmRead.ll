; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_logmgr.c_lbmRead.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_logmgr.c_lbmRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jfs_log = type { i32, i32 }
%struct.lbuf = type { i32, i32, i32, i32, i32 }
%struct.bio = type { i32, i32, %struct.lbuf*, i32, i8*, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i8*, i32 }

@.str = private unnamed_addr constant [25 x i8] c"lbmRead: bp:0x%p pn:0x%x\00", align 1
@lbmREAD = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@LOGPSIZE = common dso_local global i8* null, align 8
@lbmIODone = common dso_local global i32 0, align 4
@READ_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jfs_log*, i32, %struct.lbuf**)* @lbmRead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbmRead(%struct.jfs_log* %0, i32 %1, %struct.lbuf** %2) #0 {
  %4 = alloca %struct.jfs_log*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lbuf**, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca %struct.lbuf*, align 8
  store %struct.jfs_log* %0, %struct.jfs_log** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.lbuf** %2, %struct.lbuf*** %6, align 8
  %9 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.lbuf* @lbmAllocate(%struct.jfs_log* %9, i32 %10)
  store %struct.lbuf* %11, %struct.lbuf** %8, align 8
  %12 = load %struct.lbuf**, %struct.lbuf*** %6, align 8
  store %struct.lbuf* %11, %struct.lbuf** %12, align 8
  %13 = load %struct.lbuf*, %struct.lbuf** %8, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @jfs_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.lbuf* %13, i32 %14)
  %16 = load i32, i32* @lbmREAD, align 4
  %17 = load %struct.lbuf*, %struct.lbuf** %8, align 8
  %18 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* @GFP_NOFS, align 4
  %22 = call %struct.bio* @bio_alloc(i32 %21, i32 1)
  store %struct.bio* %22, %struct.bio** %7, align 8
  %23 = load %struct.lbuf*, %struct.lbuf** %8, align 8
  %24 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %27 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %28, 9
  %30 = shl i32 %25, %29
  %31 = load %struct.bio*, %struct.bio** %7, align 8
  %32 = getelementptr inbounds %struct.bio, %struct.bio* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %34 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.bio*, %struct.bio** %7, align 8
  %37 = getelementptr inbounds %struct.bio, %struct.bio* %36, i32 0, i32 7
  store i32 %35, i32* %37, align 8
  %38 = load %struct.lbuf*, %struct.lbuf** %8, align 8
  %39 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.bio*, %struct.bio** %7, align 8
  %42 = getelementptr inbounds %struct.bio, %struct.bio* %41, i32 0, i32 6
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  store i32 %40, i32* %45, align 8
  %46 = load i8*, i8** @LOGPSIZE, align 8
  %47 = load %struct.bio*, %struct.bio** %7, align 8
  %48 = getelementptr inbounds %struct.bio, %struct.bio* %47, i32 0, i32 6
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store i8* %46, i8** %51, align 8
  %52 = load %struct.lbuf*, %struct.lbuf** %8, align 8
  %53 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.bio*, %struct.bio** %7, align 8
  %56 = getelementptr inbounds %struct.bio, %struct.bio* %55, i32 0, i32 6
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 %54, i32* %59, align 8
  %60 = load %struct.bio*, %struct.bio** %7, align 8
  %61 = getelementptr inbounds %struct.bio, %struct.bio* %60, i32 0, i32 1
  store i32 1, i32* %61, align 4
  %62 = load %struct.bio*, %struct.bio** %7, align 8
  %63 = getelementptr inbounds %struct.bio, %struct.bio* %62, i32 0, i32 5
  store i64 0, i64* %63, align 8
  %64 = load i8*, i8** @LOGPSIZE, align 8
  %65 = load %struct.bio*, %struct.bio** %7, align 8
  %66 = getelementptr inbounds %struct.bio, %struct.bio* %65, i32 0, i32 4
  store i8* %64, i8** %66, align 8
  %67 = load i32, i32* @lbmIODone, align 4
  %68 = load %struct.bio*, %struct.bio** %7, align 8
  %69 = getelementptr inbounds %struct.bio, %struct.bio* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 8
  %70 = load %struct.lbuf*, %struct.lbuf** %8, align 8
  %71 = load %struct.bio*, %struct.bio** %7, align 8
  %72 = getelementptr inbounds %struct.bio, %struct.bio* %71, i32 0, i32 2
  store %struct.lbuf* %70, %struct.lbuf** %72, align 8
  %73 = load i32, i32* @READ_SYNC, align 4
  %74 = load %struct.bio*, %struct.bio** %7, align 8
  %75 = call i32 @submit_bio(i32 %73, %struct.bio* %74)
  %76 = load %struct.lbuf*, %struct.lbuf** %8, align 8
  %77 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.lbuf*, %struct.lbuf** %8, align 8
  %80 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @lbmREAD, align 4
  %83 = icmp ne i32 %81, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @wait_event(i32 %78, i32 %84)
  ret i32 0
}

declare dso_local %struct.lbuf* @lbmAllocate(%struct.jfs_log*, i32) #1

declare dso_local i32 @jfs_info(i8*, %struct.lbuf*, i32) #1

declare dso_local %struct.bio* @bio_alloc(i32, i32) #1

declare dso_local i32 @submit_bio(i32, %struct.bio*) #1

declare dso_local i32 @wait_event(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
