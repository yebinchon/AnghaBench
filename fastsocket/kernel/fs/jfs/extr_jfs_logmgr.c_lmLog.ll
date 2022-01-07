; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_logmgr.c_lmLog.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_logmgr.c_lmLog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jfs_log = type { i32, i32, i32, i32 }
%struct.tblock = type { i32, i32 }
%struct.lrd = type { i32 }
%struct.tlock = type { i32, %struct.metapage* }
%struct.metapage = type { i32, i32, %struct.jfs_log* }

@.str = private unnamed_addr constant [46 x i8] c"lmLog: log:0x%p tblk:0x%p, lrd:0x%p tlck:0x%p\00", align 1
@tlckBTROOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lmLog(%struct.jfs_log* %0, %struct.tblock* %1, %struct.lrd* %2, %struct.tlock* %3) #0 {
  %5 = alloca %struct.jfs_log*, align 8
  %6 = alloca %struct.tblock*, align 8
  %7 = alloca %struct.lrd*, align 8
  %8 = alloca %struct.tlock*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.metapage*, align 8
  %13 = alloca i64, align 8
  store %struct.jfs_log* %0, %struct.jfs_log** %5, align 8
  store %struct.tblock* %1, %struct.tblock** %6, align 8
  store %struct.lrd* %2, %struct.lrd** %7, align 8
  store %struct.tlock* %3, %struct.tlock** %8, align 8
  store %struct.metapage* null, %struct.metapage** %12, align 8
  %14 = load %struct.jfs_log*, %struct.jfs_log** %5, align 8
  %15 = load %struct.tblock*, %struct.tblock** %6, align 8
  %16 = load %struct.lrd*, %struct.lrd** %7, align 8
  %17 = load %struct.tlock*, %struct.tlock** %8, align 8
  %18 = call i32 @jfs_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), %struct.jfs_log* %14, %struct.tblock* %15, %struct.lrd* %16, %struct.tlock* %17)
  %19 = load %struct.jfs_log*, %struct.jfs_log** %5, align 8
  %20 = call i32 @LOG_LOCK(%struct.jfs_log* %19)
  %21 = load %struct.tblock*, %struct.tblock** %6, align 8
  %22 = icmp eq %struct.tblock* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  br label %119

24:                                               ; preds = %4
  %25 = load %struct.tlock*, %struct.tlock** %8, align 8
  %26 = icmp eq %struct.tlock* %25, null
  br i1 %26, label %39, label %27

27:                                               ; preds = %24
  %28 = load %struct.tlock*, %struct.tlock** %8, align 8
  %29 = getelementptr inbounds %struct.tlock, %struct.tlock* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @tlckBTROOT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %27
  %35 = load %struct.tlock*, %struct.tlock** %8, align 8
  %36 = getelementptr inbounds %struct.tlock, %struct.tlock* %35, i32 0, i32 1
  %37 = load %struct.metapage*, %struct.metapage** %36, align 8
  store %struct.metapage* %37, %struct.metapage** %12, align 8
  %38 = icmp eq %struct.metapage* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %34, %27, %24
  br label %119

40:                                               ; preds = %34
  %41 = load %struct.jfs_log*, %struct.jfs_log** %5, align 8
  %42 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %9, align 4
  %44 = load %struct.jfs_log*, %struct.jfs_log** %5, align 8
  %45 = load i64, i64* %13, align 8
  %46 = call i32 @LOGSYNC_LOCK(%struct.jfs_log* %44, i64 %45)
  %47 = load %struct.metapage*, %struct.metapage** %12, align 8
  %48 = getelementptr inbounds %struct.metapage, %struct.metapage* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %40
  %52 = load %struct.jfs_log*, %struct.jfs_log** %5, align 8
  %53 = load %struct.metapage*, %struct.metapage** %12, align 8
  %54 = getelementptr inbounds %struct.metapage, %struct.metapage* %53, i32 0, i32 2
  store %struct.jfs_log* %52, %struct.jfs_log** %54, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.metapage*, %struct.metapage** %12, align 8
  %57 = getelementptr inbounds %struct.metapage, %struct.metapage* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.jfs_log*, %struct.jfs_log** %5, align 8
  %59 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  %62 = load %struct.metapage*, %struct.metapage** %12, align 8
  %63 = getelementptr inbounds %struct.metapage, %struct.metapage* %62, i32 0, i32 1
  %64 = load %struct.jfs_log*, %struct.jfs_log** %5, align 8
  %65 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %64, i32 0, i32 3
  %66 = call i32 @list_add_tail(i32* %63, i32* %65)
  br label %67

67:                                               ; preds = %51, %40
  %68 = load %struct.tblock*, %struct.tblock** %6, align 8
  %69 = getelementptr inbounds %struct.tblock, %struct.tblock* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %87

