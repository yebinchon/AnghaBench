; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_txnmgr.c_mapLog.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_txnmgr.c_mapLog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jfs_log = type { i32 }
%struct.tblock = type { i32 }
%struct.lrd = type { i8*, %struct.TYPE_6__, i8* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i8*, i8* }
%struct.TYPE_4__ = type { i32 }
%struct.tlock = type { i32, i32, i32 }
%struct.pxd_lock = type { i32, i32, i32 }

@tlckRELOCATE = common dso_local global i32 0, align 4
@LOG_NOREDOPAGE = common dso_local global i32 0, align 4
@LOG_UPDATEMAP = common dso_local global i32 0, align 4
@LOG_FREEPXD = common dso_local global i32 0, align 4
@tlckUPDATEMAP = common dso_local global i32 0, align 4
@mlckALLOCPXD = common dso_local global i32 0, align 4
@LOG_ALLOCPXD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"mapLog: xaddr:0x%lx xlen:0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jfs_log*, %struct.tblock*, %struct.lrd*, %struct.tlock*)* @mapLog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mapLog(%struct.jfs_log* %0, %struct.tblock* %1, %struct.lrd* %2, %struct.tlock* %3) #0 {
  %5 = alloca %struct.jfs_log*, align 8
  %6 = alloca %struct.tblock*, align 8
  %7 = alloca %struct.lrd*, align 8
  %8 = alloca %struct.tlock*, align 8
  %9 = alloca %struct.pxd_lock*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.jfs_log* %0, %struct.jfs_log** %5, align 8
  store %struct.tblock* %1, %struct.tblock** %6, align 8
  store %struct.lrd* %2, %struct.lrd** %7, align 8
  store %struct.tlock* %3, %struct.tlock** %8, align 8
  %13 = load %struct.tlock*, %struct.tlock** %8, align 8
  %14 = getelementptr inbounds %struct.tlock, %struct.tlock* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @tlckRELOCATE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %76

19:                                               ; preds = %4
  %20 = load i32, i32* @LOG_NOREDOPAGE, align 4
  %21 = call i8* @cpu_to_le16(i32 %20)
  %22 = load %struct.lrd*, %struct.lrd** %7, align 8
  %23 = getelementptr inbounds %struct.lrd, %struct.lrd* %22, i32 0, i32 2
  store i8* %21, i8** %23, align 8
  %24 = load %struct.tlock*, %struct.tlock** %8, align 8
  %25 = getelementptr inbounds %struct.tlock, %struct.tlock* %24, i32 0, i32 2
  %26 = bitcast i32* %25 to %struct.pxd_lock*
  store %struct.pxd_lock* %26, %struct.pxd_lock** %9, align 8
  %27 = load %struct.lrd*, %struct.lrd** %7, align 8
  %28 = getelementptr inbounds %struct.lrd, %struct.lrd* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32* %30, i32** %12, align 8
  %31 = load %struct.pxd_lock*, %struct.pxd_lock** %9, align 8
  %32 = getelementptr inbounds %struct.pxd_lock, %struct.pxd_lock* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %12, align 8
  store i32 %33, i32* %34, align 4
  %35 = load %struct.jfs_log*, %struct.jfs_log** %5, align 8
  %36 = load %struct.tblock*, %struct.tblock** %6, align 8
  %37 = load %struct.lrd*, %struct.lrd** %7, align 8
  %38 = call i32 @lmLog(%struct.jfs_log* %35, %struct.tblock* %36, %struct.lrd* %37, i32* null)
  %39 = call i8* @cpu_to_le32(i32 %38)
  %40 = load %struct.lrd*, %struct.lrd** %7, align 8
  %41 = getelementptr inbounds %struct.lrd, %struct.lrd* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  %42 = load i32, i32* @LOG_UPDATEMAP, align 4
  %43 = call i8* @cpu_to_le16(i32 %42)
  %44 = load %struct.lrd*, %struct.lrd** %7, align 8
  %45 = getelementptr inbounds %struct.lrd, %struct.lrd* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  %46 = load i32, i32* @LOG_FREEPXD, align 4
  %47 = call i8* @cpu_to_le16(i32 %46)
  %48 = load %struct.lrd*, %struct.lrd** %7, align 8
  %49 = getelementptr inbounds %struct.lrd, %struct.lrd* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  store i8* %47, i8** %51, align 8
  %52 = call i8* @cpu_to_le16(i32 1)
  %53 = load %struct.lrd*, %struct.lrd** %7, align 8
  %54 = getelementptr inbounds %struct.lrd, %struct.lrd* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  store i8* %52, i8** %56, align 8
  %57 = load %struct.pxd_lock*, %struct.pxd_lock** %9, align 8
  %58 = getelementptr inbounds %struct.pxd_lock, %struct.pxd_lock* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.lrd*, %struct.lrd** %7, align 8
  %61 = getelementptr inbounds %struct.lrd, %struct.lrd* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store i32 %59, i32* %63, align 8
  %64 = load %struct.jfs_log*, %struct.jfs_log** %5, align 8
  %65 = load %struct.tblock*, %struct.tblock** %6, align 8
  %66 = load %struct.lrd*, %struct.lrd** %7, align 8
  %67 = call i32 @lmLog(%struct.jfs_log* %64, %struct.tblock* %65, %struct.lrd* %66, i32* null)
  %68 = call i8* @cpu_to_le32(i32 %67)
  %69 = load %struct.lrd*, %struct.lrd** %7, align 8
  %70 = getelementptr inbounds %struct.lrd, %struct.lrd* %69, i32 0, i32 0
  store i8* %68, i8** %70, align 8
  %71 = load i32, i32* @tlckUPDATEMAP, align 4
  %72 = load %struct.tlock*, %struct.tlock** %8, align 8
  %73 = getelementptr inbounds %struct.tlock, %struct.tlock* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %151

