; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_aops.c___gfs2_readpage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_aops.c___gfs2_readpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.gfs2_inode = type { i32 }
%struct.gfs2_sbd = type { i32 }

@gfs2_block_map = common dso_local global i32 0, align 4
@SDF_SHUTDOWN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.page*)* @__gfs2_readpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__gfs2_readpage(i8* %0, %struct.page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.gfs2_inode*, align 8
  %7 = alloca %struct.gfs2_sbd*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  %9 = load %struct.page*, %struct.page** %5, align 8
  %10 = getelementptr inbounds %struct.page, %struct.page* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.gfs2_inode* @GFS2_I(i32 %13)
  store %struct.gfs2_inode* %14, %struct.gfs2_inode** %6, align 8
  %15 = load %struct.page*, %struct.page** %5, align 8
  %16 = getelementptr inbounds %struct.page, %struct.page* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.gfs2_sbd* @GFS2_SB(i32 %19)
  store %struct.gfs2_sbd* %20, %struct.gfs2_sbd** %7, align 8
  %21 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %22 = call i64 @gfs2_is_stuffed(%struct.gfs2_inode* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %26 = load %struct.page*, %struct.page** %5, align 8
  %27 = call i32 @stuffed_readpage(%struct.gfs2_inode* %25, %struct.page* %26)
  store i32 %27, i32* %8, align 4
  %28 = load %struct.page*, %struct.page** %5, align 8
  %29 = call i32 @unlock_page(%struct.page* %28)
  br label %34

30:                                               ; preds = %2
  %31 = load %struct.page*, %struct.page** %5, align 8
  %32 = load i32, i32* @gfs2_block_map, align 4
  %33 = call i32 @mpage_readpage(%struct.page* %31, i32 %32)
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %30, %24
  %35 = load i32, i32* @SDF_SHUTDOWN, align 4
  %36 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %37 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %36, i32 0, i32 0
  %38 = call i32 @test_bit(i32 %35, i32* %37)
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %46

44:                                               ; preds = %34
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %41
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.gfs2_inode* @GFS2_I(i32) #1

declare dso_local %struct.gfs2_sbd* @GFS2_SB(i32) #1

declare dso_local i64 @gfs2_is_stuffed(%struct.gfs2_inode*) #1

declare dso_local i32 @stuffed_readpage(%struct.gfs2_inode*, %struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @mpage_readpage(%struct.page*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