72:                                               ; preds = %67
  %73 = load %struct.metapage*, %struct.metapage** %12, align 8
  %74 = getelementptr inbounds %struct.metapage, %struct.metapage* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.tblock*, %struct.tblock** %6, align 8
  %77 = getelementptr inbounds %struct.tblock, %struct.tblock* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load %struct.jfs_log*, %struct.jfs_log** %5, align 8
  %79 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 4
  %82 = load %struct.tblock*, %struct.tblock** %6, align 8
  %83 = getelementptr inbounds %struct.tblock, %struct.tblock* %82, i32 0, i32 1
  %84 = load %struct.metapage*, %struct.metapage** %12, align 8
  %85 = getelementptr inbounds %struct.metapage, %struct.metapage* %84, i32 0, i32 1
  %86 = call i32 @list_add(i32* %83, i32* %85)
  br label %115

87:                                               ; preds = %67
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.metapage*, %struct.metapage** %12, align 8
  %90 = getelementptr inbounds %struct.metapage, %struct.metapage* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.jfs_log*, %struct.jfs_log** %5, align 8
  %93 = call i32 @logdiff(i32 %88, i32 %91, %struct.jfs_log* %92)
  %94 = load i32, i32* %11, align 4
  %95 = load %struct.tblock*, %struct.tblock** %6, align 8
  %96 = getelementptr inbounds %struct.tblock, %struct.tblock* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.jfs_log*, %struct.jfs_log** %5, align 8
  %99 = call i32 @logdiff(i32 %94, i32 %97, %struct.jfs_log* %98)
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %114

103:                                              ; preds = %87
  %104 = load %struct.metapage*, %struct.metapage** %12, align 8
  %105 = getelementptr inbounds %struct.metapage, %struct.metapage* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.tblock*, %struct.tblock** %6, align 8
  %108 = getelementptr inbounds %struct.tblock, %struct.tblock* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 4
  %109 = load %struct.tblock*, %struct.tblock** %6, align 8
  %110 = getelementptr inbounds %struct.tblock, %struct.tblock* %109, i32 0, i32 1
  %111 = load %struct.metapage*, %struct.metapage** %12, align 8
  %112 = getelementptr inbounds %struct.metapage, %struct.metapage* %111, i32 0, i32 1
  %113 = call i32 @list_move(i32* %110, i32* %112)
  br label %114

114:                                              ; preds = %103, %87
  br label %115

115:                                              ; preds = %114, %72
  %116 = load %struct.jfs_log*, %struct.jfs_log** %5, align 8
  %117 = load i64, i64* %13, align 8
  %118 = call i32 @LOGSYNC_UNLOCK(%struct.jfs_log* %116, i64 %117)
  br label %119

119:                                              ; preds = %115, %39, %23
  %120 = load %struct.jfs_log*, %struct.jfs_log** %5, align 8
  %121 = load %struct.tblock*, %struct.tblock** %6, align 8
  %122 = load %struct.lrd*, %struct.lrd** %7, align 8
  %123 = load %struct.tlock*, %struct.tlock** %8, align 8
  %124 = call i32 @lmWriteRecord(%struct.jfs_log* %120, %struct.tblock* %121, %struct.lrd* %122, %struct.tlock* %123)
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* %9, align 4
  %127 = load %struct.jfs_log*, %struct.jfs_log** %5, align 8
  %128 = call i32 @logdiff(i32 %125, i32 %126, %struct.jfs_log* %127)
  %129 = load i32, i32* %10, align 4
  %130 = load %struct.jfs_log*, %struct.jfs_log** %5, align 8
  %131 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = icmp sge i32 %129, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %119
  %135 = load %struct.jfs_log*, %struct.jfs_log** %5, align 8
  %136 = call i32 @lmLogSync(%struct.jfs_log* %135, i32 0)
  store i32 %136, i32* %9, align 4
  br label %137

137:                                              ; preds = %134, %119
  %138 = load i32, i32* %9, align 4
  %139 = load %struct.jfs_log*, %struct.jfs_log** %5, align 8
  %140 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 4
  %141 = load %struct.jfs_log*, %struct.jfs_log** %5, align 8
  %142 = call i32 @LOG_UNLOCK(%struct.jfs_log* %141)
  %143 = load i32, i32* %9, align 4
  ret i32 %143
}

declare dso_local i32 @jfs_info(i8*, %struct.jfs_log*, %struct.tblock*, %struct.lrd*, %struct.tlock*) #1

declare dso_local i32 @LOG_LOCK(%struct.jfs_log*) #1

declare dso_local i32 @LOGSYNC_LOCK(%struct.jfs_log*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @logdiff(i32, i32, %struct.jfs_log*) #1

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i32 @LOGSYNC_UNLOCK(%struct.jfs_log*, i64) #1

declare dso_local i32 @lmWriteRecord(%struct.jfs_log*, %struct.tblock*, %struct.lrd*, %struct.tlock*) #1

declare dso_local i32 @lmLogSync(%struct.jfs_log*, i32) #1

declare dso_local i32 @LOG_UNLOCK(%struct.jfs_log*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
