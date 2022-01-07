; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_balloc.c_ext3_try_to_allocate_with_rsv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_balloc.c_ext3_try_to_allocate_with_rsv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ext3_reserve_window_node = type { i64, i32, i32, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"get undo access for new block\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"journal_dirty_metadata for bitmap block\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"journal_release_buffer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32*, i32, %struct.buffer_head*, i32, %struct.ext3_reserve_window_node*, i64*, i32*)* @ext3_try_to_allocate_with_rsv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext3_try_to_allocate_with_rsv(%struct.super_block* %0, i32* %1, i32 %2, %struct.buffer_head* %3, i32 %4, %struct.ext3_reserve_window_node* %5, i64* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.super_block*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ext3_reserve_window_node*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store %struct.buffer_head* %3, %struct.buffer_head** %13, align 8
  store i32 %4, i32* %14, align 4
  store %struct.ext3_reserve_window_node* %5, %struct.ext3_reserve_window_node** %15, align 8
  store i64* %6, i64** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32 0, i32* %20, align 4
  %24 = load i64*, i64** %16, align 8
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %22, align 8
  %26 = load i32*, i32** %17, align 8
  store i32 0, i32* %26, align 4
  %27 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %28 = call i32 @BUFFER_TRACE(%struct.buffer_head* %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %29 = load i32*, i32** %11, align 8
  %30 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %31 = call i32 @ext3_journal_get_undo_access(i32* %29, %struct.buffer_head* %30)
  store i32 %31, i32* %21, align 4
  %32 = load i32, i32* %21, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %8
  %35 = load i32, i32* %21, align 4
  %36 = load i32*, i32** %17, align 8
  store i32 %35, i32* %36, align 4
  store i32 -1, i32* %9, align 4
  br label %197

37:                                               ; preds = %8
  %38 = load %struct.ext3_reserve_window_node*, %struct.ext3_reserve_window_node** %15, align 8
  %39 = icmp eq %struct.ext3_reserve_window_node* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load %struct.super_block*, %struct.super_block** %10, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %45 = load i32, i32* %14, align 4
  %46 = load i64*, i64** %16, align 8
  %47 = call i32 @ext3_try_to_allocate(%struct.super_block* %41, i32* %42, i32 %43, %struct.buffer_head* %44, i32 %45, i64* %46, i32* null)
  store i32 %47, i32* %20, align 4
  br label %174

48:                                               ; preds = %37
  %49 = load %struct.super_block*, %struct.super_block** %10, align 8
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @ext3_group_first_block_no(%struct.super_block* %49, i32 %50)
  store i32 %51, i32* %18, align 4
  %52 = load i32, i32* %18, align 4
  %53 = load %struct.super_block*, %struct.super_block** %10, align 8
  %54 = call i32 @EXT3_BLOCKS_PER_GROUP(%struct.super_block* %53)
  %55 = sub nsw i32 %54, 1
  %56 = add nsw i32 %52, %55
  store i32 %56, i32* %19, align 4
  br label %57

57:                                               ; preds = %48, %170
  %58 = load %struct.ext3_reserve_window_node*, %struct.ext3_reserve_window_node** %15, align 8
  %59 = getelementptr inbounds %struct.ext3_reserve_window_node, %struct.ext3_reserve_window_node* %58, i32 0, i32 4
  %60 = call i64 @rsv_is_empty(i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %73, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* %20, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %62
  %66 = load %struct.ext3_reserve_window_node*, %struct.ext3_reserve_window_node** %15, align 8
  %67 = getelementptr inbounds %struct.ext3_reserve_window_node, %struct.ext3_reserve_window_node* %66, i32 0, i32 4
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load %struct.super_block*, %struct.super_block** %10, align 8
  %71 = call i32 @goal_in_my_reservation(i32* %67, i32 %68, i32 %69, %struct.super_block* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %105, label %73

73:                                               ; preds = %65, %62, %57
  %74 = load %struct.ext3_reserve_window_node*, %struct.ext3_reserve_window_node** %15, align 8
  %75 = getelementptr inbounds %struct.ext3_reserve_window_node, %struct.ext3_reserve_window_node* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64*, i64** %16, align 8
  %78 = load i64, i64* %77, align 8
  %79 = icmp ult i64 %76, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %73
  %81 = load i64*, i64** %16, align 8
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.ext3_reserve_window_node*, %struct.ext3_reserve_window_node** %15, align 8
  %84 = getelementptr inbounds %struct.ext3_reserve_window_node, %struct.ext3_reserve_window_node* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  br label %85

85:                                               ; preds = %80, %73
  %86 = load %struct.ext3_reserve_window_node*, %struct.ext3_reserve_window_node** %15, align 8
  %87 = load i32, i32* %14, align 4
  %88 = load %struct.super_block*, %struct.super_block** %10, align 8
  %89 = load i32, i32* %12, align 4
  %90 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %91 = call i32 @alloc_new_reservation(%struct.ext3_reserve_window_node* %86, i32 %87, %struct.super_block* %88, i32 %89, %struct.buffer_head* %90)
  store i32 %91, i32* %20, align 4
  %92 = load i32, i32* %20, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %85
  br label %173

95:                                               ; preds = %85
  %96 = load %struct.ext3_reserve_window_node*, %struct.ext3_reserve_window_node** %15, align 8
  %97 = getelementptr inbounds %struct.ext3_reserve_window_node, %struct.ext3_reserve_window_node* %96, i32 0, i32 4
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* %12, align 4
  %100 = load %struct.super_block*, %struct.super_block** %10, align 8
  %101 = call i32 @goal_in_my_reservation(i32* %97, i32 %98, i32 %99, %struct.super_block* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %95
  store i32 -1, i32* %14, align 4
  br label %104

104:                                              ; preds = %103, %95
  br label %133

105:                                              ; preds = %65
  %106 = load i32, i32* %14, align 4
  %107 = icmp sge i32 %106, 0
  br i1 %107, label %108, label %132

108:                                              ; preds = %105
  %109 = load %struct.ext3_reserve_window_node*, %struct.ext3_reserve_window_node** %15, align 8
  %110 = getelementptr inbounds %struct.ext3_reserve_window_node, %struct.ext3_reserve_window_node* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %14, align 4
  %113 = load i32, i32* %18, align 4
  %114 = add nsw i32 %112, %113
  %115 = sub nsw i32 %111, %114
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %23, align 4
  %117 = load i32, i32* %23, align 4
  %118 = sext i32 %117 to i64
  %119 = load i64*, i64** %16, align 8
  %120 = load i64, i64* %119, align 8
  %121 = icmp ult i64 %118, %120
  br i1 %121, label %122, label %131

122:                                              ; preds = %108
  %123 = load %struct.ext3_reserve_window_node*, %struct.ext3_reserve_window_node** %15, align 8
  %124 = load %struct.super_block*, %struct.super_block** %10, align 8
  %125 = load i64*, i64** %16, align 8
  %126 = load i64, i64* %125, align 8
  %127 = load i32, i32* %23, align 4
  %128 = sext i32 %127 to i64
  %129 = sub i64 %126, %128
  %130 = call i32 @try_to_extend_reservation(%struct.ext3_reserve_window_node* %123, %struct.super_block* %124, i64 %129)
  br label %131

131:                                              ; preds = %122, %108
  br label %132

132:                                              ; preds = %131, %105
  br label %133

133:                                              ; preds = %132, %104
  %134 = load %struct.ext3_reserve_window_node*, %struct.ext3_reserve_window_node** %15, align 8
  %135 = getelementptr inbounds %struct.ext3_reserve_window_node, %struct.ext3_reserve_window_node* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %19, align 4
  %138 = icmp sgt i32 %136, %137
  br i1 %138, label %145, label %139

139:                                              ; preds = %133
  %140 = load %struct.ext3_reserve_window_node*, %struct.ext3_reserve_window_node** %15, align 8
  %141 = getelementptr inbounds %struct.ext3_reserve_window_node, %struct.ext3_reserve_window_node* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* %18, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %151

145:                                              ; preds = %139, %133
  %146 = load %struct.super_block*, %struct.super_block** %10, align 8
  %147 = call %struct.TYPE_2__* @EXT3_SB(%struct.super_block* %146)
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  %149 = call i32 @rsv_window_dump(i32* %148, i32 1)
  %150 = call i32 (...) @BUG()
  br label %151

151:                                              ; preds = %145, %139
  %152 = load %struct.super_block*, %struct.super_block** %10, align 8
  %153 = load i32*, i32** %11, align 8
  %154 = load i32, i32* %12, align 4
  %155 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %156 = load i32, i32* %14, align 4
  %157 = load %struct.ext3_reserve_window_node*, %struct.ext3_reserve_window_node** %15, align 8
  %158 = getelementptr inbounds %struct.ext3_reserve_window_node, %struct.ext3_reserve_window_node* %157, i32 0, i32 4
  %159 = call i32 @ext3_try_to_allocate(%struct.super_block* %152, i32* %153, i32 %154, %struct.buffer_head* %155, i32 %156, i64* %22, i32* %158)
  store i32 %159, i32* %20, align 4
  %160 = load i32, i32* %20, align 4
  %161 = icmp sge i32 %160, 0
  br i1 %161, label %162, label %170

162:                                              ; preds = %151
  %163 = load i64, i64* %22, align 8
  %164 = load %struct.ext3_reserve_window_node*, %struct.ext3_reserve_window_node** %15, align 8
  %165 = getelementptr inbounds %struct.ext3_reserve_window_node, %struct.ext3_reserve_window_node* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = add i64 %166, %163
  store i64 %167, i64* %165, align 8
  %168 = load i64, i64* %22, align 8
  %169 = load i64*, i64** %16, align 8
  store i64 %168, i64* %169, align 8
  br label %173

170:                                              ; preds = %151
  %171 = load i64*, i64** %16, align 8
  %172 = load i64, i64* %171, align 8
  store i64 %172, i64* %22, align 8
  br label %57

173:                                              ; preds = %162, %94
  br label %174

174:                                              ; preds = %173, %40
  %175 = load i32, i32* %20, align 4
  %176 = icmp sge i32 %175, 0
  br i1 %176, label %177, label %190

177:                                              ; preds = %174
  %178 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %179 = call i32 @BUFFER_TRACE(%struct.buffer_head* %178, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %180 = load i32*, i32** %11, align 8
  %181 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %182 = call i32 @ext3_journal_dirty_metadata(i32* %180, %struct.buffer_head* %181)
  store i32 %182, i32* %21, align 4
  %183 = load i32, i32* %21, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %177
  %186 = load i32, i32* %21, align 4
  %187 = load i32*, i32** %17, align 8
  store i32 %186, i32* %187, align 4
  store i32 -1, i32* %9, align 4
  br label %197

188:                                              ; preds = %177
  %189 = load i32, i32* %20, align 4
  store i32 %189, i32* %9, align 4
  br label %197

190:                                              ; preds = %174
  %191 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %192 = call i32 @BUFFER_TRACE(%struct.buffer_head* %191, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %193 = load i32*, i32** %11, align 8
  %194 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %195 = call i32 @ext3_journal_release_buffer(i32* %193, %struct.buffer_head* %194)
  %196 = load i32, i32* %20, align 4
  store i32 %196, i32* %9, align 4
  br label %197

197:                                              ; preds = %190, %188, %185, %34
  %198 = load i32, i32* %9, align 4
  ret i32 %198
}

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local i32 @ext3_journal_get_undo_access(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ext3_try_to_allocate(%struct.super_block*, i32*, i32, %struct.buffer_head*, i32, i64*, i32*) #1

declare dso_local i32 @ext3_group_first_block_no(%struct.super_block*, i32) #1

declare dso_local i32 @EXT3_BLOCKS_PER_GROUP(%struct.super_block*) #1

declare dso_local i64 @rsv_is_empty(i32*) #1

declare dso_local i32 @goal_in_my_reservation(i32*, i32, i32, %struct.super_block*) #1

declare dso_local i32 @alloc_new_reservation(%struct.ext3_reserve_window_node*, i32, %struct.super_block*, i32, %struct.buffer_head*) #1

declare dso_local i32 @try_to_extend_reservation(%struct.ext3_reserve_window_node*, %struct.super_block*, i64) #1

declare dso_local i32 @rsv_window_dump(i32*, i32) #1

declare dso_local %struct.TYPE_2__* @EXT3_SB(%struct.super_block*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @ext3_journal_dirty_metadata(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ext3_journal_release_buffer(i32*, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
