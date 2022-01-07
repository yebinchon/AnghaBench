; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_ops_fstype.c_gfs2_online_uevent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_ops_fstype.c_gfs2_online_uevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i32, %struct.TYPE_2__, %struct.super_block* }
%struct.TYPE_2__ = type { i64 }
%struct.super_block = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"RDONLY=%d\00", align 1
@MS_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"SPECTATOR=%d\00", align 1
@KOBJ_ONLINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gfs2_online_uevent(%struct.gfs2_sbd* %0) #0 {
  %2 = alloca %struct.gfs2_sbd*, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca [20 x i8], align 16
  %5 = alloca [20 x i8], align 16
  %6 = alloca [3 x i8*], align 16
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %2, align 8
  %7 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %2, align 8
  %8 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %7, i32 0, i32 2
  %9 = load %struct.super_block*, %struct.super_block** %8, align 8
  store %struct.super_block* %9, %struct.super_block** %3, align 8
  %10 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 0
  %11 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  store i8* %11, i8** %10, align 8
  %12 = getelementptr inbounds i8*, i8** %10, i64 1
  %13 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  store i8* %13, i8** %12, align 8
  %14 = getelementptr inbounds i8*, i8** %12, i64 1
  store i8* null, i8** %14, align 8
  %15 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0
  %16 = load %struct.super_block*, %struct.super_block** %3, align 8
  %17 = getelementptr inbounds %struct.super_block, %struct.super_block* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @MS_RDONLY, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 1, i32 0
  %24 = call i32 @sprintf(i8* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %26 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %2, align 8
  %27 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 1, i32 0
  %33 = call i32 @sprintf(i8* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %2, align 8
  %35 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %34, i32 0, i32 0
  %36 = load i32, i32* @KOBJ_ONLINE, align 4
  %37 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 0
  %38 = call i32 @kobject_uevent_env(i32* %35, i32 %36, i8** %37)
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @kobject_uevent_env(i32*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
