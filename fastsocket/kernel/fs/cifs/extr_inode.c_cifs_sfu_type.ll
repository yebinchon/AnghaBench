; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_inode.c_cifs_sfu_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_inode.c_cifs_sfu_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cifs_fattr = type { i32, i8*, i32, i8* }
%struct.cifs_sb_info = type { i32, i32 }
%struct.tcon_link = type { i32 }
%struct.cifs_tcon = type { i32 }
%struct.cifs_io_parms = type { i32, i64, %struct.cifs_tcon*, i32, i32 }

@S_IFMT = common dso_local global i32 0, align 4
@S_IFIFO = common dso_local global i32 0, align 4
@DT_FIFO = common dso_local global i8* null, align 8
@S_IFREG = common dso_local global i32 0, align 4
@DT_REG = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@FILE_OPEN = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@CREATE_NOT_DIR = common dso_local global i32 0, align 4
@CIFS_MOUNT_MAP_SPECIAL_CHR = common dso_local global i32 0, align 4
@CIFS_NO_BUFFER = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"IntxBLK\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Block device\00", align 1
@S_IFBLK = common dso_local global i32 0, align 4
@DT_BLK = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"IntxCHR\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Char device\00", align 1
@S_IFCHR = common dso_local global i32 0, align 4
@DT_CHR = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"IntxLNK\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Symlink\00", align 1
@S_IFLNK = common dso_local global i32 0, align 4
@DT_LNK = common dso_local global i8* null, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cifs_fattr*, i8*, %struct.cifs_sb_info*, i32)* @cifs_sfu_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_sfu_type(%struct.cifs_fattr* %0, i8* %1, %struct.cifs_sb_info* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cifs_fattr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.cifs_sb_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.tcon_link*, align 8
  %14 = alloca %struct.cifs_tcon*, align 8
  %15 = alloca %struct.cifs_io_parms, align 8
  %16 = alloca [24 x i8], align 16
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.cifs_fattr* %0, %struct.cifs_fattr** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.cifs_sb_info* %2, %struct.cifs_sb_info** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %24 = getelementptr inbounds [24 x i8], [24 x i8]* %16, i64 0, i64 0
  store i8* %24, i8** %18, align 8
  %25 = load i32, i32* @S_IFMT, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.cifs_fattr*, %struct.cifs_fattr** %6, align 8
  %28 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load %struct.cifs_fattr*, %struct.cifs_fattr** %6, align 8
  %32 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %4
  %36 = load i32, i32* @S_IFIFO, align 4
  %37 = load %struct.cifs_fattr*, %struct.cifs_fattr** %6, align 8
  %38 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = load i8*, i8** @DT_FIFO, align 8
  %42 = load %struct.cifs_fattr*, %struct.cifs_fattr** %6, align 8
  %43 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  store i32 0, i32* %5, align 4
  br label %223

44:                                               ; preds = %4
  %45 = load %struct.cifs_fattr*, %struct.cifs_fattr** %6, align 8
  %46 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %47, 8
  br i1 %48, label %49, label %60

49:                                               ; preds = %44
  %50 = load i32, i32* @S_IFREG, align 4
  %51 = load %struct.cifs_fattr*, %struct.cifs_fattr** %6, align 8
  %52 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  %55 = load i8*, i8** @DT_REG, align 8
  %56 = load %struct.cifs_fattr*, %struct.cifs_fattr** %6, align 8
  %57 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %223

60:                                               ; preds = %44
  br label %61

61:                                               ; preds = %60
  %62 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %8, align 8
  %63 = call %struct.tcon_link* @cifs_sb_tlink(%struct.cifs_sb_info* %62)
  store %struct.tcon_link* %63, %struct.tcon_link** %13, align 8
  %64 = load %struct.tcon_link*, %struct.tcon_link** %13, align 8
  %65 = call i64 @IS_ERR(%struct.tcon_link* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load %struct.tcon_link*, %struct.tcon_link** %13, align 8
  %69 = call i32 @PTR_ERR(%struct.tcon_link* %68)
  store i32 %69, i32* %5, align 4
  br label %223

70:                                               ; preds = %61
  %71 = load %struct.tcon_link*, %struct.tcon_link** %13, align 8
  %72 = call %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link* %71)
  store %struct.cifs_tcon* %72, %struct.cifs_tcon** %14, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.cifs_tcon*, %struct.cifs_tcon** %14, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = load i32, i32* @FILE_OPEN, align 4
  %77 = load i32, i32* @GENERIC_READ, align 4
  %78 = load i32, i32* @CREATE_NOT_DIR, align 4
  %79 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %8, align 8
  %80 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %8, align 8
  %83 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @CIFS_MOUNT_MAP_SPECIAL_CHR, align 4
  %86 = and i32 %84, %85
  %87 = call i32 @CIFSSMBOpen(i32 %73, %struct.cifs_tcon* %74, i8* %75, i32 %76, i32 %77, i32 %78, i32* %12, i32* %11, i32* null, i32 %81, i32 %86)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %219

90:                                               ; preds = %70
  %91 = load i32, i32* @CIFS_NO_BUFFER, align 4
  store i32 %91, i32* %19, align 4
  %92 = load i32, i32* %12, align 4
  %93 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %15, i32 0, i32 4
  store i32 %92, i32* %93, align 4
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %15, i32 0, i32 3
  store i32 %96, i32* %97, align 8
  %98 = load %struct.cifs_tcon*, %struct.cifs_tcon** %14, align 8
  %99 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %15, i32 0, i32 2
  store %struct.cifs_tcon* %98, %struct.cifs_tcon** %99, align 8
  %100 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %15, i32 0, i32 1
  store i64 0, i64* %100, align 8
  %101 = getelementptr inbounds %struct.cifs_io_parms, %struct.cifs_io_parms* %15, i32 0, i32 0
  store i32 24, i32* %101, align 8
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @CIFSSMBRead(i32 %102, %struct.cifs_io_parms* %15, i32* %17, i8** %18, i32* %19)
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %203

106:                                              ; preds = %90
  %107 = load i32, i32* %17, align 4
  %108 = icmp uge i32 %107, 8
  br i1 %108, label %109, label %203

109:                                              ; preds = %106
  %110 = load i8*, i8** %18, align 8
  %111 = call i64 @memcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %110, i32 8)
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %142

