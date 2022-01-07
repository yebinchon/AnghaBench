; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/qnx4/extr_inode.c_qnx4_statfs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/qnx4/extr_inode.c_qnx4_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.super_block* }
%struct.super_block = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.kstatfs = type { i32, %struct.TYPE_7__, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i8** }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@QNX4_NAME_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.kstatfs*)* @qnx4_statfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qnx4_statfs(%struct.dentry* %0, %struct.kstatfs* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.kstatfs*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.kstatfs* %1, %struct.kstatfs** %4, align 8
  %7 = load %struct.dentry*, %struct.dentry** %3, align 8
  %8 = getelementptr inbounds %struct.dentry, %struct.dentry* %7, i32 0, i32 0
  %9 = load %struct.super_block*, %struct.super_block** %8, align 8
  store %struct.super_block* %9, %struct.super_block** %5, align 8
  %10 = load %struct.super_block*, %struct.super_block** %5, align 8
  %11 = getelementptr inbounds %struct.super_block, %struct.super_block* %10, i32 0, i32 2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @huge_encode_dev(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = call i32 (...) @lock_kernel()
  %17 = load %struct.super_block*, %struct.super_block** %5, align 8
  %18 = getelementptr inbounds %struct.super_block, %struct.super_block* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %21 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %20, i32 0, i32 6
  store i32 %19, i32* %21, align 8
  %22 = load %struct.super_block*, %struct.super_block** %5, align 8
  %23 = getelementptr inbounds %struct.super_block, %struct.super_block* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %26 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 4
  %27 = load %struct.super_block*, %struct.super_block** %5, align 8
  %28 = call %struct.TYPE_8__* @qnx4_sb(%struct.super_block* %27)
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @le32_to_cpu(i32 %32)
  %34 = mul nsw i32 %33, 8
  %35 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %36 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.super_block*, %struct.super_block** %5, align 8
  %38 = call i32 @qnx4_count_free_blocks(%struct.super_block* %37)
  %39 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %40 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %42 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %45 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @QNX4_NAME_MAX, align 4
  %47 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %48 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to i8*
  %52 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %53 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i8**, i8*** %54, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 0
  store i8* %51, i8** %56, align 8
  %57 = load i32, i32* %6, align 4
  %58 = ashr i32 %57, 32
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to i8*
  %61 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %62 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i8**, i8*** %63, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 1
  store i8* %60, i8** %65, align 8
  %66 = call i32 (...) @unlock_kernel()
  ret i32 0
}

declare dso_local i32 @huge_encode_dev(i32) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.TYPE_8__* @qnx4_sb(%struct.super_block*) #1

declare dso_local i32 @qnx4_count_free_blocks(%struct.super_block*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
