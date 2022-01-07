; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_CIFSTCon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_connect.c_CIFSTCon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_ses = type { i32, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32, i64, i32 }
%struct.cifs_tcon = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nls_table = type { i32 }
%struct.smb_hdr = type { i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i8*, i8*, %struct.TYPE_5__, i8*, i8* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SMB_COM_TREE_CONNECT_ANDX = common dso_local global i32 0, align 4
@TCON_EXTENDED_SECINFO = common dso_local global i32 0, align 4
@SECMODE_USER = common dso_local global i32 0, align 4
@CIFS_AUTH_RESP_SIZE = common dso_local global i32 0, align 4
@CAP_UNICODE = common dso_local global i32 0, align 4
@SECMODE_SIGN_REQUIRED = common dso_local global i32 0, align 4
@SECMODE_SIGN_ENABLED = common dso_local global i32 0, align 4
@SMBFLG2_SECURITY_SIGNATURE = common dso_local global i32 0, align 4
@CAP_STATUS32 = common dso_local global i32 0, align 4
@SMBFLG2_ERR_STATUS = common dso_local global i32 0, align 4
@CAP_DFS = common dso_local global i32 0, align 4
@SMBFLG2_DFS = common dso_local global i32 0, align 4
@SMBFLG2_UNICODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"?????\00", align 1
@CifsGood = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"IPC connection\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"disk share connection\00", align 1
@MAX_TREE_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"nativeFileSystem=%s\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Tcon flags: 0x%x \00", align 1
@CIFSSEC_MAY_LANMAN = common dso_local global i32 0, align 4
@LANMAN = common dso_local global i64 0, align 8
@SECMODE_PW_ENCRYPT = common dso_local global i32 0, align 4
@global_secflags = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CIFSTCon(i32 %0, %struct.cifs_ses* %1, i8* %2, %struct.cifs_tcon* %3, %struct.nls_table* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cifs_ses*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.cifs_tcon*, align 8
  %11 = alloca %struct.nls_table*, align 8
  %12 = alloca %struct.smb_hdr*, align 8
  %13 = alloca %struct.smb_hdr*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca %struct.TYPE_6__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.cifs_ses* %1, %struct.cifs_ses** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.cifs_tcon* %3, %struct.cifs_tcon** %10, align 8
  store %struct.nls_table* %4, %struct.nls_table** %11, align 8
  store i32 0, i32* %17, align 4
  %22 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %23 = icmp eq %struct.cifs_ses* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %376

27:                                               ; preds = %5
  %28 = call %struct.smb_hdr* (...) @cifs_buf_get()
  store %struct.smb_hdr* %28, %struct.smb_hdr** %12, align 8
  %29 = load %struct.smb_hdr*, %struct.smb_hdr** %12, align 8
  %30 = icmp eq %struct.smb_hdr* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %376

34:                                               ; preds = %27
  %35 = load %struct.smb_hdr*, %struct.smb_hdr** %12, align 8
  store %struct.smb_hdr* %35, %struct.smb_hdr** %13, align 8
  %36 = load %struct.smb_hdr*, %struct.smb_hdr** %12, align 8
  %37 = load i32, i32* @SMB_COM_TREE_CONNECT_ANDX, align 4
  %38 = call i32 @header_assemble(%struct.smb_hdr* %36, i32 %37, i32* null, i32 4)
  %39 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %40 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %39, i32 0, i32 2
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = call i32 @GetNextMid(%struct.TYPE_8__* %41)
  %43 = load %struct.smb_hdr*, %struct.smb_hdr** %12, align 8
  %44 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 4
  %45 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %46 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.smb_hdr*, %struct.smb_hdr** %12, align 8
  %49 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = load %struct.smb_hdr*, %struct.smb_hdr** %12, align 8
  %51 = bitcast %struct.smb_hdr* %50 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %51, %struct.TYPE_7__** %14, align 8
  %52 = load %struct.smb_hdr*, %struct.smb_hdr** %13, align 8
  %53 = bitcast %struct.smb_hdr* %52 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %53, %struct.TYPE_6__** %15, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  store i32 255, i32* %55, align 8
  %56 = load i32, i32* @TCON_EXTENDED_SECINFO, align 4
  %57 = call i8* @cpu_to_le16(i32 %56)
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 5
  store i8* %57, i8** %59, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  store i8* %63, i8** %16, align 8
  %64 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %65 = icmp ne %struct.cifs_tcon* %64, null
  br i1 %65, label %66, label %75

66:                                               ; preds = %34
  %67 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %68 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %67, i32 0, i32 2
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @SECMODE_USER, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %66, %34
  %76 = call i8* @cpu_to_le16(i32 1)
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 4
  store i8* %76, i8** %78, align 8
  %79 = load i8*, i8** %16, align 8
  store i8 0, i8* %79, align 1
  %80 = load i8*, i8** %16, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %16, align 8
  br label %112

82:                                               ; preds = %66
  %83 = load i32, i32* @CIFS_AUTH_RESP_SIZE, align 4
  %84 = call i8* @cpu_to_le16(i32 %83)
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 4
  store i8* %84, i8** %86, align 8
  %87 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %88 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %87, i32 0, i32 7
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %91 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %90, i32 0, i32 2
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load i8*, i8** %16, align 8
  %96 = call i32 @SMBNTencrypt(i32 %89, i32 %94, i8* %95)
  store i32 %96, i32* %17, align 4
  %97 = load i32, i32* @CIFS_AUTH_RESP_SIZE, align 4
  %98 = load i8*, i8** %16, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i8, i8* %98, i64 %99
  store i8* %100, i8** %16, align 8
  %101 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %102 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @CAP_UNICODE, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %82
  %108 = load i8*, i8** %16, align 8
  store i8 0, i8* %108, align 1
  %109 = load i8*, i8** %16, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %16, align 8
  br label %111

111:                                              ; preds = %107, %82
  br label %112

112:                                              ; preds = %111, %75
  %113 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %114 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %113, i32 0, i32 2
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @SECMODE_SIGN_REQUIRED, align 4
  %119 = load i32, i32* @SECMODE_SIGN_ENABLED, align 4
  %120 = or i32 %118, %119
  %121 = and i32 %117, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %112
  %124 = load i32, i32* @SMBFLG2_SECURITY_SIGNATURE, align 4
  %125 = load %struct.smb_hdr*, %struct.smb_hdr** %12, align 8
  %126 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 4
  br label %129

129:                                              ; preds = %123, %112
  %130 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %131 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @CAP_STATUS32, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %129
  %137 = load i32, i32* @SMBFLG2_ERR_STATUS, align 4
  %138 = load %struct.smb_hdr*, %struct.smb_hdr** %12, align 8
  %139 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 4
  br label %142

142:                                              ; preds = %136, %129
  %143 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %144 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @CAP_DFS, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %142
  %150 = load i32, i32* @SMBFLG2_DFS, align 4
  %151 = load %struct.smb_hdr*, %struct.smb_hdr** %12, align 8
  %152 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 4
  br label %155

155:                                              ; preds = %149, %142
  %156 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %157 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @CAP_UNICODE, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %180

162:                                              ; preds = %155
  %163 = load i32, i32* @SMBFLG2_UNICODE, align 4
  %164 = load %struct.smb_hdr*, %struct.smb_hdr** %12, align 8
  %165 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = or i32 %166, %163
  store i32 %167, i32* %165, align 4
  %168 = load i8*, i8** %16, align 8
  %169 = bitcast i8* %168 to i32*
  %170 = load i8*, i8** %9, align 8
  %171 = load %struct.nls_table*, %struct.nls_table** %11, align 8
  %172 = call i32 @cifs_strtoUCS(i32* %169, i8* %170, i32 1536, %struct.nls_table* %171)
  store i32 %172, i32* %18, align 4
  %173 = load i32, i32* %18, align 4
  %174 = mul nsw i32 2, %173
  %175 = load i8*, i8** %16, align 8
  %176 = sext i32 %174 to i64
  %177 = getelementptr inbounds i8, i8* %175, i64 %176
  store i8* %177, i8** %16, align 8
  %178 = load i8*, i8** %16, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 2
  store i8* %179, i8** %16, align 8
  br label %189

180:                                              ; preds = %155
  %181 = load i8*, i8** %16, align 8
  %182 = load i8*, i8** %9, align 8
  %183 = call i32 @strcpy(i8* %181, i8* %182)
  %184 = load i8*, i8** %9, align 8
  %185 = call i64 @strlen(i8* %184)
  %186 = add nsw i64 %185, 1
  %187 = load i8*, i8** %16, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 %186
  store i8* %188, i8** %16, align 8
  br label %189

189:                                              ; preds = %180, %162
  %190 = load i8*, i8** %16, align 8
  %191 = call i32 @strcpy(i8* %190, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %192 = call i64 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %193 = load i8*, i8** %16, align 8
  %194 = getelementptr inbounds i8, i8* %193, i64 %192
  store i8* %194, i8** %16, align 8
  %195 = load i8*, i8** %16, align 8
  %196 = getelementptr inbounds i8, i8* %195, i64 1
  store i8* %196, i8** %16, align 8
  %197 = load i8*, i8** %16, align 8
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 1
  %200 = load i8*, i8** %199, align 8
  %201 = getelementptr inbounds i8, i8* %200, i64 0
  %202 = ptrtoint i8* %197 to i64
  %203 = ptrtoint i8* %201 to i64
  %204 = sub i64 %202, %203
  %205 = trunc i64 %204 to i32
  store i32 %205, i32* %20, align 4
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 3
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = call i64 @be32_to_cpu(i32 %209)
  %211 = load i32, i32* %20, align 4
  %212 = sext i32 %211 to i64
  %213 = add nsw i64 %210, %212
  %214 = call i32 @cpu_to_be32(i64 %213)
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 3
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 0
  store i32 %214, i32* %217, align 8
  %218 = load i32, i32* %20, align 4
  %219 = call i8* @cpu_to_le16(i32 %218)
  %220 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 2
  store i8* %219, i8** %221, align 8
  %222 = load i32, i32* %7, align 4
  %223 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %224 = load %struct.smb_hdr*, %struct.smb_hdr** %12, align 8
  %225 = load %struct.smb_hdr*, %struct.smb_hdr** %13, align 8
  %226 = call i32 @SendReceive(i32 %222, %struct.cifs_ses* %223, %struct.smb_hdr* %224, %struct.smb_hdr* %225, i32* %18, i32 0)
  store i32 %226, i32* %17, align 4
  %227 = load i32, i32* %17, align 4
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %359

229:                                              ; preds = %189
  %230 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %231 = icmp ne %struct.cifs_tcon* %230, null
  br i1 %231, label %232, label %359

232:                                              ; preds = %229
  %233 = load i32, i32* @CifsGood, align 4
  %234 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %235 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %234, i32 0, i32 6
  store i32 %233, i32* %235, align 4
  %236 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %237 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %236, i32 0, i32 0
  store i32 0, i32* %237, align 4
  %238 = load %struct.smb_hdr*, %struct.smb_hdr** %13, align 8
  %239 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %242 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %241, i32 0, i32 5
  store i32 %240, i32* %242, align 4
  %243 = load %struct.smb_hdr*, %struct.smb_hdr** %13, align 8
  %244 = call i8* @pByteArea(%struct.smb_hdr* %243)
  store i8* %244, i8** %16, align 8
  %245 = load %struct.smb_hdr*, %struct.smb_hdr** %13, align 8
  %246 = call i32 @get_bcc(%struct.smb_hdr* %245)
  store i32 %246, i32* %19, align 4
  %247 = load i8*, i8** %16, align 8
  %248 = load i32, i32* %19, align 4
  %249 = sub nsw i32 %248, 2
  %250 = call i32 @strnlen(i8* %247, i32 %249)
  store i32 %250, i32* %18, align 4
  %251 = load %struct.smb_hdr*, %struct.smb_hdr** %12, align 8
  %252 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* @SMBFLG2_UNICODE, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %232
  store i32 1, i32* %21, align 4
  br label %259

258:                                              ; preds = %232
  store i32 0, i32* %21, align 4
  br label %259

259:                                              ; preds = %258, %257
  %260 = load i32, i32* %18, align 4
  %261 = icmp eq i32 %260, 3
  br i1 %261, label %262, label %285

262:                                              ; preds = %259
  %263 = load i8*, i8** %16, align 8
  %264 = getelementptr inbounds i8, i8* %263, i64 0
  %265 = load i8, i8* %264, align 1
  %266 = zext i8 %265 to i32
  %267 = icmp eq i32 %266, 73
  br i1 %267, label %268, label %284

268:                                              ; preds = %262
  %269 = load i8*, i8** %16, align 8
  %270 = getelementptr inbounds i8, i8* %269, i64 1
  %271 = load i8, i8* %270, align 1
  %272 = zext i8 %271 to i32
  %273 = icmp eq i32 %272, 80
  br i1 %273, label %274, label %284

274:                                              ; preds = %268
  %275 = load i8*, i8** %16, align 8
  %276 = getelementptr inbounds i8, i8* %275, i64 2
  %277 = load i8, i8* %276, align 1
  %278 = zext i8 %277 to i32
  %279 = icmp eq i32 %278, 67
  br i1 %279, label %280, label %284

280:                                              ; preds = %274
  %281 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %282 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %283 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %282, i32 0, i32 1
  store i32 1, i32* %283, align 4
  br label %284

284:                                              ; preds = %280, %274, %268, %262
  br label %304

285:                                              ; preds = %259
  %286 = load i32, i32* %18, align 4
  %287 = icmp eq i32 %286, 2
  br i1 %287, label %288, label %303

288:                                              ; preds = %285
  %289 = load i8*, i8** %16, align 8
  %290 = getelementptr inbounds i8, i8* %289, i64 0
  %291 = load i8, i8* %290, align 1
  %292 = zext i8 %291 to i32
  %293 = icmp eq i32 %292, 65
  br i1 %293, label %294, label %302

294:                                              ; preds = %288
  %295 = load i8*, i8** %16, align 8
  %296 = getelementptr inbounds i8, i8* %295, i64 1
  %297 = load i8, i8* %296, align 1
  %298 = zext i8 %297 to i32
  %299 = icmp eq i32 %298, 58
  br i1 %299, label %300, label %302

300:                                              ; preds = %294
  %301 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %302

302:                                              ; preds = %300, %294, %288
  br label %303

303:                                              ; preds = %302, %285
  br label %304

304:                                              ; preds = %303, %284
  %305 = load i32, i32* %18, align 4
  %306 = add nsw i32 %305, 1
  %307 = load i8*, i8** %16, align 8
  %308 = sext i32 %306 to i64
  %309 = getelementptr inbounds i8, i8* %307, i64 %308
  store i8* %309, i8** %16, align 8
  %310 = load i32, i32* %18, align 4
  %311 = add nsw i32 %310, 1
  %312 = load i32, i32* %19, align 4
  %313 = sub nsw i32 %312, %311
  store i32 %313, i32* %19, align 4
  %314 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %315 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %314, i32 0, i32 4
  %316 = load i32, i32* %315, align 4
  %317 = load i8*, i8** %9, align 8
  %318 = load i32, i32* @MAX_TREE_SIZE, align 4
  %319 = call i32 @strncpy(i32 %316, i8* %317, i32 %318)
  %320 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %321 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %320, i32 0, i32 3
  %322 = load i32, i32* %321, align 4
  %323 = call i32 @kfree(i32 %322)
  %324 = load i8*, i8** %16, align 8
  %325 = load i32, i32* %19, align 4
  %326 = load i32, i32* %21, align 4
  %327 = load %struct.nls_table*, %struct.nls_table** %11, align 8
  %328 = call i32 @cifs_strndup_from_ucs(i8* %324, i32 %325, i32 %326, %struct.nls_table* %327)
  %329 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %330 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %329, i32 0, i32 3
  store i32 %328, i32* %330, align 4
  %331 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %332 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %331, i32 0, i32 3
  %333 = load i32, i32* %332, align 4
  %334 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %333)
  %335 = load %struct.smb_hdr*, %struct.smb_hdr** %13, align 8
  %336 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 4
  %338 = icmp eq i32 %337, 3
  br i1 %338, label %344, label %339

339:                                              ; preds = %304
  %340 = load %struct.smb_hdr*, %struct.smb_hdr** %13, align 8
  %341 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %340, i32 0, i32 1
  %342 = load i32, i32* %341, align 4
  %343 = icmp eq i32 %342, 7
  br i1 %343, label %344, label %351

344:                                              ; preds = %339, %304
  %345 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %346 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 4
  %348 = call i32 @le16_to_cpu(i32 %347)
  %349 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %350 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %349, i32 0, i32 2
  store i32 %348, i32* %350, align 4
  br label %354

351:                                              ; preds = %339
  %352 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %353 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %352, i32 0, i32 2
  store i32 0, i32* %353, align 4
  br label %354

354:                                              ; preds = %351, %344
  %355 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %356 = getelementptr inbounds %struct.cifs_tcon, %struct.cifs_tcon* %355, i32 0, i32 2
  %357 = load i32, i32* %356, align 4
  %358 = call i32 (i32, i8*, ...) @cFYI(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %357)
  br label %372

359:                                              ; preds = %229, %189
  %360 = load i32, i32* %17, align 4
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %371

362:                                              ; preds = %359
  %363 = load %struct.cifs_tcon*, %struct.cifs_tcon** %10, align 8
  %364 = icmp eq %struct.cifs_tcon* %363, null
  br i1 %364, label %365, label %371

365:                                              ; preds = %362
  %366 = load %struct.smb_hdr*, %struct.smb_hdr** %13, align 8
  %367 = getelementptr inbounds %struct.smb_hdr, %struct.smb_hdr* %366, i32 0, i32 2
  %368 = load i32, i32* %367, align 4
  %369 = load %struct.cifs_ses*, %struct.cifs_ses** %8, align 8
  %370 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %369, i32 0, i32 1
  store i32 %368, i32* %370, align 4
  br label %371

371:                                              ; preds = %365, %362, %359
  br label %372

372:                                              ; preds = %371, %354
  %373 = load %struct.smb_hdr*, %struct.smb_hdr** %12, align 8
  %374 = call i32 @cifs_buf_release(%struct.smb_hdr* %373)
  %375 = load i32, i32* %17, align 4
  store i32 %375, i32* %6, align 4
  br label %376

376:                                              ; preds = %372, %31, %24
  %377 = load i32, i32* %6, align 4
  ret i32 %377
}

declare dso_local %struct.smb_hdr* @cifs_buf_get(...) #1

declare dso_local i32 @header_assemble(%struct.smb_hdr*, i32, i32*, i32) #1

declare dso_local i32 @GetNextMid(%struct.TYPE_8__*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @SMBNTencrypt(i32, i32, i8*) #1

declare dso_local i32 @cifs_strtoUCS(i32*, i8*, i32, %struct.nls_table*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @cpu_to_be32(i64) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @SendReceive(i32, %struct.cifs_ses*, %struct.smb_hdr*, %struct.smb_hdr*, i32*, i32) #1

declare dso_local i8* @pByteArea(%struct.smb_hdr*) #1

declare dso_local i32 @get_bcc(%struct.smb_hdr*) #1

declare dso_local i32 @strnlen(i8*, i32) #1

declare dso_local i32 @cFYI(i32, i8*, ...) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @cifs_strndup_from_ucs(i8*, i32, i32, %struct.nls_table*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @cifs_buf_release(%struct.smb_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
