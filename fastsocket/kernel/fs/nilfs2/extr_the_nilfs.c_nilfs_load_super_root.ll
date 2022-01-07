; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_the_nilfs.c_nilfs_load_super_root.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_the_nilfs.c_nilfs_load_super_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_class_key = type { i32 }
%struct.the_nilfs = type { i32, i8*, i8*, i8*, i8*, i32, i32, %struct.nilfs_super_block** }
%struct.nilfs_super_block = type { i32, i32, i32 }
%struct.nilfs_sb_info = type { i32 }
%struct.buffer_head = type { i64 }
%struct.nilfs_super_root = type { i32 }
%struct.TYPE_2__ = type { i32 }

@nilfs_load_super_root.dat_lock_key = internal global %struct.lock_class_key zeroinitializer, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NILFS_DAT_INO = common dso_local global i32 0, align 4
@NILFS_CPFILE_INO = common dso_local global i32 0, align 4
@NILFS_SUFILE_INO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.the_nilfs*, %struct.nilfs_sb_info*, i32)* @nilfs_load_super_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_load_super_root(%struct.the_nilfs* %0, %struct.nilfs_sb_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.the_nilfs*, align 8
  %6 = alloca %struct.nilfs_sb_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.nilfs_super_root*, align 8
  %10 = alloca %struct.nilfs_super_block**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.the_nilfs* %0, %struct.the_nilfs** %5, align 8
  store %struct.nilfs_sb_info* %1, %struct.nilfs_sb_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %17 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %16, i32 0, i32 7
  %18 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %17, align 8
  store %struct.nilfs_super_block** %18, %struct.nilfs_super_block*** %10, align 8
  %19 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %6, align 8
  %20 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @nilfs_read_super_root_block(i32 %21, i32 %22, %struct.buffer_head** %8, i32 1)
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %15, align 4
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* %15, align 4
  store i32 %28, i32* %4, align 4
  br label %238

29:                                               ; preds = %3
  %30 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %31 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %30, i32 0, i32 6
  %32 = call i32 @down_read(i32* %31)
  %33 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %10, align 8
  %34 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %33, i64 0
  %35 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %34, align 8
  %36 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le16_to_cpu(i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %10, align 8
  %40 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %39, i64 0
  %41 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %40, align 8
  %42 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @le16_to_cpu(i32 %43)
  store i32 %44, i32* %13, align 4
  %45 = load %struct.nilfs_super_block**, %struct.nilfs_super_block*** %10, align 8
  %46 = getelementptr inbounds %struct.nilfs_super_block*, %struct.nilfs_super_block** %45, i64 0
  %47 = load %struct.nilfs_super_block*, %struct.nilfs_super_block** %46, align 8
  %48 = getelementptr inbounds %struct.nilfs_super_block, %struct.nilfs_super_block* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @le16_to_cpu(i32 %49)
  store i32 %50, i32* %12, align 4
  %51 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %52 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %51, i32 0, i32 6
  %53 = call i32 @up_read(i32* %52)
  %54 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %55 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %15, align 4
  %59 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %60 = load i32, i32* @NILFS_DAT_INO, align 4
  %61 = call i8* @nilfs_mdt_new(%struct.the_nilfs* %59, i32* null, i32 %60)
  %62 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %63 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  %64 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %65 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = icmp ne i8* %66, null
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %29
  br label %214

73:                                               ; preds = %29
  %74 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %75 = load i32, i32* @NILFS_DAT_INO, align 4
  %76 = call i8* @nilfs_mdt_new(%struct.the_nilfs* %74, i32* null, i32 %75)
  %77 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %78 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %77, i32 0, i32 2
  store i8* %76, i8** %78, align 8
  %79 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %80 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %79, i32 0, i32 2
  %81 = load i8*, i8** %80, align 8
  %82 = icmp ne i8* %81, null
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = call i64 @unlikely(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %73
  br label %233

88:                                               ; preds = %73
  %89 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %90 = load i32, i32* @NILFS_CPFILE_INO, align 4
  %91 = call i8* @nilfs_mdt_new(%struct.the_nilfs* %89, i32* null, i32 %90)
  %92 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %93 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %92, i32 0, i32 3
  store i8* %91, i8** %93, align 8
  %94 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %95 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %94, i32 0, i32 3
  %96 = load i8*, i8** %95, align 8
  %97 = icmp ne i8* %96, null
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  %100 = call i64 @unlikely(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %88
  br label %228

103:                                              ; preds = %88
  %104 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %105 = load i32, i32* @NILFS_SUFILE_INO, align 4
  %106 = call i8* @nilfs_mdt_new(%struct.the_nilfs* %104, i32* null, i32 %105)
  %107 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %108 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %107, i32 0, i32 4
  store i8* %106, i8** %108, align 8
  %109 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %110 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %109, i32 0, i32 4
  %111 = load i8*, i8** %110, align 8
  %112 = icmp ne i8* %111, null
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  %115 = call i64 @unlikely(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %103
  br label %223

118:                                              ; preds = %103
  %119 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %120 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %119, i32 0, i32 1
  %121 = load i8*, i8** %120, align 8
  %122 = load i32, i32* %11, align 4
  %123 = call i32 @nilfs_palloc_init_blockgroup(i8* %121, i32 %122)
  store i32 %123, i32* %15, align 4
  %124 = load i32, i32* %15, align 4
  %125 = call i64 @unlikely(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %118
  br label %218

128:                                              ; preds = %118
  %129 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %130 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %129, i32 0, i32 2
  %131 = load i8*, i8** %130, align 8
  %132 = load i32, i32* %11, align 4
  %133 = call i32 @nilfs_palloc_init_blockgroup(i8* %131, i32 %132)
  store i32 %133, i32* %15, align 4
  %134 = load i32, i32* %15, align 4
  %135 = call i64 @unlikely(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %128
  br label %218

138:                                              ; preds = %128
  %139 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %140 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %139, i32 0, i32 1
  %141 = load i8*, i8** %140, align 8
  %142 = call %struct.TYPE_2__* @NILFS_MDT(i8* %141)
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = call i32 @lockdep_set_class(i32* %143, %struct.lock_class_key* @nilfs_load_super_root.dat_lock_key)
  %145 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %146 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %145, i32 0, i32 2
  %147 = load i8*, i8** %146, align 8
  %148 = call %struct.TYPE_2__* @NILFS_MDT(i8* %147)
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = call i32 @lockdep_set_class(i32* %149, %struct.lock_class_key* @nilfs_load_super_root.dat_lock_key)
  %151 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %152 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %151, i32 0, i32 1
  %153 = load i8*, i8** %152, align 8
  %154 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %155 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %154, i32 0, i32 2
  %156 = load i8*, i8** %155, align 8
  %157 = call i32 @nilfs_mdt_set_shadow(i8* %153, i8* %156)
  %158 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %159 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %158, i32 0, i32 3
  %160 = load i8*, i8** %159, align 8
  %161 = load i32, i32* %13, align 4
  %162 = call i32 @nilfs_mdt_set_entry_size(i8* %160, i32 %161, i32 4)
  %163 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %164 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %163, i32 0, i32 4
  %165 = load i8*, i8** %164, align 8
  %166 = load i32, i32* %12, align 4
  %167 = call i32 @nilfs_mdt_set_entry_size(i8* %165, i32 %166, i32 4)
  %168 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %169 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %168, i32 0, i32 1
  %170 = load i8*, i8** %169, align 8
  %171 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %172 = load i32, i32* %14, align 4
  %173 = call i32 @NILFS_SR_DAT_OFFSET(i32 %172)
  %174 = call i32 @nilfs_mdt_read_inode_direct(i8* %170, %struct.buffer_head* %171, i32 %173)
  store i32 %174, i32* %15, align 4
  %175 = load i32, i32* %15, align 4
  %176 = call i64 @unlikely(i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %138
  br label %218

179:                                              ; preds = %138
  %180 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %181 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %180, i32 0, i32 3
  %182 = load i8*, i8** %181, align 8
  %183 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %184 = load i32, i32* %14, align 4
  %185 = call i32 @NILFS_SR_CPFILE_OFFSET(i32 %184)
  %186 = call i32 @nilfs_mdt_read_inode_direct(i8* %182, %struct.buffer_head* %183, i32 %185)
  store i32 %186, i32* %15, align 4
  %187 = load i32, i32* %15, align 4
  %188 = call i64 @unlikely(i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %179
  br label %218

191:                                              ; preds = %179
  %192 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %193 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %192, i32 0, i32 4
  %194 = load i8*, i8** %193, align 8
  %195 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %196 = load i32, i32* %14, align 4
  %197 = call i32 @NILFS_SR_SUFILE_OFFSET(i32 %196)
  %198 = call i32 @nilfs_mdt_read_inode_direct(i8* %194, %struct.buffer_head* %195, i32 %197)
  store i32 %198, i32* %15, align 4
  %199 = load i32, i32* %15, align 4
  %200 = call i64 @unlikely(i32 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %191
  br label %218

203:                                              ; preds = %191
  %204 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %205 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = inttoptr i64 %206 to %struct.nilfs_super_root*
  store %struct.nilfs_super_root* %207, %struct.nilfs_super_root** %9, align 8
  %208 = load %struct.nilfs_super_root*, %struct.nilfs_super_root** %9, align 8
  %209 = getelementptr inbounds %struct.nilfs_super_root, %struct.nilfs_super_root* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @le64_to_cpu(i32 %210)
  %212 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %213 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %212, i32 0, i32 5
  store i32 %211, i32* %213, align 8
  br label %214

214:                                              ; preds = %233, %203, %72
  %215 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %216 = call i32 @brelse(%struct.buffer_head* %215)
  %217 = load i32, i32* %15, align 4
  store i32 %217, i32* %4, align 4
  br label %238

218:                                              ; preds = %202, %190, %178, %137, %127
  %219 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %220 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %219, i32 0, i32 4
  %221 = load i8*, i8** %220, align 8
  %222 = call i32 @nilfs_mdt_destroy(i8* %221)
  br label %223

223:                                              ; preds = %218, %117
  %224 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %225 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %224, i32 0, i32 3
  %226 = load i8*, i8** %225, align 8
  %227 = call i32 @nilfs_mdt_destroy(i8* %226)
  br label %228

228:                                              ; preds = %223, %102
  %229 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %230 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %229, i32 0, i32 2
  %231 = load i8*, i8** %230, align 8
  %232 = call i32 @nilfs_mdt_destroy(i8* %231)
  br label %233

233:                                              ; preds = %228, %87
  %234 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %235 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %234, i32 0, i32 1
  %236 = load i8*, i8** %235, align 8
  %237 = call i32 @nilfs_mdt_destroy(i8* %236)
  br label %214

238:                                              ; preds = %214, %27
  %239 = load i32, i32* %4, align 4
  ret i32 %239
}

declare dso_local i32 @nilfs_read_super_root_block(i32, i32, %struct.buffer_head**, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i8* @nilfs_mdt_new(%struct.the_nilfs*, i32*, i32) #1

declare dso_local i32 @nilfs_palloc_init_blockgroup(i8*, i32) #1

declare dso_local i32 @lockdep_set_class(i32*, %struct.lock_class_key*) #1

declare dso_local %struct.TYPE_2__* @NILFS_MDT(i8*) #1

declare dso_local i32 @nilfs_mdt_set_shadow(i8*, i8*) #1

declare dso_local i32 @nilfs_mdt_set_entry_size(i8*, i32, i32) #1

declare dso_local i32 @nilfs_mdt_read_inode_direct(i8*, %struct.buffer_head*, i32) #1

declare dso_local i32 @NILFS_SR_DAT_OFFSET(i32) #1

declare dso_local i32 @NILFS_SR_CPFILE_OFFSET(i32) #1

declare dso_local i32 @NILFS_SR_SUFILE_OFFSET(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @nilfs_mdt_destroy(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
