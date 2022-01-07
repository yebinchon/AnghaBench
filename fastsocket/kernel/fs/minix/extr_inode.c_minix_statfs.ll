; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/minix/extr_inode.c_minix_statfs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/minix/extr_inode.c_minix_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.super_block* }
%struct.super_block = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.kstatfs = type { i32, %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i8** }
%struct.minix_sb_info = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.kstatfs*)* @minix_statfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @minix_statfs(%struct.dentry* %0, %struct.kstatfs* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.kstatfs*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.minix_sb_info*, align 8
  %7 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.kstatfs* %1, %struct.kstatfs** %4, align 8
  %8 = load %struct.dentry*, %struct.dentry** %3, align 8
  %9 = getelementptr inbounds %struct.dentry, %struct.dentry* %8, i32 0, i32 0
  %10 = load %struct.super_block*, %struct.super_block** %9, align 8
  store %struct.super_block* %10, %struct.super_block** %5, align 8
  %11 = load %struct.super_block*, %struct.super_block** %5, align 8
  %12 = call %struct.minix_sb_info* @minix_sb(%struct.super_block* %11)
  store %struct.minix_sb_info* %12, %struct.minix_sb_info** %6, align 8
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
  store i32 %21, i32* %23, align 8
  %24 = load %struct.super_block*, %struct.super_block** %5, align 8
  %25 = getelementptr inbounds %struct.super_block, %struct.super_block* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %28 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %27, i32 0, i32 7
  store i32 %26, i32* %28, align 4
  %29 = load %struct.minix_sb_info*, %struct.minix_sb_info** %6, align 8
  %30 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.minix_sb_info*, %struct.minix_sb_info** %6, align 8
  %33 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %31, %34
  %36 = load %struct.minix_sb_info*, %struct.minix_sb_info** %6, align 8
  %37 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %35, %38
  %40 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %41 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.minix_sb_info*, %struct.minix_sb_info** %6, align 8
  %43 = call i32 @minix_count_free_blocks(%struct.minix_sb_info* %42)
  %44 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %45 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 4
  %46 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %47 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %50 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %49, i32 0, i32 6
  store i32 %48, i32* %50, align 8
  %51 = load %struct.minix_sb_info*, %struct.minix_sb_info** %6, align 8
  %52 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %55 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 8
  %56 = load %struct.minix_sb_info*, %struct.minix_sb_info** %6, align 8
  %57 = call i32 @minix_count_free_inodes(%struct.minix_sb_info* %56)
  %58 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %59 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load %struct.minix_sb_info*, %struct.minix_sb_info** %6, align 8
  %61 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %64 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = inttoptr i64 %66 to i8*
  %68 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %69 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i8**, i8*** %70, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 0
  store i8* %67, i8** %72, align 8
  %73 = load i32, i32* %7, align 4
  %74 = ashr i32 %73, 32
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to i8*
  %77 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %78 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i8**, i8*** %79, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 1
  store i8* %76, i8** %81, align 8
  ret i32 0
}

declare dso_local %struct.minix_sb_info* @minix_sb(%struct.super_block*) #1

declare dso_local i32 @huge_encode_dev(i32) #1

declare dso_local i32 @minix_count_free_blocks(%struct.minix_sb_info*) #1

declare dso_local i32 @minix_count_free_inodes(%struct.minix_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
