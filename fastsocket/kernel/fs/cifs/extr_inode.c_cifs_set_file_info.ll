; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_inode.c_cifs_set_file_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_inode.c_cifs_set_file_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8* }
%struct.inode = type { i32 }
%struct.iattr = type { i32, i32, i32, i32 }
%struct.cifsFileInfo = type { %struct.tcon_link*, i8*, i32 }
%struct.tcon_link = type { i32 }
%struct.cifsInodeInfo = type { i8* }
%struct.cifs_sb_info = type { i32, i32 }
%struct.cifs_tcon = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i64, i8*, i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@ATTR_ATIME = common dso_local global i32 0, align 4
@ATTR_MTIME = common dso_local global i32 0, align 4
@ATTR_CTIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"CIFS - CTIME changed\00", align 1
@CIFS_SES_NT4 = common dso_local global i32 0, align 4
@CIFS_MOUNT_MAP_SPECIAL_CHR = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [77 x i8] c"calling SetFileInfo since SetPathInfo for times not supported by this server\00", align 1
@FILE_OPEN = common dso_local global i32 0, align 4
@SYNCHRONIZE = common dso_local global i32 0, align 4
@FILE_WRITE_ATTRIBUTES = common dso_local global i32 0, align 4
@CREATE_NOT_DIR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.iattr*, i32, i8*, i8*)* @cifs_set_file_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_set_file_info(%struct.inode* %0, %struct.iattr* %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.iattr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.cifsFileInfo*, align 8
  %18 = alloca %struct.cifsInodeInfo*, align 8
  %19 = alloca %struct.cifs_sb_info*, align 8
  %20 = alloca %struct.tcon_link*, align 8
  %21 = alloca %struct.cifs_tcon*, align 8
  %22 = alloca %struct.TYPE_7__, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.iattr* %1, %struct.iattr** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %16, align 4
  %23 = load %struct.inode*, %struct.inode** %7, align 8
  %24 = call %struct.cifsInodeInfo* @CIFS_I(%struct.inode* %23)
  store %struct.cifsInodeInfo* %24, %struct.cifsInodeInfo** %18, align 8
  %25 = load %struct.inode*, %struct.inode** %7, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.cifs_sb_info* @CIFS_SB(i32 %27)
  store %struct.cifs_sb_info* %28, %struct.cifs_sb_info** %19, align 8
  store %struct.tcon_link* null, %struct.tcon_link** %20, align 8
  %29 = load %struct.iattr*, %struct.iattr** %8, align 8
  %30 = icmp eq %struct.iattr* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %5
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %224

34:                                               ; preds = %5
  %35 = load %struct.iattr*, %struct.iattr** %8, align 8
  %36 = getelementptr inbounds %struct.iattr, %struct.iattr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ATTR_ATIME, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %34
  store i32 1, i32* %16, align 4
  %42 = load %struct.iattr*, %struct.iattr** %8, align 8
  %43 = getelementptr inbounds %struct.iattr, %struct.iattr* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @cifs_UnixTimeToNT(i32 %44)
  %46 = call i8* @cpu_to_le64(i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 4
  store i8* %46, i8** %47, align 8
  br label %50

48:                                               ; preds = %34
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 4
  store i8* null, i8** %49, align 8
  br label %50

50:                                               ; preds = %48, %41
  %51 = load %struct.iattr*, %struct.iattr** %8, align 8
  %52 = getelementptr inbounds %struct.iattr, %struct.iattr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @ATTR_MTIME, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %50
  store i32 1, i32* %16, align 4
  %58 = load %struct.iattr*, %struct.iattr** %8, align 8
  %59 = getelementptr inbounds %struct.iattr, %struct.iattr* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @cifs_UnixTimeToNT(i32 %60)
  %62 = call i8* @cpu_to_le64(i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 3
  store i8* %62, i8** %63, align 8
  br label %66

64:                                               ; preds = %50
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 3
  store i8* null, i8** %65, align 8
  br label %66

66:                                               ; preds = %64, %57
  %67 = load i32, i32* %16, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %66
  %70 = load %struct.iattr*, %struct.iattr** %8, align 8
  %71 = getelementptr inbounds %struct.iattr, %struct.iattr* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @ATTR_CTIME, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %69
  %77 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %78 = load %struct.iattr*, %struct.iattr** %8, align 8
  %79 = getelementptr inbounds %struct.iattr, %struct.iattr* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @cifs_UnixTimeToNT(i32 %80)
  %82 = call i8* @cpu_to_le64(i32 %81)
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 2
  store i8* %82, i8** %83, align 8
  br label %86

84:                                               ; preds = %69, %66
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 2
  store i8* null, i8** %85, align 8
  br label %86

86:                                               ; preds = %84, %76
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  store i64 0, i64* %87, align 8
  %88 = load i8*, i8** %11, align 8
  %89 = call i32 @cpu_to_le32(i8* %88)
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  store i32 %89, i32* %90, align 8
  %91 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %18, align 8
  %92 = call %struct.cifsFileInfo* @find_writable_file(%struct.cifsInodeInfo* %91, i32 1)
  store %struct.cifsFileInfo* %92, %struct.cifsFileInfo** %17, align 8
  %93 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %17, align 8
  %94 = icmp ne %struct.cifsFileInfo* %93, null
  br i1 %94, label %95, label %106

95:                                               ; preds = %86
  %96 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %17, align 8
  %97 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  store i32 %98, i32* %14, align 4
  %99 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %17, align 8
  %100 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  store i8* %101, i8** %15, align 8
  %102 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %17, align 8
  %103 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %102, i32 0, i32 0
  %104 = load %struct.tcon_link*, %struct.tcon_link** %103, align 8
  %105 = call %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link* %104)
  store %struct.cifs_tcon* %105, %struct.cifs_tcon** %21, align 8
  br label %192

106:                                              ; preds = %86
  %107 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %19, align 8
  %108 = call %struct.tcon_link* @cifs_sb_tlink(%struct.cifs_sb_info* %107)
  store %struct.tcon_link* %108, %struct.tcon_link** %20, align 8
  %109 = load %struct.tcon_link*, %struct.tcon_link** %20, align 8
  %110 = call i64 @IS_ERR(%struct.tcon_link* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %106
  %113 = load %struct.tcon_link*, %struct.tcon_link** %20, align 8
  %114 = call i32 @PTR_ERR(%struct.tcon_link* %113)
  store i32 %114, i32* %12, align 4
  store %struct.tcon_link* null, %struct.tcon_link** %20, align 8
  br label %216

115:                                              ; preds = %106
  %116 = load %struct.tcon_link*, %struct.tcon_link** %20, align 8
  %117 = call %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link* %116)
  store %struct.cifs_tcon* %117, %struct.cifs_tcon** %21, align 8
  %118 = load %struct.cifs_tcon*, %struct.cifs_tcon** %21, align 8
  %119 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %118, i32 0, i32 0
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @CIFS_SES_NT4, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %158, label %126

126:                                              ; preds = %115
  %127 = load i32, i32* %9, align 4
  %128 = load %struct.cifs_tcon*, %struct.cifs_tcon** %21, align 8
  %129 = load i8*, i8** %10, align 8
  %130 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %19, align 8
  %131 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %19, align 8
  %134 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @CIFS_MOUNT_MAP_SPECIAL_CHR, align 4
  %137 = and i32 %135, %136
  %138 = call i32 @CIFSSMBSetPathInfo(i32 %127, %struct.cifs_tcon* %128, i8* %129, %struct.TYPE_7__* %22, i32 %132, i32 %137)
  store i32 %138, i32* %12, align 4
  %139 = load i32, i32* %12, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %126
  %142 = load i8*, i8** %11, align 8
  %143 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %18, align 8
  %144 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %143, i32 0, i32 0
  store i8* %142, i8** %144, align 8
  br label %216

145:                                              ; preds = %126
  %146 = load i32, i32* %12, align 4
  %147 = load i32, i32* @EOPNOTSUPP, align 4
  %148 = sub nsw i32 0, %147
  %149 = icmp ne i32 %146, %148
  br i1 %149, label %150, label %156

150:                                              ; preds = %145
  %151 = load i32, i32* %12, align 4
  %152 = load i32, i32* @EINVAL, align 4
  %153 = sub nsw i32 0, %152
  %154 = icmp ne i32 %151, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %150
  br label %216

156:                                              ; preds = %150, %145
  br label %157

157:                                              ; preds = %156
  br label %158

158:                                              ; preds = %157, %115
  %159 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0))
  %160 = load i32, i32* %9, align 4
  %161 = load %struct.cifs_tcon*, %struct.cifs_tcon** %21, align 8
  %162 = load i8*, i8** %10, align 8
  %163 = load i32, i32* @FILE_OPEN, align 4
  %164 = load i32, i32* @SYNCHRONIZE, align 4
  %165 = load i32, i32* @FILE_WRITE_ATTRIBUTES, align 4
  %166 = or i32 %164, %165
  %167 = load i32, i32* @CREATE_NOT_DIR, align 4
  %168 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %19, align 8
  %169 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %19, align 8
  %172 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @CIFS_MOUNT_MAP_SPECIAL_CHR, align 4
  %175 = and i32 %173, %174
  %176 = call i32 @CIFSSMBOpen(i32 %160, %struct.cifs_tcon* %161, i8* %162, i32 %163, i32 %166, i32 %167, i32* %14, i32* %13, i32* null, i32 %170, i32 %175)
  store i32 %176, i32* %12, align 4
  %177 = load i32, i32* %12, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %188

