; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_rgrp.c_gfs2_unlink_di.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_rgrp.c_gfs2_unlink_di.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.gfs2_inode = type { i32 }
%struct.gfs2_sbd = type { i32 }
%struct.gfs2_rgrpd = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@GFS2_BLKST_UNLINKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gfs2_unlink_di(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.gfs2_inode*, align 8
  %4 = alloca %struct.gfs2_sbd*, align 8
  %5 = alloca %struct.gfs2_rgrpd*, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %2, align 8
  %7 = load %struct.inode*, %struct.inode** %2, align 8
  %8 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %7)
  store %struct.gfs2_inode* %8, %struct.gfs2_inode** %3, align 8
  %9 = load %struct.inode*, %struct.inode** %2, align 8
  %10 = call %struct.gfs2_sbd* @GFS2_SB(%struct.inode* %9)
  store %struct.gfs2_sbd* %10, %struct.gfs2_sbd** %4, align 8
  %11 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %12 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @GFS2_BLKST_UNLINKED, align 4
  %17 = call %struct.gfs2_rgrpd* @rgblk_free(%struct.gfs2_sbd* %14, i32 %15, i32 1, i32 %16)
  store %struct.gfs2_rgrpd* %17, %struct.gfs2_rgrpd** %5, align 8
  %18 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %5, align 8
  %19 = icmp ne %struct.gfs2_rgrpd* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  br label %47

21:                                               ; preds = %1
  %22 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %23 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @GFS2_BLKST_UNLINKED, align 4
  %26 = call i32 @trace_gfs2_block_alloc(%struct.gfs2_inode* %22, %struct.gfs2_rgrpd* %23, i32 %24, i32 1, i32 %25)
  %27 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %5, align 8
  %28 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %5, align 8
  %31 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = call i32 @gfs2_trans_add_meta(i32 %29, %struct.TYPE_4__* %35)
  %37 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %5, align 8
  %38 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %5, align 8
  %39 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @gfs2_rgrp_out(%struct.gfs2_rgrpd* %37, i32 %45)
  br label %47

47:                                               ; preds = %21, %20
  ret void
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.inode*) #1

declare dso_local %struct.gfs2_rgrpd* @rgblk_free(%struct.gfs2_sbd*, i32, i32, i32) #1

declare dso_local i32 @trace_gfs2_block_alloc(%struct.gfs2_inode*, %struct.gfs2_rgrpd*, i32, i32, i32) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @gfs2_rgrp_out(%struct.gfs2_rgrpd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
