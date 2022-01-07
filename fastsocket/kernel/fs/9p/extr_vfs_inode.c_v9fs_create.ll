; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_vfs_inode.c_v9fs_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_vfs_inode.c_v9fs_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_fid = type { i32 }
%struct.v9fs_session_info = type { i64 }
%struct.inode = type { i32 }
%struct.dentry = type { i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@P9_DEBUG_VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"name %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"fid clone failed %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"p9_client_walk failed %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"p9_client_fcreate failed %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"inode creation failed %d\0A\00", align 1
@v9fs_cached_dentry_operations = common dso_local global i32 0, align 4
@v9fs_dentry_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.p9_fid* (%struct.v9fs_session_info*, %struct.inode*, %struct.dentry*, i8*, i32, i32)* @v9fs_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.p9_fid* @v9fs_create(%struct.v9fs_session_info* %0, %struct.inode* %1, %struct.dentry* %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.p9_fid*, align 8
  %8 = alloca %struct.v9fs_session_info*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.p9_fid*, align 8
  %17 = alloca %struct.p9_fid*, align 8
  %18 = alloca %struct.p9_fid*, align 8
  %19 = alloca %struct.inode*, align 8
  store %struct.v9fs_session_info* %0, %struct.v9fs_session_info** %8, align 8
  store %struct.inode* %1, %struct.inode** %9, align 8
  store %struct.dentry* %2, %struct.dentry** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %20 = load i32, i32* @P9_DEBUG_VFS, align 4
  %21 = load %struct.dentry*, %struct.dentry** %10, align 8
  %22 = getelementptr inbounds %struct.dentry, %struct.dentry* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @P9_DPRINTK(i32 %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i32 0, i32* %14, align 4
  store %struct.p9_fid* null, %struct.p9_fid** %17, align 8
  store %struct.p9_fid* null, %struct.p9_fid** %18, align 8
  %26 = load %struct.dentry*, %struct.dentry** %10, align 8
  %27 = getelementptr inbounds %struct.dentry, %struct.dentry* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  store i8* %31, i8** %15, align 8
  %32 = load %struct.dentry*, %struct.dentry** %10, align 8
  %33 = getelementptr inbounds %struct.dentry, %struct.dentry* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call %struct.p9_fid* @v9fs_fid_clone(i32 %34)
  store %struct.p9_fid* %35, %struct.p9_fid** %16, align 8
  %36 = load %struct.p9_fid*, %struct.p9_fid** %16, align 8
  %37 = call i64 @IS_ERR(%struct.p9_fid* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %6
  %40 = load %struct.p9_fid*, %struct.p9_fid** %16, align 8
  %41 = call i32 @PTR_ERR(%struct.p9_fid* %40)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* @P9_DEBUG_VFS, align 4
  %43 = load i32, i32* %14, align 4
  %44 = call i32 @P9_DPRINTK(i32 %42, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  store %struct.p9_fid* null, %struct.p9_fid** %16, align 8
  br label %126

45:                                               ; preds = %6
  %46 = load %struct.p9_fid*, %struct.p9_fid** %16, align 8
  %47 = call %struct.p9_fid* @p9_client_walk(%struct.p9_fid* %46, i32 0, i8** null, i32 1)
  store %struct.p9_fid* %47, %struct.p9_fid** %17, align 8
  %48 = load %struct.p9_fid*, %struct.p9_fid** %17, align 8
  %49 = call i64 @IS_ERR(%struct.p9_fid* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load %struct.p9_fid*, %struct.p9_fid** %17, align 8
  %53 = call i32 @PTR_ERR(%struct.p9_fid* %52)
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* @P9_DEBUG_VFS, align 4
  %55 = load i32, i32* %14, align 4
  %56 = call i32 @P9_DPRINTK(i32 %54, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  store %struct.p9_fid* null, %struct.p9_fid** %17, align 8
  br label %126

57:                                               ; preds = %45
  %58 = load %struct.p9_fid*, %struct.p9_fid** %17, align 8
  %59 = load i8*, i8** %15, align 8
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %13, align 4
  %62 = load i8*, i8** %11, align 8
  %63 = call i32 @p9_client_fcreate(%struct.p9_fid* %58, i8* %59, i32 %60, i32 %61, i8* %62)
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %57
  %67 = load i32, i32* @P9_DEBUG_VFS, align 4
  %68 = load i32, i32* %14, align 4
  %69 = call i32 @P9_DPRINTK(i32 %67, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  br label %126

70:                                               ; preds = %57
  %71 = load %struct.p9_fid*, %struct.p9_fid** %16, align 8
  %72 = call %struct.p9_fid* @p9_client_walk(%struct.p9_fid* %71, i32 1, i8** %15, i32 0)
  store %struct.p9_fid* %72, %struct.p9_fid** %18, align 8
  %73 = load %struct.p9_fid*, %struct.p9_fid** %18, align 8
  %74 = call i64 @IS_ERR(%struct.p9_fid* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %70
  %77 = load %struct.p9_fid*, %struct.p9_fid** %18, align 8
  %78 = call i32 @PTR_ERR(%struct.p9_fid* %77)
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* @P9_DEBUG_VFS, align 4
  %80 = load i32, i32* %14, align 4
  %81 = call i32 @P9_DPRINTK(i32 %79, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  store %struct.p9_fid* null, %struct.p9_fid** %18, align 8
  br label %126

82:                                               ; preds = %70
  store %struct.p9_fid* null, %struct.p9_fid** %16, align 8
  br label %83

83:                                               ; preds = %82
  %84 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %8, align 8
  %85 = load %struct.p9_fid*, %struct.p9_fid** %18, align 8
  %86 = load %struct.inode*, %struct.inode** %9, align 8
  %87 = getelementptr inbounds %struct.inode, %struct.inode* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call %struct.p9_fid* @v9fs_inode_from_fid(%struct.v9fs_session_info* %84, %struct.p9_fid* %85, i32 %88)
  %90 = bitcast %struct.p9_fid* %89 to %struct.inode*
  store %struct.inode* %90, %struct.inode** %19, align 8
  %91 = load %struct.inode*, %struct.inode** %19, align 8
  %92 = bitcast %struct.inode* %91 to %struct.p9_fid*
  %93 = call i64 @IS_ERR(%struct.p9_fid* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %83
  %96 = load %struct.inode*, %struct.inode** %19, align 8
  %97 = bitcast %struct.inode* %96 to %struct.p9_fid*
  %98 = call i32 @PTR_ERR(%struct.p9_fid* %97)
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* @P9_DEBUG_VFS, align 4
  %100 = load i32, i32* %14, align 4
  %101 = call i32 @P9_DPRINTK(i32 %99, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %100)
  br label %126

102:                                              ; preds = %83
  %103 = load %struct.v9fs_session_info*, %struct.v9fs_session_info** %8, align 8
  %104 = getelementptr inbounds %struct.v9fs_session_info, %struct.v9fs_session_info* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load %struct.dentry*, %struct.dentry** %10, align 8
  %109 = getelementptr inbounds %struct.dentry, %struct.dentry* %108, i32 0, i32 0
  store i32* @v9fs_cached_dentry_operations, i32** %109, align 8
  br label %113

110:                                              ; preds = %102
  %111 = load %struct.dentry*, %struct.dentry** %10, align 8
  %112 = getelementptr inbounds %struct.dentry, %struct.dentry* %111, i32 0, i32 0
  store i32* @v9fs_dentry_operations, i32** %112, align 8
  br label %113

113:                                              ; preds = %110, %107
  %114 = load %struct.dentry*, %struct.dentry** %10, align 8
  %115 = load %struct.inode*, %struct.inode** %19, align 8
  %116 = bitcast %struct.inode* %115 to %struct.p9_fid*
  %117 = call i32 @d_instantiate(%struct.dentry* %114, %struct.p9_fid* %116)
  %118 = load %struct.dentry*, %struct.dentry** %10, align 8
  %119 = load %struct.p9_fid*, %struct.p9_fid** %18, align 8
  %120 = call i32 @v9fs_fid_add(%struct.dentry* %118, %struct.p9_fid* %119)
  store i32 %120, i32* %14, align 4
  %121 = load i32, i32* %14, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %113
  br label %126

124:                                              ; preds = %113
  %125 = load %struct.p9_fid*, %struct.p9_fid** %17, align 8
  store %struct.p9_fid* %125, %struct.p9_fid** %7, align 8
  br label %147

126:                                              ; preds = %123, %95, %76, %66, %51, %39
  %127 = load %struct.p9_fid*, %struct.p9_fid** %16, align 8
  %128 = icmp ne %struct.p9_fid* %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load %struct.p9_fid*, %struct.p9_fid** %16, align 8
  %131 = call i32 @p9_client_clunk(%struct.p9_fid* %130)
  br label %132

132:                                              ; preds = %129, %126
  %133 = load %struct.p9_fid*, %struct.p9_fid** %17, align 8
  %134 = icmp ne %struct.p9_fid* %133, null
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = load %struct.p9_fid*, %struct.p9_fid** %17, align 8
  %137 = call i32 @p9_client_clunk(%struct.p9_fid* %136)
  br label %138

138:                                              ; preds = %135, %132
  %139 = load %struct.p9_fid*, %struct.p9_fid** %18, align 8
  %140 = icmp ne %struct.p9_fid* %139, null
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = load %struct.p9_fid*, %struct.p9_fid** %18, align 8
  %143 = call i32 @p9_client_clunk(%struct.p9_fid* %142)
  br label %144

144:                                              ; preds = %141, %138
  %145 = load i32, i32* %14, align 4
  %146 = call %struct.p9_fid* @ERR_PTR(i32 %145)
  store %struct.p9_fid* %146, %struct.p9_fid** %7, align 8
  br label %147

147:                                              ; preds = %144, %124
  %148 = load %struct.p9_fid*, %struct.p9_fid** %7, align 8
  ret %struct.p9_fid* %148
}

declare dso_local i32 @P9_DPRINTK(i32, i8*, i32) #1

declare dso_local %struct.p9_fid* @v9fs_fid_clone(i32) #1

declare dso_local i64 @IS_ERR(%struct.p9_fid*) #1

declare dso_local i32 @PTR_ERR(%struct.p9_fid*) #1

declare dso_local %struct.p9_fid* @p9_client_walk(%struct.p9_fid*, i32, i8**, i32) #1

declare dso_local i32 @p9_client_fcreate(%struct.p9_fid*, i8*, i32, i32, i8*) #1

declare dso_local %struct.p9_fid* @v9fs_inode_from_fid(%struct.v9fs_session_info*, %struct.p9_fid*, i32) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.p9_fid*) #1

declare dso_local i32 @v9fs_fid_add(%struct.dentry*, %struct.p9_fid*) #1

declare dso_local i32 @p9_client_clunk(%struct.p9_fid*) #1

declare dso_local %struct.p9_fid* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
