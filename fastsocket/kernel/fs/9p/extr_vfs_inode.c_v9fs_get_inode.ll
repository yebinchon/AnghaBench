; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_vfs_inode.c_v9fs_get_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_vfs_inode.c_v9fs_get_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32*, i32*, i64, %struct.TYPE_2__*, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.super_block = type { %struct.v9fs_session_info* }
%struct.v9fs_session_info = type { i32 }

@P9_DEBUG_VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"super block: %p mode: %o\0A\00", align 1
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Problem allocating inode\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global i32 0, align 4
@v9fs_addr_operations = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@P9_DEBUG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"special files without extended mode\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@v9fs_file_inode_operations = common dso_local global i32 0, align 4
@v9fs_file_operations = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"extended modes used w/o 9P2000.u\0A\00", align 1
@v9fs_symlink_inode_operations = common dso_local global i32 0, align 4
@v9fs_dir_inode_operations_ext = common dso_local global i32 0, align 4
@v9fs_dir_inode_operations = common dso_local global i32 0, align 4
@v9fs_dir_operations = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"BAD mode 0x%x S_IFMT 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @v9fs_get_inode(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.v9fs_session_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.super_block*, %struct.super_block** %4, align 8
  %10 = getelementptr inbounds %struct.super_block, %struct.super_block* %9, i32 0, i32 0
  %11 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %10, align 8
  store %struct.v9fs_session_info* %11, %struct.v9fs_session_info** %8, align 8
  %12 = load i32, i32* @P9_DEBUG_VFS, align 4
  %13 = load %struct.super_block*, %struct.super_block** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 (i32, i8*, ...) @P9_DPRINTK(i32 %12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.super_block* %13, i32 %14)
  %16 = load %struct.super_block*, %struct.super_block** %4, align 8
  %17 = call %struct.inode* @new_inode(%struct.super_block* %16)
  store %struct.inode* %17, %struct.inode** %7, align 8
  %18 = load %struct.inode*, %struct.inode** %7, align 8
  %19 = icmp ne %struct.inode* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @KERN_WARNING, align 4
  %22 = call i32 @P9_EPRINTK(i32 %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.inode* @ERR_PTR(i32 %24)
  store %struct.inode* %25, %struct.inode** %3, align 8
  br label %120

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.inode*, %struct.inode** %7, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = call i32 (...) @current_fsuid()
  %31 = load %struct.inode*, %struct.inode** %7, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 10
  store i32 %30, i32* %32, align 4
  %33 = call i32 (...) @current_fsgid()
  %34 = load %struct.inode*, %struct.inode** %7, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 9
  store i32 %33, i32* %35, align 8
  %36 = load %struct.inode*, %struct.inode** %7, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 8
  store i64 0, i64* %37, align 8
  %38 = load %struct.inode*, %struct.inode** %7, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 3
  store i64 0, i64* %39, align 8
  %40 = load i32, i32* @CURRENT_TIME, align 4
  %41 = load %struct.inode*, %struct.inode** %7, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 8
  %43 = load %struct.inode*, %struct.inode** %7, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 6
  store i32 %40, i32* %44, align 4
  %45 = load %struct.inode*, %struct.inode** %7, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 7
  store i32 %40, i32* %46, align 8
  %47 = load %struct.inode*, %struct.inode** %7, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 4
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32* @v9fs_addr_operations, i32** %50, align 8
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @S_IFMT, align 4
  %53 = and i32 %51, %52
  switch i32 %53, label %104 [
    i32 131, label %54
    i32 134, label %54
    i32 133, label %54
    i32 128, label %54
    i32 129, label %72
    i32 130, label %77
    i32 132, label %89
  ]

54:                                               ; preds = %26, %26, %26, %26
  %55 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %8, align 8
  %56 = call i32 @v9fs_extended(%struct.v9fs_session_info* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* @P9_DEBUG_ERROR, align 4
  %60 = call i32 (i32, i8*, ...) @P9_DPRINTK(i32 %59, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %6, align 4
  br label %115

63:                                               ; preds = %54
  %64 = load %struct.inode*, %struct.inode** %7, align 8
  %65 = load %struct.inode*, %struct.inode** %7, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.inode*, %struct.inode** %7, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @init_special_inode(%struct.inode* %64, i32 %67, i64 %70)
  br label %113

72:                                               ; preds = %26
  %73 = load %struct.inode*, %struct.inode** %7, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 2
  store i32* @v9fs_file_inode_operations, i32** %74, align 8
  %75 = load %struct.inode*, %struct.inode** %7, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 1
  store i32* @v9fs_file_operations, i32** %76, align 8
  br label %113

77:                                               ; preds = %26
  %78 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %8, align 8
  %79 = call i32 @v9fs_extended(%struct.v9fs_session_info* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* @P9_DEBUG_ERROR, align 4
  %83 = call i32 (i32, i8*, ...) @P9_DPRINTK(i32 %82, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %6, align 4
  br label %115

86:                                               ; preds = %77
  %87 = load %struct.inode*, %struct.inode** %7, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 2
  store i32* @v9fs_symlink_inode_operations, i32** %88, align 8
  br label %113

89:                                               ; preds = %26
  %90 = load %struct.inode*, %struct.inode** %7, align 8
  %91 = call i32 @inc_nlink(%struct.inode* %90)
  %92 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %8, align 8
  %93 = call i32 @v9fs_extended(%struct.v9fs_session_info* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = load %struct.inode*, %struct.inode** %7, align 8
  %97 = getelementptr inbounds %struct.inode, %struct.inode* %96, i32 0, i32 2
  store i32* @v9fs_dir_inode_operations_ext, i32** %97, align 8
  br label %101

98:                                               ; preds = %89
  %99 = load %struct.inode*, %struct.inode** %7, align 8
  %100 = getelementptr inbounds %struct.inode, %struct.inode* %99, i32 0, i32 2
  store i32* @v9fs_dir_inode_operations, i32** %100, align 8
  br label %101

101:                                              ; preds = %98, %95
  %102 = load %struct.inode*, %struct.inode** %7, align 8
  %103 = getelementptr inbounds %struct.inode, %struct.inode* %102, i32 0, i32 1
  store i32* @v9fs_dir_operations, i32** %103, align 8
  br label %113

104:                                              ; preds = %26
  %105 = load i32, i32* @P9_DEBUG_ERROR, align 4
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* @S_IFMT, align 4
  %109 = and i32 %107, %108
  %110 = call i32 (i32, i8*, ...) @P9_DPRINTK(i32 %105, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %106, i32 %109)
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %6, align 4
  br label %115

113:                                              ; preds = %101, %86, %72, %63
  %114 = load %struct.inode*, %struct.inode** %7, align 8
  store %struct.inode* %114, %struct.inode** %3, align 8
  br label %120

115:                                              ; preds = %104, %81, %58
  %116 = load %struct.inode*, %struct.inode** %7, align 8
  %117 = call i32 @iput(%struct.inode* %116)
  %118 = load i32, i32* %6, align 4
  %119 = call %struct.inode* @ERR_PTR(i32 %118)
  store %struct.inode* %119, %struct.inode** %3, align 8
  br label %120

120:                                              ; preds = %115, %113, %20
  %121 = load %struct.inode*, %struct.inode** %3, align 8
  ret %struct.inode* %121
}

declare dso_local i32 @P9_DPRINTK(i32, i8*, ...) #1

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #1

declare dso_local i32 @P9_EPRINTK(i32, i8*) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i32 @current_fsgid(...) #1

declare dso_local i32 @v9fs_extended(%struct.v9fs_session_info*) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i64) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
