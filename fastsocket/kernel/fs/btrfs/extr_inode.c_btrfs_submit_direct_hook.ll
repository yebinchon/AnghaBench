; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_submit_direct_hook.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_submit_direct_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_dio_private = type { i32, i32, %struct.bio*, i32, i32*, %struct.inode* }
%struct.bio = type { i32, i32, i32, i8*, %struct.btrfs_dio_private*, i32, %struct.bio_vec* }
%struct.bio_vec = type { i32, i32, i32 }
%struct.inode = type { i32 }
%struct.btrfs_root = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.btrfs_mapping_tree }
%struct.btrfs_mapping_tree = type { i32 }
%struct.TYPE_4__ = type { %struct.btrfs_root* }

@REQ_WRITE = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@btrfs_end_dio_bio = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.btrfs_dio_private*, i32)* @btrfs_submit_direct_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_submit_direct_hook(i32 %0, %struct.btrfs_dio_private* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_dio_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.btrfs_root*, align 8
  %10 = alloca %struct.btrfs_mapping_tree*, align 8
  %11 = alloca %struct.bio*, align 8
  %12 = alloca %struct.bio*, align 8
  %13 = alloca %struct.bio_vec*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.btrfs_dio_private* %1, %struct.btrfs_dio_private** %6, align 8
  store i32 %2, i32* %7, align 4
  %23 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %6, align 8
  %24 = getelementptr inbounds %struct.btrfs_dio_private, %struct.btrfs_dio_private* %23, i32 0, i32 5
  %25 = load %struct.inode*, %struct.inode** %24, align 8
  store %struct.inode* %25, %struct.inode** %8, align 8
  %26 = load %struct.inode*, %struct.inode** %8, align 8
  %27 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %26)
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.btrfs_root*, %struct.btrfs_root** %28, align 8
  store %struct.btrfs_root* %29, %struct.btrfs_root** %9, align 8
  %30 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %31 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store %struct.btrfs_mapping_tree* %33, %struct.btrfs_mapping_tree** %10, align 8
  %34 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %6, align 8
  %35 = getelementptr inbounds %struct.btrfs_dio_private, %struct.btrfs_dio_private* %34, i32 0, i32 2
  %36 = load %struct.bio*, %struct.bio** %35, align 8
  store %struct.bio* %36, %struct.bio** %12, align 8
  %37 = load %struct.bio*, %struct.bio** %12, align 8
  %38 = getelementptr inbounds %struct.bio, %struct.bio* %37, i32 0, i32 6
  %39 = load %struct.bio_vec*, %struct.bio_vec** %38, align 8
  store %struct.bio_vec* %39, %struct.bio_vec** %13, align 8
  %40 = load %struct.bio*, %struct.bio** %12, align 8
  %41 = getelementptr inbounds %struct.bio, %struct.bio* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %14, align 4
  %43 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %6, align 8
  %44 = getelementptr inbounds %struct.btrfs_dio_private, %struct.btrfs_dio_private* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %18, align 4
  %46 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %6, align 8
  %47 = getelementptr inbounds %struct.btrfs_dio_private, %struct.btrfs_dio_private* %46, i32 0, i32 4
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %19, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @REQ_WRITE, align 4
  %51 = and i32 %49, %50
  store i32 %51, i32* %22, align 4
  %52 = load %struct.bio*, %struct.bio** %12, align 8
  %53 = getelementptr inbounds %struct.bio, %struct.bio* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %17, align 4
  %55 = load %struct.btrfs_mapping_tree*, %struct.btrfs_mapping_tree** %10, align 8
  %56 = load i32, i32* @READ, align 4
  %57 = load i32, i32* %14, align 4
  %58 = shl i32 %57, 9
  %59 = call i32 @btrfs_map_block(%struct.btrfs_mapping_tree* %55, i32 %56, i32 %58, i32* %17, i32* null, i32 0)
  store i32 %59, i32* %20, align 4
  %60 = load i32, i32* %20, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %3
  %63 = load %struct.bio*, %struct.bio** %12, align 8
  %64 = call i32 @bio_put(%struct.bio* %63)
  %65 = load i32, i32* @EIO, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %249

67:                                               ; preds = %3
  %68 = load i32, i32* %17, align 4
  %69 = load %struct.bio*, %struct.bio** %12, align 8
  %70 = getelementptr inbounds %struct.bio, %struct.bio* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp sge i32 %68, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load %struct.bio*, %struct.bio** %12, align 8
  store %struct.bio* %74, %struct.bio** %11, align 8
  br label %220

75:                                               ; preds = %67
  store i32 1, i32* %21, align 4
  %76 = load %struct.bio*, %struct.bio** %12, align 8
  %77 = getelementptr inbounds %struct.bio, %struct.bio* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* @GFP_NOFS, align 4
  %81 = call %struct.bio* @btrfs_dio_bio_alloc(i32 %78, i32 %79, i32 %80)
  store %struct.bio* %81, %struct.bio** %11, align 8
  %82 = load %struct.bio*, %struct.bio** %11, align 8
  %83 = icmp ne %struct.bio* %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %75
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  br label %249

