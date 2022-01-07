; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_get_blocks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_get_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [72 x i8] c"ext4_get_blocks(): inode %lu, flag %d, max_blocks %u,logical block %lu\0A\00", align 1
@EXT4_INODE_EXTENTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"file system corruption\00", align 1
@EXT4_GET_BLOCKS_CREATE = common dso_local global i32 0, align 4
@EXT4_GET_BLOCKS_DELALLOC_RESERVE = common dso_local global i32 0, align 4
@EXT4_STATE_EXT_MIGRATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"file system corruption after allocation\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_get_blocks(i32* %0, %struct.inode* %1, i64 %2, i32 %3, %struct.buffer_head* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.inode* %1, %struct.inode** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.buffer_head* %4, %struct.buffer_head** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %18 = call i32 @clear_buffer_mapped(%struct.buffer_head* %17)
  %19 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %20 = call i32 @clear_buffer_unwritten(%struct.buffer_head* %19)
  %21 = load %struct.inode*, %struct.inode** %9, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i64, i64* %10, align 8
  %27 = call i32 @ext_debug(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24, i32 %25, i64 %26)
  %28 = load %struct.inode*, %struct.inode** %9, align 8
  %29 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = call i32 @down_read(i32* %30)
  %32 = load %struct.inode*, %struct.inode** %9, align 8
  %33 = load i32, i32* @EXT4_INODE_EXTENTS, align 4
  %34 = call i64 @ext4_test_inode_flag(%struct.inode* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %6
  %37 = load i32*, i32** %8, align 8
  %38 = load %struct.inode*, %struct.inode** %9, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %42 = call i32 @ext4_ext_get_blocks(i32* %37, %struct.inode* %38, i64 %39, i32 %40, %struct.buffer_head* %41, i32 0)
  store i32 %42, i32* %14, align 4
  br label %50

43:                                               ; preds = %6
  %44 = load i32*, i32** %8, align 8
  %45 = load %struct.inode*, %struct.inode** %9, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %49 = call i32 @ext4_ind_get_blocks(i32* %44, %struct.inode* %45, i64 %46, i32 %47, %struct.buffer_head* %48, i32 0)
  store i32 %49, i32* %14, align 4
  br label %50

50:                                               ; preds = %43, %36
  %51 = load %struct.inode*, %struct.inode** %9, align 8
  %52 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %51)
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = call i32 @up_read(i32* %53)
  %55 = load i32, i32* %14, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %50
  %58 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %59 = call i64 @buffer_mapped(%struct.buffer_head* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %57
  %62 = load %struct.inode*, %struct.inode** %9, align 8
  %63 = load i64, i64* %10, align 8
  %64 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %65 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %14, align 4
  %68 = call i32 @check_block_validity(%struct.inode* %62, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %63, i32 %66, i32 %67)
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %15, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %61
  %72 = load i32, i32* %15, align 4
  store i32 %72, i32* %7, align 4
  br label %184

73:                                               ; preds = %61
  br label %74

74:                                               ; preds = %73, %57, %50
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* @EXT4_GET_BLOCKS_CREATE, align 4
  %77 = and i32 %75, %76
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* %14, align 4
  store i32 %80, i32* %7, align 4
  br label %184

81:                                               ; preds = %74
  %82 = load i32, i32* %14, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %86 = call i64 @buffer_mapped(%struct.buffer_head* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = load i32, i32* %14, align 4
  store i32 %89, i32* %7, align 4
  br label %184

90:                                               ; preds = %84, %81
  %91 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %92 = call i32 @clear_buffer_unwritten(%struct.buffer_head* %91)
  %93 = load %struct.inode*, %struct.inode** %9, align 8
  %94 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %93)
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = call i32 @down_write(i32* %95)
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* @EXT4_GET_BLOCKS_DELALLOC_RESERVE, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %90
  %102 = load %struct.inode*, %struct.inode** %9, align 8
  %103 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %102)
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  store i32 1, i32* %104, align 4
  br label %105

