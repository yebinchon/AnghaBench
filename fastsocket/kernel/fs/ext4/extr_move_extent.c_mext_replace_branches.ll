; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_move_extent.c_mext_replace_branches.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_move_extent.c_mext_replace_branches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_ext_path = type { %struct.ext4_extent* }
%struct.ext4_extent = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"The extent for donor must be found\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [73 x i8] c"Donor offset(%u) and the first block of donor extent(%u) should be equal\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, %struct.inode*, i64, i64, i32*)* @mext_replace_branches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mext_replace_branches(i32* %0, %struct.inode* %1, %struct.inode* %2, i64 %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.ext4_ext_path*, align 8
  %14 = alloca %struct.ext4_ext_path*, align 8
  %15 = alloca %struct.ext4_extent*, align 8
  %16 = alloca %struct.ext4_extent*, align 8
  %17 = alloca %struct.ext4_extent, align 4
  %18 = alloca %struct.ext4_extent, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.inode* %2, %struct.inode** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32* %5, i32** %12, align 8
  store %struct.ext4_ext_path* null, %struct.ext4_ext_path** %13, align 8
  store %struct.ext4_ext_path* null, %struct.ext4_ext_path** %14, align 8
  %24 = load i64, i64* %10, align 8
  store i64 %24, i64* %19, align 8
  %25 = load i64, i64* %10, align 8
  store i64 %25, i64* %20, align 8
  store i32 0, i32* %22, align 4
  %26 = load %struct.inode*, %struct.inode** %8, align 8
  %27 = load %struct.inode*, %struct.inode** %9, align 8
  %28 = call i32 @double_down_write_data_sem(%struct.inode* %26, %struct.inode* %27)
  %29 = load %struct.inode*, %struct.inode** %8, align 8
  %30 = load i64, i64* %19, align 8
  %31 = call i32 @get_ext_path(%struct.inode* %29, i64 %30, %struct.ext4_ext_path** %13)
  %32 = load i32*, i32** %12, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32*, i32** %12, align 8
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %6
  br label %214

37:                                               ; preds = %6
  %38 = load %struct.inode*, %struct.inode** %9, align 8
  %39 = load i64, i64* %20, align 8
  %40 = call i32 @get_ext_path(%struct.inode* %38, i64 %39, %struct.ext4_ext_path** %14)
  %41 = load i32*, i32** %12, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32*, i32** %12, align 8
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %214

46:                                               ; preds = %37
  %47 = load %struct.inode*, %struct.inode** %8, align 8
  %48 = call i32 @ext_depth(%struct.inode* %47)
  store i32 %48, i32* %21, align 4
  %49 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %13, align 8
  %50 = load i32, i32* %21, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %49, i64 %51
  %53 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %52, i32 0, i32 0
  %54 = load %struct.ext4_extent*, %struct.ext4_extent** %53, align 8
  store %struct.ext4_extent* %54, %struct.ext4_extent** %15, align 8
  %55 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %56 = bitcast %struct.ext4_extent* %18 to i8*
  %57 = bitcast %struct.ext4_extent* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %56, i8* align 4 %57, i64 4, i1 false)
  %58 = load %struct.inode*, %struct.inode** %9, align 8
  %59 = call i32 @ext_depth(%struct.inode* %58)
  store i32 %59, i32* %21, align 4
  %60 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %14, align 8
  %61 = load i32, i32* %21, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %60, i64 %62
  %64 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %63, i32 0, i32 0
  %65 = load %struct.ext4_extent*, %struct.ext4_extent** %64, align 8
  store %struct.ext4_extent* %65, %struct.ext4_extent** %16, align 8
  %66 = load %struct.ext4_extent*, %struct.ext4_extent** %16, align 8
  %67 = bitcast %struct.ext4_extent* %17 to i8*
  %68 = bitcast %struct.ext4_extent* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %67, i8* align 4 %68, i64 4, i1 false)
  %69 = load i64, i64* %19, align 8
  %70 = load i64, i64* %20, align 8
  %71 = load i64, i64* %11, align 8
  %72 = call i32 @mext_calc_swap_extents(%struct.ext4_extent* %17, %struct.ext4_extent* %18, i64 %69, i64 %70, i64 %71)
  %73 = load i32*, i32** %12, align 8
  store i32 %72, i32* %73, align 4
  %74 = load i32*, i32** %12, align 8
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %46
  br label %214

78:                                               ; preds = %46
  br label %79

79:                                               ; preds = %78, %212
  %80 = load %struct.ext4_extent*, %struct.ext4_extent** %16, align 8
  %81 = icmp ne %struct.ext4_extent* %80, null
  br i1 %81, label %90, label %82

