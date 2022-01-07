; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/quota/extr_xfs_qm_syscalls.c_xfs_qm_scall_quotaoff.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/quota/extr_xfs_qm_syscalls.c_xfs_qm_scall_quotaoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__, %struct.xfs_quotainfo* }
%struct.TYPE_11__ = type { i32 }
%struct.xfs_quotainfo = type { i32, i32*, i32* }

@EEXIST = common dso_local global i32 0, align 4
@XFS_ALL_QUOTA_ACCT = common dso_local global i32 0, align 4
@XFS_ALL_QUOTA_ENFD = common dso_local global i32 0, align 4
@XFS_SB_QFLAGS = common dso_local global i32 0, align 4
@XFS_UQUOTA_ACCT = common dso_local global i32 0, align 4
@XFS_QMOPT_UQUOTA = common dso_local global i32 0, align 4
@XFS_UQUOTA_CHKD = common dso_local global i32 0, align 4
@XFS_UQUOTA_ENFD = common dso_local global i32 0, align 4
@XFS_UQUOTA_ACTIVE = common dso_local global i32 0, align 4
@XFS_GQUOTA_ACCT = common dso_local global i32 0, align 4
@XFS_QMOPT_GQUOTA = common dso_local global i32 0, align 4
@XFS_OQUOTA_CHKD = common dso_local global i32 0, align 4
@XFS_OQUOTA_ENFD = common dso_local global i32 0, align 4
@XFS_GQUOTA_ACTIVE = common dso_local global i32 0, align 4
@XFS_PQUOTA_ACCT = common dso_local global i32 0, align 4
@XFS_QMOPT_PQUOTA = common dso_local global i32 0, align 4
@XFS_PQUOTA_ACTIVE = common dso_local global i32 0, align 4
@SHUTDOWN_CORRUPT_INCORE = common dso_local global i32 0, align 4
@XFS_MOUNT_QUOTA_ALL = common dso_local global i32 0, align 4
@XFS_MOUNT_QUOTA_SET1 = common dso_local global i32 0, align 4
@XFS_MOUNT_QUOTA_SET2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_qm_scall_quotaoff(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfs_quotainfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 3
  %14 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %13, align 8
  store %struct.xfs_quotainfo* %14, %struct.xfs_quotainfo** %6, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EEXIST, align 4
  %23 = call i32 @XFS_ERROR(i32 %22)
  store i32 %23, i32* %3, align 4
  br label %228

24:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  %25 = load i32, i32* @XFS_ALL_QUOTA_ACCT, align 4
  %26 = load i32, i32* @XFS_ALL_QUOTA_ENFD, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %5, align 4
  %30 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %6, align 8
  %31 = call i32 @ASSERT(%struct.xfs_quotainfo* %30)
  %32 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %6, align 8
  %33 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %32, i32 0, i32 0
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @XFS_ALL_QUOTA_ACCT, align 4
  %37 = and i32 %35, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %65

39:                                               ; preds = %24
  %40 = load i32, i32* %5, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = call i32 @spin_lock(i32* %47)
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  %57 = call i32 @spin_unlock(i32* %56)
  %58 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %6, align 8
  %59 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %62 = load i32, i32* @XFS_SB_QFLAGS, align 4
  %63 = call i32 @xfs_qm_write_sb_changes(%struct.TYPE_12__* %61, i32 %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %3, align 4
  br label %228

65:                                               ; preds = %24
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @XFS_UQUOTA_ACCT, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %65
  %71 = load i32, i32* @XFS_QMOPT_UQUOTA, align 4
  %72 = load i32, i32* %7, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* @XFS_UQUOTA_CHKD, align 4
  %75 = load i32, i32* @XFS_UQUOTA_ENFD, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* %5, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* @XFS_UQUOTA_ACTIVE, align 4
  %80 = load i32, i32* %9, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %70, %65
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @XFS_GQUOTA_ACCT, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %82
  %88 = load i32, i32* @XFS_QMOPT_GQUOTA, align 4
  %89 = load i32, i32* %7, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* @XFS_OQUOTA_CHKD, align 4
  %92 = load i32, i32* @XFS_OQUOTA_ENFD, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* %5, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* @XFS_GQUOTA_ACTIVE, align 4
  %97 = load i32, i32* %9, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %9, align 4
  br label %117

99:                                               ; preds = %82
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* @XFS_PQUOTA_ACCT, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %116

104:                                              ; preds = %99
  %105 = load i32, i32* @XFS_QMOPT_PQUOTA, align 4
  %106 = load i32, i32* %7, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* @XFS_OQUOTA_CHKD, align 4
  %109 = load i32, i32* @XFS_OQUOTA_ENFD, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* %5, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %5, align 4
  %113 = load i32, i32* @XFS_PQUOTA_ACTIVE, align 4
  %114 = load i32, i32* %9, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %9, align 4
  br label %116

116:                                              ; preds = %104, %99
  br label %117

117:                                              ; preds = %116, %87
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %5, align 4
  %122 = and i32 %120, %121
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %117
  br label %223

125:                                              ; preds = %117
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %127 = load i32, i32* %5, align 4
  %128 = call i32 @xfs_qm_log_quotaoff(%struct.TYPE_12__* %126, i32** %10, i32 %127)
  store i32 %128, i32* %8, align 4
  %129 = load i32, i32* %8, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %125
  br label %223

132:                                              ; preds = %125
  %133 = load i32, i32* %9, align 4
  %134 = xor i32 %133, -1
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = and i32 %137, %134
  store i32 %138, i32* %136, align 8
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %140 = load i32, i32* %5, align 4
  %141 = call i32 @xfs_qm_dqrele_all_inodes(%struct.TYPE_12__* %139, i32 %140)
  %142 = load i32, i32* %5, align 4
  %143 = xor i32 %142, -1
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = and i32 %146, %143
  store i32 %147, i32* %145, align 8
  br label %148

148:                                              ; preds = %153, %132
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %150 = load i32, i32* %7, align 4
  %151 = call i32 @xfs_qm_dqpurge_all(%struct.TYPE_12__* %149, i32 %150)
  store i32 %151, i32* %11, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %148
  %154 = load i32, i32* %11, align 4
  %155 = mul nsw i32 10, %154
  %156 = call i32 @delay(i32 %155)
  br label %148

157:                                              ; preds = %148
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %159 = load i32*, i32** %10, align 8
  %160 = load i32, i32* %5, align 4
  %161 = call i32 @xfs_qm_log_quotaoff_end(%struct.TYPE_12__* %158, i32* %159, i32 %160)
  store i32 %161, i32* %8, align 4
  %162 = load i32, i32* %8, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %157
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %166 = load i32, i32* @SHUTDOWN_CORRUPT_INCORE, align 4
  %167 = call i32 @xfs_force_shutdown(%struct.TYPE_12__* %165, i32 %166)
  br label %223

168:                                              ; preds = %157
  %169 = load i32, i32* %5, align 4
  %170 = load i32, i32* @XFS_MOUNT_QUOTA_ALL, align 4
  %171 = and i32 %169, %170
  %172 = load i32, i32* @XFS_MOUNT_QUOTA_SET1, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %180, label %174

174:                                              ; preds = %168
  %175 = load i32, i32* %5, align 4
  %176 = load i32, i32* @XFS_MOUNT_QUOTA_ALL, align 4
  %177 = and i32 %175, %176
  %178 = load i32, i32* @XFS_MOUNT_QUOTA_SET2, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %186

180:                                              ; preds = %174, %168
  %181 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %6, align 8
  %182 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %181, i32 0, i32 0
  %183 = call i32 @mutex_unlock(i32* %182)
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %185 = call i32 @xfs_qm_destroy_quotainfo(%struct.TYPE_12__* %184)
  store i32 0, i32* %3, align 4
  br label %228

186:                                              ; preds = %174
  %187 = load i32, i32* %7, align 4
  %188 = load i32, i32* @XFS_QMOPT_UQUOTA, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %203

191:                                              ; preds = %186
  %192 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %6, align 8
  %193 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %192, i32 0, i32 2
  %194 = load i32*, i32** %193, align 8
  %195 = icmp ne i32* %194, null
  br i1 %195, label %196, label %203

196:                                              ; preds = %191
  %197 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %6, align 8
  %198 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %197, i32 0, i32 2
  %199 = load i32*, i32** %198, align 8
  %200 = call i32 @IRELE(i32* %199)
  %201 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %6, align 8
  %202 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %201, i32 0, i32 2
  store i32* null, i32** %202, align 8
  br label %203

203:                                              ; preds = %196, %191, %186
  %204 = load i32, i32* %7, align 4
  %205 = load i32, i32* @XFS_QMOPT_GQUOTA, align 4
  %206 = load i32, i32* @XFS_QMOPT_PQUOTA, align 4
  %207 = or i32 %205, %206
  %208 = and i32 %204, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %222

210:                                              ; preds = %203
  %211 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %6, align 8
  %212 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %211, i32 0, i32 1
  %213 = load i32*, i32** %212, align 8
  %214 = icmp ne i32* %213, null
  br i1 %214, label %215, label %222

215:                                              ; preds = %210
  %216 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %6, align 8
  %217 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %216, i32 0, i32 1
  %218 = load i32*, i32** %217, align 8
  %219 = call i32 @IRELE(i32* %218)
  %220 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %6, align 8
  %221 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %220, i32 0, i32 1
  store i32* null, i32** %221, align 8
  br label %222

222:                                              ; preds = %215, %210, %203
  br label %223

223:                                              ; preds = %222, %164, %131, %124
  %224 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %6, align 8
  %225 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %224, i32 0, i32 0
  %226 = call i32 @mutex_unlock(i32* %225)
  %227 = load i32, i32* %8, align 4
  store i32 %227, i32* %3, align 4
  br label %228

228:                                              ; preds = %223, %180, %39, %21
  %229 = load i32, i32* %3, align 4
  ret i32 %229
}

declare dso_local i32 @XFS_ERROR(i32) #1

declare dso_local i32 @ASSERT(%struct.xfs_quotainfo*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @xfs_qm_write_sb_changes(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @xfs_qm_log_quotaoff(%struct.TYPE_12__*, i32**, i32) #1

declare dso_local i32 @xfs_qm_dqrele_all_inodes(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @xfs_qm_dqpurge_all(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @delay(i32) #1

declare dso_local i32 @xfs_qm_log_quotaoff_end(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i32 @xfs_force_shutdown(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @xfs_qm_destroy_quotainfo(%struct.TYPE_12__*) #1

declare dso_local i32 @IRELE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
