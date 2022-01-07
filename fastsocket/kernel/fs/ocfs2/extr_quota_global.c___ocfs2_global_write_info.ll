; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_quota_global.c___ocfs2_global_write_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_quota_global.c___ocfs2_global_write_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.super_block*, i32, i8*, i32, i32)* }
%struct.mem_dqinfo = type { i32, i32, i32, %struct.ocfs2_mem_dqinfo* }
%struct.ocfs2_mem_dqinfo = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.ocfs2_global_disk_dqinfo = type { i8*, i8*, i8*, i8*, i8*, i8* }

@dq_data_lock = common dso_local global i32 0, align 4
@DQF_INFO_DIRTY = common dso_local global i32 0, align 4
@OCFS2_GLOBAL_INFO_OFF = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Cannot write global quota info structure\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32)* @__ocfs2_global_write_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ocfs2_global_write_info(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mem_dqinfo*, align 8
  %7 = alloca %struct.ocfs2_mem_dqinfo*, align 8
  %8 = alloca %struct.ocfs2_global_disk_dqinfo, align 8
  %9 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.super_block*, %struct.super_block** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.mem_dqinfo* @sb_dqinfo(%struct.super_block* %10, i32 %11)
  store %struct.mem_dqinfo* %12, %struct.mem_dqinfo** %6, align 8
  %13 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %6, align 8
  %14 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %13, i32 0, i32 3
  %15 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %14, align 8
  store %struct.ocfs2_mem_dqinfo* %15, %struct.ocfs2_mem_dqinfo** %7, align 8
  %16 = call i32 @spin_lock(i32* @dq_data_lock)
  %17 = load i32, i32* @DQF_INFO_DIRTY, align 4
  %18 = xor i32 %17, -1
  %19 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %6, align 8
  %20 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 8
  %23 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %6, align 8
  %24 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @cpu_to_le32(i32 %25)
  %27 = getelementptr inbounds %struct.ocfs2_global_disk_dqinfo, %struct.ocfs2_global_disk_dqinfo* %8, i32 0, i32 5
  store i8* %26, i8** %27, align 8
  %28 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %6, align 8
  %29 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i8* @cpu_to_le32(i32 %30)
  %32 = getelementptr inbounds %struct.ocfs2_global_disk_dqinfo, %struct.ocfs2_global_disk_dqinfo* %8, i32 0, i32 4
  store i8* %31, i8** %32, align 8
  %33 = call i32 @spin_unlock(i32* @dq_data_lock)
  %34 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %7, align 8
  %35 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @cpu_to_le32(i32 %36)
  %38 = getelementptr inbounds %struct.ocfs2_global_disk_dqinfo, %struct.ocfs2_global_disk_dqinfo* %8, i32 0, i32 3
  store i8* %37, i8** %38, align 8
  %39 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %7, align 8
  %40 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @cpu_to_le32(i32 %42)
  %44 = getelementptr inbounds %struct.ocfs2_global_disk_dqinfo, %struct.ocfs2_global_disk_dqinfo* %8, i32 0, i32 2
  store i8* %43, i8** %44, align 8
  %45 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %7, align 8
  %46 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @cpu_to_le32(i32 %48)
  %50 = getelementptr inbounds %struct.ocfs2_global_disk_dqinfo, %struct.ocfs2_global_disk_dqinfo* %8, i32 0, i32 1
  store i8* %49, i8** %50, align 8
  %51 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %7, align 8
  %52 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @cpu_to_le32(i32 %54)
  %56 = getelementptr inbounds %struct.ocfs2_global_disk_dqinfo, %struct.ocfs2_global_disk_dqinfo* %8, i32 0, i32 0
  store i8* %55, i8** %56, align 8
  %57 = load %struct.super_block*, %struct.super_block** %4, align 8
  %58 = getelementptr inbounds %struct.super_block, %struct.super_block* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32 (%struct.super_block*, i32, i8*, i32, i32)*, i32 (%struct.super_block*, i32, i8*, i32, i32)** %60, align 8
  %62 = load %struct.super_block*, %struct.super_block** %4, align 8
  %63 = load i32, i32* %5, align 4
  %64 = bitcast %struct.ocfs2_global_disk_dqinfo* %8 to i8*
  %65 = load i32, i32* @OCFS2_GLOBAL_INFO_OFF, align 4
  %66 = call i32 %61(%struct.super_block* %62, i32 %63, i8* %64, i32 48, i32 %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = icmp ne i64 %68, 48
  br i1 %69, label %70, label %80

70:                                               ; preds = %2
  %71 = load i32, i32* @ML_ERROR, align 4
  %72 = call i32 @mlog(i32 %71, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* %9, align 4
  %74 = icmp sge i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i32, i32* @EIO, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %75, %70
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %3, align 4
  br label %81

80:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %78
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct.mem_dqinfo* @sb_dqinfo(%struct.super_block*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mlog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
