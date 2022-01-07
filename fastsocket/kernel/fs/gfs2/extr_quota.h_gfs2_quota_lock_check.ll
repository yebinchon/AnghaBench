; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_quota.h_gfs2_quota_lock_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_quota.h_gfs2_quota_lock_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.gfs2_sbd = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@GFS2_QUOTA_OFF = common dso_local global i64 0, align 8
@NO_QUOTA_CHANGE = common dso_local global i32 0, align 4
@GFS2_QUOTA_ON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*)* @gfs2_quota_lock_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_quota_lock_check(%struct.gfs2_inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gfs2_inode*, align 8
  %4 = alloca %struct.gfs2_sbd*, align 8
  %5 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %3, align 8
  %6 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %7 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %6, i32 0, i32 0
  %8 = call %struct.gfs2_sbd* @GFS2_SB(%struct.TYPE_4__* %7)
  store %struct.gfs2_sbd* %8, %struct.gfs2_sbd** %4, align 8
  %9 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %10 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @GFS2_QUOTA_OFF, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %51

16:                                               ; preds = %1
  %17 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %18 = load i32, i32* @NO_QUOTA_CHANGE, align 4
  %19 = load i32, i32* @NO_QUOTA_CHANGE, align 4
  %20 = call i32 @gfs2_quota_lock(%struct.gfs2_inode* %17, i32 %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %51

25:                                               ; preds = %16
  %26 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %27 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @GFS2_QUOTA_ON, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %51

33:                                               ; preds = %25
  %34 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %35 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %36 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %40 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @gfs2_quota_check(%struct.gfs2_inode* %34, i32 %38, i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %33
  %47 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %48 = call i32 @gfs2_quota_unlock(%struct.gfs2_inode* %47)
  br label %49

49:                                               ; preds = %46, %33
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %49, %32, %23, %15
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.TYPE_4__*) #1

declare dso_local i32 @gfs2_quota_lock(%struct.gfs2_inode*, i32, i32) #1

declare dso_local i32 @gfs2_quota_check(%struct.gfs2_inode*, i32, i32) #1

declare dso_local i32 @gfs2_quota_unlock(%struct.gfs2_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
