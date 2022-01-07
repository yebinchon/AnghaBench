; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_meta_io.h_gfs2_mapping2sbd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_meta_io.h_gfs2_mapping2sbd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i32 }
%struct.address_space = type { i32*, %struct.inode* }
%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.gfs2_sbd* }
%struct.gfs2_glock = type { %struct.gfs2_sbd* }

@gfs2_meta_aops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gfs2_sbd* (%struct.address_space*)* @gfs2_mapping2sbd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gfs2_sbd* @gfs2_mapping2sbd(%struct.address_space* %0) #0 {
  %2 = alloca %struct.gfs2_sbd*, align 8
  %3 = alloca %struct.address_space*, align 8
  %4 = alloca %struct.inode*, align 8
  store %struct.address_space* %0, %struct.address_space** %3, align 8
  %5 = load %struct.address_space*, %struct.address_space** %3, align 8
  %6 = getelementptr inbounds %struct.address_space, %struct.address_space* %5, i32 0, i32 1
  %7 = load %struct.inode*, %struct.inode** %6, align 8
  store %struct.inode* %7, %struct.inode** %4, align 8
  %8 = load %struct.address_space*, %struct.address_space** %3, align 8
  %9 = getelementptr inbounds %struct.address_space, %struct.address_space* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, @gfs2_meta_aops
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.address_space*, %struct.address_space** %3, align 8
  %14 = bitcast %struct.address_space* %13 to %struct.gfs2_glock*
  %15 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %14, i64 -1
  %16 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %15, i32 0, i32 0
  %17 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %16, align 8
  store %struct.gfs2_sbd* %17, %struct.gfs2_sbd** %2, align 8
  br label %24

18:                                               ; preds = %1
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %22, align 8
  store %struct.gfs2_sbd* %23, %struct.gfs2_sbd** %2, align 8
  br label %24

24:                                               ; preds = %18, %12
  %25 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %2, align 8
  ret %struct.gfs2_sbd* %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