105:                                              ; preds = %101, %90
  %106 = load %struct.inode*, %struct.inode** %9, align 8
  %107 = load i32, i32* @EXT4_INODE_EXTENTS, align 4
  %108 = call i64 @ext4_test_inode_flag(%struct.inode* %106, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %105
  %111 = load i32*, i32** %8, align 8
  %112 = load %struct.inode*, %struct.inode** %9, align 8
  %113 = load i64, i64* %10, align 8
  %114 = load i32, i32* %11, align 4
  %115 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %116 = load i32, i32* %13, align 4
  %117 = call i32 @ext4_ext_get_blocks(i32* %111, %struct.inode* %112, i64 %113, i32 %114, %struct.buffer_head* %115, i32 %116)
  store i32 %117, i32* %14, align 4
  br label %149

118:                                              ; preds = %105
  %119 = load i32*, i32** %8, align 8
  %120 = load %struct.inode*, %struct.inode** %9, align 8
  %121 = load i64, i64* %10, align 8
  %122 = load i32, i32* %11, align 4
  %123 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %124 = load i32, i32* %13, align 4
  %125 = call i32 @ext4_ind_get_blocks(i32* %119, %struct.inode* %120, i64 %121, i32 %122, %struct.buffer_head* %123, i32 %124)
  store i32 %125, i32* %14, align 4
  %126 = load i32, i32* %14, align 4
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %118
  %129 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %130 = call i64 @buffer_new(%struct.buffer_head* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %128
  %133 = load %struct.inode*, %struct.inode** %9, align 8
  %134 = load i32, i32* @EXT4_STATE_EXT_MIGRATE, align 4
  %135 = call i32 @ext4_clear_inode_state(%struct.inode* %133, i32 %134)
  br label %136

136:                                              ; preds = %132, %128, %118
  %137 = load i32, i32* %14, align 4
  %138 = icmp sgt i32 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %136
  %140 = load i32, i32* %13, align 4
  %141 = load i32, i32* @EXT4_GET_BLOCKS_DELALLOC_RESERVE, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %139
  %145 = load %struct.inode*, %struct.inode** %9, align 8
  %146 = load i32, i32* %14, align 4
  %147 = call i32 @ext4_da_update_reserve_space(%struct.inode* %145, i32 %146, i32 1)
  br label %148

148:                                              ; preds = %144, %139, %136
  br label %149

149:                                              ; preds = %148, %110
  %150 = load i32, i32* %13, align 4
  %151 = load i32, i32* @EXT4_GET_BLOCKS_DELALLOC_RESERVE, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %149
  %155 = load %struct.inode*, %struct.inode** %9, align 8
  %156 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %155)
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  store i32 0, i32* %157, align 4
  br label %158

158:                                              ; preds = %154, %149
  %159 = load %struct.inode*, %struct.inode** %9, align 8
  %160 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %159)
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 1
  %162 = call i32 @up_write(i32* %161)
  %163 = load i32, i32* %14, align 4
  %164 = icmp sgt i32 %163, 0
  br i1 %164, label %165, label %182

165:                                              ; preds = %158
  %166 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %167 = call i64 @buffer_mapped(%struct.buffer_head* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %182

169:                                              ; preds = %165
  %170 = load %struct.inode*, %struct.inode** %9, align 8
  %171 = load i64, i64* %10, align 8
  %172 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %173 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* %14, align 4
  %176 = call i32 @check_block_validity(%struct.inode* %170, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %171, i32 %174, i32 %175)
  store i32 %176, i32* %16, align 4
  %177 = load i32, i32* %16, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %169
  %180 = load i32, i32* %16, align 4
  store i32 %180, i32* %7, align 4
  br label %184

181:                                              ; preds = %169
  br label %182

182:                                              ; preds = %181, %165, %158
  %183 = load i32, i32* %14, align 4
  store i32 %183, i32* %7, align 4
  br label %184

184:                                              ; preds = %182, %179, %88, %79, %71
  %185 = load i32, i32* %7, align 4
  ret i32 %185
}

declare dso_local i32 @clear_buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_unwritten(%struct.buffer_head*) #1

declare dso_local i32 @ext_debug(i8*, i32, i32, i32, i64) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.TYPE_2__* @EXT4_I(%struct.inode*) #1

declare dso_local i64 @ext4_test_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @ext4_ext_get_blocks(i32*, %struct.inode*, i64, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @ext4_ind_get_blocks(i32*, %struct.inode*, i64, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i64 @buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @check_block_validity(%struct.inode*, i8*, i64, i32, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @buffer_new(%struct.buffer_head*) #1

declare dso_local i32 @ext4_clear_inode_state(%struct.inode*, i32) #1

declare dso_local i32 @ext4_da_update_reserve_space(%struct.inode*, i32, i32) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
