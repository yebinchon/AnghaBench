; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/adfs/extr_super.c_adfs_statfs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/adfs/extr_super.c_adfs_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.super_block* }
%struct.super_block = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.kstatfs = type { i32, i32, i32, i64, %struct.TYPE_4__, i64, i32, i32, i32 }
%struct.TYPE_4__ = type { i8** }
%struct.adfs_sb_info = type { i32, i32, i64, i32 }

@ADFS_SUPER_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.kstatfs*)* @adfs_statfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adfs_statfs(%struct.dentry* %0, %struct.kstatfs* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.kstatfs*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.adfs_sb_info*, align 8
  %7 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.kstatfs* %1, %struct.kstatfs** %4, align 8
  %8 = load %struct.dentry*, %struct.dentry** %3, align 8
  %9 = getelementptr inbounds %struct.dentry, %struct.dentry* %8, i32 0, i32 0
  %10 = load %struct.super_block*, %struct.super_block** %9, align 8
  store %struct.super_block* %10, %struct.super_block** %5, align 8
  %11 = load %struct.super_block*, %struct.super_block** %5, align 8
  %12 = call %struct.adfs_sb_info* @ADFS_SB(%struct.super_block* %11)
  store %struct.adfs_sb_info* %12, %struct.adfs_sb_info** %6, align 8
  %13 = load %struct.super_block*, %struct.super_block** %5, align 8
  %14 = getelementptr inbounds %struct.super_block, %struct.super_block* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @huge_encode_dev(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @ADFS_SUPER_MAGIC, align 4
  %20 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %21 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %20, i32 0, i32 8
  store i32 %19, i32* %21, align 8
  %22 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %6, align 8
  %23 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %26 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %25, i32 0, i32 7
  store i32 %24, i32* %26, align 4
  %27 = load %struct.super_block*, %struct.super_block** %5, align 8
  %28 = getelementptr inbounds %struct.super_block, %struct.super_block* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %31 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 8
  %32 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %6, align 8
  %33 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %36 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %35, i32 0, i32 5
  store i64 %34, i64* %36, align 8
  %37 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %6, align 8
  %38 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %6, align 8
  %41 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %39, %42
  %44 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %45 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.super_block*, %struct.super_block** %5, align 8
  %47 = call i32 @adfs_map_free(%struct.super_block* %46)
  %48 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %49 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %51 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %50, i32 0, i32 1
  store i32 %47, i32* %51, align 4
  %52 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %53 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %56 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = mul nsw i32 %54, %57
  %59 = sext i32 %58 to i64
  %60 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %61 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = sdiv i64 %59, %62
  %64 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %65 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %64, i32 0, i32 3
  store i64 %63, i64* %65, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = inttoptr i64 %67 to i8*
  %69 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %70 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i8**, i8*** %71, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 0
  store i8* %68, i8** %73, align 8
  %74 = load i32, i32* %7, align 4
  %75 = ashr i32 %74, 32
  %76 = sext i32 %75 to i64
  %77 = inttoptr i64 %76 to i8*
  %78 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %79 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i8**, i8*** %80, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 1
  store i8* %77, i8** %82, align 8
  ret i32 0
}

declare dso_local %struct.adfs_sb_info* @ADFS_SB(%struct.super_block*) #1

declare dso_local i32 @huge_encode_dev(i32) #1

declare dso_local i32 @adfs_map_free(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
