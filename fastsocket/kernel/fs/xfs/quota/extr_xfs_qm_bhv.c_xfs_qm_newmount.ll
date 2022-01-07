; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/quota/extr_xfs_qm_bhv.c_xfs_qm_newmount.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/quota/extr_xfs_qm_bhv.c_xfs_qm_newmount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }

@XFS_ALL_QUOTA_ACCT = common dso_local global i32 0, align 4
@XFS_UQUOTA_ACCT = common dso_local global i32 0, align 4
@XFS_PQUOTA_ACCT = common dso_local global i32 0, align 4
@XFS_GQUOTA_ACCT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"changing quota state\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"please mount with%s%s%s%s.\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"out quota\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [10 x i8] c" usrquota\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c" prjquota\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c" grpquota\00", align 1
@EPERM = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_qm_newmount(%struct.TYPE_13__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 1
  %14 = call i64 @xfs_sb_version_hasquota(%struct.TYPE_14__* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %3
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @XFS_ALL_QUOTA_ACCT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br label %24

24:                                               ; preds = %16, %3
  %25 = phi i1 [ false, %3 ], [ %23, %16 ]
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %24
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @XFS_UQUOTA_ACCT, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %9, align 4
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @XFS_PQUOTA_ACCT, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %11, align 4
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @XFS_GQUOTA_ACCT, align 4
  %47 = and i32 %45, %46
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %29, %24
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %53 = call i64 @XFS_IS_UQUOTA_ON(%struct.TYPE_13__* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %90

55:                                               ; preds = %51, %48
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %55
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %60 = call i64 @XFS_IS_UQUOTA_ON(%struct.TYPE_13__* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %90, label %62

62:                                               ; preds = %58, %55
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %67 = call i64 @XFS_IS_PQUOTA_ON(%struct.TYPE_13__* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %90

69:                                               ; preds = %65, %62
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %69
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %74 = call i64 @XFS_IS_PQUOTA_ON(%struct.TYPE_13__* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %90, label %76

76:                                               ; preds = %72, %69
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %81 = call i32 @XFS_IS_GQUOTA_ON(%struct.TYPE_13__* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %79, %76
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %116, label %86

86:                                               ; preds = %83
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %88 = call i64 @XFS_IS_OQUOTA_ON(%struct.TYPE_13__* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %116

90:                                               ; preds = %86, %79, %72, %65, %58, %51
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %92 = call i64 @xfs_dev_is_read_only(%struct.TYPE_13__* %91, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %116

94:                                               ; preds = %90
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %105 = load i32, i32* %11, align 4
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 0
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %113 = call i32 @xfs_warn(%struct.TYPE_13__* %95, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %100, i8* %104, i8* %108, i8* %112)
  %114 = load i32, i32* @EPERM, align 4
  %115 = call i32 @XFS_ERROR(i32 %114)
  store i32 %115, i32* %4, align 4
  br label %144

116:                                              ; preds = %90, %86, %83
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %118 = call i64 @XFS_IS_QUOTA_ON(%struct.TYPE_13__* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %116
  %121 = load i32, i32* %8, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %143

123:                                              ; preds = %120, %116
  %124 = load i32, i32* %8, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %123
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %128 = call i32 @XFS_QM_NEED_QUOTACHECK(%struct.TYPE_13__* %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %126
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %132 = call i32 @xfs_qm_mount_quotas(%struct.TYPE_13__* %131)
  br label %142

133:                                              ; preds = %126, %123
  %134 = load i32, i32* @B_TRUE, align 4
  %135 = load i32*, i32** %6, align 8
  store i32 %134, i32* %135, align 4
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32*, i32** %7, align 8
  store i32 %138, i32* %139, align 4
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 0
  store i32 0, i32* %141, align 4
  br label %142

142:                                              ; preds = %133, %130
  br label %143

143:                                              ; preds = %142, %120
  store i32 0, i32* %4, align 4
  br label %144

144:                                              ; preds = %143, %94
  %145 = load i32, i32* %4, align 4
  ret i32 %145
}

declare dso_local i64 @xfs_sb_version_hasquota(%struct.TYPE_14__*) #1

declare dso_local i64 @XFS_IS_UQUOTA_ON(%struct.TYPE_13__*) #1

declare dso_local i64 @XFS_IS_PQUOTA_ON(%struct.TYPE_13__*) #1

declare dso_local i32 @XFS_IS_GQUOTA_ON(%struct.TYPE_13__*) #1

declare dso_local i64 @XFS_IS_OQUOTA_ON(%struct.TYPE_13__*) #1

declare dso_local i64 @xfs_dev_is_read_only(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @xfs_warn(%struct.TYPE_13__*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @XFS_ERROR(i32) #1

declare dso_local i64 @XFS_IS_QUOTA_ON(%struct.TYPE_13__*) #1

declare dso_local i32 @XFS_QM_NEED_QUOTACHECK(%struct.TYPE_13__*) #1

declare dso_local i32 @xfs_qm_mount_quotas(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