179:                                              ; preds = %158
  %180 = load i32, i32* %12, align 4
  %181 = load i32, i32* @EIO, align 4
  %182 = sub nsw i32 0, %181
  %183 = icmp eq i32 %180, %182
  br i1 %183, label %184, label %187

184:                                              ; preds = %179
  %185 = load i32, i32* @EINVAL, align 4
  %186 = sub nsw i32 0, %185
  store i32 %186, i32* %12, align 4
  br label %187

187:                                              ; preds = %184, %179
  br label %216

188:                                              ; preds = %158
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 0
  %191 = load i8*, i8** %190, align 8
  store i8* %191, i8** %15, align 8
  br label %192

192:                                              ; preds = %188, %95
  %193 = load i32, i32* %9, align 4
  %194 = load %struct.cifs_tcon*, %struct.cifs_tcon** %21, align 8
  %195 = load i32, i32* %14, align 4
  %196 = load i8*, i8** %15, align 8
  %197 = call i32 @CIFSSMBSetFileInfo(i32 %193, %struct.cifs_tcon* %194, %struct.TYPE_7__* %22, i32 %195, i8* %196)
  store i32 %197, i32* %12, align 4
  %198 = load i32, i32* %12, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %204, label %200

200:                                              ; preds = %192
  %201 = load i8*, i8** %11, align 8
  %202 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %18, align 8
  %203 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %202, i32 0, i32 0
  store i8* %201, i8** %203, align 8
  br label %204

