; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_super.c_reiserfs_statfs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_super.c_reiserfs_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.dentry = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.kstatfs = type { %struct.TYPE_4__, i32, i32, i64, i32, i32, i32 }
%struct.TYPE_4__ = type { i8** }
%struct.reiserfs_super_block = type { i64 }

@s = common dso_local global %struct.TYPE_5__* null, align 8
@REISERFS_SUPER_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.kstatfs*)* @reiserfs_statfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reiserfs_statfs(%struct.dentry* %0, %struct.kstatfs* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.kstatfs*, align 8
  %5 = alloca %struct.reiserfs_super_block*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.kstatfs* %1, %struct.kstatfs** %4, align 8
  %6 = load %struct.dentry*, %struct.dentry** %3, align 8
  %7 = getelementptr inbounds %struct.dentry, %struct.dentry* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = call %struct.reiserfs_super_block* @SB_DISK_SUPER_BLOCK(%struct.TYPE_6__* %8)
  store %struct.reiserfs_super_block* %9, %struct.reiserfs_super_block** %5, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** @s, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @REISERFS_MAX_NAME(i32 %12)
  %14 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %15 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %14, i32 0, i32 6
  store i32 %13, i32* %15, align 8
  %16 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %5, align 8
  %17 = call i32 @sb_free_blocks(%struct.reiserfs_super_block* %16)
  %18 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %19 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 8
  %20 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %21 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %24 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 4
  %25 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %5, align 8
  %26 = call i64 @sb_block_count(%struct.reiserfs_super_block* %25)
  %27 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %5, align 8
  %28 = call i64 @sb_bmap_nr(%struct.reiserfs_super_block* %27)
  %29 = sub nsw i64 %26, %28
  %30 = sub nsw i64 %29, 1
  %31 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %32 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %31, i32 0, i32 3
  store i64 %30, i64* %32, align 8
  %33 = load %struct.dentry*, %struct.dentry** %3, align 8
  %34 = getelementptr inbounds %struct.dentry, %struct.dentry* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %39 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @REISERFS_SUPER_MAGIC, align 4
  %41 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %42 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %5, align 8
  %44 = getelementptr inbounds %struct.reiserfs_super_block, %struct.reiserfs_super_block* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @crc32_le(i32 0, i64 %45, i32 4)
  %47 = inttoptr i64 %46 to i8*
  %48 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %49 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i8**, i8*** %50, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 0
  store i8* %47, i8** %52, align 8
  %53 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %5, align 8
  %54 = getelementptr inbounds %struct.reiserfs_super_block, %struct.reiserfs_super_block* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %55, 4
  %57 = call i64 @crc32_le(i32 0, i64 %56, i32 4)
  %58 = inttoptr i64 %57 to i8*
  %59 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %60 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i8**, i8*** %61, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 1
  store i8* %58, i8** %63, align 8
  ret i32 0
}

declare dso_local %struct.reiserfs_super_block* @SB_DISK_SUPER_BLOCK(%struct.TYPE_6__*) #1

declare dso_local i32 @REISERFS_MAX_NAME(i32) #1

declare dso_local i32 @sb_free_blocks(%struct.reiserfs_super_block*) #1

declare dso_local i64 @sb_block_count(%struct.reiserfs_super_block*) #1

declare dso_local i64 @sb_bmap_nr(%struct.reiserfs_super_block*) #1

declare dso_local i64 @crc32_le(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
