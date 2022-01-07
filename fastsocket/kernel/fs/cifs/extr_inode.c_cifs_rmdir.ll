; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_inode.c_cifs_rmdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_inode.c_cifs_rmdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32 }
%struct.dentry = type { %struct.inode* }
%struct.cifs_sb_info = type { i32, i32 }
%struct.tcon_link = type { i32 }
%struct.cifs_tcon = type { i32 }
%struct.cifsInodeInfo = type { i64 }

@.str = private unnamed_addr constant [25 x i8] c"cifs_rmdir, inode = 0x%p\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@CIFS_MOUNT_MAP_SPECIAL_CHR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifs_rmdir(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cifs_sb_info*, align 8
  %8 = alloca %struct.tcon_link*, align 8
  %9 = alloca %struct.cifs_tcon*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.cifsInodeInfo*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  store i32 0, i32* %5, align 4
  store i8* null, i8** %10, align 8
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.inode* %12)
  %14 = call i32 (...) @GetXid()
  store i32 %14, i32* %6, align 4
  %15 = load %struct.dentry*, %struct.dentry** %4, align 8
  %16 = call i8* @build_path_from_dentry(%struct.dentry* %15)
  store i8* %16, i8** %10, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %98

22:                                               ; preds = %2
  %23 = load %struct.inode*, %struct.inode** %3, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.cifs_sb_info* @CIFS_SB(i32 %25)
  store %struct.cifs_sb_info* %26, %struct.cifs_sb_info** %7, align 8
  %27 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %7, align 8
  %28 = call %struct.tcon_link* @cifs_sb_tlink(%struct.cifs_sb_info* %27)
  store %struct.tcon_link* %28, %struct.tcon_link** %8, align 8
  %29 = load %struct.tcon_link*, %struct.tcon_link** %8, align 8
  %30 = call i64 @IS_ERR(%struct.tcon_link* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %22
  %33 = load %struct.tcon_link*, %struct.tcon_link** %8, align 8
  %34 = call i32 @PTR_ERR(%struct.tcon_link* %33)
  store i32 %34, i32* %5, align 4
  br label %98

35:                                               ; preds = %22
  %36 = load %struct.tcon_link*, %struct.tcon_link** %8, align 8
  %37 = call %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link* %36)
  store %struct.cifs_tcon* %37, %struct.cifs_tcon** %9, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.cifs_tcon*, %struct.cifs_tcon** %9, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %7, align 8
  %42 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %7, align 8
  %45 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @CIFS_MOUNT_MAP_SPECIAL_CHR, align 4
  %48 = and i32 %46, %47
  %49 = call i32 @CIFSSMBRmDir(i32 %38, %struct.cifs_tcon* %39, i8* %40, i32 %43, i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load %struct.tcon_link*, %struct.tcon_link** %8, align 8
  %51 = call i32 @cifs_put_tlink(%struct.tcon_link* %50)
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %75, label %54

54:                                               ; preds = %35
  %55 = load %struct.inode*, %struct.inode** %3, align 8
  %56 = call i32 @drop_nlink(%struct.inode* %55)
  %57 = load %struct.dentry*, %struct.dentry** %4, align 8
  %58 = getelementptr inbounds %struct.dentry, %struct.dentry* %57, i32 0, i32 0
  %59 = load %struct.inode*, %struct.inode** %58, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 3
  %61 = call i32 @spin_lock(i32* %60)
  %62 = load %struct.dentry*, %struct.dentry** %4, align 8
  %63 = getelementptr inbounds %struct.dentry, %struct.dentry* %62, i32 0, i32 0
  %64 = load %struct.inode*, %struct.inode** %63, align 8
  %65 = call i32 @i_size_write(%struct.inode* %64, i32 0)
  %66 = load %struct.dentry*, %struct.dentry** %4, align 8
  %67 = getelementptr inbounds %struct.dentry, %struct.dentry* %66, i32 0, i32 0
  %68 = load %struct.inode*, %struct.inode** %67, align 8
  %69 = call i32 @clear_nlink(%struct.inode* %68)
  %70 = load %struct.dentry*, %struct.dentry** %4, align 8
  %71 = getelementptr inbounds %struct.dentry, %struct.dentry* %70, i32 0, i32 0
  %72 = load %struct.inode*, %struct.inode** %71, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 3
  %74 = call i32 @spin_unlock(i32* %73)
  br label %75

75:                                               ; preds = %54, %35
  %76 = load %struct.dentry*, %struct.dentry** %4, align 8
  %77 = getelementptr inbounds %struct.dentry, %struct.dentry* %76, i32 0, i32 0
  %78 = load %struct.inode*, %struct.inode** %77, align 8
  %79 = call %struct.cifsInodeInfo* @CIFS_I(%struct.inode* %78)
  store %struct.cifsInodeInfo* %79, %struct.cifsInodeInfo** %11, align 8
  %80 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %11, align 8
  %81 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %80, i32 0, i32 0
  store i64 0, i64* %81, align 8
  %82 = load %struct.inode*, %struct.inode** %3, align 8
  %83 = call %struct.cifsInodeInfo* @CIFS_I(%struct.inode* %82)
  store %struct.cifsInodeInfo* %83, %struct.cifsInodeInfo** %11, align 8
  %84 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %11, align 8
  %85 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %84, i32 0, i32 0
  store i64 0, i64* %85, align 8
  %86 = load %struct.inode*, %struct.inode** %3, align 8
  %87 = getelementptr inbounds %struct.inode, %struct.inode* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @current_fs_time(i32 %88)
  %90 = load %struct.inode*, %struct.inode** %3, align 8
  %91 = getelementptr inbounds %struct.inode, %struct.inode* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.inode*, %struct.inode** %3, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 2
  store i32 %89, i32* %93, align 4
  %94 = load %struct.dentry*, %struct.dentry** %4, align 8
  %95 = getelementptr inbounds %struct.dentry, %struct.dentry* %94, i32 0, i32 0
  %96 = load %struct.inode*, %struct.inode** %95, align 8
  %97 = getelementptr inbounds %struct.inode, %struct.inode* %96, i32 0, i32 2
  store i32 %89, i32* %97, align 4
  br label %98

98:                                               ; preds = %75, %32, %19
  %99 = load i8*, i8** %10, align 8
  %100 = call i32 @kfree(i8* %99)
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @FreeXid(i32 %101)
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local i32 @cFYI(i32, i8*, %struct.inode*) #1

declare dso_local i32 @GetXid(...) #1

declare dso_local i8* @build_path_from_dentry(%struct.dentry*) #1

declare dso_local %struct.cifs_sb_info* @CIFS_SB(i32) #1

declare dso_local %struct.tcon_link* @cifs_sb_tlink(%struct.cifs_sb_info*) #1

declare dso_local i64 @IS_ERR(%struct.tcon_link*) #1

declare dso_local i32 @PTR_ERR(%struct.tcon_link*) #1

declare dso_local %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link*) #1

declare dso_local i32 @CIFSSMBRmDir(i32, %struct.cifs_tcon*, i8*, i32, i32) #1

declare dso_local i32 @cifs_put_tlink(%struct.tcon_link*) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local i32 @clear_nlink(%struct.inode*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.cifsInodeInfo* @CIFS_I(%struct.inode*) #1

declare dso_local i32 @current_fs_time(i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @FreeXid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
