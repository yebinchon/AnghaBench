; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifssmb.c_parse_DFS_referrals.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifssmb.c_parse_DFS_referrals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i32, %struct.TYPE_6__, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.dfs_info3_param = type { i32, i32, i32, i8*, i8*, i32 }
%struct.nls_table = type { i32 }
%struct.dfs_referral_level_3 = type { i64, i64, i64, i64, i64 }

@SMBFLG2_UNICODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"num_referrals: must be at least > 0,but we get num_referrals = %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Referrals of V%d version are not supported,should be V3\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"num_referrals: %d dfs flags: 0x%x ...\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"Failed to allocate buffer for target_nodes\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, %struct.dfs_info3_param**, %struct.nls_table*, i32, i8*)* @parse_DFS_referrals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_DFS_referrals(%struct.TYPE_7__* %0, i32* %1, %struct.dfs_info3_param** %2, %struct.nls_table* %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.dfs_info3_param**, align 8
  %10 = alloca %struct.nls_table*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.dfs_referral_level_3*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.dfs_info3_param*, align 8
  %21 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.dfs_info3_param** %2, %struct.dfs_info3_param*** %9, align 8
  store %struct.nls_table* %3, %struct.nls_table** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  store i32 0, i32* %14, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @SMBFLG2_UNICODE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %6
  store i32 1, i32* %16, align 4
  br label %31

30:                                               ; preds = %6
  store i32 0, i32* %16, align 4
  br label %31

31:                                               ; preds = %30, %29
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @le16_to_cpu(i64 %34)
  %36 = load i32*, i32** %8, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %37, align 4
  %39 = icmp ult i32 %38, 1
  br i1 %39, label %40, label %46

