; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_aops.c_ocfs2_bmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_aops.c_ocfs2_bmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"(block = %llu)\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@OCFS2_INLINE_DATA_FL = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"get_blocks() failed, block = %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.address_space*, i64)* @ocfs2_bmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ocfs2_bmap(%struct.address_space* %0, i64 %1) #0 {
  %3 = alloca %struct.address_space*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  store %struct.address_space* %0, %struct.address_space** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.address_space*, %struct.address_space** %3, align 8
  %10 = getelementptr inbounds %struct.address_space, %struct.address_space* %9, i32 0, i32 0
  %11 = load %struct.inode*, %struct.inode** %10, align 8
  store %struct.inode* %11, %struct.inode** %8, align 8
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @mlog_entry(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load %struct.inode*, %struct.inode** %8, align 8
  %15 = call i32 @INODE_JOURNAL(%struct.inode* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %36, label %17

17:                                               ; preds = %2
  %18 = load %struct.inode*, %struct.inode** %8, align 8
  %19 = call i32 @ocfs2_inode_lock(%struct.inode* %18, i32* null, i32 0)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @ENOENT, align 4
  %25 = sub nsw i32 0, %24
  %26 = icmp ne i32 %23, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @mlog_errno(i32 %28)
  br label %30

30:                                               ; preds = %27, %22
  br label %69

31:                                               ; preds = %17
  %32 = load %struct.inode*, %struct.inode** %8, align 8
  %33 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = call i32 @down_read(i32* %34)
  br label %36

36:                                               ; preds = %31, %2
  %37 = load %struct.inode*, %struct.inode** %8, align 8
  %38 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %37)
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @OCFS2_INLINE_DATA_FL, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %36
  %45 = load %struct.inode*, %struct.inode** %8, align 8
  %46 = load i64, i64* %4, align 8
  %47 = call i32 @ocfs2_extent_map_get_blocks(%struct.inode* %45, i64 %46, i64* %6, i32* null, i32* null)
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %44, %36
  %49 = load %struct.inode*, %struct.inode** %8, align 8
  %50 = call i32 @INODE_JOURNAL(%struct.inode* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %48
  %53 = load %struct.inode*, %struct.inode** %8, align 8
  %54 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %53)
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = call i32 @up_read(i32* %55)
  %57 = load %struct.inode*, %struct.inode** %8, align 8
  %58 = call i32 @ocfs2_inode_unlock(%struct.inode* %57, i32 0)
  br label %59

59:                                               ; preds = %52, %48
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load i32, i32* @ML_ERROR, align 4
  %64 = load i64, i64* %4, align 8
  %65 = call i32 @mlog(i32 %63, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %64)
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @mlog_errno(i32 %66)
  br label %69

68:                                               ; preds = %59
  br label %69

69:                                               ; preds = %68, %62, %30
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  br label %75

73:                                               ; preds = %69
  %74 = load i64, i64* %6, align 8
  br label %75

75:                                               ; preds = %73, %72
  %76 = phi i64 [ 0, %72 ], [ %74, %73 ]
  store i64 %76, i64* %5, align 8
  %77 = load i64, i64* %5, align 8
  %78 = trunc i64 %77 to i32
  %79 = call i32 @mlog_exit(i32 %78)
  %80 = load i64, i64* %5, align 8
  ret i64 %80
}

declare dso_local i32 @mlog_entry(i8*, i64) #1

declare dso_local i32 @INODE_JOURNAL(%struct.inode*) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, i32*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_extent_map_get_blocks(%struct.inode*, i64, i64*, i32*, i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @mlog(i32, i8*, i64) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
