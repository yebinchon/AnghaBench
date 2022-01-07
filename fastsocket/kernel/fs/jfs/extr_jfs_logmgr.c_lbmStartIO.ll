; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_logmgr.c_lbmStartIO.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_logmgr.c_lbmStartIO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.lbuf = type { i32, i32, i32, %struct.jfs_log* }
%struct.jfs_log = type { i32, i64, i32 }
%struct.bio = type { i32, i32, i8*, %struct.lbuf*, i32 (%struct.bio*, i32)*, i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i8*, i32 }

@.str = private unnamed_addr constant [12 x i8] c"lbmStartIO\0A\00", align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@LOGPSIZE = common dso_local global i8* null, align 8
@WRITE_SYNC = common dso_local global i32 0, align 4
@lmStat = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lbuf*)* @lbmStartIO to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lbmStartIO(%struct.lbuf* %0) #0 {
  %2 = alloca %struct.lbuf*, align 8
  %3 = alloca %struct.bio*, align 8
  %4 = alloca %struct.jfs_log*, align 8
  store %struct.lbuf* %0, %struct.lbuf** %2, align 8
  %5 = load %struct.lbuf*, %struct.lbuf** %2, align 8
  %6 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %5, i32 0, i32 3
  %7 = load %struct.jfs_log*, %struct.jfs_log** %6, align 8
  store %struct.jfs_log* %7, %struct.jfs_log** %4, align 8
  %8 = call i32 @jfs_info(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @GFP_NOFS, align 4
  %10 = call %struct.bio* @bio_alloc(i32 %9, i32 1)
  store %struct.bio* %10, %struct.bio** %3, align 8
  %11 = load %struct.lbuf*, %struct.lbuf** %2, align 8
  %12 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %15 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sub nsw i32 %16, 9
  %18 = shl i32 %13, %17
  %19 = load %struct.bio*, %struct.bio** %3, align 8
  %20 = getelementptr inbounds %struct.bio, %struct.bio* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %22 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.bio*, %struct.bio** %3, align 8
  %25 = getelementptr inbounds %struct.bio, %struct.bio* %24, i32 0, i32 7
  store i32 %23, i32* %25, align 8
  %26 = load %struct.lbuf*, %struct.lbuf** %2, align 8
  %27 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.bio*, %struct.bio** %3, align 8
  %30 = getelementptr inbounds %struct.bio, %struct.bio* %29, i32 0, i32 6
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  store i32 %28, i32* %33, align 8
  %34 = load i8*, i8** @LOGPSIZE, align 8
  %35 = load %struct.bio*, %struct.bio** %3, align 8
  %36 = getelementptr inbounds %struct.bio, %struct.bio* %35, i32 0, i32 6
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  store i8* %34, i8** %39, align 8
  %40 = load %struct.lbuf*, %struct.lbuf** %2, align 8
  %41 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.bio*, %struct.bio** %3, align 8
  %44 = getelementptr inbounds %struct.bio, %struct.bio* %43, i32 0, i32 6
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32 %42, i32* %47, align 8
  %48 = load %struct.bio*, %struct.bio** %3, align 8
  %49 = getelementptr inbounds %struct.bio, %struct.bio* %48, i32 0, i32 1
  store i32 1, i32* %49, align 4
  %50 = load %struct.bio*, %struct.bio** %3, align 8
  %51 = getelementptr inbounds %struct.bio, %struct.bio* %50, i32 0, i32 5
  store i64 0, i64* %51, align 8
  %52 = load i8*, i8** @LOGPSIZE, align 8
  %53 = load %struct.bio*, %struct.bio** %3, align 8
  %54 = getelementptr inbounds %struct.bio, %struct.bio* %53, i32 0, i32 2
  store i8* %52, i8** %54, align 8
  %55 = load %struct.bio*, %struct.bio** %3, align 8
  %56 = getelementptr inbounds %struct.bio, %struct.bio* %55, i32 0, i32 4
  store i32 (%struct.bio*, i32)* @lbmIODone, i32 (%struct.bio*, i32)** %56, align 8
  %57 = load %struct.lbuf*, %struct.lbuf** %2, align 8
  %58 = load %struct.bio*, %struct.bio** %3, align 8
  %59 = getelementptr inbounds %struct.bio, %struct.bio* %58, i32 0, i32 3
  store %struct.lbuf* %57, %struct.lbuf** %59, align 8
  %60 = load %struct.jfs_log*, %struct.jfs_log** %4, align 8
  %61 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %1
  %65 = load %struct.bio*, %struct.bio** %3, align 8
  %66 = getelementptr inbounds %struct.bio, %struct.bio* %65, i32 0, i32 2
  store i8* null, i8** %66, align 8
  %67 = load %struct.bio*, %struct.bio** %3, align 8
  %68 = call i32 @lbmIODone(%struct.bio* %67, i32 0)
  br label %75

69:                                               ; preds = %1
  %70 = load i32, i32* @WRITE_SYNC, align 4
  %71 = load %struct.bio*, %struct.bio** %3, align 8
  %72 = call i32 @submit_bio(i32 %70, %struct.bio* %71)
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lmStat, i32 0, i32 0), align 4
  %74 = call i32 @INCREMENT(i32 %73)
  br label %75

75:                                               ; preds = %69, %64
  ret void
}

declare dso_local i32 @jfs_info(i8*) #1

declare dso_local %struct.bio* @bio_alloc(i32, i32) #1

declare dso_local i32 @lbmIODone(%struct.bio*, i32) #1

declare dso_local i32 @submit_bio(i32, %struct.bio*) #1

declare dso_local i32 @INCREMENT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
