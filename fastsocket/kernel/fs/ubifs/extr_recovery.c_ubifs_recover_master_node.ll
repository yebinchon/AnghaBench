; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_recovery.c_ubifs_recover_master_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_recovery.c_ubifs_recover_master_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, %struct.ubifs_mst_node*, i64, %struct.ubifs_mst_node*, %struct.TYPE_3__* }
%struct.ubifs_mst_node = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"recovery\00", align 1
@UBIFS_MST_LNUM = common dso_local global i64 0, align 8
@UBIFS_MST_RCVRY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"recovery recovery\00", align 1
@UBIFS_CH_SZ = common dso_local global i32 0, align 4
@UBIFS_MST_NODE_SZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"recovered master node from LEB %d\00", align 1
@MS_RDONLY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"failed to recover master node\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"dumping first master node\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"dumping second master node\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_recover_master_node(%struct.ubifs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ubifs_mst_node*, align 8
  %9 = alloca %struct.ubifs_mst_node*, align 8
  %10 = alloca %struct.ubifs_mst_node*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  store i8* null, i8** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store %struct.ubifs_mst_node* null, %struct.ubifs_mst_node** %8, align 8
  store %struct.ubifs_mst_node* null, %struct.ubifs_mst_node** %9, align 8
  %15 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %16 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %11, align 4
  %18 = call i32 @dbg_rcvry(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %20 = load i64, i64* @UBIFS_MST_LNUM, align 8
  %21 = call i32 @get_master_node(%struct.ubifs_info* %19, i64 %20, i8** %4, %struct.ubifs_mst_node** %8, i8** %6)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %235

25:                                               ; preds = %1
  %26 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %27 = load i64, i64* @UBIFS_MST_LNUM, align 8
  %28 = add nsw i64 %27, 1
  %29 = call i32 @get_master_node(%struct.ubifs_info* %26, i64 %28, i8** %5, %struct.ubifs_mst_node** %9, i8** %7)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %235

33:                                               ; preds = %25
  %34 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %8, align 8
  %35 = icmp ne %struct.ubifs_mst_node* %34, null
  br i1 %35, label %36, label %137

36:                                               ; preds = %33
  %37 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %8, align 8
  %38 = bitcast %struct.ubifs_mst_node* %37 to i8*
  %39 = load i8*, i8** %4, align 8
  %40 = ptrtoint i8* %38 to i64
  %41 = ptrtoint i8* %39 to i64
  %42 = sub i64 %40, %41
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %13, align 4
  %44 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %8, align 8
  %45 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le32_to_cpu(i32 %46)
  %48 = load i32, i32* @UBIFS_MST_RCVRY, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %36
  %52 = load i32, i32* %13, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load i8*, i8** %6, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = call i32 @dbg_rcvry(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %59 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %8, align 8
  store %struct.ubifs_mst_node* %59, %struct.ubifs_mst_node** %10, align 8
  br label %136

60:                                               ; preds = %54, %51, %36
  %61 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %9, align 8
  %62 = icmp ne %struct.ubifs_mst_node* %61, null
  br i1 %62, label %63, label %126

63:                                               ; preds = %60
  %64 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %9, align 8
  %65 = bitcast %struct.ubifs_mst_node* %64 to i8*
  %66 = load i8*, i8** %5, align 8
  %67 = ptrtoint i8* %65 to i64
  %68 = ptrtoint i8* %66 to i64
  %69 = sub i64 %67, %68
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %93

74:                                               ; preds = %63
  %75 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %8, align 8
  %76 = bitcast %struct.ubifs_mst_node* %75 to i8*
  %77 = load i32, i32* @UBIFS_CH_SZ, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr i8, i8* %76, i64 %78
  %80 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %9, align 8
  %81 = bitcast %struct.ubifs_mst_node* %80 to i8*
  %82 = load i32, i32* @UBIFS_CH_SZ, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr i8, i8* %81, i64 %83
  %85 = load i32, i32* @UBIFS_MST_NODE_SZ, align 4
  %86 = load i32, i32* @UBIFS_CH_SZ, align 4
  %87 = sub nsw i32 %85, %86
  %88 = call i64 @memcmp(i8* %79, i8* %84, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %74
  br label %232

91:                                               ; preds = %74
  %92 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %8, align 8
  store %struct.ubifs_mst_node* %92, %struct.ubifs_mst_node** %10, align 8
  br label %125

93:                                               ; preds = %63
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %94, %95
  %97 = load i32, i32* %13, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %93
  %100 = load i8*, i8** %6, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  br label %232

103:                                              ; preds = %99
  %104 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %8, align 8
  store %struct.ubifs_mst_node* %104, %struct.ubifs_mst_node** %10, align 8
  br label %124

105:                                              ; preds = %93
  %106 = load i32, i32* %13, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %122

108:                                              ; preds = %105
  %109 = load i32, i32* %14, align 4
  %110 = load i32, i32* %11, align 4
  %111 = add nsw i32 %109, %110
  %112 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %113 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp sge i32 %111, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %108
  %117 = load i8*, i8** %6, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  br label %232

120:                                              ; preds = %116
  %121 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %8, align 8
  store %struct.ubifs_mst_node* %121, %struct.ubifs_mst_node** %10, align 8
  br label %123

122:                                              ; preds = %108, %105
  br label %232

123:                                              ; preds = %120
  br label %124

124:                                              ; preds = %123, %103
  br label %125

125:                                              ; preds = %124, %91
  br label %135

126:                                              ; preds = %60
  %127 = load i32, i32* %13, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %126
  %130 = load i8*, i8** %6, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %133

132:                                              ; preds = %129, %126
  br label %232

133:                                              ; preds = %129
  %134 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %8, align 8
  store %struct.ubifs_mst_node* %134, %struct.ubifs_mst_node** %10, align 8
  br label %135

135:                                              ; preds = %133, %125
  br label %136

136:                                              ; preds = %135, %57
  br label %161

137:                                              ; preds = %33
  %138 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %9, align 8
  %139 = icmp ne %struct.ubifs_mst_node* %138, null
  br i1 %139, label %141, label %140

140:                                              ; preds = %137
  br label %232

141:                                              ; preds = %137
  %142 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %9, align 8
  %143 = bitcast %struct.ubifs_mst_node* %142 to i8*
  %144 = load i8*, i8** %5, align 8
  %145 = ptrtoint i8* %143 to i64
  %146 = ptrtoint i8* %144 to i64
  %147 = sub i64 %145, %146
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %14, align 4
  %149 = load i32, i32* %14, align 4
  %150 = load i32, i32* %11, align 4
  %151 = add nsw i32 %149, %150
  %152 = load i32, i32* %11, align 4
  %153 = add nsw i32 %151, %152
  %154 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %155 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = icmp sle i32 %153, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %141
  br label %232

159:                                              ; preds = %141
  %160 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %9, align 8
  store %struct.ubifs_mst_node* %160, %struct.ubifs_mst_node** %10, align 8
  br label %161

161:                                              ; preds = %159, %136
  %162 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %10, align 8
  %163 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %8, align 8
  %164 = icmp eq %struct.ubifs_mst_node* %162, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %161
  %166 = load i64, i64* @UBIFS_MST_LNUM, align 8
  br label %170

167:                                              ; preds = %161
  %168 = load i64, i64* @UBIFS_MST_LNUM, align 8
  %169 = add nsw i64 %168, 1
  br label %170

170:                                              ; preds = %167, %165
  %171 = phi i64 [ %166, %165 ], [ %169, %167 ]
  %172 = call i32 @ubifs_msg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %171)
  %173 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %174 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %173, i32 0, i32 2
  %175 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %174, align 8
  %176 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %10, align 8
  %177 = load i32, i32* @UBIFS_MST_NODE_SZ, align 4
  %178 = call i32 @memcpy(%struct.ubifs_mst_node* %175, %struct.ubifs_mst_node* %176, i32 %177)
  %179 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %180 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %179, i32 0, i32 5
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @MS_RDONLY, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %209

187:                                              ; preds = %170
  %188 = load i32, i32* %11, align 4
  %189 = load i32, i32* @GFP_KERNEL, align 4
  %190 = call %struct.ubifs_mst_node* @kmalloc(i32 %188, i32 %189)
  %191 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %192 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %191, i32 0, i32 4
  store %struct.ubifs_mst_node* %190, %struct.ubifs_mst_node** %192, align 8
  %193 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %194 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %193, i32 0, i32 4
  %195 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %194, align 8
  %196 = icmp ne %struct.ubifs_mst_node* %195, null
  br i1 %196, label %200, label %197

197:                                              ; preds = %187
  %198 = load i32, i32* @ENOMEM, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %12, align 4
  br label %235

200:                                              ; preds = %187
  %201 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %202 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %201, i32 0, i32 4
  %203 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %202, align 8
  %204 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %205 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %204, i32 0, i32 2
  %206 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %205, align 8
  %207 = load i32, i32* @UBIFS_MST_NODE_SZ, align 4
  %208 = call i32 @memcpy(%struct.ubifs_mst_node* %203, %struct.ubifs_mst_node* %206, i32 %207)
  br label %227

209:                                              ; preds = %170
  %210 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %10, align 8
  %211 = getelementptr inbounds %struct.ubifs_mst_node, %struct.ubifs_mst_node* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = call i64 @le64_to_cpu(i32 %213)
  %215 = sub nsw i64 %214, 1
  %216 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %217 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %216, i32 0, i32 3
  store i64 %215, i64* %217, align 8
  %218 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %219 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %220 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %219, i32 0, i32 2
  %221 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %220, align 8
  %222 = call i32 @write_rcvrd_mst_node(%struct.ubifs_info* %218, %struct.ubifs_mst_node* %221)
  store i32 %222, i32* %12, align 4
  %223 = load i32, i32* %12, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %209
  br label %235

226:                                              ; preds = %209
  br label %227

227:                                              ; preds = %226, %200
  %228 = load i8*, i8** %5, align 8
  %229 = call i32 @vfree(i8* %228)
  %230 = load i8*, i8** %4, align 8
  %231 = call i32 @vfree(i8* %230)
  store i32 0, i32* %2, align 4
  br label %258

232:                                              ; preds = %158, %140, %132, %122, %119, %102, %90
  %233 = load i32, i32* @EINVAL, align 4
  %234 = sub nsw i32 0, %233
  store i32 %234, i32* %12, align 4
  br label %235

235:                                              ; preds = %232, %225, %197, %32, %24
  %236 = call i32 @ubifs_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %237 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %8, align 8
  %238 = icmp ne %struct.ubifs_mst_node* %237, null
  br i1 %238, label %239, label %244

239:                                              ; preds = %235
  %240 = call i32 @dbg_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %241 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %242 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %8, align 8
  %243 = call i32 @dbg_dump_node(%struct.ubifs_info* %241, %struct.ubifs_mst_node* %242)
  br label %244

244:                                              ; preds = %239, %235
  %245 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %9, align 8
  %246 = icmp ne %struct.ubifs_mst_node* %245, null
  br i1 %246, label %247, label %252

247:                                              ; preds = %244
  %248 = call i32 @dbg_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %249 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %250 = load %struct.ubifs_mst_node*, %struct.ubifs_mst_node** %9, align 8
  %251 = call i32 @dbg_dump_node(%struct.ubifs_info* %249, %struct.ubifs_mst_node* %250)
  br label %252

252:                                              ; preds = %247, %244
  %253 = load i8*, i8** %5, align 8
  %254 = call i32 @vfree(i8* %253)
  %255 = load i8*, i8** %4, align 8
  %256 = call i32 @vfree(i8* %255)
  %257 = load i32, i32* %12, align 4
  store i32 %257, i32* %2, align 4
  br label %258

258:                                              ; preds = %252, %227
  %259 = load i32, i32* %2, align 4
  ret i32 %259
}

declare dso_local i32 @dbg_rcvry(i8*) #1

declare dso_local i32 @get_master_node(%struct.ubifs_info*, i64, i8**, %struct.ubifs_mst_node**, i8**) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @ubifs_msg(i8*, i64) #1

declare dso_local i32 @memcpy(%struct.ubifs_mst_node*, %struct.ubifs_mst_node*, i32) #1

declare dso_local %struct.ubifs_mst_node* @kmalloc(i32, i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @write_rcvrd_mst_node(%struct.ubifs_info*, %struct.ubifs_mst_node*) #1

declare dso_local i32 @vfree(i8*) #1

declare dso_local i32 @ubifs_err(i8*) #1

declare dso_local i32 @dbg_err(i8*) #1

declare dso_local i32 @dbg_dump_node(%struct.ubifs_info*, %struct.ubifs_mst_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
