; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/quota/extr_xfs_qm_syscalls.c_xfs_qm_scall_getqstat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/quota/extr_xfs_qm_syscalls.c_xfs_qm_scall_getqstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32, %struct.TYPE_8__, %struct.xfs_quotainfo* }
%struct.TYPE_8__ = type { i64, i64 }
%struct.xfs_quotainfo = type { i32, i32, i32, i32, i32, i32, %struct.xfs_inode*, %struct.xfs_inode* }
%struct.xfs_inode = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.fs_quota_stat = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i64, i64, i32 }
%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.TYPE_5__ = type { i64, i32, i32 }

@B_FALSE = common dso_local global i64 0, align 8
@FS_QSTAT_VERSION = common dso_local global i32 0, align 4
@NULLFSINO = common dso_local global i64 0, align 8
@XFS_ALL_QUOTA_ACCT = common dso_local global i32 0, align 4
@XFS_ALL_QUOTA_ENFD = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_qm_scall_getqstat(%struct.xfs_mount* %0, %struct.fs_quota_stat* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_mount*, align 8
  %5 = alloca %struct.fs_quota_stat*, align 8
  %6 = alloca %struct.xfs_quotainfo*, align 8
  %7 = alloca %struct.xfs_inode*, align 8
  %8 = alloca %struct.xfs_inode*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.xfs_mount* %0, %struct.xfs_mount** %4, align 8
  store %struct.fs_quota_stat* %1, %struct.fs_quota_stat** %5, align 8
  %11 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %12 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %11, i32 0, i32 2
  %13 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %12, align 8
  store %struct.xfs_quotainfo* %13, %struct.xfs_quotainfo** %6, align 8
  store %struct.xfs_inode* null, %struct.xfs_inode** %8, align 8
  store %struct.xfs_inode* null, %struct.xfs_inode** %7, align 8
  %14 = load i64, i64* @B_FALSE, align 8
  store i64 %14, i64* %10, align 8
  store i64 %14, i64* %9, align 8
  %15 = load %struct.fs_quota_stat*, %struct.fs_quota_stat** %5, align 8
  %16 = call i32 @memset(%struct.fs_quota_stat* %15, i32 0, i32 4)
  %17 = load i32, i32* @FS_QSTAT_VERSION, align 4
  %18 = load %struct.fs_quota_stat*, %struct.fs_quota_stat** %5, align 8
  %19 = getelementptr inbounds %struct.fs_quota_stat, %struct.fs_quota_stat* %18, i32 0, i32 10
  store i32 %17, i32* %19, align 8
  %20 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %21 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %20, i32 0, i32 1
  %22 = call i32 @xfs_sb_version_hasquota(%struct.TYPE_8__* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %2
  %25 = load i64, i64* @NULLFSINO, align 8
  %26 = load %struct.fs_quota_stat*, %struct.fs_quota_stat** %5, align 8
  %27 = getelementptr inbounds %struct.fs_quota_stat, %struct.fs_quota_stat* %26, i32 0, i32 7
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i64 %25, i64* %28, align 8
  %29 = load i64, i64* @NULLFSINO, align 8
  %30 = load %struct.fs_quota_stat*, %struct.fs_quota_stat** %5, align 8
  %31 = getelementptr inbounds %struct.fs_quota_stat, %struct.fs_quota_stat* %30, i32 0, i32 6
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i64 %29, i64* %32, align 8
  store i32 0, i32* %3, align 4
  br label %194

33:                                               ; preds = %2
  %34 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %35 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @XFS_ALL_QUOTA_ACCT, align 4
  %38 = load i32, i32* @XFS_ALL_QUOTA_ENFD, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %36, %39
  %41 = call i64 @xfs_qm_export_flags(i32 %40)
  %42 = load %struct.fs_quota_stat*, %struct.fs_quota_stat** %5, align 8
  %43 = getelementptr inbounds %struct.fs_quota_stat, %struct.fs_quota_stat* %42, i32 0, i32 9
  store i64 %41, i64* %43, align 8
  %44 = load %struct.fs_quota_stat*, %struct.fs_quota_stat** %5, align 8
  %45 = getelementptr inbounds %struct.fs_quota_stat, %struct.fs_quota_stat* %44, i32 0, i32 8
  store i64 0, i64* %45, align 8
  %46 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %47 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.fs_quota_stat*, %struct.fs_quota_stat** %5, align 8
  %51 = getelementptr inbounds %struct.fs_quota_stat, %struct.fs_quota_stat* %50, i32 0, i32 7
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  store i64 %49, i64* %52, align 8
  %53 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %54 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.fs_quota_stat*, %struct.fs_quota_stat** %5, align 8
  %58 = getelementptr inbounds %struct.fs_quota_stat, %struct.fs_quota_stat* %57, i32 0, i32 6
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i64 %56, i64* %59, align 8
  %60 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %6, align 8
  %61 = icmp ne %struct.xfs_quotainfo* %60, null
  br i1 %61, label %62, label %69

62:                                               ; preds = %33
  %63 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %6, align 8
  %64 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %63, i32 0, i32 7
  %65 = load %struct.xfs_inode*, %struct.xfs_inode** %64, align 8
  store %struct.xfs_inode* %65, %struct.xfs_inode** %7, align 8
  %66 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %6, align 8
  %67 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %66, i32 0, i32 6
  %68 = load %struct.xfs_inode*, %struct.xfs_inode** %67, align 8
  store %struct.xfs_inode* %68, %struct.xfs_inode** %8, align 8
  br label %69

69:                                               ; preds = %62, %33
  %70 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %71 = icmp ne %struct.xfs_inode* %70, null
  br i1 %71, label %90, label %72

72:                                               ; preds = %69
  %73 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %74 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @NULLFSINO, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %90

79:                                               ; preds = %72
  %80 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %81 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %82 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i64 @xfs_iget(%struct.xfs_mount* %80, i32* null, i64 %84, i32 0, i32 0, %struct.xfs_inode** %7)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %79
  %88 = load i64, i64* @B_TRUE, align 8
  store i64 %88, i64* %9, align 8
  br label %89

89:                                               ; preds = %87, %79
  br label %90

90:                                               ; preds = %89, %72, %69
  %91 = load %struct.xfs_inode*, %struct.xfs_inode** %8, align 8
  %92 = icmp ne %struct.xfs_inode* %91, null
  br i1 %92, label %111, label %93

93:                                               ; preds = %90
  %94 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %95 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @NULLFSINO, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %111

100:                                              ; preds = %93
  %101 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %102 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %103 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = call i64 @xfs_iget(%struct.xfs_mount* %101, i32* null, i64 %105, i32 0, i32 0, %struct.xfs_inode** %8)
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %100
  %109 = load i64, i64* @B_TRUE, align 8
  store i64 %109, i64* %10, align 8
  br label %110

110:                                              ; preds = %108, %100
  br label %111

111:                                              ; preds = %110, %93, %90
  %112 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %113 = icmp ne %struct.xfs_inode* %112, null
  br i1 %113, label %114, label %135

114:                                              ; preds = %111
  %115 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %116 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.fs_quota_stat*, %struct.fs_quota_stat** %5, align 8
  %120 = getelementptr inbounds %struct.fs_quota_stat, %struct.fs_quota_stat* %119, i32 0, i32 7
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 2
  store i32 %118, i32* %121, align 4
  %122 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %123 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.fs_quota_stat*, %struct.fs_quota_stat** %5, align 8
  %127 = getelementptr inbounds %struct.fs_quota_stat, %struct.fs_quota_stat* %126, i32 0, i32 7
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 1
  store i32 %125, i32* %128, align 8
  %129 = load i64, i64* %9, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %114
  %132 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %133 = call i32 @IRELE(%struct.xfs_inode* %132)
  br label %134

134:                                              ; preds = %131, %114
  br label %135

135:                                              ; preds = %134, %111
  %136 = load %struct.xfs_inode*, %struct.xfs_inode** %8, align 8
  %137 = icmp ne %struct.xfs_inode* %136, null
  br i1 %137, label %138, label %159

138:                                              ; preds = %135
  %139 = load %struct.xfs_inode*, %struct.xfs_inode** %8, align 8
  %140 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.fs_quota_stat*, %struct.fs_quota_stat** %5, align 8
  %144 = getelementptr inbounds %struct.fs_quota_stat, %struct.fs_quota_stat* %143, i32 0, i32 6
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 2
  store i32 %142, i32* %145, align 4
  %146 = load %struct.xfs_inode*, %struct.xfs_inode** %8, align 8
  %147 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.fs_quota_stat*, %struct.fs_quota_stat** %5, align 8
  %151 = getelementptr inbounds %struct.fs_quota_stat, %struct.fs_quota_stat* %150, i32 0, i32 6
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 1
  store i32 %149, i32* %152, align 8
  %153 = load i64, i64* %10, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %138
  %156 = load %struct.xfs_inode*, %struct.xfs_inode** %8, align 8
  %157 = call i32 @IRELE(%struct.xfs_inode* %156)
  br label %158

158:                                              ; preds = %155, %138
  br label %159

159:                                              ; preds = %158, %135
  %160 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %6, align 8
  %161 = icmp ne %struct.xfs_quotainfo* %160, null
  br i1 %161, label %162, label %193

162:                                              ; preds = %159
  %163 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %6, align 8
  %164 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.fs_quota_stat*, %struct.fs_quota_stat** %5, align 8
  %167 = getelementptr inbounds %struct.fs_quota_stat, %struct.fs_quota_stat* %166, i32 0, i32 5
  store i32 %165, i32* %167, align 4
  %168 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %6, align 8
  %169 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.fs_quota_stat*, %struct.fs_quota_stat** %5, align 8
  %172 = getelementptr inbounds %struct.fs_quota_stat, %struct.fs_quota_stat* %171, i32 0, i32 4
  store i32 %170, i32* %172, align 8
  %173 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %6, align 8
  %174 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.fs_quota_stat*, %struct.fs_quota_stat** %5, align 8
  %177 = getelementptr inbounds %struct.fs_quota_stat, %struct.fs_quota_stat* %176, i32 0, i32 3
  store i32 %175, i32* %177, align 4
  %178 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %6, align 8
  %179 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.fs_quota_stat*, %struct.fs_quota_stat** %5, align 8
  %182 = getelementptr inbounds %struct.fs_quota_stat, %struct.fs_quota_stat* %181, i32 0, i32 2
  store i32 %180, i32* %182, align 8
  %183 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %6, align 8
  %184 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.fs_quota_stat*, %struct.fs_quota_stat** %5, align 8
  %187 = getelementptr inbounds %struct.fs_quota_stat, %struct.fs_quota_stat* %186, i32 0, i32 1
  store i32 %185, i32* %187, align 4
  %188 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %6, align 8
  %189 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.fs_quota_stat*, %struct.fs_quota_stat** %5, align 8
  %192 = getelementptr inbounds %struct.fs_quota_stat, %struct.fs_quota_stat* %191, i32 0, i32 0
  store i32 %190, i32* %192, align 8
  br label %193

193:                                              ; preds = %162, %159
  store i32 0, i32* %3, align 4
  br label %194

194:                                              ; preds = %193, %24
  %195 = load i32, i32* %3, align 4
  ret i32 %195
}

declare dso_local i32 @memset(%struct.fs_quota_stat*, i32, i32) #1

declare dso_local i32 @xfs_sb_version_hasquota(%struct.TYPE_8__*) #1

declare dso_local i64 @xfs_qm_export_flags(i32) #1

declare dso_local i64 @xfs_iget(%struct.xfs_mount*, i32*, i64, i32, i32, %struct.xfs_inode**) #1

declare dso_local i32 @IRELE(%struct.xfs_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
