; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_readdir.c_initiate_cifs_search.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_readdir.c_initiate_cifs_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.TYPE_5__, %struct.cifsFileInfo* }
%struct.TYPE_5__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.cifsFileInfo = type { i32, %struct.TYPE_8__, i32, %struct.tcon_link* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.tcon_link = type { i32 }
%struct.cifs_sb_info = type { i32, i32 }
%struct.cifs_tcon = type { %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Full path: %s start at: %lld\00", align 1
@SMB_FIND_FILE_UNIX = common dso_local global i32 0, align 4
@CAP_NT_SMBS = common dso_local global i32 0, align 4
@CAP_NT_FIND = common dso_local global i32 0, align 4
@SMB_FIND_FILE_INFO_STANDARD = common dso_local global i32 0, align 4
@CIFS_MOUNT_SERVER_INUM = common dso_local global i32 0, align 4
@SMB_FIND_FILE_ID_FULL_DIR_INFO = common dso_local global i32 0, align 4
@SMB_FIND_FILE_DIRECTORY_INFO = common dso_local global i32 0, align 4
@CIFS_MOUNT_MAP_SPECIAL_CHR = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.file*)* @initiate_cifs_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initiate_cifs_search(i32 %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.cifsFileInfo*, align 8
  %9 = alloca %struct.cifs_sb_info*, align 8
  %10 = alloca %struct.tcon_link*, align 8
  %11 = alloca %struct.cifs_tcon*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.file* %1, %struct.file** %5, align 8
  store i32 0, i32* %6, align 4
  store i8* null, i8** %7, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.cifs_sb_info* @CIFS_SB(i32 %17)
  store %struct.cifs_sb_info* %18, %struct.cifs_sb_info** %9, align 8
  store %struct.tcon_link* null, %struct.tcon_link** %10, align 8
  %19 = load %struct.file*, %struct.file** %5, align 8
  %20 = getelementptr inbounds %struct.file, %struct.file* %19, i32 0, i32 2
  %21 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %20, align 8
  %22 = icmp eq %struct.cifsFileInfo* %21, null
  br i1 %22, label %23, label %50

23:                                               ; preds = %2
  %24 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %9, align 8
  %25 = call %struct.tcon_link* @cifs_sb_tlink(%struct.cifs_sb_info* %24)
  store %struct.tcon_link* %25, %struct.tcon_link** %10, align 8
  %26 = load %struct.tcon_link*, %struct.tcon_link** %10, align 8
  %27 = call i64 @IS_ERR(%struct.tcon_link* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.tcon_link*, %struct.tcon_link** %10, align 8
  %31 = call i32 @PTR_ERR(%struct.tcon_link* %30)
  store i32 %31, i32* %3, align 4
  br label %176

32:                                               ; preds = %23
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.cifsFileInfo* @kzalloc(i32 24, i32 %33)
  store %struct.cifsFileInfo* %34, %struct.cifsFileInfo** %8, align 8
  %35 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %8, align 8
  %36 = icmp eq %struct.cifsFileInfo* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %170

40:                                               ; preds = %32
  %41 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %8, align 8
  %42 = load %struct.file*, %struct.file** %5, align 8
  %43 = getelementptr inbounds %struct.file, %struct.file* %42, i32 0, i32 2
  store %struct.cifsFileInfo* %41, %struct.cifsFileInfo** %43, align 8
  %44 = load %struct.tcon_link*, %struct.tcon_link** %10, align 8
  %45 = call %struct.tcon_link* @cifs_get_tlink(%struct.tcon_link* %44)
  %46 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %8, align 8
  %47 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %46, i32 0, i32 3
  store %struct.tcon_link* %45, %struct.tcon_link** %47, align 8
  %48 = load %struct.tcon_link*, %struct.tcon_link** %10, align 8
  %49 = call %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link* %48)
  store %struct.cifs_tcon* %49, %struct.cifs_tcon** %11, align 8
  br label %58

50:                                               ; preds = %2
  %51 = load %struct.file*, %struct.file** %5, align 8
  %52 = getelementptr inbounds %struct.file, %struct.file* %51, i32 0, i32 2
  %53 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %52, align 8
  store %struct.cifsFileInfo* %53, %struct.cifsFileInfo** %8, align 8
  %54 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %8, align 8
  %55 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %54, i32 0, i32 3
  %56 = load %struct.tcon_link*, %struct.tcon_link** %55, align 8
  %57 = call %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link* %56)
  store %struct.cifs_tcon* %57, %struct.cifs_tcon** %11, align 8
  br label %58

58:                                               ; preds = %50, %40
  %59 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %8, align 8
  %60 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %8, align 8
  %62 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  store i32 0, i32* %63, align 4
  %64 = load %struct.file*, %struct.file** %5, align 8
  %65 = getelementptr inbounds %struct.file, %struct.file* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = call i8* @build_path_from_dentry(%struct.TYPE_7__* %67)
  store i8* %68, i8** %7, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = icmp eq i8* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %58
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %6, align 4
  br label %170

74:                                               ; preds = %58
  %75 = load i8*, i8** %7, align 8
  %76 = load %struct.file*, %struct.file** %5, align 8
  %77 = getelementptr inbounds %struct.file, %struct.file* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %75, i32 %78)
  br label %80

