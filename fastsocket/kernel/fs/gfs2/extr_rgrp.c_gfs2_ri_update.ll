; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_rgrp.c_gfs2_ri_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_rgrp.c_gfs2_ri_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { %struct.inode }
%struct.inode = type { i32 }
%struct.gfs2_sbd = type { i32 }
%struct.file_ra_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*)* @gfs2_ri_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_ri_update(%struct.gfs2_inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gfs2_inode*, align 8
  %4 = alloca %struct.gfs2_sbd*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.file_ra_state, align 4
  %7 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %3, align 8
  %8 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %9 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %8, i32 0, i32 0
  %10 = call %struct.gfs2_sbd* @GFS2_SB(%struct.inode* %9)
  store %struct.gfs2_sbd* %10, %struct.gfs2_sbd** %4, align 8
  %11 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %12 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %11, i32 0, i32 0
  store %struct.inode* %12, %struct.inode** %5, align 8
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @file_ra_state_init(%struct.file_ra_state* %6, i32 %15)
  br label %17

17:                                               ; preds = %20, %1
  %18 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %19 = call i32 @read_rindex_entry(%struct.gfs2_inode* %18, %struct.file_ra_state* %6)
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %17, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %2, align 4
  br label %31

28:                                               ; preds = %23
  %29 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %30 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %28, %26
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.inode*) #1

declare dso_local i32 @file_ra_state_init(%struct.file_ra_state*, i32) #1

declare dso_local i32 @read_rindex_entry(%struct.gfs2_inode*, %struct.file_ra_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