113:                                              ; preds = %109
  %114 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %115 = load i32, i32* @S_IFBLK, align 4
  %116 = load %struct.cifs_fattr*, %struct.cifs_fattr** %6, align 8
  %117 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 8
  %120 = load i8*, i8** @DT_BLK, align 8
  %121 = load %struct.cifs_fattr*, %struct.cifs_fattr** %6, align 8
  %122 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %121, i32 0, i32 1
  store i8* %120, i8** %122, align 8
  %123 = load i32, i32* %17, align 4
  %124 = icmp eq i32 %123, 24
  br i1 %124, label %125, label %141

125:                                              ; preds = %113
  %126 = load i8*, i8** %18, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 8
  %128 = bitcast i8* %127 to i32*
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @le64_to_cpu(i32 %129)
  store i32 %130, i32* %20, align 4
  %131 = load i8*, i8** %18, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 16
  %133 = bitcast i8* %132 to i32*
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @le64_to_cpu(i32 %134)
  store i32 %135, i32* %21, align 4
  %136 = load i32, i32* %20, align 4
  %137 = load i32, i32* %21, align 4
  %138 = call i8* @MKDEV(i32 %136, i32 %137)
  %139 = load %struct.cifs_fattr*, %struct.cifs_fattr** %6, align 8
  %140 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %139, i32 0, i32 3
  store i8* %138, i8** %140, align 8
  br label %141

141:                                              ; preds = %125, %113
  br label %202

142:                                              ; preds = %109
  %143 = load i8*, i8** %18, align 8
  %144 = call i64 @memcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %143, i32 8)
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %175

146:                                              ; preds = %142
  %147 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %148 = load i32, i32* @S_IFCHR, align 4
  %149 = load %struct.cifs_fattr*, %struct.cifs_fattr** %6, align 8
  %150 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = or i32 %151, %148
  store i32 %152, i32* %150, align 8
  %153 = load i8*, i8** @DT_CHR, align 8
  %154 = load %struct.cifs_fattr*, %struct.cifs_fattr** %6, align 8
  %155 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %154, i32 0, i32 1
  store i8* %153, i8** %155, align 8
  %156 = load i32, i32* %17, align 4
  %157 = icmp eq i32 %156, 24
  br i1 %157, label %158, label %174

