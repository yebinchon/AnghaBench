; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_sess.c_build_ntlmssp_auth_blob.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_sess.c_build_ntlmssp_auth_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_ses = type { %struct.TYPE_19__*, i32*, i32*, %struct.TYPE_15__, %struct.TYPE_12__* }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.nls_table = type { i32 }
%struct.TYPE_11__ = type { i8*, %struct.TYPE_20__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_14__, %struct.TYPE_13__, i8*, i32 }
%struct.TYPE_20__ = type { i8*, i8*, i8* }
%struct.TYPE_18__ = type { i64, i64, i8* }
%struct.TYPE_17__ = type { i8*, i8*, i8* }
%struct.TYPE_16__ = type { i8*, i8*, i8* }
%struct.TYPE_14__ = type { i8*, i8*, i8* }
%struct.TYPE_13__ = type { i64, i64, i8* }

@NTLMSSP_SIGNATURE = common dso_local global i32 0, align 4
@NtLmAuthenticate = common dso_local global i32 0, align 4
@NTLMSSP_NEGOTIATE_56 = common dso_local global i32 0, align 4
@NTLMSSP_REQUEST_TARGET = common dso_local global i32 0, align 4
@NTLMSSP_NEGOTIATE_TARGET_INFO = common dso_local global i32 0, align 4
@NTLMSSP_NEGOTIATE_128 = common dso_local global i32 0, align 4
@NTLMSSP_NEGOTIATE_UNICODE = common dso_local global i32 0, align 4
@NTLMSSP_NEGOTIATE_NTLM = common dso_local global i32 0, align 4
@NTLMSSP_NEGOTIATE_EXTENDED_SEC = common dso_local global i32 0, align 4
@SECMODE_SIGN_REQUIRED = common dso_local global i32 0, align 4
@SECMODE_SIGN_ENABLED = common dso_local global i32 0, align 4
@NTLMSSP_NEGOTIATE_SIGN = common dso_local global i32 0, align 4
@NTLMSSP_NEGOTIATE_KEY_XCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Error %d during NTLMSSP authentication\00", align 1
@CIFS_SESS_KEY_SIZE = common dso_local global i32 0, align 4
@MAX_USERNAME_SIZE = common dso_local global i32 0, align 4
@CIFS_CPHTXT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, %struct.cifs_ses*, %struct.nls_table*)* @build_ntlmssp_auth_blob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_ntlmssp_auth_blob(i8* %0, i32* %1, %struct.cifs_ses* %2, %struct.nls_table* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.cifs_ses*, align 8
  %8 = alloca %struct.nls_table*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.cifs_ses* %2, %struct.cifs_ses** %7, align 8
  store %struct.nls_table* %3, %struct.nls_table** %8, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %10, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load i32, i32* @NTLMSSP_SIGNATURE, align 4
  %21 = call i32 @memcpy(i8* %19, i32 %20, i32 8)
  %22 = load i32, i32* @NtLmAuthenticate, align 4
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 8
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* @NTLMSSP_NEGOTIATE_56, align 4
  %26 = load i32, i32* @NTLMSSP_REQUEST_TARGET, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @NTLMSSP_NEGOTIATE_TARGET_INFO, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @NTLMSSP_NEGOTIATE_128, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @NTLMSSP_NEGOTIATE_UNICODE, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @NTLMSSP_NEGOTIATE_NTLM, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @NTLMSSP_NEGOTIATE_EXTENDED_SEC, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %11, align 4
  %38 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %39 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %38, i32 0, i32 4
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @SECMODE_SIGN_REQUIRED, align 4
  %44 = load i32, i32* @SECMODE_SIGN_ENABLED, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %42, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %4
  %49 = load i32, i32* @NTLMSSP_NEGOTIATE_SIGN, align 4
  %50 = load i32, i32* %11, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %11, align 4
  %52 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %53 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %52, i32 0, i32 4
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %48
  %59 = load i32, i32* @NTLMSSP_NEGOTIATE_KEY_XCH, align 4
  %60 = load i32, i32* %11, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %58, %48
  br label %63

63:                                               ; preds = %62, %4
  %64 = load i8*, i8** %5, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 168
  store i8* %65, i8** %12, align 8
  %66 = load i32, i32* %11, align 4
  %67 = call i8* @cpu_to_le32(i32 %66)
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 7
  store i8* %67, i8** %69, align 8
  %70 = call i8* @cpu_to_le32(i32 168)
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 6
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 2
  store i8* %70, i8** %73, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 6
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  store i64 0, i64* %76, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 6
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  store i64 0, i64* %79, align 8
  %80 = load i8*, i8** %12, align 8
  %81 = load i8*, i8** %5, align 8
  %82 = ptrtoint i8* %80 to i64
  %83 = ptrtoint i8* %81 to i64
  %84 = sub i64 %82, %83
  %85 = trunc i64 %84 to i32
  %86 = call i8* @cpu_to_le32(i32 %85)
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 5
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 2
  store i8* %86, i8** %89, align 8
  %90 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %91 = load %struct.nls_table*, %struct.nls_table** %8, align 8
  %92 = call i32 @setup_ntlmv2_rsp(%struct.cifs_ses* %90, %struct.nls_table* %91)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %63
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @cERROR(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %96)
  br label %350

98:                                               ; preds = %63
  %99 = load i8*, i8** %12, align 8
  %100 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %101 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @CIFS_SESS_KEY_SIZE, align 4
  %105 = add nsw i32 %103, %104
  %106 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %107 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @CIFS_SESS_KEY_SIZE, align 4
  %111 = sub nsw i32 %109, %110
  %112 = call i32 @memcpy(i8* %99, i32 %105, i32 %111)
  %113 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %114 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @CIFS_SESS_KEY_SIZE, align 4
  %118 = sub nsw i32 %116, %117
  %119 = load i8*, i8** %12, align 8
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds i8, i8* %119, i64 %120
  store i8* %121, i8** %12, align 8
  %122 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %123 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @CIFS_SESS_KEY_SIZE, align 4
  %127 = sub nsw i32 %125, %126
  %128 = call i8* @cpu_to_le16(i32 %127)
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 5
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 1
  store i8* %128, i8** %131, align 8
  %132 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %133 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @CIFS_SESS_KEY_SIZE, align 4
  %137 = sub nsw i32 %135, %136
  %138 = call i8* @cpu_to_le16(i32 %137)
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 5
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 0
  store i8* %138, i8** %141, align 8
  %142 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %143 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 8
  %145 = icmp eq i32* %144, null
  br i1 %145, label %146, label %165

146:                                              ; preds = %98
  %147 = load i8*, i8** %12, align 8
  %148 = load i8*, i8** %5, align 8
  %149 = ptrtoint i8* %147 to i64
  %150 = ptrtoint i8* %148 to i64
  %151 = sub i64 %149, %150
  %152 = trunc i64 %151 to i32
  %153 = call i8* @cpu_to_le32(i32 %152)
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 4
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 2
  store i8* %153, i8** %156, align 8
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 4
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 1
  store i8* null, i8** %159, align 8
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 4
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 0
  store i8* null, i8** %162, align 8
  %163 = load i8*, i8** %12, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 2
  store i8* %164, i8** %12, align 8
  br label %200

165:                                              ; preds = %98
  %166 = load i8*, i8** %12, align 8
  %167 = bitcast i8* %166 to i32*
  %168 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %169 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %168, i32 0, i32 2
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* @MAX_USERNAME_SIZE, align 4
  %172 = load %struct.nls_table*, %struct.nls_table** %8, align 8
  %173 = call i32 @cifs_strtoUCS(i32* %167, i32* %170, i32 %171, %struct.nls_table* %172)
  store i32 %173, i32* %13, align 4
  %174 = load i32, i32* %13, align 4
  %175 = mul nsw i32 %174, 2
  store i32 %175, i32* %13, align 4
  %176 = load i8*, i8** %12, align 8
  %177 = load i8*, i8** %5, align 8
  %178 = ptrtoint i8* %176 to i64
  %179 = ptrtoint i8* %177 to i64
  %180 = sub i64 %178, %179
  %181 = trunc i64 %180 to i32
  %182 = call i8* @cpu_to_le32(i32 %181)
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 4
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 2
  store i8* %182, i8** %185, align 8
  %186 = load i32, i32* %13, align 4
  %187 = call i8* @cpu_to_le16(i32 %186)
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 4
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 1
  store i8* %187, i8** %190, align 8
  %191 = load i32, i32* %13, align 4
  %192 = call i8* @cpu_to_le16(i32 %191)
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 4
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 0
  store i8* %192, i8** %195, align 8
  %196 = load i32, i32* %13, align 4
  %197 = load i8*, i8** %12, align 8
  %198 = sext i32 %196 to i64
  %199 = getelementptr inbounds i8, i8* %197, i64 %198
  store i8* %199, i8** %12, align 8
  br label %200

200:                                              ; preds = %165, %146
  %201 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %202 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %201, i32 0, i32 1
  %203 = load i32*, i32** %202, align 8
  %204 = icmp eq i32* %203, null
  br i1 %204, label %205, label %224

205:                                              ; preds = %200
  %206 = load i8*, i8** %12, align 8
  %207 = load i8*, i8** %5, align 8
  %208 = ptrtoint i8* %206 to i64
  %209 = ptrtoint i8* %207 to i64
  %210 = sub i64 %208, %209
  %211 = trunc i64 %210 to i32
  %212 = call i8* @cpu_to_le32(i32 %211)
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 3
  %215 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %214, i32 0, i32 2
  store i8* %212, i8** %215, align 8
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 3
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %217, i32 0, i32 1
  store i8* null, i8** %218, align 8
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 3
  %221 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %220, i32 0, i32 0
  store i8* null, i8** %221, align 8
  %222 = load i8*, i8** %12, align 8
  %223 = getelementptr inbounds i8, i8* %222, i64 2
  store i8* %223, i8** %12, align 8
  br label %259

224:                                              ; preds = %200
  %225 = load i8*, i8** %12, align 8
  %226 = bitcast i8* %225 to i32*
  %227 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %228 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %227, i32 0, i32 1
  %229 = load i32*, i32** %228, align 8
  %230 = load i32, i32* @MAX_USERNAME_SIZE, align 4
  %231 = load %struct.nls_table*, %struct.nls_table** %8, align 8
  %232 = call i32 @cifs_strtoUCS(i32* %226, i32* %229, i32 %230, %struct.nls_table* %231)
  store i32 %232, i32* %14, align 4
  %233 = load i32, i32* %14, align 4
  %234 = mul nsw i32 %233, 2
  store i32 %234, i32* %14, align 4
  %235 = load i8*, i8** %12, align 8
  %236 = load i8*, i8** %5, align 8
  %237 = ptrtoint i8* %235 to i64
  %238 = ptrtoint i8* %236 to i64
  %239 = sub i64 %237, %238
  %240 = trunc i64 %239 to i32
  %241 = call i8* @cpu_to_le32(i32 %240)
  %242 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %242, i32 0, i32 3
  %244 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %243, i32 0, i32 2
  store i8* %241, i8** %244, align 8
  %245 = load i32, i32* %14, align 4
  %246 = call i8* @cpu_to_le16(i32 %245)
  %247 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %248 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i32 0, i32 3
  %249 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %248, i32 0, i32 1
  store i8* %246, i8** %249, align 8
  %250 = load i32, i32* %14, align 4
  %251 = call i8* @cpu_to_le16(i32 %250)
  %252 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %252, i32 0, i32 3
  %254 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %253, i32 0, i32 0
  store i8* %251, i8** %254, align 8
  %255 = load i32, i32* %14, align 4
  %256 = load i8*, i8** %12, align 8
  %257 = sext i32 %255 to i64
  %258 = getelementptr inbounds i8, i8* %256, i64 %257
  store i8* %258, i8** %12, align 8
  br label %259

259:                                              ; preds = %224, %205
  %260 = load i8*, i8** %12, align 8
  %261 = load i8*, i8** %5, align 8
  %262 = ptrtoint i8* %260 to i64
  %263 = ptrtoint i8* %261 to i64
  %264 = sub i64 %262, %263
  %265 = trunc i64 %264 to i32
  %266 = call i8* @cpu_to_le32(i32 %265)
  %267 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i32 0, i32 2
  %269 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %268, i32 0, i32 2
  store i8* %266, i8** %269, align 8
  %270 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i32 0, i32 2
  %272 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %271, i32 0, i32 1
  store i64 0, i64* %272, align 8
  %273 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %274 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %273, i32 0, i32 2
  %275 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %274, i32 0, i32 0
  store i64 0, i64* %275, align 8
  %276 = load i8*, i8** %12, align 8
  %277 = getelementptr inbounds i8, i8* %276, i64 2
  store i8* %277, i8** %12, align 8
  %278 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %279 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %278, i32 0, i32 0
  %280 = load %struct.TYPE_19__*, %struct.TYPE_19__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* @NTLMSSP_NEGOTIATE_KEY_XCH, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %295, label %286

286:                                              ; preds = %259
  %287 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %288 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %287, i32 0, i32 0
  %289 = load %struct.TYPE_19__*, %struct.TYPE_19__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* @NTLMSSP_NEGOTIATE_EXTENDED_SEC, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %332

295:                                              ; preds = %286, %259
  %296 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %297 = call i32 @calc_seckey(%struct.cifs_ses* %296)
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %332, label %299

299:                                              ; preds = %295
  %300 = load i8*, i8** %12, align 8
  %301 = load %struct.cifs_ses*, %struct.cifs_ses** %7, align 8
  %302 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %301, i32 0, i32 0
  %303 = load %struct.TYPE_19__*, %struct.TYPE_19__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* @CIFS_CPHTXT_SIZE, align 4
  %307 = call i32 @memcpy(i8* %300, i32 %305, i32 %306)
  %308 = load i8*, i8** %12, align 8
  %309 = load i8*, i8** %5, align 8
  %310 = ptrtoint i8* %308 to i64
  %311 = ptrtoint i8* %309 to i64
  %312 = sub i64 %310, %311
  %313 = trunc i64 %312 to i32
  %314 = call i8* @cpu_to_le32(i32 %313)
  %315 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %316 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %315, i32 0, i32 1
  %317 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %316, i32 0, i32 2
  store i8* %314, i8** %317, align 8
  %318 = load i32, i32* @CIFS_CPHTXT_SIZE, align 4
  %319 = call i8* @cpu_to_le16(i32 %318)
  %320 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %321 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %320, i32 0, i32 1
  %322 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %321, i32 0, i32 1
  store i8* %319, i8** %322, align 8
  %323 = load i32, i32* @CIFS_CPHTXT_SIZE, align 4
  %324 = call i8* @cpu_to_le16(i32 %323)
  %325 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %326 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %325, i32 0, i32 1
  %327 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %326, i32 0, i32 0
  store i8* %324, i8** %327, align 8
  %328 = load i32, i32* @CIFS_CPHTXT_SIZE, align 4
  %329 = load i8*, i8** %12, align 8
  %330 = sext i32 %328 to i64
  %331 = getelementptr inbounds i8, i8* %329, i64 %330
  store i8* %331, i8** %12, align 8
  br label %349

332:                                              ; preds = %295, %286
  %333 = load i8*, i8** %12, align 8
  %334 = load i8*, i8** %5, align 8
  %335 = ptrtoint i8* %333 to i64
  %336 = ptrtoint i8* %334 to i64
  %337 = sub i64 %335, %336
  %338 = trunc i64 %337 to i32
  %339 = call i8* @cpu_to_le32(i32 %338)
  %340 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %341 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %340, i32 0, i32 1
  %342 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %341, i32 0, i32 2
  store i8* %339, i8** %342, align 8
  %343 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %344 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %343, i32 0, i32 1
  %345 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %344, i32 0, i32 1
  store i8* null, i8** %345, align 8
  %346 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %347 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %346, i32 0, i32 1
  %348 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %347, i32 0, i32 0
  store i8* null, i8** %348, align 8
  br label %349

349:                                              ; preds = %332, %299
  br label %350

350:                                              ; preds = %349, %95
  %351 = load i8*, i8** %12, align 8
  %352 = load i8*, i8** %5, align 8
  %353 = ptrtoint i8* %351 to i64
  %354 = ptrtoint i8* %352 to i64
  %355 = sub i64 %353, %354
  %356 = trunc i64 %355 to i32
  %357 = load i32*, i32** %6, align 8
  store i32 %356, i32* %357, align 4
  %358 = load i32, i32* %9, align 4
  ret i32 %358
}

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @setup_ntlmv2_rsp(%struct.cifs_ses*, %struct.nls_table*) #1

declare dso_local i32 @cERROR(i32, i8*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @cifs_strtoUCS(i32*, i32*, i32, %struct.nls_table*) #1

declare dso_local i32 @calc_seckey(%struct.cifs_ses*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