40:                                               ; preds = %31
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i32, i8*, ...) @cERROR(i32 1, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %14, align 4
  br label %228

46:                                               ; preds = %31
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 4
  %49 = bitcast i32* %48 to %struct.dfs_referral_level_3*
  store %struct.dfs_referral_level_3* %49, %struct.dfs_referral_level_3** %17, align 8
  %50 = load %struct.dfs_referral_level_3*, %struct.dfs_referral_level_3** %17, align 8
  %51 = getelementptr inbounds %struct.dfs_referral_level_3, %struct.dfs_referral_level_3* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @cpu_to_le16(i32 3)
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %46
  %56 = load %struct.dfs_referral_level_3*, %struct.dfs_referral_level_3** %17, align 8
  %57 = getelementptr inbounds %struct.dfs_referral_level_3, %struct.dfs_referral_level_3* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @le16_to_cpu(i64 %58)
  %60 = call i32 (i32, i8*, ...) @cERROR(i32 1, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %14, align 4
  br label %228

63:                                               ; preds = %46
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = bitcast i64* %65 to i8*
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @le16_to_cpu(i64 %70)
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %66, i64 %72
  store i8* %73, i8** %15, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @le32_to_cpu(i32 %78)
  %80 = call i32 @cFYI(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %75, i32 %79)
  %81 = load i32*, i32** %8, align 8
  %82 = load i32, i32* %81, align 4
  %83 = zext i32 %82 to i64
  %84 = mul i64 40, %83
  %85 = trunc i64 %84 to i32
  %86 = load i32, i32* @GFP_KERNEL, align 4
  %87 = call %struct.dfs_info3_param* @kzalloc(i32 %85, i32 %86)
  %88 = load %struct.dfs_info3_param**, %struct.dfs_info3_param*** %9, align 8
  store %struct.dfs_info3_param* %87, %struct.dfs_info3_param** %88, align 8
  %89 = load %struct.dfs_info3_param**, %struct.dfs_info3_param*** %9, align 8
  %90 = load %struct.dfs_info3_param*, %struct.dfs_info3_param** %89, align 8
  %91 = icmp eq %struct.dfs_info3_param* %90, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %63
  %93 = call i32 (i32, i8*, ...) @cERROR(i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %14, align 4
  br label %228

96:                                               ; preds = %63
  store i32 0, i32* %13, align 4
  br label %97

97:                                               ; preds = %224, %96
  %98 = load i32, i32* %13, align 4
  %99 = load i32*, i32** %8, align 8
  %100 = load i32, i32* %99, align 4
  %101 = icmp ult i32 %98, %100
  br i1 %101, label %102, label %227

102:                                              ; preds = %97
  %103 = load %struct.dfs_info3_param**, %struct.dfs_info3_param*** %9, align 8
  %104 = load %struct.dfs_info3_param*, %struct.dfs_info3_param** %103, align 8
  %105 = load i32, i32* %13, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.dfs_info3_param, %struct.dfs_info3_param* %104, i64 %106
  store %struct.dfs_info3_param* %107, %struct.dfs_info3_param** %20, align 8
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @le32_to_cpu(i32 %110)
  %112 = load %struct.dfs_info3_param*, %struct.dfs_info3_param** %20, align 8
  %113 = getelementptr inbounds %struct.dfs_info3_param, %struct.dfs_info3_param* %112, i32 0, i32 5
  store i32 %111, i32* %113, align 8
  %114 = load i32, i32* %16, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %146

116:                                              ; preds = %102
  %117 = load i8*, i8** %12, align 8
  %118 = call i32 @strlen(i8* %117)
  %119 = mul nsw i32 %118, 2
  %120 = add nsw i32 %119, 2
  %121 = load i32, i32* @GFP_KERNEL, align 4
  %122 = call i32* @kmalloc(i32 %120, i32 %121)
  store i32* %122, i32** %21, align 8
  %123 = load i32*, i32** %21, align 8
  %124 = icmp eq i32* %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %116
  %126 = load i32, i32* @ENOMEM, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %14, align 4
  br label %228

128:                                              ; preds = %116
  %129 = load i32*, i32** %21, align 8
  %130 = load i8*, i8** %12, align 8
  %131 = load i32, i32* @PATH_MAX, align 4
  %132 = load %struct.nls_table*, %struct.nls_table** %10, align 8
  %133 = load i32, i32* %11, align 4
  %134 = call i32 @cifsConvertToUCS(i32* %129, i8* %130, i32 %131, %struct.nls_table* %132, i32 %133)
  %135 = load i32*, i32** %21, align 8
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @le16_to_cpu(i64 %138)
  %140 = load %struct.nls_table*, %struct.nls_table** %10, align 8
  %141 = call i32 @cifs_ucs2_bytes(i32* %135, i32 %139, %struct.nls_table* %140)
  %142 = load %struct.dfs_info3_param*, %struct.dfs_info3_param** %20, align 8
  %143 = getelementptr inbounds %struct.dfs_info3_param, %struct.dfs_info3_param* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  %144 = load i32*, i32** %21, align 8
  %145 = call i32 @kfree(i32* %144)
  br label %153

146:                                              ; preds = %102
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @le16_to_cpu(i64 %149)
  %151 = load %struct.dfs_info3_param*, %struct.dfs_info3_param** %20, align 8
  %152 = getelementptr inbounds %struct.dfs_info3_param, %struct.dfs_info3_param* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 8
  br label %153

153:                                              ; preds = %146, %128
  %154 = load %struct.dfs_referral_level_3*, %struct.dfs_referral_level_3** %17, align 8
  %155 = getelementptr inbounds %struct.dfs_referral_level_3, %struct.dfs_referral_level_3* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @le16_to_cpu(i64 %156)
  %158 = load %struct.dfs_info3_param*, %struct.dfs_info3_param** %20, align 8
  %159 = getelementptr inbounds %struct.dfs_info3_param, %struct.dfs_info3_param* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 4
  %160 = load %struct.dfs_referral_level_3*, %struct.dfs_referral_level_3** %17, align 8
  %161 = getelementptr inbounds %struct.dfs_referral_level_3, %struct.dfs_referral_level_3* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = call i32 @le16_to_cpu(i64 %162)
  %164 = load %struct.dfs_info3_param*, %struct.dfs_info3_param** %20, align 8
  %165 = getelementptr inbounds %struct.dfs_info3_param, %struct.dfs_info3_param* %164, i32 0, i32 2
  store i32 %163, i32* %165, align 8
  %166 = load %struct.dfs_referral_level_3*, %struct.dfs_referral_level_3** %17, align 8
  %167 = bitcast %struct.dfs_referral_level_3* %166 to i8*
  %168 = load %struct.dfs_referral_level_3*, %struct.dfs_referral_level_3** %17, align 8
  %169 = getelementptr inbounds %struct.dfs_referral_level_3, %struct.dfs_referral_level_3* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = call i32 @le16_to_cpu(i64 %170)
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8, i8* %167, i64 %172
  store i8* %173, i8** %18, align 8
  %174 = load i8*, i8** %15, align 8
  %175 = load i8*, i8** %18, align 8
  %176 = ptrtoint i8* %174 to i64
  %177 = ptrtoint i8* %175 to i64
  %178 = sub i64 %176, %177
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %19, align 4
  %180 = load i8*, i8** %18, align 8
  %181 = load i32, i32* %19, align 4
  %182 = load i32, i32* %16, align 4
  %183 = load %struct.nls_table*, %struct.nls_table** %10, align 8
  %184 = call i8* @cifs_strndup_from_ucs(i8* %180, i32 %181, i32 %182, %struct.nls_table* %183)
  %185 = load %struct.dfs_info3_param*, %struct.dfs_info3_param** %20, align 8
  %186 = getelementptr inbounds %struct.dfs_info3_param, %struct.dfs_info3_param* %185, i32 0, i32 4
  store i8* %184, i8** %186, align 8
  %187 = load %struct.dfs_info3_param*, %struct.dfs_info3_param** %20, align 8
  %188 = getelementptr inbounds %struct.dfs_info3_param, %struct.dfs_info3_param* %187, i32 0, i32 4
  %189 = load i8*, i8** %188, align 8
  %190 = icmp ne i8* %189, null
  br i1 %190, label %194, label %191

191:                                              ; preds = %153
  %192 = load i32, i32* @ENOMEM, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %14, align 4
  br label %228

194:                                              ; preds = %153
  %195 = load %struct.dfs_referral_level_3*, %struct.dfs_referral_level_3** %17, align 8
  %196 = bitcast %struct.dfs_referral_level_3* %195 to i8*
  %197 = load %struct.dfs_referral_level_3*, %struct.dfs_referral_level_3** %17, align 8
  %198 = getelementptr inbounds %struct.dfs_referral_level_3, %struct.dfs_referral_level_3* %197, i32 0, i32 4
  %199 = load i64, i64* %198, align 8
  %200 = call i32 @le16_to_cpu(i64 %199)
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8, i8* %196, i64 %201
  store i8* %202, i8** %18, align 8
  %203 = load i8*, i8** %15, align 8
  %204 = load i8*, i8** %18, align 8
  %205 = ptrtoint i8* %203 to i64
  %206 = ptrtoint i8* %204 to i64
  %207 = sub i64 %205, %206
  %208 = trunc i64 %207 to i32
  store i32 %208, i32* %19, align 4
  %209 = load i8*, i8** %18, align 8
  %210 = load i32, i32* %19, align 4
  %211 = load i32, i32* %16, align 4
  %212 = load %struct.nls_table*, %struct.nls_table** %10, align 8
  %213 = call i8* @cifs_strndup_from_ucs(i8* %209, i32 %210, i32 %211, %struct.nls_table* %212)
  %214 = load %struct.dfs_info3_param*, %struct.dfs_info3_param** %20, align 8
  %215 = getelementptr inbounds %struct.dfs_info3_param, %struct.dfs_info3_param* %214, i32 0, i32 3
  store i8* %213, i8** %215, align 8
  %216 = load %struct.dfs_info3_param*, %struct.dfs_info3_param** %20, align 8
  %217 = getelementptr inbounds %struct.dfs_info3_param, %struct.dfs_info3_param* %216, i32 0, i32 3
  %218 = load i8*, i8** %217, align 8
  %219 = icmp ne i8* %218, null
  br i1 %219, label %223, label %220

220:                                              ; preds = %194
  %221 = load i32, i32* @ENOMEM, align 4
  %222 = sub nsw i32 0, %221
  store i32 %222, i32* %14, align 4
  br label %223

223:                                              ; preds = %220, %194
  br label %224

224:                                              ; preds = %223
  %225 = load i32, i32* %13, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %13, align 4
  br label %97

227:                                              ; preds = %97
  br label %228

228:                                              ; preds = %227, %191, %125, %92, %55, %40
  %229 = load i32, i32* %14, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %239

231:                                              ; preds = %228
  %232 = load %struct.dfs_info3_param**, %struct.dfs_info3_param*** %9, align 8
  %233 = load %struct.dfs_info3_param*, %struct.dfs_info3_param** %232, align 8
  %234 = load i32*, i32** %8, align 8
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @free_dfs_info_array(%struct.dfs_info3_param* %233, i32 %235)
  %237 = load %struct.dfs_info3_param**, %struct.dfs_info3_param*** %9, align 8
  store %struct.dfs_info3_param* null, %struct.dfs_info3_param** %237, align 8
  %238 = load i32*, i32** %8, align 8
  store i32 0, i32* %238, align 4
  br label %239

239:                                              ; preds = %231, %228
  %240 = load i32, i32* %14, align 4
  ret i32 %240
}

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local i32 @cERROR(i32, i8*, ...) #1

declare dso_local i64 @cpu_to_le16(i32) #1

declare dso_local i32 @cFYI(i32, i8*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.dfs_info3_param* @kzalloc(i32, i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @cifsConvertToUCS(i32*, i8*, i32, %struct.nls_table*, i32) #1

declare dso_local i32 @cifs_ucs2_bytes(i32*, i32, %struct.nls_table*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i8* @cifs_strndup_from_ucs(i8*, i32, i32, %struct.nls_table*) #1

declare dso_local i32 @free_dfs_info_array(%struct.dfs_info3_param*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
