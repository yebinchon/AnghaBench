; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_imap.c_diWriteSpecial.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_imap.c_diWriteSpecial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.jfs_sb_info = type { i32, i32, i32 }
%struct.dinode = type { i32, i32 }
%struct.metapage = type { i64 }
%struct.TYPE_2__ = type { i32 }

@AITBL_OFF = common dso_local global i32 0, align 4
@L2PSIZE = common dso_local global i32 0, align 4
@INOSPEREXT = common dso_local global i32 0, align 4
@PSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"diWriteSpecial: failed to read aggregate inode extent!\00", align 1
@FILESYSTEM_I = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @diWriteSpecial(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.jfs_sb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dinode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.metapage*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.jfs_sb_info* @JFS_SBI(i32 %12)
  store %struct.jfs_sb_info* %13, %struct.jfs_sb_info** %5, align 8
  %14 = load %struct.inode*, %struct.inode** %3, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %5, align 8
  %21 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %20, i32 0, i32 2
  %22 = call i32 @addressPXD(i32* %21)
  %23 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %5, align 8
  %24 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = ashr i32 %22, %25
  store i32 %26, i32* %6, align 4
  br label %31

27:                                               ; preds = %2
  %28 = load i32, i32* @AITBL_OFF, align 4
  %29 = load i32, i32* @L2PSIZE, align 4
  %30 = ashr i32 %28, %29
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %27, %19
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @INOSPEREXT, align 4
  %34 = icmp slt i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @ASSERT(i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = ashr i32 %37, 3
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %6, align 4
  %41 = load %struct.inode*, %struct.inode** %3, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %5, align 8
  %44 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 %42, %45
  %47 = load i32, i32* @PSIZE, align 4
  %48 = call %struct.metapage* @read_metapage(%struct.inode* %41, i32 %46, i32 %47, i32 1)
  store %struct.metapage* %48, %struct.metapage** %9, align 8
  %49 = load %struct.metapage*, %struct.metapage** %9, align 8
  %50 = icmp eq %struct.metapage* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %31
  %52 = call i32 @jfs_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %85

53:                                               ; preds = %31
  %54 = load %struct.metapage*, %struct.metapage** %9, align 8
  %55 = getelementptr inbounds %struct.metapage, %struct.metapage* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to %struct.dinode*
  store %struct.dinode* %57, %struct.dinode** %7, align 8
  %58 = load i32, i32* %8, align 4
  %59 = srem i32 %58, 8
  %60 = load %struct.dinode*, %struct.dinode** %7, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds %struct.dinode, %struct.dinode* %60, i64 %61
  store %struct.dinode* %62, %struct.dinode** %7, align 8
  %63 = load %struct.dinode*, %struct.dinode** %7, align 8
  %64 = load %struct.inode*, %struct.inode** %3, align 8
  %65 = call i32 @copy_to_dinode(%struct.dinode* %63, %struct.inode* %64)
  %66 = load %struct.dinode*, %struct.dinode** %7, align 8
  %67 = getelementptr inbounds %struct.dinode, %struct.dinode* %66, i32 0, i32 1
  %68 = load %struct.inode*, %struct.inode** %3, align 8
  %69 = call %struct.TYPE_2__* @JFS_IP(%struct.inode* %68)
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = call i32 @memcpy(i32* %67, i32* %70, i32 288)
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @FILESYSTEM_I, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %53
  %76 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %5, align 8
  %77 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @cpu_to_le32(i32 %78)
  %80 = load %struct.dinode*, %struct.dinode** %7, align 8
  %81 = getelementptr inbounds %struct.dinode, %struct.dinode* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %75, %53
  %83 = load %struct.metapage*, %struct.metapage** %9, align 8
  %84 = call i32 @write_metapage(%struct.metapage* %83)
  br label %85

85:                                               ; preds = %82, %51
  ret void
}

declare dso_local %struct.jfs_sb_info* @JFS_SBI(i32) #1

declare dso_local i32 @addressPXD(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.metapage* @read_metapage(%struct.inode*, i32, i32, i32) #1

declare dso_local i32 @jfs_err(i8*) #1

declare dso_local i32 @copy_to_dinode(%struct.dinode*, %struct.inode*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_2__* @JFS_IP(%struct.inode*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @write_metapage(%struct.metapage*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
