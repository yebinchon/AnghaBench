; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_control.c_snd_ctl_elem_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_control.c_snd_ctl_elem_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ctl_file = type { %struct.snd_card* }
%struct.snd_card = type { i64, i32 }
%struct.snd_ctl_elem_info = type { i32, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.snd_kcontrol = type { i32, %struct.TYPE_6__*, %struct.user_element*, i32, %struct.TYPE_5__, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.snd_ctl_file* }
%struct.user_element = type { i8*, i64, %struct.snd_ctl_elem_info }
%struct.TYPE_5__ = type { i32 }

@MAX_USER_CONTROLS = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_READWRITE = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_INACTIVE = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_TLV_READWRITE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_USER = common dso_local global i32 0, align 4
@snd_ctl_elem_user_info = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_READ = common dso_local global i32 0, align 4
@snd_ctl_elem_user_get = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_WRITE = common dso_local global i32 0, align 4
@snd_ctl_elem_user_put = common dso_local global i32 0, align 4
@snd_ctl_elem_user_tlv = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_TLV_CALLBACK = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@snd_ctl_elem_user_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ctl_file*, %struct.snd_ctl_elem_info*, i32)* @snd_ctl_elem_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ctl_elem_add(%struct.snd_ctl_file* %0, %struct.snd_ctl_elem_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_ctl_file*, align 8
  %6 = alloca %struct.snd_ctl_elem_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_card*, align 8
  %9 = alloca %struct.snd_kcontrol, align 8
  %10 = alloca %struct.snd_kcontrol*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.user_element*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.snd_ctl_file* %0, %struct.snd_ctl_file** %5, align 8
  store %struct.snd_ctl_elem_info* %1, %struct.snd_ctl_elem_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.snd_ctl_file*, %struct.snd_ctl_file** %5, align 8
  %17 = getelementptr inbounds %struct.snd_ctl_file, %struct.snd_ctl_file* %16, i32 0, i32 0
  %18 = load %struct.snd_card*, %struct.snd_card** %17, align 8
  store %struct.snd_card* %18, %struct.snd_card** %8, align 8
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %3
  %22 = load %struct.snd_card*, %struct.snd_card** %8, align 8
  %23 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MAX_USER_CONTROLS, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %274

30:                                               ; preds = %21, %3
  %31 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %6, align 8
  %32 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %33, 1
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %274

38:                                               ; preds = %30
  %39 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %6, align 8
  %40 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_READWRITE, align 4
  br label %55

45:                                               ; preds = %38
  %46 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %6, align 8
  %47 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_READWRITE, align 4
  %50 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_INACTIVE, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_TLV_READWRITE, align 4
  %53 = or i32 %51, %52
  %54 = and i32 %48, %53
  br label %55

55:                                               ; preds = %45, %43
  %56 = phi i32 [ %44, %43 ], [ %54, %45 ]
  store i32 %56, i32* %11, align 4
  %57 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %6, align 8
  %58 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  %60 = call i32 @memset(%struct.snd_kcontrol* %9, i32 0, i32 48)
  %61 = load %struct.snd_card*, %struct.snd_card** %8, align 8
  %62 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %61, i32 0, i32 1
  %63 = call i32 @down_write(i32* %62)
  %64 = load %struct.snd_card*, %struct.snd_card** %8, align 8
  %65 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %6, align 8
  %66 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %65, i32 0, i32 4
  %67 = call %struct.snd_kcontrol* @snd_ctl_find_id(%struct.snd_card* %64, %struct.TYPE_7__* %66)
  store %struct.snd_kcontrol* %67, %struct.snd_kcontrol** %10, align 8
  store i32 0, i32* %15, align 4
  %68 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %10, align 8
  %69 = icmp ne %struct.snd_kcontrol* %68, null
  br i1 %69, label %70, label %81

70:                                               ; preds = %55
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load %struct.snd_card*, %struct.snd_card** %8, align 8
  %75 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %10, align 8
  %76 = call i32 @snd_ctl_remove(%struct.snd_card* %74, %struct.snd_kcontrol* %75)
  store i32 %76, i32* %15, align 4
  br label %80

77:                                               ; preds = %70
  %78 = load i32, i32* @EBUSY, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %15, align 4
  br label %80

80:                                               ; preds = %77, %73
  br label %88

81:                                               ; preds = %55
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i32, i32* @ENOENT, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %15, align 4
  br label %87

87:                                               ; preds = %84, %81
  br label %88

88:                                               ; preds = %87, %80
  %89 = load %struct.snd_card*, %struct.snd_card** %8, align 8
  %90 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %89, i32 0, i32 1
  %91 = call i32 @up_write(i32* %90)
  %92 = load i32, i32* %15, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = load i32, i32* %15, align 4
  store i32 %95, i32* %4, align 4
  br label %274

96:                                               ; preds = %88
  %97 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %9, i32 0, i32 8
  %98 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %6, align 8
  %99 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %98, i32 0, i32 4
  %100 = call i32 @memcpy(i32* %97, %struct.TYPE_7__* %99, i32 8)
  %101 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %6, align 8
  %102 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %96
  %106 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %6, align 8
  %107 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  br label %110

109:                                              ; preds = %96
  br label %110

110:                                              ; preds = %109, %105
  %111 = phi i32 [ %108, %105 ], [ 1, %109 ]
  %112 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %9, i32 0, i32 0
  store i32 %111, i32* %112, align 8
  %113 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_USER, align 4
  %114 = load i32, i32* %11, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %11, align 4
  %116 = load i32, i32* @snd_ctl_elem_user_info, align 4
  %117 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %9, i32 0, i32 7
  store i32 %116, i32* %117, align 8
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_READ, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %110
  %123 = load i32, i32* @snd_ctl_elem_user_get, align 4
  %124 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %9, i32 0, i32 6
  store i32 %123, i32* %124, align 4
  br label %125

125:                                              ; preds = %122, %110
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_WRITE, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %125
  %131 = load i32, i32* @snd_ctl_elem_user_put, align 4
  %132 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %9, i32 0, i32 5
  store i32 %131, i32* %132, align 8
  br label %133

133:                                              ; preds = %130, %125
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_TLV_READWRITE, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %133
  %139 = load i32, i32* @snd_ctl_elem_user_tlv, align 4
  %140 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %9, i32 0, i32 4
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 4
  %142 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_TLV_CALLBACK, align 4
  %143 = load i32, i32* %11, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %11, align 4
  br label %145

145:                                              ; preds = %138, %133
  %146 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %6, align 8
  %147 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  switch i32 %148, label %185 [
    i32 132, label %149
    i32 129, label %149
    i32 128, label %158
    i32 131, label %167
    i32 130, label %176
  ]

149:                                              ; preds = %145, %145
  store i64 8, i64* %12, align 8
  %150 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %6, align 8
  %151 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = icmp sgt i32 %152, 128
  br i1 %153, label %154, label %157

154:                                              ; preds = %149
  %155 = load i32, i32* @EINVAL, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %4, align 4
  br label %274

157:                                              ; preds = %149
  br label %188

158:                                              ; preds = %145
  store i64 8, i64* %12, align 8
  %159 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %6, align 8
  %160 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp sgt i32 %161, 64
  br i1 %162, label %163, label %166

163:                                              ; preds = %158
  %164 = load i32, i32* @EINVAL, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %4, align 4
  br label %274

166:                                              ; preds = %158
  br label %188

167:                                              ; preds = %145
  store i64 1, i64* %12, align 8
  %168 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %6, align 8
  %169 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = icmp sgt i32 %170, 512
  br i1 %171, label %172, label %175

172:                                              ; preds = %167
  %173 = load i32, i32* @EINVAL, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %4, align 4
  br label %274

175:                                              ; preds = %167
  br label %188

176:                                              ; preds = %145
  store i64 4, i64* %12, align 8
  %177 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %6, align 8
  %178 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = icmp ne i32 %179, 1
  br i1 %180, label %181, label %184

181:                                              ; preds = %176
  %182 = load i32, i32* @EINVAL, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %4, align 4
  br label %274

184:                                              ; preds = %176
  br label %188

185:                                              ; preds = %145
  %186 = load i32, i32* @EINVAL, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %4, align 4
  br label %274

188:                                              ; preds = %184, %175, %166, %157
  %189 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %6, align 8
  %190 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = sext i32 %191 to i64
  %193 = load i64, i64* %12, align 8
  %194 = mul nsw i64 %193, %192
  store i64 %194, i64* %12, align 8
  %195 = load i64, i64* %12, align 8
  %196 = add i64 40, %195
  %197 = trunc i64 %196 to i32
  %198 = load i32, i32* @GFP_KERNEL, align 4
  %199 = call %struct.user_element* @kzalloc(i32 %197, i32 %198)
  store %struct.user_element* %199, %struct.user_element** %13, align 8
  %200 = load %struct.user_element*, %struct.user_element** %13, align 8
  %201 = icmp eq %struct.user_element* %200, null
  br i1 %201, label %202, label %205

202:                                              ; preds = %188
  %203 = load i32, i32* @ENOMEM, align 4
  %204 = sub nsw i32 0, %203
  store i32 %204, i32* %4, align 4
  br label %274

205:                                              ; preds = %188
  %206 = load %struct.user_element*, %struct.user_element** %13, align 8
  %207 = getelementptr inbounds %struct.user_element, %struct.user_element* %206, i32 0, i32 2
  %208 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %6, align 8
  %209 = bitcast %struct.snd_ctl_elem_info* %207 to i8*
  %210 = bitcast %struct.snd_ctl_elem_info* %208 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %209, i8* align 8 %210, i64 24, i1 false)
  %211 = load %struct.user_element*, %struct.user_element** %13, align 8
  %212 = getelementptr inbounds %struct.user_element, %struct.user_element* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %212, i32 0, i32 1
  store i32 0, i32* %213, align 4
  %214 = load %struct.user_element*, %struct.user_element** %13, align 8
  %215 = bitcast %struct.user_element* %214 to i8*
  %216 = getelementptr inbounds i8, i8* %215, i64 40
  %217 = load %struct.user_element*, %struct.user_element** %13, align 8
  %218 = getelementptr inbounds %struct.user_element, %struct.user_element* %217, i32 0, i32 0
  store i8* %216, i8** %218, align 8
  %219 = load i64, i64* %12, align 8
  %220 = load %struct.user_element*, %struct.user_element** %13, align 8
  %221 = getelementptr inbounds %struct.user_element, %struct.user_element* %220, i32 0, i32 1
  store i64 %219, i64* %221, align 8
  %222 = load i32, i32* @snd_ctl_elem_user_free, align 4
  %223 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %9, i32 0, i32 3
  store i32 %222, i32* %223, align 8
  %224 = load i32, i32* %11, align 4
  %225 = call %struct.snd_kcontrol* @snd_ctl_new(%struct.snd_kcontrol* %9, i32 %224)
  store %struct.snd_kcontrol* %225, %struct.snd_kcontrol** %10, align 8
  %226 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %10, align 8
  %227 = icmp eq %struct.snd_kcontrol* %226, null
  br i1 %227, label %228, label %233