82:                                               ; preds = %79
  %83 = load %struct.inode*, %struct.inode** %9, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i32, i8*, ...) @ext4_error(i32 %85, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %87 = load i32, i32* @EIO, align 4
  %88 = sub nsw i32 0, %87
  %89 = load i32*, i32** %12, align 8
  store i32 %88, i32* %89, align 4
  br label %214

90:                                               ; preds = %79
  %91 = load i64, i64* %20, align 8
  %92 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %17, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @le32_to_cpu(i32 %93)
  %95 = icmp ne i64 %91, %94
  br i1 %95, label %96, label %108

96:                                               ; preds = %90
  %97 = load %struct.inode*, %struct.inode** %9, align 8
  %98 = getelementptr inbounds %struct.inode, %struct.inode* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i64, i64* %20, align 8
  %101 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %17, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @le32_to_cpu(i32 %102)
  %104 = call i32 (i32, i8*, ...) @ext4_error(i32 %99, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i64 %100, i64 %103)
  %105 = load i32, i32* @EIO, align 4
  %106 = sub nsw i32 0, %105
  %107 = load i32*, i32** %12, align 8
  store i32 %106, i32* %107, align 4
  br label %214

108:                                              ; preds = %90
  br label %109

109:                                              ; preds = %108
  %110 = load i32*, i32** %7, align 8
  %111 = load %struct.inode*, %struct.inode** %8, align 8
  %112 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %13, align 8
  %113 = call i32 @mext_leaf_block(i32* %110, %struct.inode* %111, %struct.ext4_ext_path* %112, %struct.ext4_extent* %17, i64* %19)
  %114 = load i32*, i32** %12, align 8
  store i32 %113, i32* %114, align 4
  %115 = load i32*, i32** %12, align 8
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %109
  br label %214

119:                                              ; preds = %109
  %120 = load i32*, i32** %7, align 8
  %121 = load %struct.inode*, %struct.inode** %9, align 8
  %122 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %14, align 8
  %123 = call i32 @mext_leaf_block(i32* %120, %struct.inode* %121, %struct.ext4_ext_path* %122, %struct.ext4_extent* %18, i64* %20)
  %124 = load i32*, i32** %12, align 8
  store i32 %123, i32* %124, align 4
  %125 = load i32*, i32** %12, align 8
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %119
  br label %214

129:                                              ; preds = %119
  %130 = call i32 @ext4_ext_get_actual_len(%struct.ext4_extent* %17)
  store i32 %130, i32* %23, align 4
  %131 = load i32, i32* %23, align 4
  %132 = load i32, i32* %22, align 4
  %133 = add nsw i32 %132, %131
  store i32 %133, i32* %22, align 4
  %134 = load i32, i32* %23, align 4
  %135 = sext i32 %134 to i64
  %136 = load i64, i64* %20, align 8
  %137 = add nsw i64 %136, %135
  store i64 %137, i64* %20, align 8
  %138 = load i32, i32* %23, align 4
  %139 = sext i32 %138 to i64
  %140 = load i64, i64* %19, align 8
  %141 = add nsw i64 %140, %139
  store i64 %141, i64* %19, align 8
  %142 = load i32, i32* %22, align 4
  %143 = sext i32 %142 to i64
  %144 = load i64, i64* %11, align 8
  %145 = icmp sge i64 %143, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %129
  br label %213

147:                                              ; preds = %129
  %148 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %13, align 8
  %149 = icmp ne %struct.ext4_ext_path* %148, null
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  %151 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %13, align 8
  %152 = call i32 @ext4_ext_drop_refs(%struct.ext4_ext_path* %151)
  br label %153

153:                                              ; preds = %150, %147
  %154 = load %struct.inode*, %struct.inode** %8, align 8
  %155 = load i64, i64* %19, align 8
  %156 = call i32 @get_ext_path(%struct.inode* %154, i64 %155, %struct.ext4_ext_path** %13)
  %157 = load i32*, i32** %12, align 8
  store i32 %156, i32* %157, align 4
  %158 = load i32*, i32** %12, align 8
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %153
  br label %214

162:                                              ; preds = %153
  %163 = load %struct.inode*, %struct.inode** %8, align 8
  %164 = call i32 @ext_depth(%struct.inode* %163)
  store i32 %164, i32* %21, align 4
  %165 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %13, align 8
  %166 = load i32, i32* %21, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %165, i64 %167
  %169 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %168, i32 0, i32 0
  %170 = load %struct.ext4_extent*, %struct.ext4_extent** %169, align 8
  store %struct.ext4_extent* %170, %struct.ext4_extent** %15, align 8
  %171 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %172 = bitcast %struct.ext4_extent* %18 to i8*
  %173 = bitcast %struct.ext4_extent* %171 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %172, i8* align 4 %173, i64 4, i1 false)
  %174 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %14, align 8
  %175 = icmp ne %struct.ext4_ext_path* %174, null
  br i1 %175, label %176, label %179

