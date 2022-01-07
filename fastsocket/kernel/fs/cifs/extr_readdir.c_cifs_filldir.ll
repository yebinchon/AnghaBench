; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_readdir.c_cifs_filldir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_readdir.c_cifs_filldir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i32, %struct.TYPE_6__, %struct.cifsFileInfo* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.cifsFileInfo = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32 }
%struct.qstr = type { i8*, i32 }
%struct.cifs_sb_info = type { i32 }
%struct.dentry = type { i32 }
%struct.cifs_fattr = type { i32, i64, i32 }
%struct.TYPE_8__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@SMB_FIND_FILE_UNIX = common dso_local global i64 0, align 8
@SMB_FIND_FILE_INFO_STANDARD = common dso_local global i64 0, align 8
@CIFS_MOUNT_SERVER_INUM = common dso_local global i32 0, align 4
@ROOT_I = common dso_local global i32 0, align 4
@CIFS_MOUNT_MF_SYMLINKS = common dso_local global i32 0, align 4
@CIFS_FATTR_NEED_REVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"filldir rc = %d\00", align 1
@EOVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.file*, i32 (i8*, i8*, i32, i32, i32, i32)*, i8*, i8*, i32)* @cifs_filldir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_filldir(i8* %0, %struct.file* %1, i32 (i8*, i8*, i32, i32, i32, i32)* %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca i32 (i8*, i8*, i32, i32, i32, i32)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.qstr, align 8
  %16 = alloca %struct.cifsFileInfo*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.super_block*, align 8
  %20 = alloca %struct.cifs_sb_info*, align 8
  %21 = alloca %struct.dentry*, align 8
  %22 = alloca %struct.cifs_fattr, align 8
  store i8* %0, i8** %8, align 8
  store %struct.file* %1, %struct.file** %9, align 8
  store i32 (i8*, i8*, i32, i32, i32, i32)* %2, i32 (i8*, i8*, i32, i32, i32, i32)** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %23 = load i8*, i8** %11, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %6
  %26 = load %struct.file*, %struct.file** %9, align 8
  %27 = icmp eq %struct.file* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %25, %6
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %178

31:                                               ; preds = %25
  %32 = load %struct.file*, %struct.file** %9, align 8
  %33 = getelementptr inbounds %struct.file, %struct.file* %32, i32 0, i32 3
  %34 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %33, align 8
  store %struct.cifsFileInfo* %34, %struct.cifsFileInfo** %16, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load i8*, i8** %8, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %16, align 8
  %42 = icmp eq %struct.cifsFileInfo* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %40, %37, %31
  %44 = load i32, i32* @ENOENT, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %7, align 4
  br label %178

46:                                               ; preds = %40
  %47 = load i8*, i8** %8, align 8
  %48 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %16, align 8
  %49 = call i32 @cifs_entry_is_dot(i8* %47, %struct.cifsFileInfo* %48)
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 0, i32* %7, align 4
  br label %178

53:                                               ; preds = %46
  %54 = load %struct.file*, %struct.file** %9, align 8
  %55 = getelementptr inbounds %struct.file, %struct.file* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load %struct.super_block*, %struct.super_block** %58, align 8
  store %struct.super_block* %59, %struct.super_block** %19, align 8
  %60 = load %struct.super_block*, %struct.super_block** %19, align 8
  %61 = call %struct.cifs_sb_info* @CIFS_SB(%struct.super_block* %60)
  store %struct.cifs_sb_info* %61, %struct.cifs_sb_info** %20, align 8
  %62 = load i8*, i8** %12, align 8
  %63 = getelementptr inbounds %struct.qstr, %struct.qstr* %15, i32 0, i32 0
  store i8* %62, i8** %63, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %16, align 8
  %66 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %16, align 8
  %70 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %20, align 8
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @cifs_get_name_from_search_buf(%struct.qstr* %15, i8* %64, i64 %68, i32 %72, %struct.cifs_sb_info* %73, i32 %74, i64* %17)
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %14, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %53
  %79 = load i32, i32* %14, align 4
  store i32 %79, i32* %7, align 4
  br label %178

80:                                               ; preds = %53
  %81 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %16, align 8
  %82 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @SMB_FIND_FILE_UNIX, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %80
  %88 = load i8*, i8** %8, align 8
  %89 = bitcast i8* %88 to %struct.TYPE_8__*
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %20, align 8
  %92 = call i32 @cifs_unix_basic_to_fattr(%struct.cifs_fattr* %22, i32* %90, %struct.cifs_sb_info* %91)
  br label %111

93:                                               ; preds = %80
  %94 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %16, align 8
  %95 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @SMB_FIND_FILE_INFO_STANDARD, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %93
  %101 = load i8*, i8** %8, align 8
  %102 = bitcast i8* %101 to i32*
  %103 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %20, align 8
  %104 = call i32 @cifs_std_info_to_fattr(%struct.cifs_fattr* %22, i32* %102, %struct.cifs_sb_info* %103)
  br label %110

105:                                              ; preds = %93
  %106 = load i8*, i8** %8, align 8
  %107 = bitcast i8* %106 to i32*
  %108 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %20, align 8
  %109 = call i32 @cifs_dir_info_to_fattr(%struct.cifs_fattr* %22, i32* %107, %struct.cifs_sb_info* %108)
  br label %110

110:                                              ; preds = %105, %100
  br label %111

111:                                              ; preds = %110, %87
  %112 = load i64, i64* %17, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %111
  %115 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %20, align 8
  %116 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @CIFS_MOUNT_SERVER_INUM, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %114
  %122 = load i64, i64* %17, align 8
  %123 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %22, i32 0, i32 1
  store i64 %122, i64* %123, align 8
  br label %131

124:                                              ; preds = %114, %111
  %125 = load %struct.super_block*, %struct.super_block** %19, align 8
  %126 = load i32, i32* @ROOT_I, align 4
  %127 = call i64 @iunique(%struct.super_block* %125, i32 %126)
  %128 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %22, i32 0, i32 1
  store i64 %127, i64* %128, align 8
  %129 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %20, align 8
  %130 = call i32 @cifs_autodisable_serverino(%struct.cifs_sb_info* %129)
  br label %131

131:                                              ; preds = %124, %121
  %132 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %20, align 8
  %133 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @CIFS_MOUNT_MF_SYMLINKS, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %131
  %139 = call i64 @CIFSCouldBeMFSymlink(%struct.cifs_fattr* %22)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %138
  %142 = load i32, i32* @CIFS_FATTR_NEED_REVAL, align 4
  %143 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %22, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = or i32 %144, %142
  store i32 %145, i32* %143, align 8
  br label %146

146:                                              ; preds = %141, %138, %131
  %147 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %22, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @cifs_uniqueid_to_ino_t(i64 %148)
  store i32 %149, i32* %18, align 4
  %150 = load %struct.file*, %struct.file** %9, align 8
  %151 = getelementptr inbounds %struct.file, %struct.file* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call %struct.dentry* @cifs_readdir_lookup(i32 %152, %struct.qstr* %15, %struct.cifs_fattr* %22)
  store %struct.dentry* %153, %struct.dentry** %21, align 8
  %154 = load i32 (i8*, i8*, i32, i32, i32, i32)*, i32 (i8*, i8*, i32, i32, i32, i32)** %10, align 8
  %155 = load i8*, i8** %11, align 8
  %156 = getelementptr inbounds %struct.qstr, %struct.qstr* %15, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8
  %158 = getelementptr inbounds %struct.qstr, %struct.qstr* %15, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.file*, %struct.file** %9, align 8
  %161 = getelementptr inbounds %struct.file, %struct.file* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* %18, align 4
  %164 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %22, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i32 %154(i8* %155, i8* %157, i32 %159, i32 %162, i32 %163, i32 %165)
  store i32 %166, i32* %14, align 4
  %167 = load i32, i32* %14, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %146
  %170 = load i32, i32* %14, align 4
  %171 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %170)
  %172 = load i32, i32* @EOVERFLOW, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %14, align 4
  br label %174

