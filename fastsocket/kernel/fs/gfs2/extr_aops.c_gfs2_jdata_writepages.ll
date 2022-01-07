; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_aops.c_gfs2_jdata_writepages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_aops.c_gfs2_jdata_writepages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32 }
%struct.writeback_control = type { i64 }
%struct.gfs2_inode = type { i32 }
%struct.gfs2_sbd = type { i32 }

@WB_SYNC_ALL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.address_space*, %struct.writeback_control*)* @gfs2_jdata_writepages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_jdata_writepages(%struct.address_space* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca %struct.address_space*, align 8
  %4 = alloca %struct.writeback_control*, align 8
  %5 = alloca %struct.gfs2_inode*, align 8
  %6 = alloca %struct.gfs2_sbd*, align 8
  %7 = alloca i32, align 4
  store %struct.address_space* %0, %struct.address_space** %3, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %4, align 8
  %8 = load %struct.address_space*, %struct.address_space** %3, align 8
  %9 = getelementptr inbounds %struct.address_space, %struct.address_space* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.gfs2_inode* @GFS2_I(i32 %10)
  store %struct.gfs2_inode* %11, %struct.gfs2_inode** %5, align 8
  %12 = load %struct.address_space*, %struct.address_space** %3, align 8
  %13 = getelementptr inbounds %struct.address_space, %struct.address_space* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.gfs2_sbd* @GFS2_SB(i32 %14)
  store %struct.gfs2_sbd* %15, %struct.gfs2_sbd** %6, align 8
  %16 = load %struct.address_space*, %struct.address_space** %3, align 8
  %17 = load %struct.writeback_control*, %struct.writeback_control** %4, align 8
  %18 = call i32 @gfs2_write_cache_jdata(%struct.address_space* %16, %struct.writeback_control* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %2
  %22 = load %struct.writeback_control*, %struct.writeback_control** %4, align 8
  %23 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @WB_SYNC_ALL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %21
  %28 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %29 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %30 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @gfs2_log_flush(%struct.gfs2_sbd* %28, i32 %31)
  %33 = load %struct.address_space*, %struct.address_space** %3, align 8
  %34 = load %struct.writeback_control*, %struct.writeback_control** %4, align 8
  %35 = call i32 @gfs2_write_cache_jdata(%struct.address_space* %33, %struct.writeback_control* %34)
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %27, %21, %2
  %37 = load i32, i32* %7, align 4
  ret i32 %37
}

declare dso_local %struct.gfs2_inode* @GFS2_I(i32) #1

declare dso_local %struct.gfs2_sbd* @GFS2_SB(i32) #1

declare dso_local i32 @gfs2_write_cache_jdata(%struct.address_space*, %struct.writeback_control*) #1

declare dso_local i32 @gfs2_log_flush(%struct.gfs2_sbd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
