; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_namei.c_ext3_htree_fill_tree.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_namei.c_ext3_htree_fill_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.dx_hash_info = type { i64, i32, i64, i32 }
%struct.ext3_dir_entry_2 = type { i32 }
%struct.dx_frame = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64, i64, i32 }

@.str = private unnamed_addr constant [39 x i8] c"In htree_fill_tree, start hash: %x:%x\0A\00", align 1
@EXT3_INDEX_FL = common dso_local global i32 0, align 4
@DX_HASH_TEA = common dso_local global i64 0, align 8
@HASH_NB_ALWAYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Fill tree: returned %d entries, next hash: %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext3_htree_fill_tree(%struct.file* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.dx_hash_info, align 8
  %11 = alloca %struct.ext3_dir_entry_2*, align 8
  %12 = alloca [2 x %struct.dx_frame], align 16
  %13 = alloca %struct.dx_frame*, align 8
  %14 = alloca %struct.inode*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %17, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21)
  %23 = call i32 @dxtrace(i32 %22)
  %24 = load %struct.file*, %struct.file** %6, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load %struct.inode*, %struct.inode** %28, align 8
  store %struct.inode* %29, %struct.inode** %14, align 8
  %30 = load %struct.inode*, %struct.inode** %14, align 8
  %31 = call %struct.TYPE_10__* @EXT3_I(%struct.inode* %30)
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @EXT3_INDEX_FL, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %74, label %37

37:                                               ; preds = %4
  %38 = load %struct.inode*, %struct.inode** %14, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.TYPE_9__* @EXT3_SB(i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.dx_hash_info, %struct.dx_hash_info* %10, i32 0, i32 0
  store i64 %43, i64* %44, align 8
  %45 = getelementptr inbounds %struct.dx_hash_info, %struct.dx_hash_info* %10, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @DX_HASH_TEA, align 8
  %48 = icmp sle i64 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %37
  %50 = load %struct.inode*, %struct.inode** %14, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.TYPE_9__* @EXT3_SB(i32 %52)
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.dx_hash_info, %struct.dx_hash_info* %10, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, %55
  store i64 %58, i64* %56, align 8
  br label %59

59:                                               ; preds = %49, %37
  %60 = load %struct.inode*, %struct.inode** %14, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call %struct.TYPE_9__* @EXT3_SB(i32 %62)
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = getelementptr inbounds %struct.dx_hash_info, %struct.dx_hash_info* %10, i32 0, i32 3
  store i32 %65, i32* %66, align 8
  %67 = load %struct.file*, %struct.file** %6, align 8
  %68 = load %struct.inode*, %struct.inode** %14, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @htree_dirblock_to_tree(%struct.file* %67, %struct.inode* %68, i32 0, %struct.dx_hash_info* %10, i32 %69, i32 %70)
  store i32 %71, i32* %17, align 4
  %72 = load i32*, i32** %9, align 8
  store i32 -1, i32* %72, align 4
  %73 = load i32, i32* %17, align 4
  store i32 %73, i32* %5, align 4
  br label %193

74:                                               ; preds = %4
  %75 = load i32, i32* %7, align 4
  %76 = getelementptr inbounds %struct.dx_hash_info, %struct.dx_hash_info* %10, i32 0, i32 1
  store i32 %75, i32* %76, align 8
  %77 = getelementptr inbounds %struct.dx_hash_info, %struct.dx_hash_info* %10, i32 0, i32 2
  store i64 0, i64* %77, align 8
  %78 = load %struct.file*, %struct.file** %6, align 8
  %79 = getelementptr inbounds %struct.file, %struct.file* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load %struct.inode*, %struct.inode** %82, align 8
  %84 = getelementptr inbounds [2 x %struct.dx_frame], [2 x %struct.dx_frame]* %12, i64 0, i64 0
  %85 = call %struct.dx_frame* @dx_probe(i32* null, %struct.inode* %83, %struct.dx_hash_info* %10, %struct.dx_frame* %84, i32* %16)
  store %struct.dx_frame* %85, %struct.dx_frame** %13, align 8
  %86 = load %struct.dx_frame*, %struct.dx_frame** %13, align 8
  %87 = icmp ne %struct.dx_frame* %86, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %74
  %89 = load i32, i32* %16, align 4
  store i32 %89, i32* %5, align 4
  br label %193

90:                                               ; preds = %74
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %111, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %111, label %96

96:                                               ; preds = %93
  %97 = getelementptr inbounds [2 x %struct.dx_frame], [2 x %struct.dx_frame]* %12, i64 0, i64 0
  %98 = getelementptr inbounds %struct.dx_frame, %struct.dx_frame* %97, i32 0, i32 1
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = inttoptr i64 %101 to %struct.ext3_dir_entry_2*
  store %struct.ext3_dir_entry_2* %102, %struct.ext3_dir_entry_2** %11, align 8
  %103 = load %struct.file*, %struct.file** %6, align 8
  %104 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %11, align 8
  %105 = call i32 @ext3_htree_store_dirent(%struct.file* %103, i32 0, i32 0, %struct.ext3_dir_entry_2* %104)
  store i32 %105, i32* %16, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %96
  br label %189

108:                                              ; preds = %96
  %109 = load i32, i32* %17, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %17, align 4
  br label %111

111:                                              ; preds = %108, %93, %90
  %112 = load i32, i32* %7, align 4
  %113 = icmp slt i32 %112, 2
  br i1 %113, label %120, label %114

114:                                              ; preds = %111
  %115 = load i32, i32* %7, align 4
  %116 = icmp eq i32 %115, 2
  br i1 %116, label %117, label %137

117:                                              ; preds = %114
  %118 = load i32, i32* %8, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %137

120:                                              ; preds = %117, %111
  %121 = getelementptr inbounds [2 x %struct.dx_frame], [2 x %struct.dx_frame]* %12, i64 0, i64 0
  %122 = getelementptr inbounds %struct.dx_frame, %struct.dx_frame* %121, i32 0, i32 1
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = inttoptr i64 %125 to %struct.ext3_dir_entry_2*
  store %struct.ext3_dir_entry_2* %126, %struct.ext3_dir_entry_2** %11, align 8
  %127 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %11, align 8
  %128 = call %struct.ext3_dir_entry_2* @ext3_next_entry(%struct.ext3_dir_entry_2* %127)
  store %struct.ext3_dir_entry_2* %128, %struct.ext3_dir_entry_2** %11, align 8
  %129 = load %struct.file*, %struct.file** %6, align 8
  %130 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %11, align 8
  %131 = call i32 @ext3_htree_store_dirent(%struct.file* %129, i32 2, i32 0, %struct.ext3_dir_entry_2* %130)
  store i32 %131, i32* %16, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %120
  br label %189

134:                                              ; preds = %120
  %135 = load i32, i32* %17, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %17, align 4
  br label %137

137:                                              ; preds = %134, %117, %114
  br label %138

138:                                              ; preds = %137, %179
  %139 = load %struct.dx_frame*, %struct.dx_frame** %13, align 8
  %140 = getelementptr inbounds %struct.dx_frame, %struct.dx_frame* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @dx_get_block(i32 %141)
  store i32 %142, i32* %15, align 4
  %143 = load %struct.file*, %struct.file** %6, align 8
  %144 = load %struct.inode*, %struct.inode** %14, align 8
  %145 = load i32, i32* %15, align 4
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* %8, align 4
  %148 = call i32 @htree_dirblock_to_tree(%struct.file* %143, %struct.inode* %144, i32 %145, %struct.dx_hash_info* %10, i32 %146, i32 %147)
  store i32 %148, i32* %18, align 4
  %149 = load i32, i32* %18, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %138
  %152 = load i32, i32* %18, align 4
  store i32 %152, i32* %16, align 4
  br label %189

153:                                              ; preds = %138
  %154 = load i32, i32* %18, align 4
  %155 = load i32, i32* %17, align 4
  %156 = add nsw i32 %155, %154
  store i32 %156, i32* %17, align 4
  store i32 -1, i32* %19, align 4
  %157 = load %struct.inode*, %struct.inode** %14, align 8
  %158 = load i32, i32* @HASH_NB_ALWAYS, align 4
  %159 = load %struct.dx_frame*, %struct.dx_frame** %13, align 8
  %160 = getelementptr inbounds [2 x %struct.dx_frame], [2 x %struct.dx_frame]* %12, i64 0, i64 0
  %161 = call i32 @ext3_htree_next_block(%struct.inode* %157, i32 %158, %struct.dx_frame* %159, %struct.dx_frame* %160, i32* %19)
  store i32 %161, i32* %18, align 4
  %162 = load i32, i32* %19, align 4
  %163 = load i32*, i32** %9, align 8
  store i32 %162, i32* %163, align 4
  %164 = load i32, i32* %18, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %153
  %167 = load i32, i32* %18, align 4
  store i32 %167, i32* %16, align 4
  br label %189

168:                                              ; preds = %153
  %169 = load i32, i32* %18, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %178, label %171

171:                                              ; preds = %168
  %172 = load i32, i32* %17, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %171
  %175 = load i32, i32* %19, align 4
  %176 = and i32 %175, 1
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %174, %168
  br label %180

179:                                              ; preds = %174, %171
  br label %138

180:                                              ; preds = %178
  %181 = getelementptr inbounds [2 x %struct.dx_frame], [2 x %struct.dx_frame]* %12, i64 0, i64 0
  %182 = call i32 @dx_release(%struct.dx_frame* %181)
  %183 = load i32, i32* %17, align 4
  %184 = load i32*, i32** %9, align 8
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %183, i32 %185)
  %187 = call i32 @dxtrace(i32 %186)
  %188 = load i32, i32* %17, align 4
  store i32 %188, i32* %5, align 4
  br label %193

