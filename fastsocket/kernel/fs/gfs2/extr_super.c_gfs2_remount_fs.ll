; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_super.c_gfs2_remount_fs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_super.c_gfs2_remount_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { i32, %struct.gfs2_args, %struct.gfs2_tune }
%struct.gfs2_args = type { i32, i32, i32, i64, i64, i64, i32, i32, i32 }
%struct.gfs2_tune = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@spectator = common dso_local global i32 0, align 4
@ignore_local_fs = common dso_local global i32 0, align 4
@localflocks = common dso_local global i32 0, align 4
@localcaching = common dso_local global i32 0, align 4
@meta = common dso_local global i32 0, align 4
@MS_RDONLY = common dso_local global i32 0, align 4
@MS_POSIXACL = common dso_local global i32 0, align 4
@SDF_NOBARRIERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32*, i8*)* @gfs2_remount_fs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_remount_fs(%struct.super_block* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.gfs2_sbd*, align 8
  %9 = alloca %struct.gfs2_args, align 8
  %10 = alloca %struct.gfs2_tune*, align 8
  %11 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.super_block*, %struct.super_block** %5, align 8
  %13 = getelementptr inbounds %struct.super_block, %struct.super_block* %12, i32 0, i32 1
  %14 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %13, align 8
  store %struct.gfs2_sbd* %14, %struct.gfs2_sbd** %8, align 8
  %15 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %16 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %15, i32 0, i32 1
  %17 = bitcast %struct.gfs2_args* %9 to i8*
  %18 = bitcast %struct.gfs2_args* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 56, i1 false)
  %19 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %20 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %19, i32 0, i32 2
  store %struct.gfs2_tune* %20, %struct.gfs2_tune** %10, align 8
  %21 = load %struct.gfs2_tune*, %struct.gfs2_tune** %10, align 8
  %22 = getelementptr inbounds %struct.gfs2_tune, %struct.gfs2_tune* %21, i32 0, i32 2
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load %struct.gfs2_tune*, %struct.gfs2_tune** %10, align 8
  %25 = getelementptr inbounds %struct.gfs2_tune, %struct.gfs2_tune* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %9, i32 0, i32 2
  store i32 %26, i32* %27, align 8
  %28 = load %struct.gfs2_tune*, %struct.gfs2_tune** %10, align 8
  %29 = getelementptr inbounds %struct.gfs2_tune, %struct.gfs2_tune* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %9, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = load %struct.gfs2_tune*, %struct.gfs2_tune** %10, align 8
  %33 = getelementptr inbounds %struct.gfs2_tune, %struct.gfs2_tune* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %3
  %37 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %9, i32 0, i32 0
  store i32 0, i32* %37, align 8
  br label %43

38:                                               ; preds = %3
  %39 = load %struct.gfs2_tune*, %struct.gfs2_tune** %10, align 8
  %40 = getelementptr inbounds %struct.gfs2_tune, %struct.gfs2_tune* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %9, i32 0, i32 0
  store i32 %41, i32* %42, align 8
  br label %43

