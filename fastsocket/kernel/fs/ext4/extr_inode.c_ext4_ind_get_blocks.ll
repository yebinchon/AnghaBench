; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_ind_get_blocks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_ind_get_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_8__ = type { %struct.buffer_head*, i32, i32* }

@EIO = common dso_local global i32 0, align 4
@EXT4_INODE_EXTENTS = common dso_local global i32 0, align 4
@EXT4_GET_BLOCKS_CREATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"call brelse\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"returned\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, i32, i32, %struct.buffer_head*, i32)* @ext4_ind_get_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_ind_get_blocks(i32* %0, %struct.inode* %1, i32 %2, i32 %3, %struct.buffer_head* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [4 x i32], align 16
  %15 = alloca [4 x %struct.TYPE_8__], align 16
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.buffer_head* %4, %struct.buffer_head** %11, align 8
  store i32 %5, i32* %12, align 4
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %13, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %21, align 4
  store i64 0, i64* %22, align 8
  %26 = load %struct.inode*, %struct.inode** %8, align 8
  %27 = load i32, i32* @EXT4_INODE_EXTENTS, align 4
  %28 = call i32 @ext4_test_inode_flag(%struct.inode* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @J_ASSERT(i32 %31)
  %33 = load i32*, i32** %7, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %6
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* @EXT4_GET_BLOCKS_CREATE, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br label %40

40:                                               ; preds = %35, %6
  %41 = phi i1 [ true, %6 ], [ %39, %35 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @J_ASSERT(i32 %42)
  %44 = load %struct.inode*, %struct.inode** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %47 = call i32 @ext4_block_to_path(%struct.inode* %44, i32 %45, i32* %46, i32* %19)
  store i32 %47, i32* %20, align 4
  %48 = load i32, i32* %20, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %217

51:                                               ; preds = %40
  %52 = load %struct.inode*, %struct.inode** %8, align 8
  %53 = load i32, i32* %20, align 4
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %55 = getelementptr inbounds [4 x %struct.TYPE_8__], [4 x %struct.TYPE_8__]* %15, i64 0, i64 0
  %56 = call %struct.TYPE_8__* @ext4_get_branch(%struct.inode* %52, i32 %53, i32* %54, %struct.TYPE_8__* %55, i32* %13)
  store %struct.TYPE_8__* %56, %struct.TYPE_8__** %16, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %58 = icmp ne %struct.TYPE_8__* %57, null
  br i1 %58, label %105, label %59

59:                                               ; preds = %51
  %60 = load i32, i32* %20, align 4
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [4 x %struct.TYPE_8__], [4 x %struct.TYPE_8__]* %15, i64 0, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @le32_to_cpu(i32 %65)
  store i64 %66, i64* %22, align 8
  %67 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %68 = call i32 @clear_buffer_new(%struct.buffer_head* %67)
  %69 = load i32, i32* %21, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %21, align 4
  br label %71

71:                                               ; preds = %103, %59
  %72 = load i32, i32* %21, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp ult i32 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load i32, i32* %21, align 4
  %77 = load i32, i32* %19, align 4
  %78 = icmp sle i32 %76, %77
  br label %79

79:                                               ; preds = %75, %71
  %80 = phi i1 [ false, %71 ], [ %78, %75 ]
  br i1 %80, label %81, label %104

81:                                               ; preds = %79
  %82 = load i32, i32* %20, align 4
  %83 = sub nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [4 x %struct.TYPE_8__], [4 x %struct.TYPE_8__]* %15, i64 0, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %21, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @le32_to_cpu(i32 %91)
  store i64 %92, i64* %23, align 8
  %93 = load i64, i64* %23, align 8
  %94 = load i64, i64* %22, align 8
  %95 = load i32, i32* %21, align 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %94, %96
  %98 = icmp eq i64 %93, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %81
  %100 = load i32, i32* %21, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %21, align 4
  br label %103

102:                                              ; preds = %81
  br label %104

103:                                              ; preds = %99
  br label %71

104:                                              ; preds = %102, %79
  br label %172

105:                                              ; preds = %51
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* @EXT4_GET_BLOCKS_CREATE, align 4
  %108 = and i32 %106, %107
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %115, label %110

110:                                              ; preds = %105
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* @EIO, align 4
  %113 = sub nsw i32 0, %112
  %114 = icmp eq i32 %111, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %110, %105
  br label %198

116:                                              ; preds = %110
  %117 = load %struct.inode*, %struct.inode** %8, align 8
  %118 = load i32, i32* %9, align 4
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %120 = call i64 @ext4_find_goal(%struct.inode* %117, i32 %118, %struct.TYPE_8__* %119)
  store i64 %120, i64* %17, align 8
  %121 = getelementptr inbounds [4 x %struct.TYPE_8__], [4 x %struct.TYPE_8__]* %15, i64 0, i64 0
  %122 = load i32, i32* %20, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i64 %123
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %126 = ptrtoint %struct.TYPE_8__* %124 to i64
  %127 = ptrtoint %struct.TYPE_8__* %125 to i64
  %128 = sub i64 %126, %127
  %129 = sdiv exact i64 %128, 24
  %130 = sub nsw i64 %129, 1
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %18, align 4
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %133 = load i32, i32* %18, align 4
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* %19, align 4
  %136 = call i32 @ext4_blks_to_allocate(%struct.TYPE_8__* %132, i32 %133, i32 %134, i32 %135)
  store i32 %136, i32* %21, align 4
  %137 = load i32*, i32** %7, align 8
  %138 = load %struct.inode*, %struct.inode** %8, align 8
  %139 = load i32, i32* %9, align 4
  %140 = load i32, i32* %18, align 4
  %141 = load i64, i64* %17, align 8
  %142 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %144 = getelementptr inbounds [4 x %struct.TYPE_8__], [4 x %struct.TYPE_8__]* %15, i64 0, i64 0
  %145 = ptrtoint %struct.TYPE_8__* %143 to i64
  %146 = ptrtoint %struct.TYPE_8__* %144 to i64
  %147 = sub i64 %145, %146
  %148 = sdiv exact i64 %147, 24
  %149 = getelementptr inbounds i32, i32* %142, i64 %148
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %151 = call i32 @ext4_alloc_branch(i32* %137, %struct.inode* %138, i32 %139, i32 %140, i32* %21, i64 %141, i32* %149, %struct.TYPE_8__* %150)
  store i32 %151, i32* %13, align 4
  %152 = load i32, i32* %13, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %162, label %154

154:                                              ; preds = %116
  %155 = load i32*, i32** %7, align 8
  %156 = load %struct.inode*, %struct.inode** %8, align 8
  %157 = load i32, i32* %9, align 4
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %159 = load i32, i32* %18, align 4
  %160 = load i32, i32* %21, align 4
  %161 = call i32 @ext4_splice_branch(i32* %155, %struct.inode* %156, i32 %157, %struct.TYPE_8__* %158, i32 %159, i32 %160)
  store i32 %161, i32* %13, align 4
  br label %162

162:                                              ; preds = %154, %116
  %163 = load i32, i32* %13, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %162
  br label %198

166:                                              ; preds = %162
  %167 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %168 = call i32 @set_buffer_new(%struct.buffer_head* %167)
  %169 = load i32*, i32** %7, align 8
  %170 = load %struct.inode*, %struct.inode** %8, align 8
  %171 = call i32 @ext4_update_inode_fsync_trans(i32* %169, %struct.inode* %170, i32 1)
  br label %172

172:                                              ; preds = %166, %104
  %173 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %174 = load %struct.inode*, %struct.inode** %8, align 8
  %175 = getelementptr inbounds %struct.inode, %struct.inode* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %20, align 4
  %178 = sub nsw i32 %177, 1
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [4 x %struct.TYPE_8__], [4 x %struct.TYPE_8__]* %15, i64 0, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = call i64 @le32_to_cpu(i32 %182)
  %184 = call i32 @map_bh(%struct.buffer_head* %173, i32 %176, i64 %183)
  %185 = load i32, i32* %21, align 4
  %186 = load i32, i32* %19, align 4
  %187 = icmp sgt i32 %185, %186
  br i1 %187, label %188, label %191

188:                                              ; preds = %172
  %189 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %190 = call i32 @set_buffer_boundary(%struct.buffer_head* %189)
  br label %191

191:                                              ; preds = %188, %172
  %192 = load i32, i32* %21, align 4
  store i32 %192, i32* %13, align 4
  %193 = getelementptr inbounds [4 x %struct.TYPE_8__], [4 x %struct.TYPE_8__]* %15, i64 0, i64 0
  %194 = load i32, i32* %20, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i64 -1
  store %struct.TYPE_8__* %197, %struct.TYPE_8__** %16, align 8
  br label %198

198:                                              ; preds = %191, %165, %115
  br label %199

199:                                              ; preds = %203, %198
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %201 = getelementptr inbounds [4 x %struct.TYPE_8__], [4 x %struct.TYPE_8__]* %15, i64 0, i64 0
  %202 = icmp ugt %struct.TYPE_8__* %200, %201
  br i1 %202, label %203, label %214

203:                                              ; preds = %199
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 0
  %206 = load %struct.buffer_head*, %struct.buffer_head** %205, align 8
  %207 = call i32 @BUFFER_TRACE(%struct.buffer_head* %206, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 0
  %210 = load %struct.buffer_head*, %struct.buffer_head** %209, align 8
  %211 = call i32 @brelse(%struct.buffer_head* %210)
  %212 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 -1
  store %struct.TYPE_8__* %213, %struct.TYPE_8__** %16, align 8
  br label %199

214:                                              ; preds = %199
  %215 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %216 = call i32 @BUFFER_TRACE(%struct.buffer_head* %215, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %217

217:                                              ; preds = %214, %50
  %218 = load i32, i32* %13, align 4
  ret i32 %218
}

declare dso_local i32 @J_ASSERT(i32) #1

declare dso_local i32 @ext4_test_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @ext4_block_to_path(%struct.inode*, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_8__* @ext4_get_branch(%struct.inode*, i32, i32*, %struct.TYPE_8__*, i32*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @clear_buffer_new(%struct.buffer_head*) #1

declare dso_local i64 @ext4_find_goal(%struct.inode*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @ext4_blks_to_allocate(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @ext4_alloc_branch(i32*, %struct.inode*, i32, i32, i32*, i64, i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @ext4_splice_branch(i32*, %struct.inode*, i32, %struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @set_buffer_new(%struct.buffer_head*) #1

declare dso_local i32 @ext4_update_inode_fsync_trans(i32*, %struct.inode*, i32) #1

declare dso_local i32 @map_bh(%struct.buffer_head*, i32, i64) #1

declare dso_local i32 @set_buffer_boundary(%struct.buffer_head*) #1

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
