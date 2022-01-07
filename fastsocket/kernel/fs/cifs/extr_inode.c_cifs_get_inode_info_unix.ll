; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_inode.c_cifs_get_inode_info_unix.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_inode.c_cifs_get_inode_info_unix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.super_block = type { i32 }
%struct.cifs_fattr = type { i32 }
%struct.cifs_tcon = type { i32 }
%struct.tcon_link = type { i32 }
%struct.cifs_sb_info = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"Getting info on %s\00", align 1
@CIFS_MOUNT_MAP_SPECIAL_CHR = common dso_local global i32 0, align 4
@EREMOTE = common dso_local global i32 0, align 4
@CIFS_MOUNT_MF_SYMLINKS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"CIFSCheckMFSymlink: %d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifs_get_inode_info_unix(%struct.inode** %0, i8* %1, %struct.super_block* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.cifs_fattr, align 4
  %13 = alloca %struct.cifs_tcon*, align 8
  %14 = alloca %struct.tcon_link*, align 8
  %15 = alloca %struct.cifs_sb_info*, align 8
  %16 = alloca i32, align 4
  store %struct.inode** %0, %struct.inode*** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.super_block* %2, %struct.super_block** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.super_block*, %struct.super_block** %8, align 8
  %18 = call %struct.cifs_sb_info* @CIFS_SB(%struct.super_block* %17)
  store %struct.cifs_sb_info* %18, %struct.cifs_sb_info** %15, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %15, align 8
  %22 = call %struct.tcon_link* @cifs_sb_tlink(%struct.cifs_sb_info* %21)
  store %struct.tcon_link* %22, %struct.tcon_link** %14, align 8
  %23 = load %struct.tcon_link*, %struct.tcon_link** %14, align 8
  %24 = call i64 @IS_ERR(%struct.tcon_link* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load %struct.tcon_link*, %struct.tcon_link** %14, align 8
  %28 = call i32 @PTR_ERR(%struct.tcon_link* %27)
  store i32 %28, i32* %5, align 4
  br label %103

29:                                               ; preds = %4
  %30 = load %struct.tcon_link*, %struct.tcon_link** %14, align 8
  %31 = call %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link* %30)
  store %struct.cifs_tcon* %31, %struct.cifs_tcon** %13, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.cifs_tcon*, %struct.cifs_tcon** %13, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %15, align 8
  %36 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %15, align 8
  %39 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @CIFS_MOUNT_MAP_SPECIAL_CHR, align 4
  %42 = and i32 %40, %41
  %43 = call i32 @CIFSSMBUnixQPathInfo(i32 %32, %struct.cifs_tcon* %33, i8* %34, i32* %11, i32 %37, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load %struct.tcon_link*, %struct.tcon_link** %14, align 8
  %45 = call i32 @cifs_put_tlink(%struct.tcon_link* %44)
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %29
  %49 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %15, align 8
  %50 = call i32 @cifs_unix_basic_to_fattr(%struct.cifs_fattr* %12, i32* %11, %struct.cifs_sb_info* %49)
  br label %62

51:                                               ; preds = %29
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @EREMOTE, align 4
  %54 = sub nsw i32 0, %53
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load %struct.super_block*, %struct.super_block** %8, align 8
  %58 = call i32 @cifs_create_dfs_fattr(%struct.cifs_fattr* %12, %struct.super_block* %57)
  store i32 0, i32* %10, align 4
  br label %61

59:                                               ; preds = %51
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %5, align 4
  br label %103

61:                                               ; preds = %56
  br label %62

62:                                               ; preds = %61, %48
  %63 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %15, align 8
  %64 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @CIFS_MOUNT_MF_SYMLINKS, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %62
  %70 = load i8*, i8** %7, align 8
  %71 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %15, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @CIFSCheckMFSymlink(%struct.cifs_fattr* %12, i8* %70, %struct.cifs_sb_info* %71, i32 %72)
  store i32 %73, i32* %16, align 4
  %74 = load i32, i32* %16, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load i32, i32* %16, align 4
  %78 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %76, %69
  br label %80

80:                                               ; preds = %79, %62
  %81 = load %struct.inode**, %struct.inode*** %6, align 8
  %82 = load %struct.inode*, %struct.inode** %81, align 8
  %83 = icmp eq %struct.inode* %82, null
  br i1 %83, label %84, label %97

84:                                               ; preds = %80
  %85 = load %struct.super_block*, %struct.super_block** %8, align 8
  %86 = call i32 @cifs_fill_uniqueid(%struct.super_block* %85, %struct.cifs_fattr* %12)
  %87 = load %struct.super_block*, %struct.super_block** %8, align 8
  %88 = call %struct.inode* @cifs_iget(%struct.super_block* %87, %struct.cifs_fattr* %12)
  %89 = load %struct.inode**, %struct.inode*** %6, align 8
  store %struct.inode* %88, %struct.inode** %89, align 8
  %90 = load %struct.inode**, %struct.inode*** %6, align 8
  %91 = load %struct.inode*, %struct.inode** %90, align 8
  %92 = icmp ne %struct.inode* %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %84
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %10, align 4
  br label %96

96:                                               ; preds = %93, %84
  br label %101

97:                                               ; preds = %80
  %98 = load %struct.inode**, %struct.inode*** %6, align 8
  %99 = load %struct.inode*, %struct.inode** %98, align 8
  %100 = call i32 @cifs_fattr_to_inode(%struct.inode* %99, %struct.cifs_fattr* %12)
  br label %101

101:                                              ; preds = %97, %96
  %102 = load i32, i32* %10, align 4
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %101, %59, %26
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local %struct.cifs_sb_info* @CIFS_SB(%struct.super_block*) #1

declare dso_local i32 @cFYI(i32, i8*, ...) #1

declare dso_local %struct.tcon_link* @cifs_sb_tlink(%struct.cifs_sb_info*) #1

declare dso_local i64 @IS_ERR(%struct.tcon_link*) #1

declare dso_local i32 @PTR_ERR(%struct.tcon_link*) #1

declare dso_local %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link*) #1

declare dso_local i32 @CIFSSMBUnixQPathInfo(i32, %struct.cifs_tcon*, i8*, i32*, i32, i32) #1

declare dso_local i32 @cifs_put_tlink(%struct.tcon_link*) #1

declare dso_local i32 @cifs_unix_basic_to_fattr(%struct.cifs_fattr*, i32*, %struct.cifs_sb_info*) #1

declare dso_local i32 @cifs_create_dfs_fattr(%struct.cifs_fattr*, %struct.super_block*) #1

declare dso_local i32 @CIFSCheckMFSymlink(%struct.cifs_fattr*, i8*, %struct.cifs_sb_info*, i32) #1

declare dso_local i32 @cifs_fill_uniqueid(%struct.super_block*, %struct.cifs_fattr*) #1

declare dso_local %struct.inode* @cifs_iget(%struct.super_block*, %struct.cifs_fattr*) #1

declare dso_local i32 @cifs_fattr_to_inode(%struct.inode*, %struct.cifs_fattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
