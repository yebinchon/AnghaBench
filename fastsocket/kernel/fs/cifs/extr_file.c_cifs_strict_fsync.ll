; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_file.c_cifs_strict_fsync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_file.c_cifs_strict_fsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_6__, %struct.cifsFileInfo* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.cifsFileInfo = type { i32, i32 }
%struct.dentry = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.cifs_tcon = type { i32 }
%struct.cifs_sb_info = type { i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Sync file - name: %s datasync: 0x%x\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"rc: %d during invalidate phase\00", align 1
@CIFS_MOUNT_NOSSYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifs_strict_fsync(%struct.file* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cifs_tcon*, align 8
  %10 = alloca %struct.cifsFileInfo*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.cifs_sb_info*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.file*, %struct.file** %4, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 1
  %15 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %14, align 8
  store %struct.cifsFileInfo* %15, %struct.cifsFileInfo** %10, align 8
  %16 = load %struct.file*, %struct.file** %4, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.inode*, %struct.inode** %20, align 8
  store %struct.inode* %21, %struct.inode** %11, align 8
  %22 = load %struct.inode*, %struct.inode** %11, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.cifs_sb_info* @CIFS_SB(i32 %24)
  store %struct.cifs_sb_info* %25, %struct.cifs_sb_info** %12, align 8
  %26 = call i32 (...) @GetXid()
  store i32 %26, i32* %7, align 4
  %27 = load %struct.dentry*, %struct.dentry** %5, align 8
  %28 = getelementptr inbounds %struct.dentry, %struct.dentry* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 (i32, i8*, i32, ...) @cFYI(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31)
  %33 = load %struct.inode*, %struct.inode** %11, align 8
  %34 = call %struct.TYPE_8__* @CIFS_I(%struct.inode* %33)
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %3
  %39 = load %struct.inode*, %struct.inode** %11, align 8
  %40 = call i32 @cifs_invalidate_mapping(%struct.inode* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* %8, align 4
  %45 = call i32 (i32, i8*, i32, ...) @cFYI(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %43, %38
  br label %47

47:                                               ; preds = %46, %3
  %48 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %10, align 8
  %49 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.cifs_tcon* @tlink_tcon(i32 %50)
  store %struct.cifs_tcon* %51, %struct.cifs_tcon** %9, align 8
  %52 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %12, align 8
  %53 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @CIFS_MOUNT_NOSSYNC, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %47
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.cifs_tcon*, %struct.cifs_tcon** %9, align 8
  %61 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %10, align 8
  %62 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @CIFSSMBFlush(i32 %59, %struct.cifs_tcon* %60, i32 %63)
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %58, %47
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @FreeXid(i32 %66)
  %68 = load i32, i32* %8, align 4
  ret i32 %68
}

declare dso_local %struct.cifs_sb_info* @CIFS_SB(i32) #1

declare dso_local i32 @GetXid(...) #1

declare dso_local i32 @cFYI(i32, i8*, i32, ...) #1

declare dso_local %struct.TYPE_8__* @CIFS_I(%struct.inode*) #1

declare dso_local i32 @cifs_invalidate_mapping(%struct.inode*) #1

declare dso_local %struct.cifs_tcon* @tlink_tcon(i32) #1

declare dso_local i32 @CIFSSMBFlush(i32, %struct.cifs_tcon*, i32) #1

declare dso_local i32 @FreeXid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
