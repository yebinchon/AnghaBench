; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_rgrp.c___gfs2_free_blocks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_rgrp.c___gfs2_free_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i64, i32 }
%struct.gfs2_sbd = type { i32 }
%struct.gfs2_rgrpd = type { %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@GFS2_BLKST_FREE = common dso_local global i32 0, align 4
@GFS2_RGF_TRIMMED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__gfs2_free_blocks(%struct.gfs2_inode* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.gfs2_inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.gfs2_sbd*, align 8
  %10 = alloca %struct.gfs2_rgrpd*, align 8
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %12 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %11, i32 0, i32 1
  %13 = call %struct.gfs2_sbd* @GFS2_SB(i32* %12)
  store %struct.gfs2_sbd* %13, %struct.gfs2_sbd** %9, align 8
  %14 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @GFS2_BLKST_FREE, align 4
  %18 = call %struct.gfs2_rgrpd* @rgblk_free(%struct.gfs2_sbd* %14, i32 %15, i32 %16, i32 %17)
  store %struct.gfs2_rgrpd* %18, %struct.gfs2_rgrpd** %10, align 8
  %19 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %10, align 8
  %20 = icmp ne %struct.gfs2_rgrpd* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  br label %72

22:                                               ; preds = %4
  %23 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %24 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %10, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @GFS2_BLKST_FREE, align 4
  %28 = call i32 @trace_gfs2_block_alloc(%struct.gfs2_inode* %23, %struct.gfs2_rgrpd* %24, i32 %25, i32 %26, i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %10, align 8
  %31 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load i32, i32* @GFS2_RGF_TRIMMED, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %10, align 8
  %37 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %10, align 8
  %41 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %10, align 8
  %44 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = call i32 @gfs2_trans_add_meta(i32 %42, %struct.TYPE_4__* %48)
  %50 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %10, align 8
  %51 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %10, align 8
  %52 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @gfs2_rgrp_out(%struct.gfs2_rgrpd* %50, i32 %58)
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %22
  %63 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %64 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62, %22
  %68 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @gfs2_meta_wipe(%struct.gfs2_inode* %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %21, %67, %62
  ret void
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(i32*) #1

declare dso_local %struct.gfs2_rgrpd* @rgblk_free(%struct.gfs2_sbd*, i32, i32, i32) #1

declare dso_local i32 @trace_gfs2_block_alloc(%struct.gfs2_inode*, %struct.gfs2_rgrpd*, i32, i32, i32) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @gfs2_rgrp_out(%struct.gfs2_rgrpd*, i32) #1

declare dso_local i32 @gfs2_meta_wipe(%struct.gfs2_inode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
