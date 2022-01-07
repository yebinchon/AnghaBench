; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_refresh_qinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_refresh_qinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_mem_dqinfo = type { %struct.TYPE_2__, i8*, i32, %struct.ocfs2_lock_res }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i32, i32 }
%struct.ocfs2_lock_res = type { i32 }
%struct.mem_dqinfo = type { i8*, i8* }
%struct.ocfs2_qinfo_lvb = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_global_disk_dqinfo = type { i32, i32, i32, i32, i32, i32 }

@OCFS2_QINFO_LVB_VERSION = common dso_local global i64 0, align 8
@OCFS2_GLOBAL_INFO_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_mem_dqinfo*)* @ocfs2_refresh_qinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_refresh_qinfo(%struct.ocfs2_mem_dqinfo* %0) #0 {
  %2 = alloca %struct.ocfs2_mem_dqinfo*, align 8
  %3 = alloca %struct.mem_dqinfo*, align 8
  %4 = alloca %struct.ocfs2_lock_res*, align 8
  %5 = alloca %struct.ocfs2_qinfo_lvb*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.ocfs2_global_disk_dqinfo*, align 8
  %8 = alloca i32, align 4
  store %struct.ocfs2_mem_dqinfo* %0, %struct.ocfs2_mem_dqinfo** %2, align 8
  %9 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %2, align 8
  %10 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %2, align 8
  %14 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.mem_dqinfo* @sb_dqinfo(i32 %12, i32 %16)
  store %struct.mem_dqinfo* %17, %struct.mem_dqinfo** %3, align 8
  %18 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %2, align 8
  %19 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %18, i32 0, i32 3
  store %struct.ocfs2_lock_res* %19, %struct.ocfs2_lock_res** %4, align 8
  %20 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %21 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %20, i32 0, i32 0
  %22 = call %struct.ocfs2_qinfo_lvb* @ocfs2_dlm_lvb(i32* %21)
  store %struct.ocfs2_qinfo_lvb* %22, %struct.ocfs2_qinfo_lvb** %5, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %6, align 8
  store i32 0, i32* %8, align 4
  %23 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %24 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %23, i32 0, i32 0
  %25 = call i64 @ocfs2_dlm_lvb_valid(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %73

27:                                               ; preds = %1
  %28 = load %struct.ocfs2_qinfo_lvb*, %struct.ocfs2_qinfo_lvb** %5, align 8
  %29 = getelementptr inbounds %struct.ocfs2_qinfo_lvb, %struct.ocfs2_qinfo_lvb* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @OCFS2_QINFO_LVB_VERSION, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %73

33:                                               ; preds = %27
  %34 = load %struct.ocfs2_qinfo_lvb*, %struct.ocfs2_qinfo_lvb** %5, align 8
  %35 = getelementptr inbounds %struct.ocfs2_qinfo_lvb, %struct.ocfs2_qinfo_lvb* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @be32_to_cpu(i32 %36)
  %38 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %3, align 8
  %39 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = load %struct.ocfs2_qinfo_lvb*, %struct.ocfs2_qinfo_lvb** %5, align 8
  %41 = getelementptr inbounds %struct.ocfs2_qinfo_lvb, %struct.ocfs2_qinfo_lvb* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = call i8* @be32_to_cpu(i32 %42)
  %44 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %3, align 8
  %45 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  %46 = load %struct.ocfs2_qinfo_lvb*, %struct.ocfs2_qinfo_lvb** %5, align 8
  %47 = getelementptr inbounds %struct.ocfs2_qinfo_lvb, %struct.ocfs2_qinfo_lvb* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @be32_to_cpu(i32 %48)
  %50 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %2, align 8
  %51 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = load %struct.ocfs2_qinfo_lvb*, %struct.ocfs2_qinfo_lvb** %5, align 8
  %53 = getelementptr inbounds %struct.ocfs2_qinfo_lvb, %struct.ocfs2_qinfo_lvb* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = call i8* @be32_to_cpu(i32 %54)
  %56 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %2, align 8
  %57 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  store i8* %55, i8** %58, align 8
  %59 = load %struct.ocfs2_qinfo_lvb*, %struct.ocfs2_qinfo_lvb** %5, align 8
  %60 = getelementptr inbounds %struct.ocfs2_qinfo_lvb, %struct.ocfs2_qinfo_lvb* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @be32_to_cpu(i32 %61)
  %63 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %2, align 8
  %64 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  store i8* %62, i8** %65, align 8
  %66 = load %struct.ocfs2_qinfo_lvb*, %struct.ocfs2_qinfo_lvb** %5, align 8
  %67 = getelementptr inbounds %struct.ocfs2_qinfo_lvb, %struct.ocfs2_qinfo_lvb* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i8* @be32_to_cpu(i32 %68)
  %70 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %2, align 8
  %71 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i8* %69, i8** %72, align 8
  br label %133

73:                                               ; preds = %27, %1
  %74 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %2, align 8
  %75 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @ocfs2_read_quota_block(i32 %76, i32 0, %struct.buffer_head** %6)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @mlog_errno(i32 %81)
  br label %134

83:                                               ; preds = %73
  %84 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %85 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @OCFS2_GLOBAL_INFO_OFF, align 8
  %88 = add nsw i64 %86, %87
  %89 = inttoptr i64 %88 to %struct.ocfs2_global_disk_dqinfo*
  store %struct.ocfs2_global_disk_dqinfo* %89, %struct.ocfs2_global_disk_dqinfo** %7, align 8
  %90 = load %struct.ocfs2_global_disk_dqinfo*, %struct.ocfs2_global_disk_dqinfo** %7, align 8
  %91 = getelementptr inbounds %struct.ocfs2_global_disk_dqinfo, %struct.ocfs2_global_disk_dqinfo* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = call i8* @le32_to_cpu(i32 %92)
  %94 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %3, align 8
  %95 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %94, i32 0, i32 1
  store i8* %93, i8** %95, align 8
  %96 = load %struct.ocfs2_global_disk_dqinfo*, %struct.ocfs2_global_disk_dqinfo** %7, align 8
  %97 = getelementptr inbounds %struct.ocfs2_global_disk_dqinfo, %struct.ocfs2_global_disk_dqinfo* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = call i8* @le32_to_cpu(i32 %98)
  %100 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %3, align 8
  %101 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %100, i32 0, i32 0
  store i8* %99, i8** %101, align 8
  %102 = load %struct.ocfs2_global_disk_dqinfo*, %struct.ocfs2_global_disk_dqinfo** %7, align 8
  %103 = getelementptr inbounds %struct.ocfs2_global_disk_dqinfo, %struct.ocfs2_global_disk_dqinfo* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = call i8* @le32_to_cpu(i32 %104)
  %106 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %2, align 8
  %107 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %106, i32 0, i32 1
  store i8* %105, i8** %107, align 8
  %108 = load %struct.ocfs2_global_disk_dqinfo*, %struct.ocfs2_global_disk_dqinfo** %7, align 8
  %109 = getelementptr inbounds %struct.ocfs2_global_disk_dqinfo, %struct.ocfs2_global_disk_dqinfo* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = call i8* @le32_to_cpu(i32 %110)
  %112 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %2, align 8
  %113 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 2
  store i8* %111, i8** %114, align 8
  %115 = load %struct.ocfs2_global_disk_dqinfo*, %struct.ocfs2_global_disk_dqinfo** %7, align 8
  %116 = getelementptr inbounds %struct.ocfs2_global_disk_dqinfo, %struct.ocfs2_global_disk_dqinfo* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i8* @le32_to_cpu(i32 %117)
  %119 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %2, align 8
  %120 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  store i8* %118, i8** %121, align 8
  %122 = load %struct.ocfs2_global_disk_dqinfo*, %struct.ocfs2_global_disk_dqinfo** %7, align 8
  %123 = getelementptr inbounds %struct.ocfs2_global_disk_dqinfo, %struct.ocfs2_global_disk_dqinfo* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i8* @le32_to_cpu(i32 %124)
  %126 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %2, align 8
  %127 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  store i8* %125, i8** %128, align 8
  %129 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %130 = call i32 @brelse(%struct.buffer_head* %129)
  %131 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %132 = call i32 @ocfs2_track_lock_refresh(%struct.ocfs2_lock_res* %131)
  br label %133

133:                                              ; preds = %83, %33
  br label %134

134:                                              ; preds = %133, %80
  %135 = load i32, i32* %8, align 4
  ret i32 %135
}

declare dso_local %struct.mem_dqinfo* @sb_dqinfo(i32, i32) #1

declare dso_local %struct.ocfs2_qinfo_lvb* @ocfs2_dlm_lvb(i32*) #1

declare dso_local i64 @ocfs2_dlm_lvb_valid(i32*) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i32 @ocfs2_read_quota_block(i32, i32, %struct.buffer_head**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_track_lock_refresh(%struct.ocfs2_lock_res*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
