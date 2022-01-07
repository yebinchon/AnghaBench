; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifsfs.c_cifs_read_super.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifsfs.c_cifs_read_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32, i32*, i32, i32, i32*, i32, i32, i32 }
%struct.inode = type { i32 }
%struct.cifs_sb_info = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@CIFS_MOUNT_POSIXACL = common dso_local global i32 0, align 4
@MS_POSIXACL = common dso_local global i32 0, align 4
@CAP_LARGE_FILES = common dso_local global i32 0, align 4
@MAX_LFS_FILESIZE = common dso_local global i32 0, align 4
@MAX_NON_LFS = common dso_local global i32 0, align 4
@CIFS_MAGIC_NUMBER = common dso_local global i32 0, align 4
@cifs_super_ops = common dso_local global i32 0, align 4
@CIFS_MAX_MSGSIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"cifs_read_super: get root inode failed\00", align 1
@CIFS_MOUNT_SERVER_INUM = common dso_local global i32 0, align 4
@cifs_export_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*)* @cifs_read_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_read_super(%struct.super_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.cifs_sb_info*, align 8
  %6 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.super_block*, %struct.super_block** %3, align 8
  %8 = call %struct.cifs_sb_info* @CIFS_SB(%struct.super_block* %7)
  store %struct.cifs_sb_info* %8, %struct.cifs_sb_info** %5, align 8
  %9 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %10 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @CIFS_MOUNT_POSIXACL, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load i32, i32* @MS_POSIXACL, align 4
  %17 = load %struct.super_block*, %struct.super_block** %3, align 8
  %18 = getelementptr inbounds %struct.super_block, %struct.super_block* %17, i32 0, i32 8
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 8
  br label %21

21:                                               ; preds = %15, %1
  %22 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %5, align 8
  %23 = call %struct.TYPE_4__* @cifs_sb_master_tcon(%struct.cifs_sb_info* %22)
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @CAP_LARGE_FILES, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %21
  %32 = load i32, i32* @MAX_LFS_FILESIZE, align 4
  %33 = load %struct.super_block*, %struct.super_block** %3, align 8
  %34 = getelementptr inbounds %struct.super_block, %struct.super_block* %33, i32 0, i32 7
  store i32 %32, i32* %34, align 4
  br label %39

35:                                               ; preds = %21
  %36 = load i32, i32* @MAX_NON_LFS, align 4
  %37 = load %struct.super_block*, %struct.super_block** %3, align 8
  %38 = getelementptr inbounds %struct.super_block, %struct.super_block* %37, i32 0, i32 7
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %35, %31
  %40 = load %struct.super_block*, %struct.super_block** %3, align 8
  %41 = getelementptr inbounds %struct.super_block, %struct.super_block* %40, i32 0, i32 0
  store i32 100, i32* %41, align 8
  %42 = load i32, i32* @CIFS_MAGIC_NUMBER, align 4
  %43 = load %struct.super_block*, %struct.super_block** %3, align 8
  %44 = getelementptr inbounds %struct.super_block, %struct.super_block* %43, i32 0, i32 6
  store i32 %42, i32* %44, align 8
  %45 = load %struct.super_block*, %struct.super_block** %3, align 8
  %46 = getelementptr inbounds %struct.super_block, %struct.super_block* %45, i32 0, i32 5
  store i32* @cifs_super_ops, i32** %46, align 8
  %47 = load i32, i32* @CIFS_MAX_MSGSIZE, align 4
  %48 = load %struct.super_block*, %struct.super_block** %3, align 8
  %49 = getelementptr inbounds %struct.super_block, %struct.super_block* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 4
  %50 = load %struct.super_block*, %struct.super_block** %3, align 8
  %51 = getelementptr inbounds %struct.super_block, %struct.super_block* %50, i32 0, i32 1
  store i32 14, i32* %51, align 4
  %52 = load %struct.super_block*, %struct.super_block** %3, align 8
  %53 = call %struct.inode* @cifs_root_iget(%struct.super_block* %52)
  store %struct.inode* %53, %struct.inode** %4, align 8
  %54 = load %struct.inode*, %struct.inode** %4, align 8
  %55 = call i64 @IS_ERR(%struct.inode* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %39
  %58 = load %struct.inode*, %struct.inode** %4, align 8
  %59 = call i32 @PTR_ERR(%struct.inode* %58)
  store i32 %59, i32* %6, align 4
  store %struct.inode* null, %struct.inode** %4, align 8
  br label %73

60:                                               ; preds = %39
  %61 = load %struct.inode*, %struct.inode** %4, align 8
  %62 = call i32 @d_alloc_root(%struct.inode* %61)
  %63 = load %struct.super_block*, %struct.super_block** %3, align 8
  %64 = getelementptr inbounds %struct.super_block, %struct.super_block* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 8
  %65 = load %struct.super_block*, %struct.super_block** %3, align 8
  %66 = getelementptr inbounds %struct.super_block, %struct.super_block* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %60
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %6, align 4
  br label %73

72:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %82

73:                                               ; preds = %69, %57
  %74 = call i32 @cERROR(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %75 = load %struct.inode*, %struct.inode** %4, align 8
  %76 = icmp ne %struct.inode* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load %struct.inode*, %struct.inode** %4, align 8
  %79 = call i32 @iput(%struct.inode* %78)
  br label %80

80:                                               ; preds = %77, %73
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %80, %72
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.cifs_sb_info* @CIFS_SB(%struct.super_block*) #1

declare dso_local %struct.TYPE_4__* @cifs_sb_master_tcon(%struct.cifs_sb_info*) #1

declare dso_local %struct.inode* @cifs_root_iget(%struct.super_block*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @d_alloc_root(%struct.inode*) #1

declare dso_local i32 @cERROR(i32, i8*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