87:                                               ; preds = %75
  %88 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %6, align 8
  %89 = load %struct.bio*, %struct.bio** %11, align 8
  %90 = getelementptr inbounds %struct.bio, %struct.bio* %89, i32 0, i32 4
  store %struct.btrfs_dio_private* %88, %struct.btrfs_dio_private** %90, align 8
  %91 = load i8*, i8** @btrfs_end_dio_bio, align 8
  %92 = load %struct.bio*, %struct.bio** %11, align 8
  %93 = getelementptr inbounds %struct.bio, %struct.bio* %92, i32 0, i32 3
  store i8* %91, i8** %93, align 8
  %94 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %6, align 8
  %95 = getelementptr inbounds %struct.btrfs_dio_private, %struct.btrfs_dio_private* %94, i32 0, i32 3
  %96 = call i32 @atomic_inc(i32* %95)
  br label %97

97:                                               ; preds = %218, %87
  %98 = load %struct.bio_vec*, %struct.bio_vec** %13, align 8
  %99 = load %struct.bio*, %struct.bio** %12, align 8
  %100 = getelementptr inbounds %struct.bio, %struct.bio* %99, i32 0, i32 6
  %101 = load %struct.bio_vec*, %struct.bio_vec** %100, align 8
  %102 = load %struct.bio*, %struct.bio** %12, align 8
  %103 = getelementptr inbounds %struct.bio, %struct.bio* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %101, i64 %105
  %107 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %106, i64 -1
  %108 = icmp ule %struct.bio_vec* %98, %107
  br i1 %108, label %109, label %219

109:                                              ; preds = %97
  %110 = load i32, i32* %17, align 4
  %111 = load i32, i32* %16, align 4
  %112 = load %struct.bio_vec*, %struct.bio_vec** %13, align 8
  %113 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %111, %114
  %116 = icmp slt i32 %110, %115
  br i1 %116, label %134, label %117

117:                                              ; preds = %109
  %118 = load %struct.bio*, %struct.bio** %11, align 8
  %119 = load %struct.bio_vec*, %struct.bio_vec** %13, align 8
  %120 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.bio_vec*, %struct.bio_vec** %13, align 8
  %123 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.bio_vec*, %struct.bio_vec** %13, align 8
  %126 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i64 @bio_add_page(%struct.bio* %118, i32 %121, i32 %124, i32 %127)
  %129 = load %struct.bio_vec*, %struct.bio_vec** %13, align 8
  %130 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = sext i32 %131 to i64
  %133 = icmp slt i64 %128, %132
  br label %134

