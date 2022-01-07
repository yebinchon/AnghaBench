; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_inode.c_smb_iget.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_inode.c_smb_iget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32*, i32*, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.super_block = type { i32 }
%struct.smb_fattr = type { i32, i32 }
%struct.smb_sb_info = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [14 x i8] c"smb_iget: %p\0A\00", align 1
@smb_file_inode_operations = common dso_local global i32 0, align 4
@smb_file_operations = common dso_local global i32 0, align 4
@smb_file_aops = common dso_local global i32 0, align 4
@SMB_CAP_UNIX = common dso_local global i32 0, align 4
@smb_dir_inode_operations_unix = common dso_local global i32 0, align 4
@smb_dir_inode_operations = common dso_local global i32 0, align 4
@smb_dir_operations = common dso_local global i32 0, align 4
@smb_link_inode_operations = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @smb_iget(%struct.super_block* %0, %struct.smb_fattr* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.smb_fattr*, align 8
  %6 = alloca %struct.smb_sb_info*, align 8
  %7 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.smb_fattr* %1, %struct.smb_fattr** %5, align 8
  %8 = load %struct.super_block*, %struct.super_block** %4, align 8
  %9 = call %struct.smb_sb_info* @SMB_SB(%struct.super_block* %8)
  store %struct.smb_sb_info* %9, %struct.smb_sb_info** %6, align 8
  %10 = load %struct.smb_fattr*, %struct.smb_fattr** %5, align 8
  %11 = call i32 @DEBUG1(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.smb_fattr* %10)
  %12 = load %struct.super_block*, %struct.super_block** %4, align 8
  %13 = call %struct.inode* @new_inode(%struct.super_block* %12)
  store %struct.inode* %13, %struct.inode** %7, align 8
  %14 = load %struct.inode*, %struct.inode** %7, align 8
  %15 = icmp ne %struct.inode* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load %struct.inode*, %struct.inode** %7, align 8
  store %struct.inode* %17, %struct.inode** %3, align 8
  br label %105

18:                                               ; preds = %2
  %19 = load %struct.smb_fattr*, %struct.smb_fattr** %5, align 8
  %20 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.inode*, %struct.inode** %7, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 8
  %24 = load %struct.inode*, %struct.inode** %7, align 8
  %25 = call %struct.TYPE_6__* @SMB_I(%struct.inode* %24)
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 5
  store i64 0, i64* %26, align 8
  %27 = load %struct.inode*, %struct.inode** %7, align 8
  %28 = call %struct.TYPE_6__* @SMB_I(%struct.inode* %27)
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 4
  store i64 0, i64* %29, align 8
  %30 = load %struct.inode*, %struct.inode** %7, align 8
  %31 = call %struct.TYPE_6__* @SMB_I(%struct.inode* %30)
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 3
  store i64 0, i64* %32, align 8
  %33 = load %struct.inode*, %struct.inode** %7, align 8
  %34 = call %struct.TYPE_6__* @SMB_I(%struct.inode* %33)
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load %struct.inode*, %struct.inode** %7, align 8
  %37 = call %struct.TYPE_6__* @SMB_I(%struct.inode* %36)
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.inode*, %struct.inode** %7, align 8
  %40 = call %struct.TYPE_6__* @SMB_I(%struct.inode* %39)
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  %42 = load %struct.inode*, %struct.inode** %7, align 8
  %43 = load %struct.smb_fattr*, %struct.smb_fattr** %5, align 8
  %44 = call i32 @smb_set_inode_attr(%struct.inode* %42, %struct.smb_fattr* %43)
  %45 = load %struct.inode*, %struct.inode** %7, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @S_ISREG(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %18
  %51 = load %struct.inode*, %struct.inode** %7, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 1
  store i32* @smb_file_inode_operations, i32** %52, align 8
  %53 = load %struct.inode*, %struct.inode** %7, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 2
  store i32* @smb_file_operations, i32** %54, align 8
  %55 = load %struct.inode*, %struct.inode** %7, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i32* @smb_file_aops, i32** %57, align 8
  br label %101

58:                                               ; preds = %18
  %59 = load %struct.inode*, %struct.inode** %7, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @S_ISDIR(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %81

64:                                               ; preds = %58
  %65 = load %struct.smb_sb_info*, %struct.smb_sb_info** %6, align 8
  %66 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @SMB_CAP_UNIX, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %64
  %73 = load %struct.inode*, %struct.inode** %7, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 1
  store i32* @smb_dir_inode_operations_unix, i32** %74, align 8
  br label %78

75:                                               ; preds = %64
  %76 = load %struct.inode*, %struct.inode** %7, align 8
  %77 = getelementptr inbounds %struct.inode, %struct.inode* %76, i32 0, i32 1
  store i32* @smb_dir_inode_operations, i32** %77, align 8
  br label %78

78:                                               ; preds = %75, %72
  %79 = load %struct.inode*, %struct.inode** %7, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 2
  store i32* @smb_dir_operations, i32** %80, align 8
  br label %100

81:                                               ; preds = %58
  %82 = load %struct.inode*, %struct.inode** %7, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @S_ISLNK(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load %struct.inode*, %struct.inode** %7, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 1
  store i32* @smb_link_inode_operations, i32** %89, align 8
  br label %99

90:                                               ; preds = %81
  %91 = load %struct.inode*, %struct.inode** %7, align 8
  %92 = load %struct.inode*, %struct.inode** %7, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.smb_fattr*, %struct.smb_fattr** %5, align 8
  %96 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @init_special_inode(%struct.inode* %91, i32 %94, i32 %97)
  br label %99

99:                                               ; preds = %90, %87
  br label %100

100:                                              ; preds = %99, %78
  br label %101

101:                                              ; preds = %100, %50
  %102 = load %struct.inode*, %struct.inode** %7, align 8
  %103 = call i32 @insert_inode_hash(%struct.inode* %102)
  %104 = load %struct.inode*, %struct.inode** %7, align 8
  store %struct.inode* %104, %struct.inode** %3, align 8
  br label %105

105:                                              ; preds = %101, %16
  %106 = load %struct.inode*, %struct.inode** %3, align 8
  ret %struct.inode* %106
}

declare dso_local %struct.smb_sb_info* @SMB_SB(%struct.super_block*) #1

declare dso_local i32 @DEBUG1(i8*, %struct.smb_fattr*) #1

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #1

declare dso_local %struct.TYPE_6__* @SMB_I(%struct.inode*) #1

declare dso_local i32 @smb_set_inode_attr(%struct.inode*, %struct.smb_fattr*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

declare dso_local i32 @insert_inode_hash(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
