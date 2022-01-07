; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_the_nilfs.h_nilfs_altsb_need_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_the_nilfs.h_nilfs_altsb_need_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.the_nilfs = type { i64*, %struct.nilfs_super_block** }
%struct.nilfs_super_block = type { i32 }

@NILFS_ALTSB_FREQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.the_nilfs*)* @nilfs_altsb_need_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_altsb_need_update(%struct.the_nilfs* %0) #0 {
  %2 = alloca %struct.the_nilfs*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.nilfs_super_block**, align 8
  store %struct.the_nilfs* %0, %struct.the_nilfs** %2, align 8
  %5 = call i64 (...) @get_seconds()
  store i64 %5, i64* %3, align 8
  %6 = load %struct.the_nilfs*, %struct.the_nilfs** %2, align 8
  %7 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %6, i32 0, i32 1
  %8 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %7, align 8
  store %struct.nilfs_super_block** %8, %struct.nilfs_super_block*** %4, align 8
  %9 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %4, align 8
  %10 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %9, i64 1
  %11 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %10, align 8
  %12 = icmp ne %struct.nilfs_super_block* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load i64, i64* %3, align 8
  %15 = load %struct.the_nilfs*, %struct.the_nilfs** %2, align 8
  %16 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @NILFS_ALTSB_FREQ, align 8
  %21 = add nsw i64 %19, %20
  %22 = icmp sgt i64 %14, %21
  br label %23

23:                                               ; preds = %13, %1
  %24 = phi i1 [ false, %1 ], [ %22, %13 ]
  %25 = zext i1 %24 to i32
  ret i32 %25
}

declare dso_local i64 @get_seconds(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
