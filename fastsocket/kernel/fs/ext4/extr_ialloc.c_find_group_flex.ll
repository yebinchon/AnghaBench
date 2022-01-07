; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_ialloc.c_find_group_flex.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_ialloc.c_find_group_flex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.inode = type { i32 }
%struct.ext4_sb_info = type { i32, i32, %struct.flex_groups* }
%struct.flex_groups = type { i32, i32 }
%struct.ext4_group_desc = type { i32 }
%struct.TYPE_2__ = type { i32 }

@free_block_ratio = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.inode*, i32*)* @find_group_flex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_group_flex(%struct.super_block* %0, %struct.inode* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ext4_sb_info*, align 8
  %9 = alloca %struct.ext4_group_desc*, align 8
  %10 = alloca %struct.flex_groups*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store i32* %2, i32** %7, align 8
  %21 = load %struct.super_block*, %struct.super_block** %5, align 8
  %22 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %21)
  store %struct.ext4_sb_info* %22, %struct.ext4_sb_info** %8, align 8
  %23 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %8, align 8
  %24 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %23, i32 0, i32 2
  %25 = load %struct.flex_groups*, %struct.flex_groups** %24, align 8
  store %struct.flex_groups* %25, %struct.flex_groups** %10, align 8
  %26 = load %struct.inode*, %struct.inode** %6, align 8
  %27 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %11, align 4
  %30 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %8, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @ext4_flex_group(%struct.ext4_sb_info* %30, i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = load %struct.super_block*, %struct.super_block** %5, align 8
  %34 = call i32 @ext4_get_groups_count(%struct.super_block* %33)
  store i32 %34, i32* %13, align 4
  %35 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %8, align 8
  %36 = call i32 @ext4_flex_bg_size(%struct.ext4_sb_info* %35)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %15, align 4
  %38 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %8, align 8
  %39 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %14, align 4
  %42 = mul nsw i32 %40, %41
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %14, align 4
  %45 = add nsw i32 %43, %44
  %46 = sub nsw i32 %45, 1
  %47 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %8, align 8
  %48 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = ashr i32 %46, %49
  store i32 %50, i32* %19, align 4
  br label %51

51:                                               ; preds = %81, %3
  %52 = load %struct.flex_groups*, %struct.flex_groups** %10, align 8
  %53 = load i32, i32* %15, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.flex_groups, %struct.flex_groups* %52, i64 %54
  %56 = getelementptr inbounds %struct.flex_groups, %struct.flex_groups* %55, i32 0, i32 0
  %57 = call i32 @atomic_read(i32* %56)
  store i32 %57, i32* %17, align 4
  %58 = load i32, i32* %17, align 4
  %59 = mul nsw i32 %58, 100
  %60 = load i32, i32* %16, align 4
  %61 = sdiv i32 %59, %60
  store i32 %61, i32* %18, align 4
  %62 = load %struct.flex_groups*, %struct.flex_groups** %10, align 8
  %63 = load i32, i32* %15, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.flex_groups, %struct.flex_groups* %62, i64 %64
  %66 = getelementptr inbounds %struct.flex_groups, %struct.flex_groups* %65, i32 0, i32 1
  %67 = call i32 @atomic_read(i32* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %51
  %70 = load i32, i32* %18, align 4
  %71 = load i32, i32* @free_block_ratio, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %177

74:                                               ; preds = %69, %51
  %75 = load i32, i32* %15, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i32, i32* %15, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %15, align 4
  br label %51

84:                                               ; preds = %77, %74
  store i32 0, i32* %20, align 4
  br label %85

85:                                               ; preds = %156, %84
  %86 = load i32, i32* %20, align 4
  %87 = load i32, i32* %19, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %159

89:                                               ; preds = %85
  %90 = load i32, i32* %20, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %98, label %93

93:                                               ; preds = %89
  %94 = load i32, i32* %20, align 4
  %95 = load i32, i32* %12, align 4
  %96 = sub nsw i32 %95, 1
  %97 = icmp eq i32 %94, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %93, %89
  br label %156

99:                                               ; preds = %93
  %100 = load %struct.flex_groups*, %struct.flex_groups** %10, align 8
  %101 = load i32, i32* %20, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.flex_groups, %struct.flex_groups* %100, i64 %102
  %104 = getelementptr inbounds %struct.flex_groups, %struct.flex_groups* %103, i32 0, i32 0
  %105 = call i32 @atomic_read(i32* %104)
  store i32 %105, i32* %17, align 4
  %106 = load i32, i32* %17, align 4
  %107 = mul nsw i32 %106, 100
  %108 = load i32, i32* %16, align 4
  %109 = sdiv i32 %107, %108
  store i32 %109, i32* %18, align 4
  %110 = load i32, i32* %18, align 4
  %111 = load i32, i32* @free_block_ratio, align 4
  %112 = icmp sgt i32 %110, %111
  br i1 %112, label %113, label %123

113:                                              ; preds = %99
  %114 = load %struct.flex_groups*, %struct.flex_groups** %10, align 8
  %115 = load i32, i32* %20, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.flex_groups, %struct.flex_groups* %114, i64 %116
  %118 = getelementptr inbounds %struct.flex_groups, %struct.flex_groups* %117, i32 0, i32 1
  %119 = call i32 @atomic_read(i32* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %113
  %122 = load i32, i32* %20, align 4
  store i32 %122, i32* %15, align 4
  br label %177

123:                                              ; preds = %113, %99
  %124 = load %struct.flex_groups*, %struct.flex_groups** %10, align 8
  %125 = load i32, i32* %15, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.flex_groups, %struct.flex_groups* %124, i64 %126
  %128 = getelementptr inbounds %struct.flex_groups, %struct.flex_groups* %127, i32 0, i32 1
  %129 = call i32 @atomic_read(i32* %128)
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %153, label %131

131:                                              ; preds = %123
  %132 = load %struct.flex_groups*, %struct.flex_groups** %10, align 8
  %133 = load i32, i32* %20, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.flex_groups, %struct.flex_groups* %132, i64 %134
  %136 = getelementptr inbounds %struct.flex_groups, %struct.flex_groups* %135, i32 0, i32 0
  %137 = call i32 @atomic_read(i32* %136)
  %138 = load %struct.flex_groups*, %struct.flex_groups** %10, align 8
  %139 = load i32, i32* %15, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.flex_groups, %struct.flex_groups* %138, i64 %140
  %142 = getelementptr inbounds %struct.flex_groups, %struct.flex_groups* %141, i32 0, i32 0
  %143 = call i32 @atomic_read(i32* %142)
  %144 = icmp sgt i32 %137, %143
  br i1 %144, label %145, label %155

145:                                              ; preds = %131
  %146 = load %struct.flex_groups*, %struct.flex_groups** %10, align 8
  %147 = load i32, i32* %20, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.flex_groups, %struct.flex_groups* %146, i64 %148
  %150 = getelementptr inbounds %struct.flex_groups, %struct.flex_groups* %149, i32 0, i32 1
  %151 = call i32 @atomic_read(i32* %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %145, %123
  %154 = load i32, i32* %20, align 4
  store i32 %154, i32* %15, align 4
  br label %155

155:                                              ; preds = %153, %145, %131
  br label %156

156:                                              ; preds = %155, %98
  %157 = load i32, i32* %20, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %20, align 4
  br label %85

159:                                              ; preds = %85
  %160 = load %struct.flex_groups*, %struct.flex_groups** %10, align 8
  %161 = load i32, i32* %15, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.flex_groups, %struct.flex_groups* %160, i64 %162
  %164 = getelementptr inbounds %struct.flex_groups, %struct.flex_groups* %163, i32 0, i32 1
  %165 = call i32 @atomic_read(i32* %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %175

167:                                              ; preds = %159
  %168 = load %struct.flex_groups*, %struct.flex_groups** %10, align 8
  %169 = load i32, i32* %15, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.flex_groups, %struct.flex_groups* %168, i64 %170
  %172 = getelementptr inbounds %struct.flex_groups, %struct.flex_groups* %171, i32 0, i32 0
  %173 = call i32 @atomic_read(i32* %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %176, label %175

175:                                              ; preds = %167, %159
  store i32 -1, i32* %4, align 4
  br label %211

176:                                              ; preds = %167
  br label %177

177:                                              ; preds = %176, %121, %73
  %178 = load i32, i32* %15, align 4
  %179 = load i32, i32* %14, align 4
  %180 = mul nsw i32 %178, %179
  store i32 %180, i32* %20, align 4
  br label %181

181:                                              ; preds = %206, %177
  %182 = load i32, i32* %20, align 4
  %183 = load i32, i32* %13, align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %185, label %192

185:                                              ; preds = %181
  %186 = load i32, i32* %20, align 4
  %187 = load i32, i32* %15, align 4
  %188 = add nsw i32 %187, 1
  %189 = load i32, i32* %14, align 4
  %190 = mul nsw i32 %188, %189
  %191 = icmp slt i32 %186, %190
  br label %192

192:                                              ; preds = %185, %181
  %193 = phi i1 [ false, %181 ], [ %191, %185 ]
  br i1 %193, label %194, label %209

194:                                              ; preds = %192
  %195 = load %struct.super_block*, %struct.super_block** %5, align 8
  %196 = load i32, i32* %20, align 4
  %197 = call %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block* %195, i32 %196, i32* null)
  store %struct.ext4_group_desc* %197, %struct.ext4_group_desc** %9, align 8
  %198 = load %struct.super_block*, %struct.super_block** %5, align 8
  %199 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %9, align 8
  %200 = call i64 @ext4_free_inodes_count(%struct.super_block* %198, %struct.ext4_group_desc* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %194
  %203 = load i32, i32* %20, align 4
  %204 = load i32*, i32** %7, align 8
  store i32 %203, i32* %204, align 4
  br label %210

205:                                              ; preds = %194
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* %20, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %20, align 4
  br label %181

209:                                              ; preds = %192
  store i32 -1, i32* %4, align 4
  br label %211

210:                                              ; preds = %202
  store i32 0, i32* %4, align 4
  br label %211

211:                                              ; preds = %210, %209, %175
  %212 = load i32, i32* %4, align 4
  ret i32 %212
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local %struct.TYPE_2__* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @ext4_flex_group(%struct.ext4_sb_info*, i32) #1

declare dso_local i32 @ext4_get_groups_count(%struct.super_block*) #1

declare dso_local i32 @ext4_flex_bg_size(%struct.ext4_sb_info*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block*, i32, i32*) #1

declare dso_local i64 @ext4_free_inodes_count(%struct.super_block*, %struct.ext4_group_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
