; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_alloc.c_hpfs_alloc_sector.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_alloc.c_hpfs_alloc_sector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.hpfs_sb_info = type { i32, i32, i32 }

@.str = private unnamed_addr constant [71 x i8] c"Prealloc doesn't work! Wanted %d, allocated at %08x, can't allocate %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hpfs_alloc_sector(%struct.super_block* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.hpfs_sb_info*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load %struct.super_block*, %struct.super_block** %6, align 8
  %18 = call %struct.hpfs_sb_info* @hpfs_sb(%struct.super_block* %17)
  store %struct.hpfs_sb_info* %18, %struct.hpfs_sb_info** %14, align 8
  store i32 0, i32* %15, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load i32, i32* %9, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %9, align 4
  store i32 1, i32* %15, align 4
  br label %24

24:                                               ; preds = %21, %5
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load %struct.super_block*, %struct.super_block** %6, align 8
  %29 = call i32 @hpfs_lock_creation(%struct.super_block* %28)
  br label %30

30:                                               ; preds = %27, %24
  %31 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %32 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 16384
  %35 = sub nsw i32 %34, 1
  %36 = ashr i32 %35, 14
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %64

39:                                               ; preds = %30
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %42 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %64

45:                                               ; preds = %39
  %46 = load %struct.super_block*, %struct.super_block** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %15, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* %9, align 4
  br label %56

53:                                               ; preds = %45
  %54 = load i32, i32* %9, align 4
  %55 = sdiv i32 %54, 4
  br label %56

56:                                               ; preds = %53, %51
  %57 = phi i32 [ %52, %51 ], [ %55, %53 ]
  %58 = call i32 @alloc_in_bmp(%struct.super_block* %46, i32 %47, i32 %48, i32 %57)
  store i32 %58, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %203

61:                                               ; preds = %56
  %62 = load i32, i32* %7, align 4
  %63 = ashr i32 %62, 14
  store i32 %63, i32* %16, align 4
  br label %67

64:                                               ; preds = %39, %30
  %65 = load i32, i32* %13, align 4
  %66 = udiv i32 %65, 2
  store i32 %66, i32* %16, align 4
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i32, i32* %15, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %81, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %73 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp sgt i32 %71, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %78 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %76, %70
  br label %81

81:                                               ; preds = %80, %67
  br label %82

82:                                               ; preds = %193, %81
  store i32 0, i32* %12, align 4
  br label %83

83:                                               ; preds = %184, %82
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %13, align 4
  %86 = icmp ult i32 %84, %85
  br i1 %86, label %87, label %187

87:                                               ; preds = %83
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %88, %89
  %91 = load i32, i32* %13, align 4
  %92 = icmp ult i32 %90, %91
  br i1 %92, label %93, label %109

93:                                               ; preds = %87
  %94 = load %struct.super_block*, %struct.super_block** %6, align 8
  %95 = load i32, i32* %16, align 4
  %96 = load i32, i32* %12, align 4
  %97 = add nsw i32 %95, %96
  %98 = shl i32 %97, 14
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @alloc_in_bmp(%struct.super_block* %94, i32 %98, i32 %99, i32 %100)
  store i32 %101, i32* %11, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %93
  %104 = load i32, i32* %16, align 4
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %104, %105
  %107 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %108 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 4
  br label %203

109:                                              ; preds = %93, %87
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %137, label %112

112:                                              ; preds = %109
  %113 = load i32, i32* %16, align 4
  %114 = load i32, i32* %12, align 4
  %115 = sub nsw i32 %113, %114
  %116 = sub nsw i32 %115, 1
  %117 = icmp sge i32 %116, 0
  br i1 %117, label %118, label %136

118:                                              ; preds = %112
  %119 = load %struct.super_block*, %struct.super_block** %6, align 8
  %120 = load i32, i32* %16, align 4
  %121 = load i32, i32* %12, align 4
  %122 = sub nsw i32 %120, %121
  %123 = sub nsw i32 %122, 1
  %124 = shl i32 %123, 14
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @alloc_in_bmp(%struct.super_block* %119, i32 %124, i32 %125, i32 %126)
  store i32 %127, i32* %11, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %118
  %130 = load i32, i32* %16, align 4
  %131 = load i32, i32* %12, align 4
  %132 = sub nsw i32 %130, %131
  %133 = sub nsw i32 %132, 1
  %134 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %135 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 4
  br label %203

136:                                              ; preds = %118, %112
  br label %164

137:                                              ; preds = %109
  %138 = load i32, i32* %16, align 4
  %139 = load i32, i32* %12, align 4
  %140 = add nsw i32 %138, %139
  %141 = load i32, i32* %13, align 4
  %142 = icmp uge i32 %140, %141
  br i1 %142, label %143, label %163

