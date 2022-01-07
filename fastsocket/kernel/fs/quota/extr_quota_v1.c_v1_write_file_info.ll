; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_quota_v1.c_v1_write_file_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_quota_v1.c_v1_write_file_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.super_block*, i32, i8*, i32, i32)*, i32 (%struct.super_block*, i32, i8*, i32, i32)* }
%struct.quota_info = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.v1_disk_dqblk = type { i32, i32 }

@DQF_INFO_DIRTY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32)* @v1_write_file_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v1_write_file_info(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.quota_info*, align 8
  %6 = alloca %struct.v1_disk_dqblk, align 4
  %7 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.super_block*, %struct.super_block** %3, align 8
  %9 = call %struct.quota_info* @sb_dqopt(%struct.super_block* %8)
  store %struct.quota_info* %9, %struct.quota_info** %5, align 8
  %10 = load i32, i32* @DQF_INFO_DIRTY, align 4
  %11 = xor i32 %10, -1
  %12 = load %struct.quota_info*, %struct.quota_info** %5, align 8
  %13 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, %11
  store i32 %20, i32* %18, align 4
  %21 = load %struct.super_block*, %struct.super_block** %3, align 8
  %22 = getelementptr inbounds %struct.super_block, %struct.super_block* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32 (%struct.super_block*, i32, i8*, i32, i32)*, i32 (%struct.super_block*, i32, i8*, i32, i32)** %24, align 8
  %26 = load %struct.super_block*, %struct.super_block** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = bitcast %struct.v1_disk_dqblk* %6 to i8*
  %29 = call i32 @v1_dqoff(i32 0)
  %30 = call i32 %25(%struct.super_block* %26, i32 %27, i8* %28, i32 8, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp ne i64 %32, 8
  br i1 %33, label %34, label %41

34:                                               ; preds = %2
  %35 = load i32, i32* %7, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %37, %34
  br label %82

41:                                               ; preds = %2
  %42 = load %struct.quota_info*, %struct.quota_info** %5, align 8
  %43 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.v1_disk_dqblk, %struct.v1_disk_dqblk* %6, i32 0, i32 1
  store i32 %49, i32* %50, align 4
  %51 = load %struct.quota_info*, %struct.quota_info** %5, align 8
  %52 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.v1_disk_dqblk, %struct.v1_disk_dqblk* %6, i32 0, i32 0
  store i32 %58, i32* %59, align 4
  %60 = load %struct.super_block*, %struct.super_block** %3, align 8
  %61 = getelementptr inbounds %struct.super_block, %struct.super_block* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i32 (%struct.super_block*, i32, i8*, i32, i32)*, i32 (%struct.super_block*, i32, i8*, i32, i32)** %63, align 8
  %65 = load %struct.super_block*, %struct.super_block** %3, align 8
  %66 = load i32, i32* %4, align 4
  %67 = bitcast %struct.v1_disk_dqblk* %6 to i8*
  %68 = call i32 @v1_dqoff(i32 0)
  %69 = call i32 %64(%struct.super_block* %65, i32 %66, i8* %67, i32 8, i32 %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = icmp eq i64 %71, 8
  br i1 %72, label %73, label %74

73:                                               ; preds = %41
  store i32 0, i32* %7, align 4
  br label %81

74:                                               ; preds = %41
  %75 = load i32, i32* %7, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32, i32* @EIO, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %77, %74
  br label %81

81:                                               ; preds = %80, %73
  br label %82

82:                                               ; preds = %81, %40
  %83 = load i32, i32* %7, align 4
  ret i32 %83
}

declare dso_local %struct.quota_info* @sb_dqopt(%struct.super_block*) #1

declare dso_local i32 @v1_dqoff(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
