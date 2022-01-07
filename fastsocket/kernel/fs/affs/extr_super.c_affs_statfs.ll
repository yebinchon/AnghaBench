; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_super.c_affs_statfs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_super.c_affs_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.super_block* }
%struct.super_block = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.kstatfs = type { i32, i32, i32, %struct.TYPE_5__, i64, i32, i32 }
%struct.TYPE_5__ = type { i8** }
%struct.TYPE_6__ = type { i64, i64 }

@.str = private unnamed_addr constant [41 x i8] c"AFFS: statfs() partsize=%d, reserved=%d\0A\00", align 1
@AFFS_SUPER_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.kstatfs*)* @affs_statfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @affs_statfs(%struct.dentry* %0, %struct.kstatfs* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.kstatfs*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.kstatfs* %1, %struct.kstatfs** %4, align 8
  %8 = load %struct.dentry*, %struct.dentry** %3, align 8
  %9 = getelementptr inbounds %struct.dentry, %struct.dentry* %8, i32 0, i32 0
  %10 = load %struct.super_block*, %struct.super_block** %9, align 8
  store %struct.super_block* %10, %struct.super_block** %5, align 8
  %11 = load %struct.super_block*, %struct.super_block** %5, align 8
  %12 = getelementptr inbounds %struct.super_block, %struct.super_block* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @huge_encode_dev(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.super_block*, %struct.super_block** %5, align 8
  %18 = call %struct.TYPE_6__* @AFFS_SB(%struct.super_block* %17)
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.super_block*, %struct.super_block** %5, align 8
  %22 = call %struct.TYPE_6__* @AFFS_SB(%struct.super_block* %21)
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %20, i64 %24)
  %26 = load %struct.super_block*, %struct.super_block** %5, align 8
  %27 = call i32 @affs_count_free_blocks(%struct.super_block* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* @AFFS_SUPER_MAGIC, align 4
  %29 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %30 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %29, i32 0, i32 6
  store i32 %28, i32* %30, align 4
  %31 = load %struct.super_block*, %struct.super_block** %5, align 8
  %32 = getelementptr inbounds %struct.super_block, %struct.super_block* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %35 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 8
  %36 = load %struct.super_block*, %struct.super_block** %5, align 8
  %37 = call %struct.TYPE_6__* @AFFS_SB(%struct.super_block* %36)
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.super_block*, %struct.super_block** %5, align 8
  %41 = call %struct.TYPE_6__* @AFFS_SB(%struct.super_block* %40)
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %39, %43
  %45 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %46 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %45, i32 0, i32 4
  store i64 %44, i64* %46, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %49 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %52 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i8*
  %56 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %57 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i8**, i8*** %58, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 0
  store i8* %55, i8** %60, align 8
  %61 = load i32, i32* %7, align 4
  %62 = ashr i32 %61, 32
  %63 = sext i32 %62 to i64
  %64 = inttoptr i64 %63 to i8*
  %65 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %66 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i8**, i8*** %67, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 1
  store i8* %64, i8** %69, align 8
  %70 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %71 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %70, i32 0, i32 2
  store i32 30, i32* %71, align 8
  ret i32 0
}

declare dso_local i32 @huge_encode_dev(i32) #1

declare dso_local i32 @pr_debug(i8*, i64, i64) #1

declare dso_local %struct.TYPE_6__* @AFFS_SB(%struct.super_block*) #1

declare dso_local i32 @affs_count_free_blocks(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
