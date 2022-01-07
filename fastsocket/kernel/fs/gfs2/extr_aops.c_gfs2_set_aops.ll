; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_aops.c_gfs2_set_aops.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_aops.c_gfs2_set_aops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.gfs2_inode = type { i32 }

@gfs2_writeback_aops = common dso_local global i32 0, align 4
@gfs2_ordered_aops = common dso_local global i32 0, align 4
@gfs2_jdata_aops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gfs2_set_aops(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.gfs2_inode*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %4 = load %struct.inode*, %struct.inode** %2, align 8
  %5 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %4)
  store %struct.gfs2_inode* %5, %struct.gfs2_inode** %3, align 8
  %6 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %7 = call i64 @gfs2_is_writeback(%struct.gfs2_inode* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.inode*, %struct.inode** %2, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32* @gfs2_writeback_aops, i32** %13, align 8
  br label %36

14:                                               ; preds = %1
  %15 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %16 = call i64 @gfs2_is_ordered(%struct.gfs2_inode* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load %struct.inode*, %struct.inode** %2, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32* @gfs2_ordered_aops, i32** %22, align 8
  br label %35

23:                                               ; preds = %14
  %24 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %25 = call i64 @gfs2_is_jdata(%struct.gfs2_inode* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load %struct.inode*, %struct.inode** %2, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32* @gfs2_jdata_aops, i32** %31, align 8
  br label %34

32:                                               ; preds = %23
  %33 = call i32 (...) @BUG()
  br label %34

34:                                               ; preds = %32, %27
  br label %35

35:                                               ; preds = %34, %18
  br label %36

36:                                               ; preds = %35, %9
  ret void
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local i64 @gfs2_is_writeback(%struct.gfs2_inode*) #1

declare dso_local i64 @gfs2_is_ordered(%struct.gfs2_inode*) #1

declare dso_local i64 @gfs2_is_jdata(%struct.gfs2_inode*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
