; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_bmap.c_trunc_dealloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_bmap.c_trunc_dealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32, i32 }
%struct.gfs2_sbd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.metapath = type { i32 }
%struct.strip_mine = type { i32, i32 }

@NO_QUOTA_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, i32)* @trunc_dealloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trunc_dealloc(%struct.gfs2_inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gfs2_inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gfs2_sbd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.metapath, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.strip_mine, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %13 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %12, i32 0, i32 1
  %14 = call %struct.gfs2_sbd* @GFS2_SB(i32* %13)
  store %struct.gfs2_sbd* %14, %struct.gfs2_sbd** %6, align 8
  %15 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %16 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %29

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = sub nsw i32 %22, 1
  %24 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %25 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %23, %27
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %21, %20
  %30 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %33 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @find_metapath(%struct.gfs2_sbd* %30, i32 %31, %struct.metapath* %9, i32 %34)
  %36 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %37 = call i32 @gfs2_rindex_update(%struct.gfs2_sbd* %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %29
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %3, align 4
  br label %75

42:                                               ; preds = %29
  %43 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %44 = load i32, i32* @NO_QUOTA_CHANGE, align 4
  %45 = load i32, i32* @NO_QUOTA_CHANGE, align 4
  %46 = call i32 @gfs2_quota_hold(%struct.gfs2_inode* %43, i32 %44, i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %3, align 4
  br label %75

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %70, %51
  %53 = load i32, i32* %7, align 4
  %54 = add i32 %53, -1
  store i32 %54, i32* %7, align 4
  %55 = icmp ne i32 %53, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %52
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = getelementptr inbounds %struct.strip_mine, %struct.strip_mine* %11, i32 0, i32 0
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* %7, align 4
  %64 = getelementptr inbounds %struct.strip_mine, %struct.strip_mine* %11, i32 0, i32 1
  store i32 %63, i32* %64, align 4
  %65 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %66 = call i32 @recursive_scan(%struct.gfs2_inode* %65, i32* null, %struct.metapath* %9, i32 0, i32 0, i32 1, %struct.strip_mine* %11)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %56
  br label %71

70:                                               ; preds = %56
  br label %52

71:                                               ; preds = %69, %52
  %72 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %73 = call i32 @gfs2_quota_unhold(%struct.gfs2_inode* %72)
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %71, %49, %40
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(i32*) #1

declare dso_local i32 @find_metapath(%struct.gfs2_sbd*, i32, %struct.metapath*, i32) #1

declare dso_local i32 @gfs2_rindex_update(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_quota_hold(%struct.gfs2_inode*, i32, i32) #1

declare dso_local i32 @recursive_scan(%struct.gfs2_inode*, i32*, %struct.metapath*, i32, i32, i32, %struct.strip_mine*) #1

declare dso_local i32 @gfs2_quota_unhold(%struct.gfs2_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
