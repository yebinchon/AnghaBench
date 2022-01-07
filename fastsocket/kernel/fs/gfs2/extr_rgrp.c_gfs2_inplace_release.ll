; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_rgrp.c_gfs2_inplace_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_rgrp.c_gfs2_inplace_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { %struct.gfs2_blkreserv* }
%struct.gfs2_blkreserv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gfs2_inplace_release(%struct.gfs2_inode* %0) #0 {
  %2 = alloca %struct.gfs2_inode*, align 8
  %3 = alloca %struct.gfs2_blkreserv*, align 8
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %2, align 8
  %4 = load %struct.gfs2_inode*, %struct.gfs2_inode** %2, align 8
  %5 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %4, i32 0, i32 0
  %6 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %5, align 8
  store %struct.gfs2_blkreserv* %6, %struct.gfs2_blkreserv** %3, align 8
  %7 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %3, align 8
  %8 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.gfs2_blkreserv*, %struct.gfs2_blkreserv** %3, align 8
  %14 = getelementptr inbounds %struct.gfs2_blkreserv, %struct.gfs2_blkreserv* %13, i32 0, i32 0
  %15 = call i32 @gfs2_glock_dq_uninit(%struct.TYPE_2__* %14)
  br label %16

16:                                               ; preds = %12, %1
  ret void
}

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