204:                                              ; preds = %200, %192
  %205 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %17, align 8
  %206 = icmp eq %struct.cifsFileInfo* %205, null
  br i1 %206, label %207, label %212

207:                                              ; preds = %204
  %208 = load i32, i32* %9, align 4
  %209 = load %struct.cifs_tcon*, %struct.cifs_tcon** %21, align 8
  %210 = load i32, i32* %14, align 4
  %211 = call i32 @CIFSSMBClose(i32 %208, %struct.cifs_tcon* %209, i32 %210)
  br label %215

212:                                              ; preds = %204
  %213 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %17, align 8
  %214 = call i32 @cifsFileInfo_put(%struct.cifsFileInfo* %213)
  br label %215

215:                                              ; preds = %212, %207
  br label %216

216:                                              ; preds = %215, %187, %155, %141, %112
  %217 = load %struct.tcon_link*, %struct.tcon_link** %20, align 8
  %218 = icmp ne %struct.tcon_link* %217, null
  br i1 %218, label %219, label %222

219:                                              ; preds = %216
  %220 = load %struct.tcon_link*, %struct.tcon_link** %20, align 8
  %221 = call i32 @cifs_put_tlink(%struct.tcon_link* %220)
  br label %222

222:                                              ; preds = %219, %216
  %223 = load i32, i32* %12, align 4
  store i32 %223, i32* %6, align 4
  br label %224

224:                                              ; preds = %222, %31
  %225 = load i32, i32* %6, align 4
  ret i32 %225
}

declare dso_local %struct.cifsInodeInfo* @CIFS_I(%struct.inode*) #1

declare dso_local %struct.cifs_sb_info* @CIFS_SB(i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @cifs_UnixTimeToNT(i32) #1

declare dso_local i32 @cFYI(i32, i8*) #1

declare dso_local i32 @cpu_to_le32(i8*) #1

declare dso_local %struct.cifsFileInfo* @find_writable_file(%struct.cifsInodeInfo*, i32) #1

declare dso_local %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link*) #1

declare dso_local %struct.tcon_link* @cifs_sb_tlink(%struct.cifs_sb_info*) #1

declare dso_local i64 @IS_ERR(%struct.tcon_link*) #1

declare dso_local i32 @PTR_ERR(%struct.tcon_link*) #1

declare dso_local i32 @CIFSSMBSetPathInfo(i32, %struct.cifs_tcon*, i8*, %struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @CIFSSMBOpen(i32, %struct.cifs_tcon*, i8*, i32, i32, i32, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @CIFSSMBSetFileInfo(i32, %struct.cifs_tcon*, %struct.TYPE_7__*, i32, i8*) #1

declare dso_local i32 @CIFSSMBClose(i32, %struct.cifs_tcon*, i32) #1

declare dso_local i32 @cifsFileInfo_put(%struct.cifsFileInfo*) #1

declare dso_local i32 @cifs_put_tlink(%struct.tcon_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