228:                                              ; preds = %205
  %229 = load %struct.user_element*, %struct.user_element** %13, align 8
  %230 = call i32 @kfree(%struct.user_element* %229)
  %231 = load i32, i32* @ENOMEM, align 4
  %232 = sub nsw i32 0, %231
  store i32 %232, i32* %4, align 4
  br label %274

233:                                              ; preds = %205
  %234 = load %struct.user_element*, %struct.user_element** %13, align 8
  %235 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %10, align 8
  %236 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %235, i32 0, i32 2
  store %struct.user_element* %234, %struct.user_element** %236, align 8
  store i32 0, i32* %14, align 4
  br label %237

237:                                              ; preds = %252, %233
  %238 = load i32, i32* %14, align 4
  %239 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %10, align 8
  %240 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = icmp slt i32 %238, %241
  br i1 %242, label %243, label %255

243:                                              ; preds = %237
  %244 = load %struct.snd_ctl_file*, %struct.snd_ctl_file** %5, align 8
  %245 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %10, align 8
  %246 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %245, i32 0, i32 1
  %247 = load %struct.TYPE_6__*, %struct.TYPE_6__** %246, align 8
  %248 = load i32, i32* %14, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 0
  store %struct.snd_ctl_file* %244, %struct.snd_ctl_file** %251, align 8
  br label %252

