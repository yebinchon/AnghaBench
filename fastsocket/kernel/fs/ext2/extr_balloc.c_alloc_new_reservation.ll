; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_balloc.c_alloc_new_reservation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_balloc.c_alloc_new_reservation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2_reserve_window_node = type { i64, i32, i32, i32, i32 }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i32 }
%struct.rb_root = type { i32 }
%struct.TYPE_2__ = type { i32, %struct.rb_root }

@EXT2_MAX_RESERVE_BLOCKS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ext2_reserve_window_node*, i64, %struct.super_block*, i32, %struct.buffer_head*)* @alloc_new_reservation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_new_reservation(%struct.ext2_reserve_window_node* %0, i64 %1, %struct.super_block* %2, i32 %3, %struct.buffer_head* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ext2_reserve_window_node*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.super_block*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca %struct.ext2_reserve_window_node*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.rb_root*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  store %struct.ext2_reserve_window_node* %0, %struct.ext2_reserve_window_node** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.super_block* %2, %struct.super_block** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.buffer_head* %4, %struct.buffer_head** %11, align 8
  %21 = load %struct.super_block*, %struct.super_block** %9, align 8
  %22 = call %struct.TYPE_2__* @EXT2_SB(%struct.super_block* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store %struct.rb_root* %23, %struct.rb_root** %17, align 8
  %24 = load %struct.super_block*, %struct.super_block** %9, align 8
  %25 = call %struct.TYPE_2__* @EXT2_SB(%struct.super_block* %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32* %26, i32** %20, align 8
  %27 = load %struct.super_block*, %struct.super_block** %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @ext2_group_first_block_no(%struct.super_block* %27, i32 %28)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = load %struct.super_block*, %struct.super_block** %9, align 8
  %32 = call i32 @EXT2_BLOCKS_PER_GROUP(%struct.super_block* %31)
  %33 = sub nsw i32 %32, 1
  %34 = add nsw i32 %30, %33
  store i32 %34, i32* %14, align 4
  %35 = load i64, i64* %8, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %5
  %38 = load i32, i32* %13, align 4
  store i32 %38, i32* %15, align 4
  br label %45

39:                                               ; preds = %5
  %40 = load i64, i64* %8, align 8
  %41 = load i32, i32* %13, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %40, %42
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %15, align 4
  br label %45

45:                                               ; preds = %39, %37
  %46 = load %struct.ext2_reserve_window_node*, %struct.ext2_reserve_window_node** %7, align 8
  %47 = getelementptr inbounds %struct.ext2_reserve_window_node, %struct.ext2_reserve_window_node* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %18, align 8
  %49 = load %struct.ext2_reserve_window_node*, %struct.ext2_reserve_window_node** %7, align 8
  %50 = getelementptr inbounds %struct.ext2_reserve_window_node, %struct.ext2_reserve_window_node* %49, i32 0, i32 4
  %51 = call i32 @rsv_is_empty(i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %99, label %53

53:                                               ; preds = %45
  %54 = load %struct.ext2_reserve_window_node*, %struct.ext2_reserve_window_node** %7, align 8
  %55 = getelementptr inbounds %struct.ext2_reserve_window_node, %struct.ext2_reserve_window_node* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %14, align 4
  %58 = icmp sle i32 %56, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %53
  %60 = load %struct.ext2_reserve_window_node*, %struct.ext2_reserve_window_node** %7, align 8
  %61 = getelementptr inbounds %struct.ext2_reserve_window_node, %struct.ext2_reserve_window_node* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %14, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %59
  %66 = load i32, i32* %15, align 4
  %67 = load %struct.ext2_reserve_window_node*, %struct.ext2_reserve_window_node** %7, align 8
  %68 = getelementptr inbounds %struct.ext2_reserve_window_node, %struct.ext2_reserve_window_node* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = icmp sge i32 %66, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i32 -1, i32* %6, align 4
  br label %178

72:                                               ; preds = %65, %59, %53
  %73 = load %struct.ext2_reserve_window_node*, %struct.ext2_reserve_window_node** %7, align 8
  %74 = getelementptr inbounds %struct.ext2_reserve_window_node, %struct.ext2_reserve_window_node* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.ext2_reserve_window_node*, %struct.ext2_reserve_window_node** %7, align 8
  %77 = getelementptr inbounds %struct.ext2_reserve_window_node, %struct.ext2_reserve_window_node* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ext2_reserve_window_node*, %struct.ext2_reserve_window_node** %7, align 8
  %80 = getelementptr inbounds %struct.ext2_reserve_window_node, %struct.ext2_reserve_window_node* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = sub nsw i32 %78, %81
  %83 = add nsw i32 %82, 1
  %84 = sdiv i32 %83, 2
  %85 = icmp sgt i32 %75, %84
  br i1 %85, label %86, label %98

86:                                               ; preds = %72
  %87 = load i64, i64* %18, align 8
  %88 = mul i64 %87, 2
  store i64 %88, i64* %18, align 8
  %89 = load i64, i64* %18, align 8
  %90 = load i64, i64* @EXT2_MAX_RESERVE_BLOCKS, align 8
  %91 = icmp ugt i64 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = load i64, i64* @EXT2_MAX_RESERVE_BLOCKS, align 8
  store i64 %93, i64* %18, align 8
  br label %94

94:                                               ; preds = %92, %86
  %95 = load i64, i64* %18, align 8
  %96 = load %struct.ext2_reserve_window_node*, %struct.ext2_reserve_window_node** %7, align 8
  %97 = getelementptr inbounds %struct.ext2_reserve_window_node, %struct.ext2_reserve_window_node* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  br label %98

98:                                               ; preds = %94, %72
  br label %99

99:                                               ; preds = %98, %45
  %100 = load i32*, i32** %20, align 8
  %101 = call i32 @spin_lock(i32* %100)
  %102 = load %struct.rb_root*, %struct.rb_root** %17, align 8
  %103 = load i32, i32* %15, align 4
  %104 = call %struct.ext2_reserve_window_node* @search_reserve_window(%struct.rb_root* %102, i32 %103)
  store %struct.ext2_reserve_window_node* %104, %struct.ext2_reserve_window_node** %12, align 8
  br label %105

105:                                              ; preds = %174, %99
  %106 = load %struct.ext2_reserve_window_node*, %struct.ext2_reserve_window_node** %12, align 8
  %107 = load %struct.ext2_reserve_window_node*, %struct.ext2_reserve_window_node** %7, align 8
  %108 = load %struct.super_block*, %struct.super_block** %9, align 8
  %109 = load i32, i32* %15, align 4
  %110 = load i32, i32* %14, align 4
  %111 = call i32 @find_next_reservable_window(%struct.ext2_reserve_window_node* %106, %struct.ext2_reserve_window_node* %107, %struct.super_block* %108, i32 %109, i32 %110)
  store i32 %111, i32* %19, align 4
  %112 = load i32, i32* %19, align 4
  %113 = icmp eq i32 %112, -1
  br i1 %113, label %114, label %126

114:                                              ; preds = %105
  %115 = load %struct.ext2_reserve_window_node*, %struct.ext2_reserve_window_node** %7, align 8
  %116 = getelementptr inbounds %struct.ext2_reserve_window_node, %struct.ext2_reserve_window_node* %115, i32 0, i32 4
  %117 = call i32 @rsv_is_empty(i32* %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %114
  %120 = load %struct.super_block*, %struct.super_block** %9, align 8
  %121 = load %struct.ext2_reserve_window_node*, %struct.ext2_reserve_window_node** %7, align 8
  %122 = call i32 @rsv_window_remove(%struct.super_block* %120, %struct.ext2_reserve_window_node* %121)
  br label %123

123:                                              ; preds = %119, %114
  %124 = load i32*, i32** %20, align 8
  %125 = call i32 @spin_unlock(i32* %124)
  store i32 -1, i32* %6, align 4
  br label %178

126:                                              ; preds = %105
  %127 = load i32*, i32** %20, align 8
  %128 = call i32 @spin_unlock(i32* %127)
  %129 = load %struct.ext2_reserve_window_node*, %struct.ext2_reserve_window_node** %7, align 8
  %130 = getelementptr inbounds %struct.ext2_reserve_window_node, %struct.ext2_reserve_window_node* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* %13, align 4
  %133 = sub nsw i32 %131, %132
  %134 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %135 = load i32, i32* %14, align 4
  %136 = load i32, i32* %13, align 4
  %137 = sub nsw i32 %135, %136
  %138 = add nsw i32 %137, 1
  %139 = call i64 @bitmap_search_next_usable_block(i32 %133, %struct.buffer_head* %134, i32 %138)
  store i64 %139, i64* %16, align 8
  %140 = load i64, i64* %16, align 8
  %141 = icmp slt i64 %140, 0
  br i1 %141, label %142, label %156

142:                                              ; preds = %126
  %143 = load i32*, i32** %20, align 8
  %144 = call i32 @spin_lock(i32* %143)
  %145 = load %struct.ext2_reserve_window_node*, %struct.ext2_reserve_window_node** %7, align 8
  %146 = getelementptr inbounds %struct.ext2_reserve_window_node, %struct.ext2_reserve_window_node* %145, i32 0, i32 4
  %147 = call i32 @rsv_is_empty(i32* %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %153, label %149

149:                                              ; preds = %142
  %150 = load %struct.super_block*, %struct.super_block** %9, align 8
  %151 = load %struct.ext2_reserve_window_node*, %struct.ext2_reserve_window_node** %7, align 8
  %152 = call i32 @rsv_window_remove(%struct.super_block* %150, %struct.ext2_reserve_window_node* %151)
  br label %153

153:                                              ; preds = %149, %142
  %154 = load i32*, i32** %20, align 8
  %155 = call i32 @spin_unlock(i32* %154)
  store i32 -1, i32* %6, align 4
  br label %178

156:                                              ; preds = %126
  %157 = load i64, i64* %16, align 8
  %158 = load i32, i32* %13, align 4
  %159 = sext i32 %158 to i64
  %160 = add nsw i64 %157, %159
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %15, align 4
  %162 = load i32, i32* %15, align 4
  %163 = load %struct.ext2_reserve_window_node*, %struct.ext2_reserve_window_node** %7, align 8
  %164 = getelementptr inbounds %struct.ext2_reserve_window_node, %struct.ext2_reserve_window_node* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = icmp sge i32 %162, %165
  br i1 %166, label %167, label %174

167:                                              ; preds = %156
  %168 = load i32, i32* %15, align 4
  %169 = load %struct.ext2_reserve_window_node*, %struct.ext2_reserve_window_node** %7, align 8
  %170 = getelementptr inbounds %struct.ext2_reserve_window_node, %struct.ext2_reserve_window_node* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = icmp sle i32 %168, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %167
  store i32 0, i32* %6, align 4
  br label %178

174:                                              ; preds = %167, %156
  %175 = load %struct.ext2_reserve_window_node*, %struct.ext2_reserve_window_node** %7, align 8
  store %struct.ext2_reserve_window_node* %175, %struct.ext2_reserve_window_node** %12, align 8
  %176 = load i32*, i32** %20, align 8
  %177 = call i32 @spin_lock(i32* %176)
  br label %105

178:                                              ; preds = %173, %153, %123, %71
  %179 = load i32, i32* %6, align 4
  ret i32 %179
}

declare dso_local %struct.TYPE_2__* @EXT2_SB(%struct.super_block*) #1

declare dso_local i32 @ext2_group_first_block_no(%struct.super_block*, i32) #1

declare dso_local i32 @EXT2_BLOCKS_PER_GROUP(%struct.super_block*) #1

declare dso_local i32 @rsv_is_empty(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.ext2_reserve_window_node* @search_reserve_window(%struct.rb_root*, i32) #1

declare dso_local i32 @find_next_reservable_window(%struct.ext2_reserve_window_node*, %struct.ext2_reserve_window_node*, %struct.super_block*, i32, i32) #1

declare dso_local i32 @rsv_window_remove(%struct.super_block*, %struct.ext2_reserve_window_node*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @bitmap_search_next_usable_block(i32, %struct.buffer_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
