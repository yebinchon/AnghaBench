; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_quota_v1.c_v1_read_file_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_quota_v1.c_v1_read_file_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.super_block*, i32, i8*, i32, i32)* }
%struct.quota_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i64, i64 }
%struct.v1_disk_dqblk = type { i64, i64 }

@EIO = common dso_local global i32 0, align 4
@MAX_IQ_TIME = common dso_local global i64 0, align 8
@MAX_DQ_TIME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32)* @v1_read_file_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v1_read_file_info(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.quota_info*, align 8
  %6 = alloca %struct.v1_disk_dqblk, align 8
  %7 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.super_block*, %struct.super_block** %3, align 8
  %9 = call %struct.quota_info* @sb_dqopt(%struct.super_block* %8)
  store %struct.quota_info* %9, %struct.quota_info** %5, align 8
  %10 = load %struct.super_block*, %struct.super_block** %3, align 8
  %11 = getelementptr inbounds %struct.super_block, %struct.super_block* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32 (%struct.super_block*, i32, i8*, i32, i32)*, i32 (%struct.super_block*, i32, i8*, i32, i32)** %13, align 8
  %15 = load %struct.super_block*, %struct.super_block** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = bitcast %struct.v1_disk_dqblk* %6 to i8*
  %18 = call i32 @v1_dqoff(i32 0)
  %19 = call i32 %14(%struct.super_block* %15, i32 %16, i8* %17, i32 16, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp ne i64 %21, 16
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %26, %23
  br label %79

30:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %31 = load %struct.quota_info*, %struct.quota_info** %5, align 8
  %32 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 -1, i32* %37, align 8
  %38 = load %struct.quota_info*, %struct.quota_info** %5, align 8
  %39 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store i32 -1, i32* %44, align 4
  %45 = getelementptr inbounds %struct.v1_disk_dqblk, %struct.v1_disk_dqblk* %6, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %30
  %49 = getelementptr inbounds %struct.v1_disk_dqblk, %struct.v1_disk_dqblk* %6, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  br label %53

51:                                               ; preds = %30
  %52 = load i64, i64* @MAX_IQ_TIME, align 8
  br label %53

53:                                               ; preds = %51, %48
  %54 = phi i64 [ %50, %48 ], [ %52, %51 ]
  %55 = load %struct.quota_info*, %struct.quota_info** %5, align 8
  %56 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 3
  store i64 %54, i64* %61, align 8
  %62 = getelementptr inbounds %struct.v1_disk_dqblk, %struct.v1_disk_dqblk* %6, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %53
  %66 = getelementptr inbounds %struct.v1_disk_dqblk, %struct.v1_disk_dqblk* %6, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  br label %70

68:                                               ; preds = %53
  %69 = load i64, i64* @MAX_DQ_TIME, align 8
  br label %70

70:                                               ; preds = %68, %65
  %71 = phi i64 [ %67, %65 ], [ %69, %68 ]
  %72 = load %struct.quota_info*, %struct.quota_info** %5, align 8
  %73 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  store i64 %71, i64* %78, align 8
  br label %79

79:                                               ; preds = %70, %29
  %80 = load i32, i32* %7, align 4
  ret i32 %80
}

declare dso_local %struct.quota_info* @sb_dqopt(%struct.super_block*) #1

declare dso_local i32 @v1_dqoff(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
