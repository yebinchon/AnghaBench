; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_inode.c_cifs_get_file_info_unix.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_inode.c_cifs_get_file_info_unix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.cifsFileInfo*, %struct.TYPE_3__ }
%struct.cifsFileInfo = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.cifs_fattr = type { i32 }
%struct.cifs_sb_info = type { i32 }
%struct.cifs_tcon = type { i32 }

@EREMOTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifs_get_file_info_unix(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cifs_fattr, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.cifs_sb_info*, align 8
  %9 = alloca %struct.cifsFileInfo*, align 8
  %10 = alloca %struct.cifs_tcon*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %11 = load %struct.file*, %struct.file** %2, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.inode*, %struct.inode** %15, align 8
  store %struct.inode* %16, %struct.inode** %7, align 8
  %17 = load %struct.inode*, %struct.inode** %7, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.cifs_sb_info* @CIFS_SB(i32 %19)
  store %struct.cifs_sb_info* %20, %struct.cifs_sb_info** %8, align 8
  %21 = load %struct.file*, %struct.file** %2, align 8
  %22 = getelementptr inbounds %struct.file, %struct.file* %21, i32 0, i32 0
  %23 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %22, align 8
  store %struct.cifsFileInfo* %23, %struct.cifsFileInfo** %9, align 8
  %24 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %9, align 8
  %25 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.cifs_tcon* @tlink_tcon(i32 %26)
  store %struct.cifs_tcon* %27, %struct.cifs_tcon** %10, align 8
  %28 = call i32 (...) @GetXid()
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %31 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %9, align 8
  %32 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @CIFSSMBUnixQFileInfo(i32 %29, %struct.cifs_tcon* %30, i32 %33, i32* %5)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %1
  %38 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %8, align 8
  %39 = call i32 @cifs_unix_basic_to_fattr(%struct.cifs_fattr* %6, i32* %5, %struct.cifs_sb_info* %38)
  br label %51

40:                                               ; preds = %1
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @EREMOTE, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.inode*, %struct.inode** %7, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @cifs_create_dfs_fattr(%struct.cifs_fattr* %6, i32 %48)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %45, %40
  br label %51

51:                                               ; preds = %50, %37
  %52 = load %struct.inode*, %struct.inode** %7, align 8
  %53 = call i32 @cifs_fattr_to_inode(%struct.inode* %52, %struct.cifs_fattr* %6)
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @FreeXid(i32 %54)
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.cifs_sb_info* @CIFS_SB(i32) #1

declare dso_local %struct.cifs_tcon* @tlink_tcon(i32) #1

declare dso_local i32 @GetXid(...) #1

declare dso_local i32 @CIFSSMBUnixQFileInfo(i32, %struct.cifs_tcon*, i32, i32*) #1

declare dso_local i32 @cifs_unix_basic_to_fattr(%struct.cifs_fattr*, i32*, %struct.cifs_sb_info*) #1

declare dso_local i32 @cifs_create_dfs_fattr(%struct.cifs_fattr*, i32) #1

declare dso_local i32 @cifs_fattr_to_inode(%struct.inode*, %struct.cifs_fattr*) #1

declare dso_local i32 @FreeXid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
