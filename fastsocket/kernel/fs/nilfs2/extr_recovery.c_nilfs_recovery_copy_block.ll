; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_recovery.c_nilfs_recovery_copy_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_recovery.c_nilfs_recovery_copy_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_sb_info = type { i32 }
%struct.nilfs_recovery_block = type { i32 }
%struct.page = type { i32 }
%struct.buffer_head = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@KM_USER0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_sb_info*, %struct.nilfs_recovery_block*, %struct.page*)* @nilfs_recovery_copy_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_recovery_copy_block(%struct.nilfs_sb_info* %0, %struct.nilfs_recovery_block* %1, %struct.page* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nilfs_sb_info*, align 8
  %6 = alloca %struct.nilfs_recovery_block*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i8*, align 8
  store %struct.nilfs_sb_info* %0, %struct.nilfs_sb_info** %5, align 8
  store %struct.nilfs_recovery_block* %1, %struct.nilfs_recovery_block** %6, align 8
  store %struct.page* %2, %struct.page** %7, align 8
  %10 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %5, align 8
  %11 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.nilfs_recovery_block*, %struct.nilfs_recovery_block** %6, align 8
  %14 = getelementptr inbounds %struct.nilfs_recovery_block, %struct.nilfs_recovery_block* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.buffer_head* @sb_bread(i32 %12, i32 %15)
  store %struct.buffer_head* %16, %struct.buffer_head** %8, align 8
  %17 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %18 = icmp ne %struct.buffer_head* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %47

26:                                               ; preds = %3
  %27 = load %struct.page*, %struct.page** %7, align 8
  %28 = load i32, i32* @KM_USER0, align 4
  %29 = call i8* @kmap_atomic(%struct.page* %27, i32 %28)
  store i8* %29, i8** %9, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %32 = call i32 @bh_offset(%struct.buffer_head* %31)
  %33 = sext i32 %32 to i64
  %34 = getelementptr i8, i8* %30, i64 %33
  %35 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %36 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %39 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @memcpy(i8* %34, i32 %37, i32 %40)
  %42 = load i8*, i8** %9, align 8
  %43 = load i32, i32* @KM_USER0, align 4
  %44 = call i32 @kunmap_atomic(i8* %42, i32 %43)
  %45 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %46 = call i32 @brelse(%struct.buffer_head* %45)
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %26, %23
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.buffer_head* @sb_bread(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @kmap_atomic(%struct.page*, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @bh_offset(%struct.buffer_head*) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