143:                                              ; preds = %137
  %144 = load %struct.super_block*, %struct.super_block** %6, align 8
  %145 = load i32, i32* %16, align 4
  %146 = load i32, i32* %12, align 4
  %147 = add nsw i32 %145, %146
  %148 = load i32, i32* %13, align 4
  %149 = sub i32 %147, %148
  %150 = shl i32 %149, 14
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* %9, align 4
  %153 = call i32 @alloc_in_bmp(%struct.super_block* %144, i32 %150, i32 %151, i32 %152)
  store i32 %153, i32* %11, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %163

155:                                              ; preds = %143
  %156 = load i32, i32* %16, align 4
  %157 = load i32, i32* %12, align 4
  %158 = add nsw i32 %156, %157
  %159 = load i32, i32* %13, align 4
  %160 = sub i32 %158, %159
  %161 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %162 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %161, i32 0, i32 2
  store i32 %160, i32* %162, align 4
  br label %203

163:                                              ; preds = %143, %137
  br label %164

164:                                              ; preds = %163, %136
  %165 = load i32, i32* %12, align 4
  %166 = icmp eq i32 %165, 1
  br i1 %166, label %167, label %183

167:                                              ; preds = %164
  %168 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %169 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = icmp ne i32 %170, -1
  br i1 %171, label %172, label %183

172:                                              ; preds = %167
  %173 = load %struct.super_block*, %struct.super_block** %6, align 8
  %174 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %175 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = shl i32 %176, 14
  %178 = load i32, i32* %8, align 4
  %179 = load i32, i32* %9, align 4
  %180 = call i32 @alloc_in_bmp(%struct.super_block* %173, i32 %177, i32 %178, i32 %179)
  store i32 %180, i32* %11, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %172
  br label %203

183:                                              ; preds = %172, %167, %164
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* %12, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %12, align 4
  br label %83

187:                                              ; preds = %83
  %188 = load i32, i32* %15, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %202, label %190

190:                                              ; preds = %187
  %191 = load i32, i32* %9, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %201

193:                                              ; preds = %190
  %194 = load i32, i32* %9, align 4
  %195 = mul nsw i32 %194, 3
  %196 = sdiv i32 %195, 4
  %197 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %14, align 8
  %198 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %197, i32 0, i32 1
  store i32 %196, i32* %198, align 4
  %199 = load i32, i32* %9, align 4
  %200 = sdiv i32 %199, 2
  store i32 %200, i32* %9, align 4
  br label %82

201:                                              ; preds = %190
  br label %202

202:                                              ; preds = %201, %187
  store i32 0, i32* %11, align 4
  br label %203

203:                                              ; preds = %202, %182, %155, %129, %103, %60
  %204 = load i32, i32* %11, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %233

206:                                              ; preds = %203
  %207 = load i32, i32* %15, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %233

209:                                              ; preds = %206
  store i32 0, i32* %12, align 4
  br label %210

210:                                              ; preds = %229, %209
  %211 = load i32, i32* %12, align 4
  %212 = load i32, i32* %9, align 4
  %213 = icmp slt i32 %211, %212
  br i1 %213, label %214, label %232

214:                                              ; preds = %210
  %215 = load %struct.super_block*, %struct.super_block** %6, align 8
  %216 = load i32, i32* %11, align 4
  %217 = load i32, i32* %12, align 4
  %218 = add nsw i32 %216, %217
  %219 = add nsw i32 %218, 1
  %220 = call i32 @hpfs_alloc_if_possible_nolock(%struct.super_block* %215, i32 %219)
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %228, label %222

222:                                              ; preds = %214
  %223 = load %struct.super_block*, %struct.super_block** %6, align 8
  %224 = load i32, i32* %9, align 4
  %225 = load i32, i32* %11, align 4
  %226 = load i32, i32* %12, align 4
  %227 = call i32 @hpfs_error(%struct.super_block* %223, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %224, i32 %225, i32 %226)
  store i32 0, i32* %11, align 4
  br label %232

228:                                              ; preds = %214
  br label %229

229:                                              ; preds = %228
  %230 = load i32, i32* %12, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %12, align 4
  br label %210

232:                                              ; preds = %222, %210
  br label %233

233:                                              ; preds = %232, %206, %203
  %234 = load i32, i32* %10, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %233
  %237 = load %struct.super_block*, %struct.super_block** %6, align 8
  %238 = call i32 @hpfs_unlock_creation(%struct.super_block* %237)
  br label %239

239:                                              ; preds = %236, %233
  %240 = load i32, i32* %11, align 4
  ret i32 %240
}

declare dso_local %struct.hpfs_sb_info* @hpfs_sb(%struct.super_block*) #1

declare dso_local i32 @hpfs_lock_creation(%struct.super_block*) #1

declare dso_local i32 @alloc_in_bmp(%struct.super_block*, i32, i32, i32) #1

declare dso_local i32 @hpfs_alloc_if_possible_nolock(%struct.super_block*, i32) #1

declare dso_local i32 @hpfs_error(%struct.super_block*, i8*, i32, i32, i32) #1

declare dso_local i32 @hpfs_unlock_creation(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
