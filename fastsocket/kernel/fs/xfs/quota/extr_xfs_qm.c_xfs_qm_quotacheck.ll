; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/quota/extr_xfs_qm.c_xfs_qm_quotacheck.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/quota/extr_xfs_qm.c_xfs_qm_quotacheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { i32*, i32*, i32 }

@INT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Quotacheck needed: Please wait.\00", align 1
@XFS_QMOPT_UQUOTA = common dso_local global i32 0, align 4
@XFS_UQUOTA_CHKD = common dso_local global i32 0, align 4
@XFS_QMOPT_GQUOTA = common dso_local global i32 0, align 4
@XFS_QMOPT_PQUOTA = common dso_local global i32 0, align 4
@XFS_OQUOTA_CHKD = common dso_local global i32 0, align 4
@xfs_qm_dqusage_adjust = common dso_local global i32 0, align 4
@XFS_QMOPT_QUOTALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"Quotacheck: Unsuccessful (Error %d): Disabling quotas.\00", align 1
@xfs_Gqm = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"Quotacheck: Failed to reset quota flags.\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Quotacheck: Done.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_qm_quotacheck(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %11 = load i32, i32* @INT_MAX, align 4
  store i32 %11, i32* %4, align 4
  store i64 1, i64* %7, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %1
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br label %25

25:                                               ; preds = %18, %1
  %26 = phi i1 [ true, %1 ], [ %24, %18 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @ASSERT(i32 %27)
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %30 = call i32 @XFS_IS_QUOTA_RUNNING(%struct.TYPE_16__* %29)
  %31 = call i32 @ASSERT(i32 %30)
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 2
  %36 = call i32 @list_empty(i32* %35)
  %37 = call i32 @ASSERT(i32 %36)
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %39 = call i32 @xfs_notice(%struct.TYPE_16__* %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %8, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %59

47:                                               ; preds = %25
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* @XFS_QMOPT_UQUOTA, align 4
  %51 = call i32 @xfs_qm_dqiterate(%struct.TYPE_16__* %48, i32* %49, i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %134

55:                                               ; preds = %47
  %56 = load i32, i32* @XFS_UQUOTA_CHKD, align 4
  %57 = load i32, i32* %10, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %55, %25
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  store i32* %64, i32** %9, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %87

67:                                               ; preds = %59
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %69 = load i32*, i32** %9, align 8
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %71 = call i64 @XFS_IS_GQUOTA_ON(%struct.TYPE_16__* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* @XFS_QMOPT_GQUOTA, align 4
  br label %77

75:                                               ; preds = %67
  %76 = load i32, i32* @XFS_QMOPT_PQUOTA, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  %79 = call i32 @xfs_qm_dqiterate(%struct.TYPE_16__* %68, i32* %69, i32 %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %134

83:                                               ; preds = %77
  %84 = load i32, i32* @XFS_OQUOTA_CHKD, align 4
  %85 = load i32, i32* %10, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %10, align 4
  br label %87

87:                                               ; preds = %83, %59
  br label %88

88:                                               ; preds = %97, %87
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %90 = load i32, i32* @xfs_qm_dqusage_adjust, align 4
  %91 = load i64, i64* %7, align 8
  %92 = call i32 @xfs_bulkstat(%struct.TYPE_16__* %89, i64* %6, i32* %4, i32 %90, i64 %91, i32* null, i32* %3)
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %5, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  br label %101

96:                                               ; preds = %88
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %3, align 4
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  br i1 %100, label %88, label %101

101:                                              ; preds = %97, %95
  %102 = load i32, i32* %5, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %101
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %106 = call i32 @xfs_qm_dqflush_all(%struct.TYPE_16__* %105, i32 0)
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %104, %101
  %108 = load i32, i32* %5, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %112 = load i32, i32* @XFS_QMOPT_QUOTALL, align 4
  %113 = call i32 @xfs_qm_dqpurge_all(%struct.TYPE_16__* %111, i32 %112)
  br label %134

114:                                              ; preds = %107
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @XFS_bflush(i32 %117)
  %119 = load i32, i32* @XFS_OQUOTA_CHKD, align 4
  %120 = load i32, i32* @XFS_UQUOTA_CHKD, align 4
  %121 = or i32 %119, %120
  %122 = xor i32 %121, -1
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = and i32 %125, %122
  store i32 %126, i32* %124, align 8
  %127 = load i32, i32* %10, align 4
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 8
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %133 = call i32 @xfs_qm_dquot_list_print(%struct.TYPE_16__* %132)
  br label %134

134:                                              ; preds = %114, %110, %82, %54
  %135 = load i32, i32* %5, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %160

137:                                              ; preds = %134
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %139 = load i32, i32* %5, align 4
  %140 = call i32 (%struct.TYPE_16__*, i8*, ...) @xfs_warn(%struct.TYPE_16__* %138, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %139)
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %142, align 8
  %144 = icmp ne %struct.TYPE_15__* %143, null
  %145 = zext i1 %144 to i32
  %146 = call i32 @ASSERT(i32 %145)
  %147 = load i32*, i32** @xfs_Gqm, align 8
  %148 = icmp ne i32* %147, null
  %149 = zext i1 %148 to i32
  %150 = call i32 @ASSERT(i32 %149)
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %152 = call i32 @xfs_qm_destroy_quotainfo(%struct.TYPE_16__* %151)
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %154 = call i64 @xfs_mount_reset_sbqflags(%struct.TYPE_16__* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %137
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %158 = call i32 (%struct.TYPE_16__*, i8*, ...) @xfs_warn(%struct.TYPE_16__* %157, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %159

159:                                              ; preds = %156, %137
  br label %163

160:                                              ; preds = %134
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %162 = call i32 @xfs_notice(%struct.TYPE_16__* %161, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %163

163:                                              ; preds = %160, %159
  %164 = load i32, i32* %5, align 4
  ret i32 %164
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @XFS_IS_QUOTA_RUNNING(%struct.TYPE_16__*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @xfs_notice(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @xfs_qm_dqiterate(%struct.TYPE_16__*, i32*, i32) #1

declare dso_local i64 @XFS_IS_GQUOTA_ON(%struct.TYPE_16__*) #1

declare dso_local i32 @xfs_bulkstat(%struct.TYPE_16__*, i64*, i32*, i32, i64, i32*, i32*) #1

declare dso_local i32 @xfs_qm_dqflush_all(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @xfs_qm_dqpurge_all(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @XFS_bflush(i32) #1

declare dso_local i32 @xfs_qm_dquot_list_print(%struct.TYPE_16__*) #1

declare dso_local i32 @xfs_warn(%struct.TYPE_16__*, i8*, ...) #1

declare dso_local i32 @xfs_qm_destroy_quotainfo(%struct.TYPE_16__*) #1

declare dso_local i64 @xfs_mount_reset_sbqflags(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
