; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_logmgr.c_lmLogFileSystem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_logmgr.c_lmLogFileSystem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jfs_log = type { i32 }
%struct.jfs_sb_info = type { i8*, i32 }
%struct.logsuper = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.lbuf = type { i64 }

@MAX_ACTIVE = common dso_local global i32 0, align 4
@NULL_UUID = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [39 x i8] c"Too many file systems sharing journal!\00", align 1
@EMFILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Somebody stomped on the journal!\00", align 1
@EIO = common dso_local global i32 0, align 4
@lbmWRITE = common dso_local global i32 0, align 4
@lbmRELEASE = common dso_local global i32 0, align 4
@lbmSYNC = common dso_local global i32 0, align 4
@lbmFREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jfs_log*, %struct.jfs_sb_info*, i32)* @lmLogFileSystem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lmLogFileSystem(%struct.jfs_log* %0, %struct.jfs_sb_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.jfs_log*, align 8
  %6 = alloca %struct.jfs_sb_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.logsuper*, align 8
  %11 = alloca %struct.lbuf*, align 8
  %12 = alloca i8*, align 8
  store %struct.jfs_log* %0, %struct.jfs_log** %5, align 8
  store %struct.jfs_sb_info* %1, %struct.jfs_sb_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %6, align 8
  %14 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %12, align 8
  %16 = load %struct.jfs_log*, %struct.jfs_log** %5, align 8
  %17 = call i32 @lbmRead(%struct.jfs_log* %16, i32 1, %struct.lbuf** %11)
  store i32 %17, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %4, align 4
  br label %130

21:                                               ; preds = %3
  %22 = load %struct.lbuf*, %struct.lbuf** %11, align 8
  %23 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.logsuper*
  store %struct.logsuper* %25, %struct.logsuper** %10, align 8
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %74

28:                                               ; preds = %21
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %60, %28
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @MAX_ACTIVE, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %63

33:                                               ; preds = %29
  %34 = load %struct.logsuper*, %struct.logsuper** %10, align 8
  %35 = getelementptr inbounds %struct.logsuper, %struct.logsuper* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** @NULL_UUID, align 8
  %43 = call i32 @memcmp(i32 %41, i8* %42, i32 16)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %59, label %45

45:                                               ; preds = %33
  %46 = load %struct.logsuper*, %struct.logsuper** %10, align 8
  %47 = getelementptr inbounds %struct.logsuper, %struct.logsuper* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i8*, i8** %12, align 8
  %55 = call i32 @memcpy(i32 %53, i8* %54, i32 16)
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %6, align 8
  %58 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  br label %63

59:                                               ; preds = %33
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %29

63:                                               ; preds = %45, %29
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @MAX_ACTIVE, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = call i32 @jfs_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %69 = load %struct.lbuf*, %struct.lbuf** %11, align 8
  %70 = call i32 @lbmFree(%struct.lbuf* %69)
  %71 = load i32, i32* @EMFILE, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %130

73:                                               ; preds = %63
  br label %117

74:                                               ; preds = %21
  store i32 0, i32* %9, align 4
  br label %75

75:                                               ; preds = %103, %74
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @MAX_ACTIVE, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %106

79:                                               ; preds = %75
  %80 = load %struct.logsuper*, %struct.logsuper** %10, align 8
  %81 = getelementptr inbounds %struct.logsuper, %struct.logsuper* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i8*, i8** %12, align 8
  %89 = call i32 @memcmp(i32 %87, i8* %88, i32 16)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %102, label %91

91:                                               ; preds = %79
  %92 = load %struct.logsuper*, %struct.logsuper** %10, align 8
  %93 = getelementptr inbounds %struct.logsuper, %struct.logsuper* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i8*, i8** @NULL_UUID, align 8
  %101 = call i32 @memcpy(i32 %99, i8* %100, i32 16)
  br label %106

102:                                              ; preds = %79
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %9, align 4
  br label %75

106:                                              ; preds = %91, %75
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* @MAX_ACTIVE, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %106
  %111 = call i32 @jfs_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %112 = load %struct.lbuf*, %struct.lbuf** %11, align 8
  %113 = call i32 @lbmFree(%struct.lbuf* %112)
  %114 = load i32, i32* @EIO, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %4, align 4
  br label %130

116:                                              ; preds = %106
  br label %117

117:                                              ; preds = %116, %73
  %118 = load %struct.jfs_log*, %struct.jfs_log** %5, align 8
  %119 = load %struct.lbuf*, %struct.lbuf** %11, align 8
  %120 = load i32, i32* @lbmWRITE, align 4
  %121 = load i32, i32* @lbmRELEASE, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @lbmSYNC, align 4
  %124 = or i32 %122, %123
  %125 = call i32 @lbmDirectWrite(%struct.jfs_log* %118, %struct.lbuf* %119, i32 %124)
  %126 = load %struct.lbuf*, %struct.lbuf** %11, align 8
  %127 = load i32, i32* @lbmFREE, align 4
  %128 = call i32 @lbmIOWait(%struct.lbuf* %126, i32 %127)
  store i32 %128, i32* %8, align 4
  %129 = load i32, i32* %8, align 4
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %117, %110, %67, %19
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @lbmRead(%struct.jfs_log*, i32, %struct.lbuf**) #1

declare dso_local i32 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @jfs_warn(i8*) #1

declare dso_local i32 @lbmFree(%struct.lbuf*) #1

declare dso_local i32 @lbmDirectWrite(%struct.jfs_log*, %struct.lbuf*, i32) #1

declare dso_local i32 @lbmIOWait(%struct.lbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