158:                                              ; preds = %146
  %159 = load i8*, i8** %18, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 8
  %161 = bitcast i8* %160 to i32*
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @le64_to_cpu(i32 %162)
  store i32 %163, i32* %22, align 4
  %164 = load i8*, i8** %18, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 16
  %166 = bitcast i8* %165 to i32*
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @le64_to_cpu(i32 %167)
  store i32 %168, i32* %23, align 4
  %169 = load i32, i32* %22, align 4
  %170 = load i32, i32* %23, align 4
  %171 = call i8* @MKDEV(i32 %169, i32 %170)
  %172 = load %struct.cifs_fattr*, %struct.cifs_fattr** %6, align 8
  %173 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %172, i32 0, i32 3
  store i8* %171, i8** %173, align 8
  br label %174

174:                                              ; preds = %158, %146
  br label %201

175:                                              ; preds = %142
  %176 = load i8*, i8** %18, align 8
  %177 = call i64 @memcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %176, i32 7)
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %189

179:                                              ; preds = %175
  %180 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %181 = load i32, i32* @S_IFLNK, align 4
  %182 = load %struct.cifs_fattr*, %struct.cifs_fattr** %6, align 8
  %183 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = or i32 %184, %181
  store i32 %185, i32* %183, align 8
  %186 = load i8*, i8** @DT_LNK, align 8
  %187 = load %struct.cifs_fattr*, %struct.cifs_fattr** %6, align 8
  %188 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %187, i32 0, i32 1
  store i8* %186, i8** %188, align 8
  br label %200

189:                                              ; preds = %175
  %190 = load i32, i32* @S_IFREG, align 4
  %191 = load %struct.cifs_fattr*, %struct.cifs_fattr** %6, align 8
  %192 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = or i32 %193, %190
  store i32 %194, i32* %192, align 8
  %195 = load i8*, i8** @DT_REG, align 8
  %196 = load %struct.cifs_fattr*, %struct.cifs_fattr** %6, align 8
  %197 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %196, i32 0, i32 1
  store i8* %195, i8** %197, align 8
  %198 = load i32, i32* @EOPNOTSUPP, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %10, align 4
  br label %200

200:                                              ; preds = %189, %179
  br label %201

201:                                              ; preds = %200, %174
  br label %202

202:                                              ; preds = %201, %141
  br label %214

203:                                              ; preds = %106, %90
  %204 = load i32, i32* @S_IFREG, align 4
  %205 = load %struct.cifs_fattr*, %struct.cifs_fattr** %6, align 8
  %206 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = or i32 %207, %204
  store i32 %208, i32* %206, align 8
  %209 = load i8*, i8** @DT_REG, align 8
  %210 = load %struct.cifs_fattr*, %struct.cifs_fattr** %6, align 8
  %211 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %210, i32 0, i32 1
  store i8* %209, i8** %211, align 8
  %212 = load i32, i32* @EOPNOTSUPP, align 4
  %213 = sub nsw i32 0, %212
  store i32 %213, i32* %10, align 4
  br label %214

214:                                              ; preds = %203, %202
  %215 = load i32, i32* %9, align 4
  %216 = load %struct.cifs_tcon*, %struct.cifs_tcon** %14, align 8
  %217 = load i32, i32* %12, align 4
  %218 = call i32 @CIFSSMBClose(i32 %215, %struct.cifs_tcon* %216, i32 %217)
  br label %219

219:                                              ; preds = %214, %70
  %220 = load %struct.tcon_link*, %struct.tcon_link** %13, align 8
  %221 = call i32 @cifs_put_tlink(%struct.tcon_link* %220)
  %222 = load i32, i32* %10, align 4
  store i32 %222, i32* %5, align 4
  br label %223

223:                                              ; preds = %219, %67, %49, %35
  %224 = load i32, i32* %5, align 4
  ret i32 %224
}

declare dso_local %struct.tcon_link* @cifs_sb_tlink(%struct.cifs_sb_info*) #1

declare dso_local i64 @IS_ERR(%struct.tcon_link*) #1

declare dso_local i32 @PTR_ERR(%struct.tcon_link*) #1

declare dso_local %struct.cifs_tcon* @tlink_tcon(%struct.tcon_link*) #1

declare dso_local i32 @CIFSSMBOpen(i32, %struct.cifs_tcon*, i8*, i32, i32, i32, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @CIFSSMBRead(i32, %struct.cifs_io_parms*, i32*, i8**, i32*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @cFYI(i32, i8*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i8* @MKDEV(i32, i32) #1

declare dso_local i32 @CIFSSMBClose(i32, %struct.cifs_tcon*, i32) #1

declare dso_local i32 @cifs_put_tlink(%struct.tcon_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