80:                                               ; preds = %161, %74
  %81 = load %struct.cifs_tcon*, %struct.cifs_tcon** %11, align 8
  %82 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load i32, i32* @SMB_FIND_FILE_UNIX, align 4
  %87 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %8, align 8
  %88 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  store i32 %86, i32* %89, align 4
  br label %125

90:                                               ; preds = %80
  %91 = load %struct.cifs_tcon*, %struct.cifs_tcon** %11, align 8
  %92 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %91, i32 0, i32 0
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @CAP_NT_SMBS, align 4
  %97 = load i32, i32* @CAP_NT_FIND, align 4
  %98 = or i32 %96, %97
  %99 = and i32 %95, %98
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %90
  %102 = load i32, i32* @SMB_FIND_FILE_INFO_STANDARD, align 4
  %103 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %8, align 8
  %104 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  store i32 %102, i32* %105, align 4
  br label %124

106:                                              ; preds = %90
  %107 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %9, align 8
  %108 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @CIFS_MOUNT_SERVER_INUM, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %106
  %114 = load i32, i32* @SMB_FIND_FILE_ID_FULL_DIR_INFO, align 4
  %115 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %8, align 8
  %116 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  store i32 %114, i32* %117, align 4
  br label %123

118:                                              ; preds = %106
  %119 = load i32, i32* @SMB_FIND_FILE_DIRECTORY_INFO, align 4
  %120 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %8, align 8
  %121 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  store i32 %119, i32* %122, align 4
  br label %123

123:                                              ; preds = %118, %113
  br label %124

124:                                              ; preds = %123, %101
  br label %125

125:                                              ; preds = %124, %85
  %126 = load i32, i32* %4, align 4
  %127 = load %struct.cifs_tcon*, %struct.cifs_tcon** %11, align 8
  %128 = load i8*, i8** %7, align 8
  %129 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %9, align 8
  %130 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %8, align 8
  %133 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %132, i32 0, i32 2
  %134 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %8, align 8
  %135 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %134, i32 0, i32 1
  %136 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %9, align 8
  %137 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @CIFS_MOUNT_MAP_SPECIAL_CHR, align 4
  %140 = and i32 %138, %139
  %141 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %9, align 8
  %142 = call i32 @CIFS_DIR_SEP(%struct.cifs_sb_info* %141)
  %143 = call i32 @CIFSFindFirst(i32 %126, %struct.cifs_tcon* %127, i8* %128, i32 %131, i32* %133, %struct.TYPE_8__* %135, i32 %140, i32 %142)
  store i32 %143, i32* %6, align 4
  %144 = load i32, i32* %6, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %125
  %147 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %8, align 8
  %148 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %147, i32 0, i32 0
  store i32 0, i32* %148, align 8
  br label %169

149:                                              ; preds = %125
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* @EOPNOTSUPP, align 4
  %152 = sub nsw i32 0, %151
  %153 = icmp eq i32 %150, %152
  br i1 %153, label %154, label %168

154:                                              ; preds = %149
  %155 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %9, align 8
  %156 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @CIFS_MOUNT_SERVER_INUM, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %154
  %162 = load i32, i32* @CIFS_MOUNT_SERVER_INUM, align 4
  %163 = xor i32 %162, -1
  %164 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %9, align 8
  %165 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = and i32 %166, %163
  store i32 %167, i32* %165, align 4
  br label %80

168:                                              ; preds = %154, %149
  br label %169

169:                                              ; preds = %168, %146
  br label %170

170:                                              ; preds = %169, %71, %37
  %171 = load i8*, i8** %7, align 8
  %172 = call i32 @kfree(i8* %171)
  %173 = load %struct.tcon_link*, %struct.tcon_link** %10, align 8
  %174 = call i32 @cifs_put_tlink(%struct.tcon_link* %173)
  %175 = load i32, i32* %6, align 4
  store i32 %175, i32* %3, align 4
  br label %176

176:                                              ; preds = %170, %29
  %177 = load i32, i32* %3, align 4
  ret i32 %177
}

declare dso_local %struct.cifs_sb_info* @CIFS_SB(i32) #1

declare dso_local %struct.tcon_link* @cifs_sb_tlink(%struct.cifs_sb_info*) #1

declare dso_local i64 @IS_ERR(%struct.tcon_link*) #1

declare dso_local i32 @PTR_ERR(%struct.tcon_link*) #1

declare dso_local %struct.cifsFileInfo* @kzalloc(i32, i32) #1

declare dso_local %struct.tcon_link* @cifs_get_tlink(%struct.tcon_link*) #1

declare dso_local %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link*) #1

declare dso_local i8* @build_path_from_dentry(%struct.TYPE_7__*) #1

declare dso_local i32 @cFYI(i32, i8*, i8*, i32) #1

declare dso_local i32 @CIFSFindFirst(i32, %struct.cifs_tcon*, i8*, i32, i32*, %struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @CIFS_DIR_SEP(%struct.cifs_sb_info*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @cifs_put_tlink(%struct.tcon_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
