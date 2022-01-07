; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/freevxfs/extr_vxfs_lookup.c_vxfs_readdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/freevxfs/extr_vxfs_lookup.c_vxfs_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.inode* }
%struct.inode = type { i32, i32, i32, %struct.super_block* }
%struct.super_block = type { i64, i64 }
%struct.page = type { i32 }
%struct.vxfs_dirblk = type { i32 }
%struct.vxfs_direct = type { i8*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@DT_DIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@PAGE_CACHE_SHIFT = common dso_local global i64 0, align 8
@PAGE_CACHE_MASK = common dso_local global i64 0, align 8
@DT_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32 (i8*, i8*, i32, i64, i32, i32)*)* @vxfs_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxfs_readdir(%struct.file* %0, i8* %1, i32 (i8*, i8*, i32, i64, i32, i32)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32 (i8*, i8*, i32, i64, i32, i32)*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.super_block*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.page*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.vxfs_dirblk*, align 8
  %23 = alloca %struct.vxfs_direct*, align 8
  %24 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 (i8*, i8*, i32, i64, i32, i32)* %2, i32 (i8*, i8*, i32, i64, i32, i32)** %7, align 8
  %25 = load %struct.file*, %struct.file** %5, align 8
  %26 = getelementptr inbounds %struct.file, %struct.file* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.inode*, %struct.inode** %29, align 8
  store %struct.inode* %30, %struct.inode** %8, align 8
  %31 = load %struct.inode*, %struct.inode** %8, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 3
  %33 = load %struct.super_block*, %struct.super_block** %32, align 8
  store %struct.super_block* %33, %struct.super_block** %9, align 8
  %34 = load %struct.super_block*, %struct.super_block** %9, align 8
  %35 = getelementptr inbounds %struct.super_block, %struct.super_block* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %10, align 8
  %37 = call i32 (...) @lock_kernel()
  %38 = load %struct.file*, %struct.file** %5, align 8
  %39 = getelementptr inbounds %struct.file, %struct.file* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  switch i64 %40, label %78 [
    i64 0, label %41
    i64 1, label %59
  ]

41:                                               ; preds = %3
  %42 = load i32 (i8*, i8*, i32, i64, i32, i32)*, i32 (i8*, i8*, i32, i64, i32, i32)** %7, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load %struct.file*, %struct.file** %5, align 8
  %45 = getelementptr inbounds %struct.file, %struct.file* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.inode*, %struct.inode** %8, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @DT_DIR, align 4
  %51 = call i32 %42(i8* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1, i64 %46, i32 %49, i32 %50)
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %41
  br label %236

54:                                               ; preds = %41
  %55 = load %struct.file*, %struct.file** %5, align 8
  %56 = getelementptr inbounds %struct.file, %struct.file* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %56, align 8
  br label %59

59:                                               ; preds = %3, %54
  %60 = load i32 (i8*, i8*, i32, i64, i32, i32)*, i32 (i8*, i8*, i32, i64, i32, i32)** %7, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = load %struct.file*, %struct.file** %5, align 8
  %63 = getelementptr inbounds %struct.file, %struct.file* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.inode*, %struct.inode** %8, align 8
  %66 = call %struct.TYPE_6__* @VXFS_INO(%struct.inode* %65)
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @DT_DIR, align 4
  %70 = call i32 %60(i8* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2, i64 %64, i32 %68, i32 %69)
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %59
  br label %236

73:                                               ; preds = %59
  %74 = load %struct.file*, %struct.file** %5, align 8
  %75 = getelementptr inbounds %struct.file, %struct.file* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %75, align 8
  br label %78

78:                                               ; preds = %73, %3
  %79 = load %struct.file*, %struct.file** %5, align 8
  %80 = getelementptr inbounds %struct.file, %struct.file* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = sub nsw i64 %81, 2
  store i64 %82, i64* %17, align 8
  %83 = load i64, i64* %17, align 8
  %84 = load %struct.inode*, %struct.inode** %8, align 8
  %85 = getelementptr inbounds %struct.inode, %struct.inode* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @VXFS_DIRROUND(i32 %86)
  %88 = icmp sgt i64 %83, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %78
  %90 = call i32 (...) @unlock_kernel()
  store i32 0, i32* %4, align 4
  br label %238

91:                                               ; preds = %78
  %92 = load %struct.inode*, %struct.inode** %8, align 8
  %93 = call i64 @dir_pages(%struct.inode* %92)
  store i64 %93, i64* %12, align 8
  %94 = load %struct.inode*, %struct.inode** %8, align 8
  %95 = call i64 @dir_blocks(%struct.inode* %94)
  store i64 %95, i64* %15, align 8
  %96 = load %struct.super_block*, %struct.super_block** %9, align 8
  %97 = call i64 @VXFS_BLOCK_PER_PAGE(%struct.super_block* %96)
  store i64 %97, i64* %14, align 8
  %98 = load i64, i64* %17, align 8
  %99 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %100 = ashr i64 %98, %99
  store i64 %100, i64* %11, align 8
  %101 = load i64, i64* %17, align 8
  %102 = load i64, i64* @PAGE_CACHE_MASK, align 8
  %103 = xor i64 %102, -1
  %104 = and i64 %101, %103
  store i64 %104, i64* %16, align 8
  %105 = load i64, i64* %17, align 8
  %106 = load %struct.super_block*, %struct.super_block** %9, align 8
  %107 = getelementptr inbounds %struct.super_block, %struct.super_block* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = ashr i64 %105, %108
  %110 = load i64, i64* %14, align 8
  %111 = srem i64 %109, %110
  store i64 %111, i64* %13, align 8
  br label %112

112:                                              ; preds = %223, %91
  %113 = load i64, i64* %11, align 8
  %114 = load i64, i64* %12, align 8
  %115 = icmp slt i64 %113, %114
  br i1 %115, label %116, label %226

116:                                              ; preds = %112
  %117 = load %struct.inode*, %struct.inode** %8, align 8
  %118 = getelementptr inbounds %struct.inode, %struct.inode* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i64, i64* %11, align 8
  %121 = call %struct.page* @vxfs_get_page(i32 %119, i64 %120)
  store %struct.page* %121, %struct.page** %19, align 8
  %122 = load %struct.page*, %struct.page** %19, align 8
  %123 = call i64 @IS_ERR(%struct.page* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %116
  br label %223

126:                                              ; preds = %116
  %127 = load %struct.page*, %struct.page** %19, align 8
  %128 = call i64 @page_address(%struct.page* %127)
  store i64 %128, i64* %18, align 8
  br label %129

129:                                              ; preds = %217, %126
  %130 = load i64, i64* %13, align 8
  %131 = load i64, i64* %15, align 8
  %132 = icmp sle i64 %130, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %129
  %134 = load i64, i64* %13, align 8
  %135 = load i64, i64* %14, align 8
  %136 = icmp sle i64 %134, %135
  br label %137

137:                                              ; preds = %133, %129
  %138 = phi i1 [ false, %129 ], [ %136, %133 ]
  br i1 %138, label %139, label %220

139:                                              ; preds = %137
  %140 = load i64, i64* %18, align 8
  %141 = load i64, i64* %13, align 8
  %142 = load i64, i64* %10, align 8
  %143 = mul nsw i64 %141, %142
  %144 = add nsw i64 %140, %143
  store i64 %144, i64* %20, align 8
  %145 = load i64, i64* %20, align 8
  %146 = load i64, i64* %10, align 8
  %147 = add nsw i64 %145, %146
  %148 = call i64 @VXFS_DIRLEN(i32 1)
  %149 = sub nsw i64 %147, %148
  store i64 %149, i64* %21, align 8
  %150 = load i64, i64* %20, align 8
  %151 = inttoptr i64 %150 to %struct.vxfs_dirblk*
  store %struct.vxfs_dirblk* %151, %struct.vxfs_dirblk** %22, align 8
  %152 = load i64, i64* %16, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %139
  %155 = load i64, i64* %18, align 8
  %156 = load i64, i64* %16, align 8
  %157 = add nsw i64 %155, %156
  br label %163

158:                                              ; preds = %139
  %159 = load i64, i64* %20, align 8
  %160 = load %struct.vxfs_dirblk*, %struct.vxfs_dirblk** %22, align 8
  %161 = call i64 @VXFS_DIRBLKOV(%struct.vxfs_dirblk* %160)
  %162 = add nsw i64 %159, %161
  br label %163

163:                                              ; preds = %158, %154
  %164 = phi i64 [ %157, %154 ], [ %162, %158 ]
  %165 = inttoptr i64 %164 to %struct.vxfs_direct*
  store %struct.vxfs_direct* %165, %struct.vxfs_direct** %23, align 8
  br label %166

166:                                              ; preds = %213, %163
  %167 = load %struct.vxfs_direct*, %struct.vxfs_direct** %23, align 8
  %168 = ptrtoint %struct.vxfs_direct* %167 to i64
  %169 = load i64, i64* %21, align 8
  %170 = icmp sle i64 %168, %169
  br i1 %170, label %171, label %216

171:                                              ; preds = %166
  %172 = load %struct.vxfs_direct*, %struct.vxfs_direct** %23, align 8
  %173 = getelementptr inbounds %struct.vxfs_direct, %struct.vxfs_direct* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 8
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %177, label %176

176:                                              ; preds = %171
  br label %216

177:                                              ; preds = %171
  %178 = load %struct.vxfs_direct*, %struct.vxfs_direct** %23, align 8
  %179 = getelementptr inbounds %struct.vxfs_direct, %struct.vxfs_direct* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %183, label %182

182:                                              ; preds = %177
  br label %213

183:                                              ; preds = %177
  %184 = load %struct.vxfs_direct*, %struct.vxfs_direct** %23, align 8
  %185 = ptrtoint %struct.vxfs_direct* %184 to i64
  %186 = load i64, i64* %18, align 8
  %187 = sub nsw i64 %185, %186
  store i64 %187, i64* %16, align 8
  %188 = load i32 (i8*, i8*, i32, i64, i32, i32)*, i32 (i8*, i8*, i32, i64, i32, i32)** %7, align 8
  %189 = load i8*, i8** %6, align 8
  %190 = load %struct.vxfs_direct*, %struct.vxfs_direct** %23, align 8
  %191 = getelementptr inbounds %struct.vxfs_direct, %struct.vxfs_direct* %190, i32 0, i32 0
  %192 = load i8*, i8** %191, align 8
  %193 = load %struct.vxfs_direct*, %struct.vxfs_direct** %23, align 8
  %194 = getelementptr inbounds %struct.vxfs_direct, %struct.vxfs_direct* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = load i64, i64* %11, align 8
  %197 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %198 = shl i64 %196, %197
  %199 = load i64, i64* %16, align 8
  %200 = or i64 %198, %199
  %201 = add nsw i64 %200, 2
  %202 = load %struct.vxfs_direct*, %struct.vxfs_direct** %23, align 8
  %203 = getelementptr inbounds %struct.vxfs_direct, %struct.vxfs_direct* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @DT_UNKNOWN, align 4
  %206 = call i32 %188(i8* %189, i8* %192, i32 %195, i64 %201, i32 %204, i32 %205)
  store i32 %206, i32* %24, align 4
  %207 = load i32, i32* %24, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %183
  %210 = load %struct.page*, %struct.page** %19, align 8
  %211 = call i32 @vxfs_put_page(%struct.page* %210)
  br label %227

212:                                              ; preds = %183
  br label %213

213:                                              ; preds = %212, %182
  %214 = load %struct.vxfs_direct*, %struct.vxfs_direct** %23, align 8
  %215 = call %struct.vxfs_direct* @vxfs_next_entry(%struct.vxfs_direct* %214)
  store %struct.vxfs_direct* %215, %struct.vxfs_direct** %23, align 8
  br label %166

216:                                              ; preds = %176, %166
  store i64 0, i64* %16, align 8
  br label %217

217:                                              ; preds = %216
  %218 = load i64, i64* %13, align 8
  %219 = add nsw i64 %218, 1
  store i64 %219, i64* %13, align 8
  br label %129

220:                                              ; preds = %137
  %221 = load %struct.page*, %struct.page** %19, align 8
  %222 = call i32 @vxfs_put_page(%struct.page* %221)
  store i64 0, i64* %16, align 8
  br label %223

223:                                              ; preds = %220, %125
  %224 = load i64, i64* %11, align 8
  %225 = add nsw i64 %224, 1
  store i64 %225, i64* %11, align 8
  store i64 0, i64* %13, align 8
  br label %112

226:                                              ; preds = %112
  br label %227

227:                                              ; preds = %226, %209
  %228 = load i64, i64* %11, align 8
  %229 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %230 = shl i64 %228, %229
  %231 = load i64, i64* %16, align 8
  %232 = or i64 %230, %231
  %233 = add nsw i64 %232, 2
  %234 = load %struct.file*, %struct.file** %5, align 8
  %235 = getelementptr inbounds %struct.file, %struct.file* %234, i32 0, i32 0
  store i64 %233, i64* %235, align 8
  br label %236

236:                                              ; preds = %227, %72, %53
  %237 = call i32 (...) @unlock_kernel()
  store i32 0, i32* %4, align 4
  br label %238

238:                                              ; preds = %236, %89
  %239 = load i32, i32* %4, align 4
  ret i32 %239
}

declare dso_local i32 @lock_kernel(...) #1

declare dso_local %struct.TYPE_6__* @VXFS_INO(%struct.inode*) #1

declare dso_local i64 @VXFS_DIRROUND(i32) #1

declare dso_local i32 @unlock_kernel(...) #1

declare dso_local i64 @dir_pages(%struct.inode*) #1

declare dso_local i64 @dir_blocks(%struct.inode*) #1

declare dso_local i64 @VXFS_BLOCK_PER_PAGE(%struct.super_block*) #1

declare dso_local %struct.page* @vxfs_get_page(i32, i64) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i64 @VXFS_DIRLEN(i32) #1

declare dso_local i64 @VXFS_DIRBLKOV(%struct.vxfs_dirblk*) #1

declare dso_local i32 @vxfs_put_page(%struct.page*) #1

declare dso_local %struct.vxfs_direct* @vxfs_next_entry(%struct.vxfs_direct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
