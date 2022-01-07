; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_super.c_gfs2_drop_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_super.c_gfs2_drop_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64 }
%struct.gfs2_inode = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.gfs2_glock* }
%struct.gfs2_glock = type { i32 }

@GLF_DEMOTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @gfs2_drop_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfs2_drop_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.gfs2_inode*, align 8
  %4 = alloca %struct.gfs2_glock*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %5 = load %struct.inode*, %struct.inode** %2, align 8
  %6 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %5)
  store %struct.gfs2_inode* %6, %struct.gfs2_inode** %3, align 8
  %7 = load %struct.inode*, %struct.inode** %2, align 8
  %8 = getelementptr inbounds %struct.inode, %struct.inode* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %1
  %12 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %13 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.gfs2_glock*, %struct.gfs2_glock** %14, align 8
  store %struct.gfs2_glock* %15, %struct.gfs2_glock** %4, align 8
  %16 = load %struct.gfs2_glock*, %struct.gfs2_glock** %4, align 8
  %17 = icmp ne %struct.gfs2_glock* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %11
  %19 = load i32, i32* @GLF_DEMOTE, align 4
  %20 = load %struct.gfs2_glock*, %struct.gfs2_glock** %4, align 8
  %21 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %20, i32 0, i32 0
  %22 = call i64 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.inode*, %struct.inode** %2, align 8
  %26 = call i32 @clear_nlink(%struct.inode* %25)
  br label %27

27:                                               ; preds = %24, %18, %11
  br label %28

28:                                               ; preds = %27, %1
  %29 = load %struct.inode*, %struct.inode** %2, align 8
  %30 = call i32 @generic_drop_inode(%struct.inode* %29)
  ret void
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_nlink(%struct.inode*) #1

declare dso_local i32 @generic_drop_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