189:                                              ; preds = %166, %151, %133, %107
  %190 = getelementptr inbounds [2 x %struct.dx_frame], [2 x %struct.dx_frame]* %12, i64 0, i64 0
  %191 = call i32 @dx_release(%struct.dx_frame* %190)
  %192 = load i32, i32* %16, align 4
  store i32 %192, i32* %5, align 4
  br label %193

193:                                              ; preds = %189, %180, %88, %59
  %194 = load i32, i32* %5, align 4
  ret i32 %194
}

declare dso_local i32 @dxtrace(i32) #1

declare dso_local i32 @printk(i8*, i32, i32) #1

declare dso_local %struct.TYPE_10__* @EXT3_I(%struct.inode*) #1

declare dso_local %struct.TYPE_9__* @EXT3_SB(i32) #1

declare dso_local i32 @htree_dirblock_to_tree(%struct.file*, %struct.inode*, i32, %struct.dx_hash_info*, i32, i32) #1

declare dso_local %struct.dx_frame* @dx_probe(i32*, %struct.inode*, %struct.dx_hash_info*, %struct.dx_frame*, i32*) #1

declare dso_local i32 @ext3_htree_store_dirent(%struct.file*, i32, i32, %struct.ext3_dir_entry_2*) #1

declare dso_local %struct.ext3_dir_entry_2* @ext3_next_entry(%struct.ext3_dir_entry_2*) #1

declare dso_local i32 @dx_get_block(i32) #1

declare dso_local i32 @ext3_htree_next_block(%struct.inode*, i32, %struct.dx_frame*, %struct.dx_frame*, i32*) #1

declare dso_local i32 @dx_release(%struct.dx_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
