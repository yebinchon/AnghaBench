; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_inode.c_ufs_frag_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_inode.c_ufs_frag_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.ufs_inode_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64*, i32* }
%struct.ufs_sb_private_info = type { i32, i32, i32, i32, i64 }
%struct.buffer_head = type { i64 }
%struct.TYPE_4__ = type { i32, %struct.ufs_sb_private_info* }

@.str = private unnamed_addr constant [27 x i8] c": frag = %llu  depth = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c": uspi->s_fpbshift = %d ,uspi->s_apbmask = %x, mask=%llx\0A\00", align 1
@UFS_TYPE_MASK = common dso_local global i32 0, align 4
@UFS_TYPE_UFS2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32)* @ufs_frag_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs_frag_map(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ufs_inode_info*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca %struct.ufs_sb_private_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [4 x i32], align 16
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.buffer_head*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.buffer_head*, align 8
  %22 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = call %struct.ufs_inode_info* @UFS_I(%struct.inode* %23)
  store %struct.ufs_inode_info* %24, %struct.ufs_inode_info** %6, align 8
  %25 = load %struct.inode*, %struct.inode** %4, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load %struct.super_block*, %struct.super_block** %26, align 8
  store %struct.super_block* %27, %struct.super_block** %7, align 8
  %28 = load %struct.super_block*, %struct.super_block** %7, align 8
  %29 = call %struct.TYPE_4__* @UFS_SB(%struct.super_block* %28)
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %30, align 8
  store %struct.ufs_sb_private_info* %31, %struct.ufs_sb_private_info** %8, align 8
  %32 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %8, align 8
  %33 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %8, align 8
  %37 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = ashr i32 %35, %38
  store i32 %39, i32* %9, align 4
  %40 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %8, align 8
  %41 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %8, align 8
  %44 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %42, %45
  store i32 %46, i32* %10, align 4
  %47 = load %struct.inode*, %struct.inode** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %8, align 8
  %50 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = ashr i32 %48, %51
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %54 = call i32 @ufs_block_to_path(%struct.inode* %47, i32 %52, i32* %53)
  store i32 %54, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i64 0, i64* %16, align 8
  %55 = load %struct.super_block*, %struct.super_block** %7, align 8
  %56 = call %struct.TYPE_4__* @UFS_SB(%struct.super_block* %55)
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = trunc i64 %60 to i32
  %62 = load i32, i32* %13, align 4
  %63 = call i32 (i8*, i32, i32, ...) @UFSD(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %62)
  %64 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %8, align 8
  %65 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %8, align 8
  %68 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = call i32 (i8*, i32, i32, ...) @UFSD(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %70, i64 %72)
  %74 = load i32, i32* %13, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %231

77:                                               ; preds = %2
  %78 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  store i32* %78, i32** %12, align 8
  %79 = call i32 (...) @lock_kernel()
  %80 = load i32, i32* %17, align 4
  %81 = load i32, i32* @UFS_TYPE_MASK, align 4
  %82 = and i32 %80, %81
  %83 = load i32, i32* @UFS_TYPE_UFS2, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  br label %156

86:                                               ; preds = %77
  %87 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %6, align 8
  %88 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i32*, i32** %12, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %12, align 8
  %93 = load i32, i32* %91, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %90, i64 %94
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %15, align 4
  %97 = load i32, i32* %15, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %86
  br label %228

100:                                              ; preds = %86
  br label %101

101:                                              ; preds = %141, %100
  %102 = load i32, i32* %13, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %13, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %142

105:                                              ; preds = %101
  %106 = load i32*, i32** %12, align 8
  %107 = getelementptr inbounds i32, i32* %106, i32 1
  store i32* %107, i32** %12, align 8
  %108 = load i32, i32* %106, align 4
  store i32 %108, i32* %20, align 4
  %109 = load %struct.super_block*, %struct.super_block** %7, align 8
  %110 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %8, align 8
  %111 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.super_block*, %struct.super_block** %7, align 8
  %114 = load i32, i32* %15, align 4
  %115 = call i32 @fs32_to_cpu(%struct.super_block* %113, i32 %114)
  %116 = add nsw i32 %112, %115
  %117 = load i32, i32* %20, align 4
  %118 = load i32, i32* %10, align 4
  %119 = ashr i32 %117, %118
  %120 = add nsw i32 %116, %119
  %121 = call %struct.buffer_head* @sb_bread(%struct.super_block* %109, i32 %120)
  store %struct.buffer_head* %121, %struct.buffer_head** %19, align 8
  %122 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %123 = icmp ne %struct.buffer_head* %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %105
  br label %228

125:                                              ; preds = %105
  %126 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %127 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = inttoptr i64 %128 to i32*
  %130 = load i32, i32* %20, align 4
  %131 = load i32, i32* %9, align 4
  %132 = and i32 %130, %131
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %129, i64 %133
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %15, align 4
  %136 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %137 = call i32 @brelse(%struct.buffer_head* %136)
  %138 = load i32, i32* %15, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %125
  br label %228

141:                                              ; preds = %125
  br label %101

142:                                              ; preds = %101
  %143 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %8, align 8
  %144 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.super_block*, %struct.super_block** %7, align 8
  %147 = load i32, i32* %15, align 4
  %148 = call i32 @fs32_to_cpu(%struct.super_block* %146, i32 %147)
  %149 = add nsw i32 %145, %148
  %150 = load i32, i32* %5, align 4
  %151 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %8, align 8
  %152 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = and i32 %150, %153
  %155 = add nsw i32 %149, %154
  store i32 %155, i32* %14, align 4
  br label %228

156:                                              ; preds = %85
  %157 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %6, align 8
  %158 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 0
  %160 = load i64*, i64** %159, align 8
  %161 = load i32*, i32** %12, align 8
  %162 = getelementptr inbounds i32, i32* %161, i32 1
  store i32* %162, i32** %12, align 8
  %163 = load i32, i32* %161, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i64, i64* %160, i64 %164
  %166 = load i64, i64* %165, align 8
  store i64 %166, i64* %16, align 8
  %167 = load i64, i64* %16, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %170, label %169

169:                                              ; preds = %156
  br label %228

170:                                              ; preds = %156
  br label %171

171:                                              ; preds = %212, %170
  %172 = load i32, i32* %13, align 4
  %173 = add nsw i32 %172, -1
  store i32 %173, i32* %13, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %213

175:                                              ; preds = %171
  %176 = load i32*, i32** %12, align 8
  %177 = getelementptr inbounds i32, i32* %176, i32 1
  store i32* %177, i32** %12, align 8
  %178 = load i32, i32* %176, align 4
  store i32 %178, i32* %22, align 4
  %179 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %8, align 8
  %180 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.super_block*, %struct.super_block** %7, align 8
  %183 = load i64, i64* %16, align 8
  %184 = call i32 @fs64_to_cpu(%struct.super_block* %182, i64 %183)
  %185 = add nsw i32 %181, %184
  store i32 %185, i32* %18, align 4
  %186 = load %struct.super_block*, %struct.super_block** %7, align 8
  %187 = load i32, i32* %18, align 4
  %188 = load i32, i32* %22, align 4
  %189 = load i32, i32* %10, align 4
  %190 = ashr i32 %188, %189
  %191 = add nsw i32 %187, %190
  %192 = call %struct.buffer_head* @sb_bread(%struct.super_block* %186, i32 %191)
  store %struct.buffer_head* %192, %struct.buffer_head** %21, align 8
  %193 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %194 = icmp ne %struct.buffer_head* %193, null
  br i1 %194, label %196, label %195

195:                                              ; preds = %175
  br label %228

196:                                              ; preds = %175
  %197 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %198 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = inttoptr i64 %199 to i64*
  %201 = load i32, i32* %22, align 4
  %202 = load i32, i32* %9, align 4
  %203 = and i32 %201, %202
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i64, i64* %200, i64 %204
  %206 = load i64, i64* %205, align 8
  store i64 %206, i64* %16, align 8
  %207 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %208 = call i32 @brelse(%struct.buffer_head* %207)
  %209 = load i64, i64* %16, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %212, label %211

211:                                              ; preds = %196
  br label %228

212:                                              ; preds = %196
  br label %171

213:                                              ; preds = %171
  %214 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %8, align 8
  %215 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.super_block*, %struct.super_block** %7, align 8
  %218 = load i64, i64* %16, align 8
  %219 = call i32 @fs64_to_cpu(%struct.super_block* %217, i64 %218)
  %220 = add nsw i32 %216, %219
  store i32 %220, i32* %18, align 4
  %221 = load i32, i32* %18, align 4
  %222 = load i32, i32* %5, align 4
  %223 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %8, align 8
  %224 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = and i32 %222, %225
  %227 = add nsw i32 %221, %226
  store i32 %227, i32* %14, align 4
  br label %228

228:                                              ; preds = %213, %211, %195, %169, %142, %140, %124, %99
  %229 = call i32 (...) @unlock_kernel()
  %230 = load i32, i32* %14, align 4
  store i32 %230, i32* %3, align 4
  br label %231

231:                                              ; preds = %228, %76
  %232 = load i32, i32* %3, align 4
  ret i32 %232
}

declare dso_local %struct.ufs_inode_info* @UFS_I(%struct.inode*) #1

declare dso_local %struct.TYPE_4__* @UFS_SB(%struct.super_block*) #1

declare dso_local i32 @ufs_block_to_path(%struct.inode*, i32, i32*) #1

declare dso_local i32 @UFSD(i8*, i32, i32, ...) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.super_block*, i32) #1

declare dso_local i32 @fs32_to_cpu(%struct.super_block*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @fs64_to_cpu(%struct.super_block*, i64) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
