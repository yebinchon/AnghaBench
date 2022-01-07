; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_export.c_btrfs_encode_fh.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_export.c_btrfs_encode_fh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, %struct.TYPE_5__*, %struct.inode* }
%struct.TYPE_5__ = type { %struct.inode* }
%struct.inode = type { i32, i32 }
%struct.btrfs_fid = type { i64, i64, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@BTRFS_FID_SIZE_CONNECTABLE = common dso_local global i32 0, align 4
@BTRFS_FID_SIZE_NON_CONNECTABLE = common dso_local global i32 0, align 4
@FILEID_BTRFS_WITHOUT_PARENT = common dso_local global i32 0, align 4
@BTRFS_FID_SIZE_CONNECTABLE_ROOT = common dso_local global i32 0, align 4
@FILEID_BTRFS_WITH_PARENT_ROOT = common dso_local global i32 0, align 4
@FILEID_BTRFS_WITH_PARENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, i32*, i32*, i32)* @btrfs_encode_fh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_encode_fh(%struct.dentry* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.btrfs_fid*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.inode*, align 8
  %15 = alloca i64, align 8
  store %struct.dentry* %0, %struct.dentry** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = bitcast i32* %16 to %struct.btrfs_fid*
  store %struct.btrfs_fid* %17, %struct.btrfs_fid** %10, align 8
  %18 = load %struct.dentry*, %struct.dentry** %6, align 8
  %19 = getelementptr inbounds %struct.dentry, %struct.dentry* %18, i32 0, i32 2
  %20 = load %struct.inode*, %struct.inode** %19, align 8
  store %struct.inode* %20, %struct.inode** %11, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %4
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* @BTRFS_FID_SIZE_CONNECTABLE, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* @BTRFS_FID_SIZE_CONNECTABLE, align 4
  %31 = load i32*, i32** %8, align 8
  store i32 %30, i32* %31, align 4
  store i32 255, i32* %5, align 4
  br label %117

32:                                               ; preds = %25, %4
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @BTRFS_FID_SIZE_NON_CONNECTABLE, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* @BTRFS_FID_SIZE_NON_CONNECTABLE, align 4
  %38 = load i32*, i32** %8, align 8
  store i32 %37, i32* %38, align 4
  store i32 255, i32* %5, align 4
  br label %117

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* @BTRFS_FID_SIZE_NON_CONNECTABLE, align 4
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* @FILEID_BTRFS_WITHOUT_PARENT, align 4
  store i32 %42, i32* %13, align 4
  %43 = load %struct.inode*, %struct.inode** %11, align 8
  %44 = call i32 @btrfs_ino(%struct.inode* %43)
  %45 = load %struct.btrfs_fid*, %struct.btrfs_fid** %10, align 8
  %46 = getelementptr inbounds %struct.btrfs_fid, %struct.btrfs_fid* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 4
  %47 = load %struct.inode*, %struct.inode** %11, align 8
  %48 = call %struct.TYPE_8__* @BTRFS_I(%struct.inode* %47)
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.btrfs_fid*, %struct.btrfs_fid** %10, align 8
  %54 = getelementptr inbounds %struct.btrfs_fid, %struct.btrfs_fid* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.inode*, %struct.inode** %11, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.btrfs_fid*, %struct.btrfs_fid** %10, align 8
  %59 = getelementptr inbounds %struct.btrfs_fid, %struct.btrfs_fid* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %113

62:                                               ; preds = %40
  %63 = load %struct.inode*, %struct.inode** %11, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @S_ISDIR(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %113, label %68

68:                                               ; preds = %62
  %69 = load %struct.dentry*, %struct.dentry** %6, align 8
  %70 = getelementptr inbounds %struct.dentry, %struct.dentry* %69, i32 0, i32 0
  %71 = call i32 @spin_lock(i32* %70)
  %72 = load %struct.dentry*, %struct.dentry** %6, align 8
  %73 = getelementptr inbounds %struct.dentry, %struct.dentry* %72, i32 0, i32 1
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load %struct.inode*, %struct.inode** %75, align 8
  store %struct.inode* %76, %struct.inode** %14, align 8
  %77 = load %struct.inode*, %struct.inode** %14, align 8
  %78 = call %struct.TYPE_8__* @BTRFS_I(%struct.inode* %77)
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.btrfs_fid*, %struct.btrfs_fid** %10, align 8
  %83 = getelementptr inbounds %struct.btrfs_fid, %struct.btrfs_fid* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  %84 = load %struct.inode*, %struct.inode** %14, align 8
  %85 = getelementptr inbounds %struct.inode, %struct.inode* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.btrfs_fid*, %struct.btrfs_fid** %10, align 8
  %88 = getelementptr inbounds %struct.btrfs_fid, %struct.btrfs_fid* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  %89 = load %struct.inode*, %struct.inode** %14, align 8
  %90 = call %struct.TYPE_8__* @BTRFS_I(%struct.inode* %89)
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %15, align 8
  %95 = load %struct.dentry*, %struct.dentry** %6, align 8
  %96 = getelementptr inbounds %struct.dentry, %struct.dentry* %95, i32 0, i32 0
  %97 = call i32 @spin_unlock(i32* %96)
  %98 = load i64, i64* %15, align 8
  %99 = load %struct.btrfs_fid*, %struct.btrfs_fid** %10, align 8
  %100 = getelementptr inbounds %struct.btrfs_fid, %struct.btrfs_fid* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %98, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %68
  %104 = load i64, i64* %15, align 8
  %105 = load %struct.btrfs_fid*, %struct.btrfs_fid** %10, align 8
  %106 = getelementptr inbounds %struct.btrfs_fid, %struct.btrfs_fid* %105, i32 0, i32 1
  store i64 %104, i64* %106, align 8
  %107 = load i32, i32* @BTRFS_FID_SIZE_CONNECTABLE_ROOT, align 4
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* @FILEID_BTRFS_WITH_PARENT_ROOT, align 4
  store i32 %108, i32* %13, align 4
  br label %112

109:                                              ; preds = %68
  %110 = load i32, i32* @BTRFS_FID_SIZE_CONNECTABLE, align 4
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* @FILEID_BTRFS_WITH_PARENT, align 4
  store i32 %111, i32* %13, align 4
  br label %112

112:                                              ; preds = %109, %103
  br label %113

113:                                              ; preds = %112, %62, %40
  %114 = load i32, i32* %12, align 4
  %115 = load i32*, i32** %8, align 8
  store i32 %114, i32* %115, align 4
  %116 = load i32, i32* %13, align 4
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %113, %36, %29
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local i32 @btrfs_ino(%struct.inode*) #1

declare dso_local %struct.TYPE_8__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
