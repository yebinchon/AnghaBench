; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_inode.c_sysv_statfs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_inode.c_sysv_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.super_block* }
%struct.super_block = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.kstatfs = type { %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i8** }
%struct.sysv_sb_info = type { i32, i32 }

@SYSV_NAMELEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.kstatfs*)* @sysv_statfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysv_statfs(%struct.dentry* %0, %struct.kstatfs* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.kstatfs*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.sysv_sb_info*, align 8
  %7 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.kstatfs* %1, %struct.kstatfs** %4, align 8
  %8 = load %struct.dentry*, %struct.dentry** %3, align 8
  %9 = getelementptr inbounds %struct.dentry, %struct.dentry* %8, i32 0, i32 0
  %10 = load %struct.super_block*, %struct.super_block** %9, align 8
  store %struct.super_block* %10, %struct.super_block** %5, align 8
  %11 = load %struct.super_block*, %struct.super_block** %5, align 8
  %12 = call %struct.sysv_sb_info* @SYSV_SB(%struct.super_block* %11)
  store %struct.sysv_sb_info* %12, %struct.sysv_sb_info** %6, align 8
  %13 = load %struct.super_block*, %struct.super_block** %5, align 8
  %14 = getelementptr inbounds %struct.super_block, %struct.super_block* %13, i32 0, i32 2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @huge_encode_dev(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.super_block*, %struct.super_block** %5, align 8
  %20 = getelementptr inbounds %struct.super_block, %struct.super_block* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %23 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %22, i32 0, i32 8
  store i32 %21, i32* %23, align 4
  %24 = load %struct.super_block*, %struct.super_block** %5, align 8
  %25 = getelementptr inbounds %struct.super_block, %struct.super_block* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %28 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %27, i32 0, i32 7
  store i32 %26, i32* %28, align 8
  %29 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %6, align 8
  %30 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %33 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %32, i32 0, i32 6
  store i32 %31, i32* %33, align 4
  %34 = load %struct.super_block*, %struct.super_block** %5, align 8
  %35 = call i32 @sysv_count_free_blocks(%struct.super_block* %34)
  %36 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %37 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 4
  %38 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %39 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %38, i32 0, i32 5
  store i32 %35, i32* %39, align 8
  %40 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %6, align 8
  %41 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %44 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 8
  %45 = load %struct.super_block*, %struct.super_block** %5, align 8
  %46 = call i32 @sysv_count_free_inodes(%struct.super_block* %45)
  %47 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %48 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @SYSV_NAMELEN, align 4
  %50 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %51 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to i8*
  %55 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %56 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i8**, i8*** %57, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 0
  store i8* %54, i8** %59, align 8
  %60 = load i32, i32* %7, align 4
  %61 = ashr i32 %60, 32
  %62 = sext i32 %61 to i64
  %63 = inttoptr i64 %62 to i8*
  %64 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %65 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i8**, i8*** %66, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 1
  store i8* %63, i8** %68, align 8
  ret i32 0
}

declare dso_local %struct.sysv_sb_info* @SYSV_SB(%struct.super_block*) #1

declare dso_local i32 @huge_encode_dev(i32) #1

declare dso_local i32 @sysv_count_free_blocks(%struct.super_block*) #1

declare dso_local i32 @sysv_count_free_inodes(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