252:                                              ; preds = %243
  %253 = load i32, i32* %14, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %14, align 4
  br label %237

255:                                              ; preds = %237
  %256 = load %struct.snd_card*, %struct.snd_card** %8, align 8
  %257 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %10, align 8
  %258 = call i32 @snd_ctl_add(%struct.snd_card* %256, %struct.snd_kcontrol* %257)
  store i32 %258, i32* %15, align 4
  %259 = load i32, i32* %15, align 4
  %260 = icmp slt i32 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %255
  %262 = load i32, i32* %15, align 4
  store i32 %262, i32* %4, align 4
  br label %274

263:                                              ; preds = %255
  %264 = load %struct.snd_card*, %struct.snd_card** %8, align 8
  %265 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %264, i32 0, i32 1
  %266 = call i32 @down_write(i32* %265)
  %267 = load %struct.snd_card*, %struct.snd_card** %8, align 8
  %268 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = add nsw i64 %269, 1
  store i64 %270, i64* %268, align 8
  %271 = load %struct.snd_card*, %struct.snd_card** %8, align 8
  %272 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %271, i32 0, i32 1
  %273 = call i32 @up_write(i32* %272)
  store i32 0, i32* %4, align 4
  br label %274

274:                                              ; preds = %263, %261, %228, %202, %185, %181, %172, %163, %154, %94, %35, %27
  %275 = load i32, i32* %4, align 4
  ret i32 %275
}

declare dso_local i32 @memset(%struct.snd_kcontrol*, i32, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_find_id(%struct.snd_card*, %struct.TYPE_7__*) #1

declare dso_local i32 @snd_ctl_remove(%struct.snd_card*, %struct.snd_kcontrol*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_7__*, i32) #1

declare dso_local %struct.user_element* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.snd_kcontrol* @snd_ctl_new(%struct.snd_kcontrol*, i32) #1

declare dso_local i32 @kfree(%struct.user_element*) #1

declare dso_local i32 @snd_ctl_add(%struct.snd_card*, %struct.snd_kcontrol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
