; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_truncate.c_ufs_trunc_direct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_truncate.c_ufs_trunc_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.ufs_inode_info = type { i32 }
%struct.ufs_sb_private_info = type { i32, i32 }
%struct.TYPE_2__ = type { %struct.ufs_sb_private_info* }

@.str = private unnamed_addr constant [16 x i8] c"ENTER: ino %lu\0A\00", align 1
@DIRECT_FRAGMENT = common dso_local global i32 0, align 4
@u32 = common dso_local global i32 0, align 4
@UFS_NDIR_FRAGMENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [83 x i8] c"ino %lu, frag1 %llu, frag2 %llu, block1 %llu, block2 %llu, frag3 %llu, frag4 %llu\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"ufs_trunc_direct\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"internal error\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"ufs_truncate_direct\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"EXIT: ino %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*)* @ufs_trunc_direct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs_trunc_direct(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.ufs_inode_info*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.ufs_sb_private_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %2, align 8
  %18 = load %struct.inode*, %struct.inode** %2, align 8
  %19 = call %struct.ufs_inode_info* @UFS_I(%struct.inode* %18)
  store %struct.ufs_inode_info* %19, %struct.ufs_inode_info** %3, align 8
  %20 = load %struct.inode*, %struct.inode** %2, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 (i8*, i32, ...) @UFSD(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.inode*, %struct.inode** %2, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 1
  %26 = load %struct.super_block*, %struct.super_block** %25, align 8
  store %struct.super_block* %26, %struct.super_block** %4, align 8
  %27 = load %struct.super_block*, %struct.super_block** %4, align 8
  %28 = call %struct.TYPE_2__* @UFS_SB(%struct.super_block* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %29, align 8
  store %struct.ufs_sb_private_info* %30, %struct.ufs_sb_private_info** %5, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %17, align 4
  %31 = load i32, i32* @DIRECT_FRAGMENT, align 4
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* @u32, align 4
  %33 = load i32, i32* @UFS_NDIR_FRAGMENT, align 4
  %34 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %3, align 8
  %35 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @min_t(i32 %32, i32 %33, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %5, align 8
  %40 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %38, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %1
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %5, align 8
  %47 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %45, %48
  %50 = add nsw i32 %49, 1
  br label %53

51:                                               ; preds = %1
  %52 = load i32, i32* %7, align 4
  br label %53

53:                                               ; preds = %51, %44
  %54 = phi i32 [ %50, %44 ], [ %52, %51 ]
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %5, align 8
  %57 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = xor i32 %58, -1
  %60 = and i32 %55, %59
  store i32 %60, i32* %9, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %53
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %76

66:                                               ; preds = %53
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @ufs_fragstoblks(i32 %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @ufs_fragstoblks(i32 %73)
  store i32 %74, i32* %12, align 4
  br label %75

75:                                               ; preds = %70, %66
  br label %76

76:                                               ; preds = %75, %64
  %77 = load %struct.inode*, %struct.inode** %2, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = call i32 (i8*, i32, ...) @UFSD(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 %79, i64 %81, i64 %83, i64 %85, i64 %87, i64 %89, i64 %91)
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp sge i32 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %76
  br label %128

97:                                               ; preds = %76
  %98 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %5, align 8
  %99 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %3, align 8
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @ufs_fragstoblks(i32 %100)
  %102 = call i8* @ufs_get_direct_data_ptr(%struct.ufs_sb_private_info* %98, %struct.ufs_inode_info* %99, i32 %101)
  store i8* %102, i8** %6, align 8
  %103 = load %struct.super_block*, %struct.super_block** %4, align 8
  %104 = load i8*, i8** %6, align 8
  %105 = call i32 @ufs_data_ptr_to_cpu(%struct.super_block* %103, i8* %104)
  store i32 %105, i32* %16, align 4
  %106 = load i32, i32* %16, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %97
  %109 = load %struct.super_block*, %struct.super_block** %4, align 8
  %110 = call i32 @ufs_panic(%struct.super_block* %109, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %111

111:                                              ; preds = %108, %97
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* %8, align 4
  %114 = sub nsw i32 %113, %112
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @ufs_fragnum(i32 %115)
  store i32 %116, i32* %7, align 4
  %117 = load %struct.inode*, %struct.inode** %2, align 8
  %118 = load i32, i32* %16, align 4
  %119 = load i32, i32* %7, align 4
  %120 = add i32 %118, %119
  %121 = load i32, i32* %8, align 4
  %122 = call i32 @ufs_free_fragments(%struct.inode* %117, i32 %120, i32 %121)
  %123 = load %struct.inode*, %struct.inode** %2, align 8
  %124 = call i32 @mark_inode_dirty(%struct.inode* %123)
  %125 = load i32, i32* %16, align 4
  %126 = load i32, i32* %7, align 4
  %127 = add i32 %125, %126
  store i32 %127, i32* %13, align 4
  br label %128

128:                                              ; preds = %111, %96
  %129 = load i32, i32* %11, align 4
  store i32 %129, i32* %15, align 4
  br label %130

130:                                              ; preds = %184, %128
  %131 = load i32, i32* %15, align 4
  %132 = load i32, i32* %12, align 4
  %133 = icmp ult i32 %131, %132
  br i1 %133, label %134, label %187

134:                                              ; preds = %130
  %135 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %5, align 8
  %136 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %3, align 8
  %137 = load i32, i32* %15, align 4
  %138 = call i8* @ufs_get_direct_data_ptr(%struct.ufs_sb_private_info* %135, %struct.ufs_inode_info* %136, i32 %137)
  store i8* %138, i8** %6, align 8
  %139 = load %struct.super_block*, %struct.super_block** %4, align 8
  %140 = load i8*, i8** %6, align 8
  %141 = call i32 @ufs_data_ptr_to_cpu(%struct.super_block* %139, i8* %140)
  store i32 %141, i32* %16, align 4
  %142 = load i32, i32* %16, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %134
  br label %184

145:                                              ; preds = %134
  %146 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %5, align 8
  %147 = load i8*, i8** %6, align 8
  %148 = call i32 @ufs_data_ptr_clear(%struct.ufs_sb_private_info* %146, i8* %147)
  %149 = load i32, i32* %14, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %145
  %152 = load i32, i32* %16, align 4
  store i32 %152, i32* %13, align 4
  %153 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %5, align 8
  %154 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  store i32 %155, i32* %14, align 4
  br label %181

156:                                              ; preds = %145
  %157 = load i32, i32* %14, align 4
  %158 = icmp ugt i32 %157, 0
  br i1 %158, label %159, label %171

159:                                              ; preds = %156
  %160 = load i32, i32* %13, align 4
  %161 = load i32, i32* %16, align 4
  %162 = load i32, i32* %14, align 4
  %163 = sub i32 %161, %162
  %164 = icmp eq i32 %160, %163
  br i1 %164, label %165, label %171

165:                                              ; preds = %159
  %166 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %5, align 8
  %167 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %14, align 4
  %170 = add i32 %169, %168
  store i32 %170, i32* %14, align 4
  br label %180

171:                                              ; preds = %159, %156
  %172 = load %struct.inode*, %struct.inode** %2, align 8
  %173 = load i32, i32* %13, align 4
  %174 = load i32, i32* %14, align 4
  %175 = call i32 @ufs_free_blocks(%struct.inode* %172, i32 %173, i32 %174)
  %176 = load i32, i32* %16, align 4
  store i32 %176, i32* %13, align 4
  %177 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %5, align 8
  %178 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  store i32 %179, i32* %14, align 4
  br label %180

180:                                              ; preds = %171, %165
  br label %181

181:                                              ; preds = %180, %151
  %182 = load %struct.inode*, %struct.inode** %2, align 8
  %183 = call i32 @mark_inode_dirty(%struct.inode* %182)
  br label %184

184:                                              ; preds = %181, %144
  %185 = load i32, i32* %15, align 4
  %186 = add i32 %185, 1
  store i32 %186, i32* %15, align 4
  br label %130

187:                                              ; preds = %130
  %188 = load i32, i32* %14, align 4
  %189 = icmp ugt i32 %188, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %187
  %191 = load %struct.inode*, %struct.inode** %2, align 8
  %192 = load i32, i32* %13, align 4
  %193 = load i32, i32* %14, align 4
  %194 = call i32 @ufs_free_blocks(%struct.inode* %191, i32 %192, i32 %193)
  br label %195

195:                                              ; preds = %190, %187
  %196 = load i32, i32* %9, align 4
  %197 = load i32, i32* %10, align 4
  %198 = icmp sge i32 %196, %197
  br i1 %198, label %199, label %200

199:                                              ; preds = %195
  br label %226

200:                                              ; preds = %195
  %201 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %5, align 8
  %202 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %3, align 8
  %203 = load i32, i32* %9, align 4
  %204 = call i32 @ufs_fragstoblks(i32 %203)
  %205 = call i8* @ufs_get_direct_data_ptr(%struct.ufs_sb_private_info* %201, %struct.ufs_inode_info* %202, i32 %204)
  store i8* %205, i8** %6, align 8
  %206 = load %struct.super_block*, %struct.super_block** %4, align 8
  %207 = load i8*, i8** %6, align 8
  %208 = call i32 @ufs_data_ptr_to_cpu(%struct.super_block* %206, i8* %207)
  store i32 %208, i32* %16, align 4
  %209 = load i32, i32* %16, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %214, label %211

211:                                              ; preds = %200
  %212 = load %struct.super_block*, %struct.super_block** %4, align 8
  %213 = call i32 @ufs_panic(%struct.super_block* %212, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %214

214:                                              ; preds = %211, %200
  %215 = load i32, i32* %10, align 4
  %216 = call i32 @ufs_fragnum(i32 %215)
  store i32 %216, i32* %10, align 4
  %217 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %5, align 8
  %218 = load i8*, i8** %6, align 8
  %219 = call i32 @ufs_data_ptr_clear(%struct.ufs_sb_private_info* %217, i8* %218)
  %220 = load %struct.inode*, %struct.inode** %2, align 8
  %221 = load i32, i32* %16, align 4
  %222 = load i32, i32* %10, align 4
  %223 = call i32 @ufs_free_fragments(%struct.inode* %220, i32 %221, i32 %222)
  %224 = load %struct.inode*, %struct.inode** %2, align 8
  %225 = call i32 @mark_inode_dirty(%struct.inode* %224)
  br label %226

226:                                              ; preds = %214, %199
  %227 = load %struct.inode*, %struct.inode** %2, align 8
  %228 = getelementptr inbounds %struct.inode, %struct.inode* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = call i32 (i8*, i32, ...) @UFSD(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %229)
  %231 = load i32, i32* %17, align 4
  ret i32 %231
}

declare dso_local %struct.ufs_inode_info* @UFS_I(%struct.inode*) #1

declare dso_local i32 @UFSD(i8*, i32, ...) #1

declare dso_local %struct.TYPE_2__* @UFS_SB(%struct.super_block*) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i32 @ufs_fragstoblks(i32) #1

declare dso_local i8* @ufs_get_direct_data_ptr(%struct.ufs_sb_private_info*, %struct.ufs_inode_info*, i32) #1

declare dso_local i32 @ufs_data_ptr_to_cpu(%struct.super_block*, i8*) #1

declare dso_local i32 @ufs_panic(%struct.super_block*, i8*, i8*) #1

declare dso_local i32 @ufs_fragnum(i32) #1

declare dso_local i32 @ufs_free_fragments(%struct.inode*, i32, i32) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @ufs_data_ptr_clear(%struct.ufs_sb_private_info*, i8*) #1

declare dso_local i32 @ufs_free_blocks(%struct.inode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