43:                                               ; preds = %38, %36
  %44 = load %struct.gfs2_tune*, %struct.gfs2_tune** %10, align 8
  %45 = getelementptr inbounds %struct.gfs2_tune, %struct.gfs2_tune* %44, i32 0, i32 2
  %46 = call i32 @spin_unlock(i32* %45)
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @gfs2_mount_args(%struct.gfs2_args* %9, i8* %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %4, align 4
  br label %227

53:                                               ; preds = %43
  %54 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %9, i32 0, i32 8
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %57 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %57, i32 0, i32 8
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @strcmp(i32 %55, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %80, label %62

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %9, i32 0, i32 7
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %66 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %66, i32 0, i32 7
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @strcmp(i32 %64, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %80, label %71

71:                                               ; preds = %62
  %72 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %9, i32 0, i32 6
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %75 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @strcmp(i32 %73, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %71, %62, %53
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %227

83:                                               ; preds = %71
  %84 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %85 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %84, i32 0, i32 1
  %86 = load i32, i32* @spectator, align 4
  %87 = call i64 @args_neq(%struct.gfs2_args* %9, %struct.gfs2_args* %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %113, label %89

89:                                               ; preds = %83
  %90 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %91 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %90, i32 0, i32 1
  %92 = load i32, i32* @ignore_local_fs, align 4
  %93 = call i64 @args_neq(%struct.gfs2_args* %9, %struct.gfs2_args* %91, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %113, label %95

95:                                               ; preds = %89
  %96 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %97 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %96, i32 0, i32 1
  %98 = load i32, i32* @localflocks, align 4
  %99 = call i64 @args_neq(%struct.gfs2_args* %9, %struct.gfs2_args* %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %113, label %101

101:                                              ; preds = %95
  %102 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %103 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %102, i32 0, i32 1
  %104 = load i32, i32* @localcaching, align 4
  %105 = call i64 @args_neq(%struct.gfs2_args* %9, %struct.gfs2_args* %103, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %101
  %108 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %109 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %108, i32 0, i32 1
  %110 = load i32, i32* @meta, align 4
  %111 = call i64 @args_neq(%struct.gfs2_args* %9, %struct.gfs2_args* %109, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %107, %101, %95, %89, %83
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %4, align 4
  br label %227

116:                                              ; preds = %107
  %117 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %118 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %118, i32 0, i32 5
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %116
  %123 = load i32, i32* @MS_RDONLY, align 4
  %124 = load i32*, i32** %6, align 8
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %123
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %122, %116
  %128 = load %struct.super_block*, %struct.super_block** %5, align 8
  %129 = getelementptr inbounds %struct.super_block, %struct.super_block* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32*, i32** %6, align 8
  %132 = load i32, i32* %131, align 4
  %133 = xor i32 %130, %132
  %134 = load i32, i32* @MS_RDONLY, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %155

137:                                              ; preds = %127
  %138 = load i32*, i32** %6, align 8
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @MS_RDONLY, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %137
  %144 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %145 = call i32 @gfs2_make_fs_ro(%struct.gfs2_sbd* %144)
  store i32 %145, i32* %11, align 4
  br label %149

146:                                              ; preds = %137
  %147 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %148 = call i32 @gfs2_make_fs_rw(%struct.gfs2_sbd* %147)
  store i32 %148, i32* %11, align 4
  br label %149

149:                                              ; preds = %146, %143
  %150 = load i32, i32* %11, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %149
  %153 = load i32, i32* %11, align 4
  store i32 %153, i32* %4, align 4
  br label %227

154:                                              ; preds = %149
  br label %155

155:                                              ; preds = %154, %127
  %156 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %157 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %156, i32 0, i32 1
  %158 = bitcast %struct.gfs2_args* %157 to i8*
  %159 = bitcast %struct.gfs2_args* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %158, i8* align 8 %159, i64 56, i1 false)
  %160 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %161 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %161, i32 0, i32 4
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %155
  %166 = load i32, i32* @MS_POSIXACL, align 4
  %167 = load %struct.super_block*, %struct.super_block** %5, align 8
  %168 = getelementptr inbounds %struct.super_block, %struct.super_block* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 8
  br label %178

171:                                              ; preds = %155
  %172 = load i32, i32* @MS_POSIXACL, align 4
  %173 = xor i32 %172, -1
  %174 = load %struct.super_block*, %struct.super_block** %5, align 8
  %175 = getelementptr inbounds %struct.super_block, %struct.super_block* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = and i32 %176, %173
  store i32 %177, i32* %175, align 8
  br label %178

178:                                              ; preds = %171, %165
  %179 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %180 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %180, i32 0, i32 3
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %178
  %185 = load i32, i32* @SDF_NOBARRIERS, align 4
  %186 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %187 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %186, i32 0, i32 0
  %188 = call i32 @set_bit(i32 %185, i32* %187)
  br label %194

189:                                              ; preds = %178
  %190 = load i32, i32* @SDF_NOBARRIERS, align 4
  %191 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %192 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %191, i32 0, i32 0
  %193 = call i32 @clear_bit(i32 %190, i32* %192)
  br label %194

194:                                              ; preds = %189, %184
  %195 = load %struct.gfs2_tune*, %struct.gfs2_tune** %10, align 8
  %196 = getelementptr inbounds %struct.gfs2_tune, %struct.gfs2_tune* %195, i32 0, i32 2
  %197 = call i32 @spin_lock(i32* %196)
  %198 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %9, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.gfs2_tune*, %struct.gfs2_tune** %10, align 8
  %201 = getelementptr inbounds %struct.gfs2_tune, %struct.gfs2_tune* %200, i32 0, i32 4
  store i32 %199, i32* %201, align 4
  %202 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %9, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.gfs2_tune*, %struct.gfs2_tune** %10, align 8
  %205 = getelementptr inbounds %struct.gfs2_tune, %struct.gfs2_tune* %204, i32 0, i32 3
  store i32 %203, i32* %205, align 4
  %206 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %9, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %216

209:                                              ; preds = %194
  %210 = load %struct.gfs2_tune*, %struct.gfs2_tune** %10, align 8
  %211 = getelementptr inbounds %struct.gfs2_tune, %struct.gfs2_tune* %210, i32 0, i32 0
  store i32 0, i32* %211, align 4
  %212 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %9, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.gfs2_tune*, %struct.gfs2_tune** %10, align 8
  %215 = getelementptr inbounds %struct.gfs2_tune, %struct.gfs2_tune* %214, i32 0, i32 1
  store i32 %213, i32* %215, align 4
  br label %221

216:                                              ; preds = %194
  %217 = load %struct.gfs2_tune*, %struct.gfs2_tune** %10, align 8
  %218 = getelementptr inbounds %struct.gfs2_tune, %struct.gfs2_tune* %217, i32 0, i32 0
  store i32 1, i32* %218, align 4
  %219 = load %struct.gfs2_tune*, %struct.gfs2_tune** %10, align 8
  %220 = getelementptr inbounds %struct.gfs2_tune, %struct.gfs2_tune* %219, i32 0, i32 1
  store i32 30, i32* %220, align 4
  br label %221

221:                                              ; preds = %216, %209
  %222 = load %struct.gfs2_tune*, %struct.gfs2_tune** %10, align 8
  %223 = getelementptr inbounds %struct.gfs2_tune, %struct.gfs2_tune* %222, i32 0, i32 2
  %224 = call i32 @spin_unlock(i32* %223)
  %225 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %226 = call i32 @gfs2_online_uevent(%struct.gfs2_sbd* %225)
  store i32 0, i32* %4, align 4
  br label %227

227:                                              ; preds = %221, %152, %113, %80, %51
  %228 = load i32, i32* %4, align 4
  ret i32 %228
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @spin_lock(i32*) #2

declare dso_local i32 @spin_unlock(i32*) #2

declare dso_local i32 @gfs2_mount_args(%struct.gfs2_args*, i8*) #2

declare dso_local i64 @strcmp(i32, i32) #2

declare dso_local i64 @args_neq(%struct.gfs2_args*, %struct.gfs2_args*, i32) #2

declare dso_local i32 @gfs2_make_fs_ro(%struct.gfs2_sbd*) #2

declare dso_local i32 @gfs2_make_fs_rw(%struct.gfs2_sbd*) #2

declare dso_local i32 @set_bit(i32, i32*) #2

declare dso_local i32 @clear_bit(i32, i32*) #2

declare dso_local i32 @gfs2_online_uevent(%struct.gfs2_sbd*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