176:                                              ; preds = %162
  %177 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %14, align 8
  %178 = call i32 @ext4_ext_drop_refs(%struct.ext4_ext_path* %177)
  br label %179

179:                                              ; preds = %176, %162
  %180 = load %struct.inode*, %struct.inode** %9, align 8
  %181 = load i64, i64* %20, align 8
  %182 = call i32 @get_ext_path(%struct.inode* %180, i64 %181, %struct.ext4_ext_path** %14)
  %183 = load i32*, i32** %12, align 8
  store i32 %182, i32* %183, align 4
  %184 = load i32*, i32** %12, align 8
  %185 = load i32, i32* %184, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %179
  br label %214

188:                                              ; preds = %179
  %189 = load %struct.inode*, %struct.inode** %9, align 8
  %190 = call i32 @ext_depth(%struct.inode* %189)
  store i32 %190, i32* %21, align 4
  %191 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %14, align 8
  %192 = load i32, i32* %21, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %191, i64 %193
  %195 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %194, i32 0, i32 0
  %196 = load %struct.ext4_extent*, %struct.ext4_extent** %195, align 8
  store %struct.ext4_extent* %196, %struct.ext4_extent** %16, align 8
  %197 = load %struct.ext4_extent*, %struct.ext4_extent** %16, align 8
  %198 = bitcast %struct.ext4_extent* %17 to i8*
  %199 = bitcast %struct.ext4_extent* %197 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %198, i8* align 4 %199, i64 4, i1 false)
  %200 = load i64, i64* %19, align 8
  %201 = load i64, i64* %20, align 8
  %202 = load i64, i64* %11, align 8
  %203 = load i32, i32* %22, align 4
  %204 = sext i32 %203 to i64
  %205 = sub nsw i64 %202, %204
  %206 = call i32 @mext_calc_swap_extents(%struct.ext4_extent* %17, %struct.ext4_extent* %18, i64 %200, i64 %201, i64 %205)
  %207 = load i32*, i32** %12, align 8
  store i32 %206, i32* %207, align 4
  %208 = load i32*, i32** %12, align 8
  %209 = load i32, i32* %208, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %188
  br label %214

212:                                              ; preds = %188
  br label %79

213:                                              ; preds = %146
  br label %214

214:                                              ; preds = %213, %211, %187, %161, %128, %118, %96, %82, %77, %45, %36
  %215 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %13, align 8
  %216 = icmp ne %struct.ext4_ext_path* %215, null
  br i1 %216, label %217, label %222

217:                                              ; preds = %214
  %218 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %13, align 8
  %219 = call i32 @ext4_ext_drop_refs(%struct.ext4_ext_path* %218)
  %220 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %13, align 8
  %221 = call i32 @kfree(%struct.ext4_ext_path* %220)
  br label %222

222:                                              ; preds = %217, %214
  %223 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %14, align 8
  %224 = icmp ne %struct.ext4_ext_path* %223, null
  br i1 %224, label %225, label %230

225:                                              ; preds = %222
  %226 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %14, align 8
  %227 = call i32 @ext4_ext_drop_refs(%struct.ext4_ext_path* %226)
  %228 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %14, align 8
  %229 = call i32 @kfree(%struct.ext4_ext_path* %228)
  br label %230

230:                                              ; preds = %225, %222
  %231 = load %struct.inode*, %struct.inode** %8, align 8
  %232 = call i32 @ext4_ext_invalidate_cache(%struct.inode* %231)
  %233 = load %struct.inode*, %struct.inode** %9, align 8
  %234 = call i32 @ext4_ext_invalidate_cache(%struct.inode* %233)
  %235 = load %struct.inode*, %struct.inode** %8, align 8
  %236 = load %struct.inode*, %struct.inode** %9, align 8
  %237 = call i32 @double_up_write_data_sem(%struct.inode* %235, %struct.inode* %236)
  %238 = load i32, i32* %22, align 4
  ret i32 %238
}

declare dso_local i32 @double_down_write_data_sem(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @get_ext_path(%struct.inode*, i64, %struct.ext4_ext_path**) #1

declare dso_local i32 @ext_depth(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mext_calc_swap_extents(%struct.ext4_extent*, %struct.ext4_extent*, i64, i64, i64) #1

declare dso_local i32 @ext4_error(i32, i8*, ...) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @mext_leaf_block(i32*, %struct.inode*, %struct.ext4_ext_path*, %struct.ext4_extent*, i64*) #1

declare dso_local i32 @ext4_ext_get_actual_len(%struct.ext4_extent*) #1

declare dso_local i32 @ext4_ext_drop_refs(%struct.ext4_ext_path*) #1

declare dso_local i32 @kfree(%struct.ext4_ext_path*) #1

declare dso_local i32 @ext4_ext_invalidate_cache(%struct.inode*) #1

declare dso_local i32 @double_up_write_data_sem(%struct.inode*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
