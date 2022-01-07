; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_super.c_ext2_sync_fs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_super.c_ext2_sync_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i64 }
%struct.ext2_super_block = type { i32, i8*, i8*, i8* }
%struct.TYPE_2__ = type { %struct.ext2_super_block* }

@EXT2_VALID_FS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"setting valid to 0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32)* @ext2_sync_fs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_sync_fs(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ext2_super_block*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.super_block*, %struct.super_block** %3, align 8
  %7 = call %struct.TYPE_2__* @EXT2_SB(%struct.super_block* %6)
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.ext2_super_block*, %struct.ext2_super_block** %8, align 8
  store %struct.ext2_super_block* %9, %struct.ext2_super_block** %5, align 8
  %10 = call i32 (...) @lock_kernel()
  %11 = load %struct.super_block*, %struct.super_block** %3, align 8
  %12 = call i32 @ext2_clear_super_error(%struct.super_block* %11)
  %13 = load %struct.ext2_super_block*, %struct.ext2_super_block** %5, align 8
  %14 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @EXT2_VALID_FS, align 4
  %17 = call i32 @cpu_to_le16(i32 %16)
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %46

20:                                               ; preds = %2
  %21 = call i32 @ext2_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EXT2_VALID_FS, align 4
  %23 = xor i32 %22, -1
  %24 = call i32 @cpu_to_le16(i32 %23)
  %25 = load %struct.ext2_super_block*, %struct.ext2_super_block** %5, align 8
  %26 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load %struct.super_block*, %struct.super_block** %3, align 8
  %30 = call i32 @ext2_count_free_blocks(%struct.super_block* %29)
  %31 = call i8* @cpu_to_le32(i32 %30)
  %32 = load %struct.ext2_super_block*, %struct.ext2_super_block** %5, align 8
  %33 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %32, i32 0, i32 3
  store i8* %31, i8** %33, align 8
  %34 = load %struct.super_block*, %struct.super_block** %3, align 8
  %35 = call i32 @ext2_count_free_inodes(%struct.super_block* %34)
  %36 = call i8* @cpu_to_le32(i32 %35)
  %37 = load %struct.ext2_super_block*, %struct.ext2_super_block** %5, align 8
  %38 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = call i32 (...) @get_seconds()
  %40 = call i8* @cpu_to_le32(i32 %39)
  %41 = load %struct.ext2_super_block*, %struct.ext2_super_block** %5, align 8
  %42 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load %struct.super_block*, %struct.super_block** %3, align 8
  %44 = load %struct.ext2_super_block*, %struct.ext2_super_block** %5, align 8
  %45 = call i32 @ext2_sync_super(%struct.super_block* %43, %struct.ext2_super_block* %44)
  br label %50

46:                                               ; preds = %2
  %47 = load %struct.super_block*, %struct.super_block** %3, align 8
  %48 = load %struct.ext2_super_block*, %struct.ext2_super_block** %5, align 8
  %49 = call i32 @ext2_commit_super(%struct.super_block* %47, %struct.ext2_super_block* %48)
  br label %50

50:                                               ; preds = %46, %20
  %51 = load %struct.super_block*, %struct.super_block** %3, align 8
  %52 = getelementptr inbounds %struct.super_block, %struct.super_block* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  %53 = call i32 (...) @unlock_kernel()
  ret i32 0
}

declare dso_local %struct.TYPE_2__* @EXT2_SB(%struct.super_block*) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @ext2_clear_super_error(%struct.super_block*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ext2_debug(i8*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @ext2_count_free_blocks(%struct.super_block*) #1

declare dso_local i32 @ext2_count_free_inodes(%struct.super_block*) #1

declare dso_local i32 @get_seconds(...) #1

declare dso_local i32 @ext2_sync_super(%struct.super_block*, %struct.ext2_super_block*) #1

declare dso_local i32 @ext2_commit_super(%struct.super_block*, %struct.ext2_super_block*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