76:                                               ; preds = %4
  %77 = load i32, i32* @LOG_UPDATEMAP, align 4
  %78 = call i8* @cpu_to_le16(i32 %77)
  %79 = load %struct.lrd*, %struct.lrd** %7, align 8
  %80 = getelementptr inbounds %struct.lrd, %struct.lrd* %79, i32 0, i32 2
  store i8* %78, i8** %80, align 8
  %81 = load %struct.tlock*, %struct.tlock** %8, align 8
  %82 = getelementptr inbounds %struct.tlock, %struct.tlock* %81, i32 0, i32 2
  %83 = bitcast i32* %82 to %struct.pxd_lock*
  store %struct.pxd_lock* %83, %struct.pxd_lock** %9, align 8
  %84 = load %struct.pxd_lock*, %struct.pxd_lock** %9, align 8
  %85 = getelementptr inbounds %struct.pxd_lock, %struct.pxd_lock* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %87

87:                                               ; preds = %140, %76
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %145

91:                                               ; preds = %87
  %92 = load %struct.pxd_lock*, %struct.pxd_lock** %9, align 8
  %93 = getelementptr inbounds %struct.pxd_lock, %struct.pxd_lock* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @mlckALLOCPXD, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %91
  %99 = load i32, i32* @LOG_ALLOCPXD, align 4
  %100 = call i8* @cpu_to_le16(i32 %99)
  %101 = load %struct.lrd*, %struct.lrd** %7, align 8
  %102 = getelementptr inbounds %struct.lrd, %struct.lrd* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 2
  store i8* %100, i8** %104, align 8
  br label %112

105:                                              ; preds = %91
  %106 = load i32, i32* @LOG_FREEPXD, align 4
  %107 = call i8* @cpu_to_le16(i32 %106)
  %108 = load %struct.lrd*, %struct.lrd** %7, align 8
  %109 = getelementptr inbounds %struct.lrd, %struct.lrd* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 2
  store i8* %107, i8** %111, align 8
  br label %112

112:                                              ; preds = %105, %98
  %113 = call i8* @cpu_to_le16(i32 1)
  %114 = load %struct.lrd*, %struct.lrd** %7, align 8
  %115 = getelementptr inbounds %struct.lrd, %struct.lrd* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  store i8* %113, i8** %117, align 8
  %118 = load %struct.pxd_lock*, %struct.pxd_lock** %9, align 8
  %119 = getelementptr inbounds %struct.pxd_lock, %struct.pxd_lock* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.lrd*, %struct.lrd** %7, align 8
  %122 = getelementptr inbounds %struct.lrd, %struct.lrd* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  store i32 %120, i32* %124, align 8
  %125 = load %struct.jfs_log*, %struct.jfs_log** %5, align 8
  %126 = load %struct.tblock*, %struct.tblock** %6, align 8
  %127 = load %struct.lrd*, %struct.lrd** %7, align 8
  %128 = call i32 @lmLog(%struct.jfs_log* %125, %struct.tblock* %126, %struct.lrd* %127, i32* null)
  %129 = call i8* @cpu_to_le32(i32 %128)
  %130 = load %struct.lrd*, %struct.lrd** %7, align 8
  %131 = getelementptr inbounds %struct.lrd, %struct.lrd* %130, i32 0, i32 0
  store i8* %129, i8** %131, align 8
  %132 = load %struct.pxd_lock*, %struct.pxd_lock** %9, align 8
  %133 = getelementptr inbounds %struct.pxd_lock, %struct.pxd_lock* %132, i32 0, i32 2
  %134 = call i64 @addressPXD(i32* %133)
  %135 = trunc i64 %134 to i32
  %136 = load %struct.pxd_lock*, %struct.pxd_lock** %9, align 8
  %137 = getelementptr inbounds %struct.pxd_lock, %struct.pxd_lock* %136, i32 0, i32 2
  %138 = call i32 @lengthPXD(i32* %137)
  %139 = call i32 @jfs_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %135, i32 %138)
  br label %140

140:                                              ; preds = %112
  %141 = load i32, i32* %10, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %10, align 4
  %143 = load %struct.pxd_lock*, %struct.pxd_lock** %9, align 8
  %144 = getelementptr inbounds %struct.pxd_lock, %struct.pxd_lock* %143, i32 1
  store %struct.pxd_lock* %144, %struct.pxd_lock** %9, align 8
  br label %87

145:                                              ; preds = %87
  %146 = load i32, i32* @tlckUPDATEMAP, align 4
  %147 = load %struct.tlock*, %struct.tlock** %8, align 8
  %148 = getelementptr inbounds %struct.tlock, %struct.tlock* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 4
  br label %151

151:                                              ; preds = %19, %145
  ret void
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @lmLog(%struct.jfs_log*, %struct.tblock*, %struct.lrd*, i32*) #1

declare dso_local i32 @jfs_info(i8*, i32, i32) #1

declare dso_local i64 @addressPXD(i32*) #1

declare dso_local i32 @lengthPXD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
