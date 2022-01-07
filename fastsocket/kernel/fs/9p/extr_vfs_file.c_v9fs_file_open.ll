; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_vfs_file.c_v9fs_file_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_vfs_file.c_v9fs_file_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64 }
%struct.file = type { i32, i32*, %struct.p9_fid*, %struct.TYPE_3__ }
%struct.p9_fid = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.v9fs_session_info = type { i64 }

@P9_DEBUG_VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"inode: %p file: %p \0A\00", align 1
@P9_OTRUNC = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"cached\00", align 1
@v9fs_file_operations = common dso_local global i32 0, align 4
@v9fs_cached_file_operations = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v9fs_file_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.v9fs_session_info*, align 8
  %8 = alloca %struct.p9_fid*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %10 = load i32, i32* @P9_DEBUG_VFS, align 4
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = call i32 (i32, i8*, ...) @P9_DPRINTK(i32 %10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.inode* %11, %struct.file* %12)
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = call %struct.v9fs_session_info* @v9fs_inode2v9ses(%struct.inode* %14)
  store %struct.v9fs_session_info* %15, %struct.v9fs_session_info** %7, align 8
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %7, align 8
  %20 = call i32 @v9fs_extended(%struct.v9fs_session_info* %19)
  %21 = call i32 @v9fs_uflags2omode(i32 %18, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load %struct.file*, %struct.file** %5, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 2
  %24 = load %struct.p9_fid*, %struct.p9_fid** %23, align 8
  store %struct.p9_fid* %24, %struct.p9_fid** %8, align 8
  %25 = load %struct.p9_fid*, %struct.p9_fid** %8, align 8
  %26 = icmp ne %struct.p9_fid* %25, null
  br i1 %26, label %75, label %27

27:                                               ; preds = %2
  %28 = load %struct.file*, %struct.file** %5, align 8
  %29 = getelementptr inbounds %struct.file, %struct.file* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.p9_fid* @v9fs_fid_clone(i32 %31)
  store %struct.p9_fid* %32, %struct.p9_fid** %8, align 8
  %33 = load %struct.p9_fid*, %struct.p9_fid** %8, align 8
  %34 = call i64 @IS_ERR(%struct.p9_fid* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load %struct.p9_fid*, %struct.p9_fid** %8, align 8
  %38 = call i32 @PTR_ERR(%struct.p9_fid* %37)
  store i32 %38, i32* %3, align 4
  br label %101

39:                                               ; preds = %27
  %40 = load %struct.p9_fid*, %struct.p9_fid** %8, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @p9_client_open(%struct.p9_fid* %40, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load %struct.p9_fid*, %struct.p9_fid** %8, align 8
  %47 = call i32 @p9_client_clunk(%struct.p9_fid* %46)
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %101

49:                                               ; preds = %39
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @P9_OTRUNC, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load %struct.inode*, %struct.inode** %4, align 8
  %56 = call i32 @i_size_write(%struct.inode* %55, i32 0)
  %57 = load %struct.inode*, %struct.inode** %4, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  br label %59

59:                                               ; preds = %54, %49
  %60 = load %struct.file*, %struct.file** %5, align 8
  %61 = getelementptr inbounds %struct.file, %struct.file* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @O_APPEND, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %59
  %67 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %7, align 8
  %68 = call i32 @v9fs_extended(%struct.v9fs_session_info* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = load %struct.file*, %struct.file** %5, align 8
  %72 = load i32, i32* @SEEK_END, align 4
  %73 = call i32 @generic_file_llseek(%struct.file* %71, i32 0, i32 %72)
  br label %74

74:                                               ; preds = %70, %66, %59
  br label %75

75:                                               ; preds = %74, %2
  %76 = load %struct.p9_fid*, %struct.p9_fid** %8, align 8
  %77 = load %struct.file*, %struct.file** %5, align 8
  %78 = getelementptr inbounds %struct.file, %struct.file* %77, i32 0, i32 2
  store %struct.p9_fid* %76, %struct.p9_fid** %78, align 8
  %79 = load %struct.p9_fid*, %struct.p9_fid** %8, align 8
  %80 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %100

84:                                               ; preds = %75
  %85 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %7, align 8
  %86 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %84
  %90 = load i32, i32* @P9_DEBUG_VFS, align 4
  %91 = call i32 (i32, i8*, ...) @P9_DPRINTK(i32 %90, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %92 = load %struct.file*, %struct.file** %5, align 8
  %93 = getelementptr inbounds %struct.file, %struct.file* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = icmp eq i32* %94, @v9fs_file_operations
  br i1 %95, label %96, label %99

96:                                               ; preds = %89
  %97 = load %struct.file*, %struct.file** %5, align 8
  %98 = getelementptr inbounds %struct.file, %struct.file* %97, i32 0, i32 1
  store i32* @v9fs_cached_file_operations, i32** %98, align 8
  br label %99

99:                                               ; preds = %96, %89
  br label %100

100:                                              ; preds = %99, %84, %75
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %100, %45, %36
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @P9_DPRINTK(i32, i8*, ...) #1

declare dso_local %struct.v9fs_session_info* @v9fs_inode2v9ses(%struct.inode*) #1

declare dso_local i32 @v9fs_uflags2omode(i32, i32) #1

declare dso_local i32 @v9fs_extended(%struct.v9fs_session_info*) #1

declare dso_local %struct.p9_fid* @v9fs_fid_clone(i32) #1

declare dso_local i64 @IS_ERR(%struct.p9_fid*) #1

declare dso_local i32 @PTR_ERR(%struct.p9_fid*) #1

declare dso_local i32 @p9_client_open(%struct.p9_fid*, i32) #1

declare dso_local i32 @p9_client_clunk(%struct.p9_fid*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local i32 @generic_file_llseek(%struct.file*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
