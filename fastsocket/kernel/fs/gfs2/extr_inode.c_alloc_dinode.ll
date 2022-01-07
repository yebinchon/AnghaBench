; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_inode.c_alloc_dinode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_inode.c_alloc_dinode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.gfs2_sbd = type { i32 }
%struct.gfs2_alloc_parms = type { i32, i32 }

@RES_DINODE = common dso_local global i32 0, align 4
@RES_RG_BIT = common dso_local global i64 0, align 8
@RES_STATFS = common dso_local global i64 0, align 8
@RES_QUOTA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, i32)* @alloc_dinode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_dinode(%struct.gfs2_inode* %0, i32 %1) #0 {
  %3 = alloca %struct.gfs2_inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gfs2_sbd*, align 8
  %6 = alloca %struct.gfs2_alloc_parms, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %10 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %9, i32 0, i32 2
  %11 = call %struct.gfs2_sbd* @GFS2_SB(%struct.TYPE_2__* %10)
  store %struct.gfs2_sbd* %11, %struct.gfs2_sbd** %5, align 8
  %12 = getelementptr inbounds %struct.gfs2_alloc_parms, %struct.gfs2_alloc_parms* %6, i32 0, i32 0
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.gfs2_alloc_parms, %struct.gfs2_alloc_parms* %6, i32 0, i32 1
  %15 = load i32, i32* @RES_DINODE, align 4
  store i32 %15, i32* %14, align 4
  store i32 1, i32* %8, align 4
  %16 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %17 = call i32 @gfs2_quota_lock_check(%struct.gfs2_inode* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %69

21:                                               ; preds = %2
  %22 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %23 = call i32 @gfs2_inplace_reserve(%struct.gfs2_inode* %22, %struct.gfs2_alloc_parms* %6)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %66

27:                                               ; preds = %21
  %28 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %29 = load i64, i64* @RES_RG_BIT, align 8
  %30 = load i64, i64* @RES_STATFS, align 8
  %31 = add nsw i64 %29, %30
  %32 = load i64, i64* @RES_QUOTA, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %28, i64 %33, i32 0)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %63

38:                                               ; preds = %27
  %39 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %40 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %41 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %40, i32 0, i32 0
  %42 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %43 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %42, i32 0, i32 3
  %44 = call i32 @gfs2_alloc_blocks(%struct.gfs2_inode* %39, i32* %41, i32* %8, i32 1, i32* %43)
  store i32 %44, i32* %7, align 4
  %45 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %46 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %49 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 4
  %50 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %51 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %54 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 4
  %56 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %57 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %60 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %62 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %61)
  br label %63

63:                                               ; preds = %38, %37
  %64 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %65 = call i32 @gfs2_inplace_release(%struct.gfs2_inode* %64)
  br label %66

66:                                               ; preds = %63, %26
  %67 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %68 = call i32 @gfs2_quota_unlock(%struct.gfs2_inode* %67)
  br label %69

69:                                               ; preds = %66, %20
  %70 = load i32, i32* %7, align 4
  ret i32 %70
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.TYPE_2__*) #1

declare dso_local i32 @gfs2_quota_lock_check(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_inplace_reserve(%struct.gfs2_inode*, %struct.gfs2_alloc_parms*) #1

declare dso_local i32 @gfs2_trans_begin(%struct.gfs2_sbd*, i64, i32) #1

declare dso_local i32 @gfs2_alloc_blocks(%struct.gfs2_inode*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @gfs2_trans_end(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_inplace_release(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_quota_unlock(%struct.gfs2_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