134:                                              ; preds = %117, %109
  %135 = phi i1 [ true, %109 ], [ %133, %117 ]
  %136 = zext i1 %135 to i32
  %137 = call i64 @unlikely(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %208

139:                                              ; preds = %134
  %140 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %6, align 8
  %141 = getelementptr inbounds %struct.btrfs_dio_private, %struct.btrfs_dio_private* %140, i32 0, i32 3
  %142 = call i32 @atomic_inc(i32* %141)
  %143 = load %struct.bio*, %struct.bio** %11, align 8
  %144 = load %struct.inode*, %struct.inode** %8, align 8
  %145 = load i32, i32* %5, align 4
  %146 = load i32, i32* %15, align 4
  %147 = load i32, i32* %7, align 4
  %148 = load i32*, i32** %19, align 8
  %149 = load i32, i32* %21, align 4
  %150 = call i32 @__btrfs_submit_dio_bio(%struct.bio* %143, %struct.inode* %144, i32 %145, i32 %146, i32 %147, i32* %148, i32 %149)
  store i32 %150, i32* %20, align 4
  %151 = load i32, i32* %20, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %139
  %154 = load %struct.bio*, %struct.bio** %11, align 8
  %155 = call i32 @bio_put(%struct.bio* %154)
  %156 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %6, align 8
  %157 = getelementptr inbounds %struct.btrfs_dio_private, %struct.btrfs_dio_private* %156, i32 0, i32 3
  %158 = call i32 @atomic_dec(i32* %157)
  br label %235

159:                                              ; preds = %139
  %160 = load i32, i32* %22, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %170, label %162

162:                                              ; preds = %159
  %163 = load i32, i32* %7, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %170, label %165

165:                                              ; preds = %162
  %166 = load i32*, i32** %19, align 8
  %167 = load i32, i32* %18, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  store i32* %169, i32** %19, align 8
  br label %170

170:                                              ; preds = %165, %162, %159
  %171 = load i32, i32* %16, align 4
  %172 = ashr i32 %171, 9
  %173 = load i32, i32* %14, align 4
  %174 = add nsw i32 %173, %172
  store i32 %174, i32* %14, align 4
  %175 = load i32, i32* %16, align 4
  %176 = load i32, i32* %15, align 4
  %177 = add nsw i32 %176, %175
  store i32 %177, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %18, align 4
  %178 = load %struct.bio*, %struct.bio** %12, align 8
  %179 = getelementptr inbounds %struct.bio, %struct.bio* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* %14, align 4
  %182 = load i32, i32* @GFP_NOFS, align 4
  %183 = call %struct.bio* @btrfs_dio_bio_alloc(i32 %180, i32 %181, i32 %182)
  store %struct.bio* %183, %struct.bio** %11, align 8
  %184 = load %struct.bio*, %struct.bio** %11, align 8
  %185 = icmp ne %struct.bio* %184, null
  br i1 %185, label %187, label %186

186:                                              ; preds = %170
  br label %235

187:                                              ; preds = %170
  %188 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %6, align 8
  %189 = load %struct.bio*, %struct.bio** %11, align 8
  %190 = getelementptr inbounds %struct.bio, %struct.bio* %189, i32 0, i32 4
  store %struct.btrfs_dio_private* %188, %struct.btrfs_dio_private** %190, align 8
  %191 = load i8*, i8** @btrfs_end_dio_bio, align 8
  %192 = load %struct.bio*, %struct.bio** %11, align 8
  %193 = getelementptr inbounds %struct.bio, %struct.bio* %192, i32 0, i32 3
  store i8* %191, i8** %193, align 8
  %194 = load %struct.bio*, %struct.bio** %12, align 8
  %195 = getelementptr inbounds %struct.bio, %struct.bio* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  store i32 %196, i32* %17, align 4
  %197 = load %struct.btrfs_mapping_tree*, %struct.btrfs_mapping_tree** %10, align 8
  %198 = load i32, i32* @READ, align 4
  %199 = load i32, i32* %14, align 4
  %200 = shl i32 %199, 9
  %201 = call i32 @btrfs_map_block(%struct.btrfs_mapping_tree* %197, i32 %198, i32 %200, i32* %17, i32* null, i32 0)
  store i32 %201, i32* %20, align 4
  %202 = load i32, i32* %20, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %187
  %205 = load %struct.bio*, %struct.bio** %11, align 8
  %206 = call i32 @bio_put(%struct.bio* %205)
  br label %235

207:                                              ; preds = %187
  br label %218

208:                                              ; preds = %134
  %209 = load %struct.bio_vec*, %struct.bio_vec** %13, align 8
  %210 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* %16, align 4
  %213 = add nsw i32 %212, %211
  store i32 %213, i32* %16, align 4
  %214 = load i32, i32* %18, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %18, align 4
  %216 = load %struct.bio_vec*, %struct.bio_vec** %13, align 8
  %217 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %216, i32 1
  store %struct.bio_vec* %217, %struct.bio_vec** %13, align 8
  br label %218

218:                                              ; preds = %208, %207
  br label %97

219:                                              ; preds = %97
  br label %220

220:                                              ; preds = %219, %73
  %221 = load %struct.bio*, %struct.bio** %11, align 8
  %222 = load %struct.inode*, %struct.inode** %8, align 8
  %223 = load i32, i32* %5, align 4
  %224 = load i32, i32* %15, align 4
  %225 = load i32, i32* %7, align 4
  %226 = load i32*, i32** %19, align 8
  %227 = load i32, i32* %21, align 4
  %228 = call i32 @__btrfs_submit_dio_bio(%struct.bio* %221, %struct.inode* %222, i32 %223, i32 %224, i32 %225, i32* %226, i32 %227)
  store i32 %228, i32* %20, align 4
  %229 = load i32, i32* %20, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %232, label %231

231:                                              ; preds = %220
  store i32 0, i32* %4, align 4
  br label %249

232:                                              ; preds = %220
  %233 = load %struct.bio*, %struct.bio** %11, align 8
  %234 = call i32 @bio_put(%struct.bio* %233)
  br label %235

235:                                              ; preds = %232, %204, %186, %153
  %236 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %6, align 8
  %237 = getelementptr inbounds %struct.btrfs_dio_private, %struct.btrfs_dio_private* %236, i32 0, i32 1
  store i32 1, i32* %237, align 4
  %238 = call i32 (...) @smp_mb__before_atomic_dec()
  %239 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %6, align 8
  %240 = getelementptr inbounds %struct.btrfs_dio_private, %struct.btrfs_dio_private* %239, i32 0, i32 3
  %241 = call i64 @atomic_dec_and_test(i32* %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %248

243:                                              ; preds = %235
  %244 = load %struct.btrfs_dio_private*, %struct.btrfs_dio_private** %6, align 8
  %245 = getelementptr inbounds %struct.btrfs_dio_private, %struct.btrfs_dio_private* %244, i32 0, i32 2
  %246 = load %struct.bio*, %struct.bio** %245, align 8
  %247 = call i32 @bio_io_error(%struct.bio* %246)
  br label %248

248:                                              ; preds = %243, %235
  store i32 0, i32* %4, align 4
  br label %249

249:                                              ; preds = %248, %231, %84, %62
  %250 = load i32, i32* %4, align 4
  ret i32 %250
}

declare dso_local %struct.TYPE_4__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @btrfs_map_block(%struct.btrfs_mapping_tree*, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local %struct.bio* @btrfs_dio_bio_alloc(i32, i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @bio_add_page(%struct.bio*, i32, i32, i32) #1

declare dso_local i32 @__btrfs_submit_dio_bio(%struct.bio*, %struct.inode*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @smp_mb__before_atomic_dec(...) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @bio_io_error(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