174:                                              ; preds = %169, %146
  %175 = load %struct.dentry*, %struct.dentry** %21, align 8
  %176 = call i32 @dput(%struct.dentry* %175)
  %177 = load i32, i32* %14, align 4
  store i32 %177, i32* %7, align 4
  br label %178

178:                                              ; preds = %174, %78, %52, %43, %28
  %179 = load i32, i32* %7, align 4
  ret i32 %179
}

declare dso_local i32 @cifs_entry_is_dot(i8*, %struct.cifsFileInfo*) #1

declare dso_local %struct.cifs_sb_info* @CIFS_SB(%struct.super_block*) #1

declare dso_local i32 @cifs_get_name_from_search_buf(%struct.qstr*, i8*, i64, i32, %struct.cifs_sb_info*, i32, i64*) #1

declare dso_local i32 @cifs_unix_basic_to_fattr(%struct.cifs_fattr*, i32*, %struct.cifs_sb_info*) #1

declare dso_local i32 @cifs_std_info_to_fattr(%struct.cifs_fattr*, i32*, %struct.cifs_sb_info*) #1

declare dso_local i32 @cifs_dir_info_to_fattr(%struct.cifs_fattr*, i32*, %struct.cifs_sb_info*) #1

declare dso_local i64 @iunique(%struct.super_block*, i32) #1

declare dso_local i32 @cifs_autodisable_serverino(%struct.cifs_sb_info*) #1

declare dso_local i64 @CIFSCouldBeMFSymlink(%struct.cifs_fattr*) #1

declare dso_local i32 @cifs_uniqueid_to_ino_t(i64) #1

declare dso_local %struct.dentry* @cifs_readdir_lookup(i32, %struct.qstr*, %struct.cifs_fattr*) #1

declare dso_local i32 @cFYI(i32, i8*, i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
