; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_logmgr.c_lmLogShutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_logmgr.c_lmLogShutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jfs_log = type { i32, i32, %struct.lbuf* }
%struct.lbuf = type { i64, i32 }
%struct.lrd = type { %struct.TYPE_6__, i64, i8*, i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.logsuper = type { i8*, i8* }
%struct.logpage = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { i8* }

@.str = private unnamed_addr constant [24 x i8] c"lmLogShutdown: log:0x%p\00", align 1
@LOG_SYNCPT = common dso_local global i32 0, align 4
@lbmWRITE = common dso_local global i32 0, align 4
@lbmRELEASE = common dso_local global i32 0, align 4
@lbmSYNC = common dso_local global i32 0, align 4
@lbmFREE = common dso_local global i32 0, align 4
@LOGREDONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"lmLogShutdown: lsn:0x%x page:%d eor:%d\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"lmLogShutdown: exit(%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lmLogShutdown(%struct.jfs_log* %0) #0 {
  %2 = alloca %struct.jfs_log*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.lrd, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.logsuper*, align 8
  %7 = alloca %struct.lbuf*, align 8
  %8 = alloca %struct.lbuf*, align 8
  %9 = alloca %struct.logpage*, align 8
  store %struct.jfs_log* %0, %struct.jfs_log** %2, align 8
  %10 = load %struct.jfs_log*, %struct.jfs_log** %2, align 8
  %11 = call i32 (i8*, ...) @jfs_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.jfs_log* %10)
  %12 = load %struct.jfs_log*, %struct.jfs_log** %2, align 8
  %13 = call i32 @jfs_flush_journal(%struct.jfs_log* %12, i32 2)
  %14 = getelementptr inbounds %struct.lrd, %struct.lrd* %4, i32 0, i32 4
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %struct.lrd, %struct.lrd* %4, i32 0, i32 3
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* @LOG_SYNCPT, align 4
  %17 = call i8* @cpu_to_le16(i32 %16)
  %18 = getelementptr inbounds %struct.lrd, %struct.lrd* %4, i32 0, i32 2
  store i8* %17, i8** %18, align 8
  %19 = getelementptr inbounds %struct.lrd, %struct.lrd* %4, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = getelementptr inbounds %struct.lrd, %struct.lrd* %4, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = load %struct.jfs_log*, %struct.jfs_log** %2, align 8
  %24 = call i32 @lmWriteRecord(%struct.jfs_log* %23, i32* null, %struct.lrd* %4, i32* null)
  store i32 %24, i32* %5, align 4
  %25 = load %struct.jfs_log*, %struct.jfs_log** %2, align 8
  %26 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %25, i32 0, i32 2
  %27 = load %struct.lbuf*, %struct.lbuf** %26, align 8
  store %struct.lbuf* %27, %struct.lbuf** %8, align 8
  %28 = load %struct.lbuf*, %struct.lbuf** %8, align 8
  %29 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.logpage*
  store %struct.logpage* %31, %struct.logpage** %9, align 8
  %32 = load %struct.lbuf*, %struct.lbuf** %8, align 8
  %33 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i8* @cpu_to_le16(i32 %34)
  %36 = load %struct.logpage*, %struct.logpage** %9, align 8
  %37 = getelementptr inbounds %struct.logpage, %struct.logpage* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  store i8* %35, i8** %38, align 8
  %39 = load %struct.logpage*, %struct.logpage** %9, align 8
  %40 = getelementptr inbounds %struct.logpage, %struct.logpage* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  store i8* %35, i8** %41, align 8
  %42 = load %struct.jfs_log*, %struct.jfs_log** %2, align 8
  %43 = load %struct.jfs_log*, %struct.jfs_log** %2, align 8
  %44 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %43, i32 0, i32 2
  %45 = load %struct.lbuf*, %struct.lbuf** %44, align 8
  %46 = load i32, i32* @lbmWRITE, align 4
  %47 = load i32, i32* @lbmRELEASE, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @lbmSYNC, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @lbmWrite(%struct.jfs_log* %42, %struct.lbuf* %45, i32 %50, i32 0)
  %52 = load %struct.jfs_log*, %struct.jfs_log** %2, align 8
  %53 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %52, i32 0, i32 2
  %54 = load %struct.lbuf*, %struct.lbuf** %53, align 8
  %55 = load i32, i32* @lbmFREE, align 4
  %56 = call i32 @lbmIOWait(%struct.lbuf* %54, i32 %55)
  %57 = load %struct.jfs_log*, %struct.jfs_log** %2, align 8
  %58 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %57, i32 0, i32 2
  store %struct.lbuf* null, %struct.lbuf** %58, align 8
  %59 = load %struct.jfs_log*, %struct.jfs_log** %2, align 8
  %60 = call i32 @lbmRead(%struct.jfs_log* %59, i32 1, %struct.lbuf** %7)
  store i32 %60, i32* %3, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %1
  br label %95

63:                                               ; preds = %1
  %64 = load %struct.lbuf*, %struct.lbuf** %7, align 8
  %65 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to %struct.logsuper*
  store %struct.logsuper* %67, %struct.logsuper** %6, align 8
  %68 = load i32, i32* @LOGREDONE, align 4
  %69 = call i8* @cpu_to_le32(i32 %68)
  %70 = load %struct.logsuper*, %struct.logsuper** %6, align 8
  %71 = getelementptr inbounds %struct.logsuper, %struct.logsuper* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i8* @cpu_to_le32(i32 %72)
  %74 = load %struct.logsuper*, %struct.logsuper** %6, align 8
  %75 = getelementptr inbounds %struct.logsuper, %struct.logsuper* %74, i32 0, i32 0
  store i8* %73, i8** %75, align 8
  %76 = load %struct.jfs_log*, %struct.jfs_log** %2, align 8
  %77 = load %struct.lbuf*, %struct.lbuf** %7, align 8
  %78 = load i32, i32* @lbmWRITE, align 4
  %79 = load i32, i32* @lbmRELEASE, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @lbmSYNC, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @lbmDirectWrite(%struct.jfs_log* %76, %struct.lbuf* %77, i32 %82)
  %84 = load %struct.lbuf*, %struct.lbuf** %7, align 8
  %85 = load i32, i32* @lbmFREE, align 4
  %86 = call i32 @lbmIOWait(%struct.lbuf* %84, i32 %85)
  store i32 %86, i32* %3, align 4
  %87 = load i32, i32* %5, align 4
  %88 = load %struct.jfs_log*, %struct.jfs_log** %2, align 8
  %89 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.jfs_log*, %struct.jfs_log** %2, align 8
  %92 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 (i8*, ...) @jfs_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %87, i32 %90, i32 %93)
  br label %95

95:                                               ; preds = %63, %62
  %96 = load %struct.jfs_log*, %struct.jfs_log** %2, align 8
  %97 = call i32 @lbmLogShutdown(%struct.jfs_log* %96)
  %98 = load i32, i32* %3, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load i32, i32* %3, align 4
  %102 = call i32 @jfs_warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %100, %95
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @jfs_info(i8*, ...) #1

declare dso_local i32 @jfs_flush_journal(%struct.jfs_log*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @lmWriteRecord(%struct.jfs_log*, i32*, %struct.lrd*, i32*) #1

declare dso_local i32 @lbmWrite(%struct.jfs_log*, %struct.lbuf*, i32, i32) #1

declare dso_local i32 @lbmIOWait(%struct.lbuf*, i32) #1

declare dso_local i32 @lbmRead(%struct.jfs_log*, i32, %struct.lbuf**) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @lbmDirectWrite(%struct.jfs_log*, %struct.lbuf*, i32) #1

declare dso_local i32 @lbmLogShutdown(%struct.jfs_log*) #1

declare dso_local i32 @jfs_warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
