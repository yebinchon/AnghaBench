; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_balloc.c_alloc_new_reservation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_balloc.c_alloc_new_reservation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext3_reserve_window_node = type { i64, i32, i32, i32, i32 }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i32 }
%struct.rb_root = type { i32 }
%struct.TYPE_2__ = type { i32, %struct.rb_root }

@EXT3_MAX_RESERVE_BLOCKS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ext3_reserve_window_node*, i64, %struct.super_block*, i32, %struct.buffer_head*)* @alloc_new_reservation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_new_reservation(%struct.ext3_reserve_window_node* %0, i64 %1, %struct.super_block* %2, i32 %3, %struct.buffer_head* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ext3_reserve_window_node*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.super_block*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca %struct.ext3_reserve_window_node*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.rb_root*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  store %struct.ext3_reserve_window_node* %0, %struct.ext3_reserve_window_node** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.super_block* %2, %struct.super_block** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.buffer_head* %4, %struct.buffer_head** %11, align 8
  %21 = load %struct.super_block*, %struct.super_block** %9, align 8
  %22 = call %struct.TYPE_2__* @EXT3_SB(%struct.super_block* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store %struct.rb_root* %23, %struct.rb_root** %17, align 8
  %24 = load %struct.super_block*, %struct.super_block** %9, align 8
  %25 = call %struct.TYPE_2__* @EXT3_SB(%struct.super_block* %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32* %26, i32** %20, align 8
  %27 = load %struct.super_block*, %struct.super_block** %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @ext3_group_first_block_no(%struct.super_block* %27, i32 %28)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = load %struct.super_block*, %struct.super_block** %9, align 8
  %32 = call i32 @EXT3_BLOCKS_PER_GROUP(%struct.super_block* %31)
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
  %46 = load %struct.super_block*, %struct.super_block** %9, align 8
  %47 = load i32, i32* %15, align 4
  %48 = call i32 @trace_ext3_alloc_new_reservation(%struct.super_block* %46, i32 %47)
  %49 = load %struct.ext3_reserve_window_node*, %struct.ext3_reserve_window_node** %7, align 8
  %50 = getelementptr inbounds %struct.ext3_reserve_window_node, %struct.ext3_reserve_window_node* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %18, align 8
  %52 = load %struct.ext3_reserve_window_node*, %struct.ext3_reserve_window_node** %7, align 8
  %53 = getelementptr inbounds %struct.ext3_reserve_window_node, %struct.ext3_reserve_window_node* %52, i32 0, i32 4
  %54 = call i32 @rsv_is_empty(i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %102, label %56

56:                                               ; preds = %45
  %57 = load %struct.ext3_reserve_window_node*, %struct.ext3_reserve_window_node** %7, align 8
  %58 = getelementptr inbounds %struct.ext3_reserve_window_node, %struct.ext3_reserve_window_node* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %14, align 4
  %61 = icmp sle i32 %59, %60
  br i1 %61, label %62, label %75

62:                                               ; preds = %56
  %63 = load %struct.ext3_reserve_window_node*, %struct.ext3_reserve_window_node** %7, align 8
  %64 = getelementptr inbounds %struct.ext3_reserve_window_node, %struct.ext3_reserve_window_node* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %14, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = load i32, i32* %15, align 4
  %70 = load %struct.ext3_reserve_window_node*, %struct.ext3_reserve_window_node** %7, align 8
  %71 = getelementptr inbounds %struct.ext3_reserve_window_node, %struct.ext3_reserve_window_node* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = icmp sge i32 %69, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  store i32 -1, i32* %6, align 4
  br label %185

75:                                               ; preds = %68, %62, %56
  %76 = load %struct.ext3_reserve_window_node*, %struct.ext3_reserve_window_node** %7, align 8
  %77 = getelementptr inbounds %struct.ext3_reserve_window_node, %struct.ext3_reserve_window_node* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.ext3_reserve_window_node*, %struct.ext3_reserve_window_node** %7, align 8
  %80 = getelementptr inbounds %struct.ext3_reserve_window_node, %struct.ext3_reserve_window_node* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.ext3_reserve_window_node*, %struct.ext3_reserve_window_node** %7, align 8
  %83 = getelementptr inbounds %struct.ext3_reserve_window_node, %struct.ext3_reserve_window_node* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = sub nsw i32 %81, %84
  %86 = add nsw i32 %85, 1
  %87 = sdiv i32 %86, 2
  %88 = icmp sgt i32 %78, %87
  br i1 %88, label %89, label %101

89:                                               ; preds = %75
  %90 = load i64, i64* %18, align 8
  %91 = mul i64 %90, 2
  store i64 %91, i64* %18, align 8
  %92 = load i64, i64* %18, align 8
  %93 = load i64, i64* @EXT3_MAX_RESERVE_BLOCKS, align 8
  %94 = icmp ugt i64 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = load i64, i64* @EXT3_MAX_RESERVE_BLOCKS, align 8
  store i64 %96, i64* %18, align 8
  br label %97

97:                                               ; preds = %95, %89
  %98 = load i64, i64* %18, align 8
  %99 = load %struct.ext3_reserve_window_node*, %struct.ext3_reserve_window_node** %7, align 8
  %100 = getelementptr inbounds %struct.ext3_reserve_window_node, %struct.ext3_reserve_window_node* %99, i32 0, i32 0
  store i64 %98, i64* %100, align 8
  br label %101

101:                                              ; preds = %97, %75
  br label %102

102:                                              ; preds = %101, %45
  %103 = load i32*, i32** %20, align 8
  %104 = call i32 @spin_lock(i32* %103)
  %105 = load %struct.rb_root*, %struct.rb_root** %17, align 8
  %106 = load i32, i32* %15, align 4
  %107 = call %struct.ext3_reserve_window_node* @search_reserve_window(%struct.rb_root* %105, i32 %106)
  store %struct.ext3_reserve_window_node* %107, %struct.ext3_reserve_window_node** %12, align 8
  br label %108

108:                                              ; preds = %181, %102
  %109 = load %struct.ext3_reserve_window_node*, %struct.ext3_reserve_window_node** %12, align 8
  %110 = load %struct.ext3_reserve_window_node*, %struct.ext3_reserve_window_node** %7, align 8
  %111 = load %struct.super_block*, %struct.super_block** %9, align 8
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* %14, align 4
  %114 = call i32 @find_next_reservable_window(%struct.ext3_reserve_window_node* %109, %struct.ext3_reserve_window_node* %110, %struct.super_block* %111, i32 %112, i32 %113)
  store i32 %114, i32* %19, align 4
  %115 = load i32, i32* %19, align 4
  %116 = icmp eq i32 %115, -1
  br i1 %116, label %117, label %129

117:                                              ; preds = %108
  %118 = load %struct.ext3_reserve_window_node*, %struct.ext3_reserve_window_node** %7, align 8
  %119 = getelementptr inbounds %struct.ext3_reserve_window_node, %struct.ext3_reserve_window_node* %118, i32 0, i32 4
  %120 = call i32 @rsv_is_empty(i32* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %117
  %123 = load %struct.super_block*, %struct.super_block** %9, align 8
  %124 = load %struct.ext3_reserve_window_node*, %struct.ext3_reserve_window_node** %7, align 8
  %125 = call i32 @rsv_window_remove(%struct.super_block* %123, %struct.ext3_reserve_window_node* %124)
  br label %126

126:                                              ; preds = %122, %117
  %127 = load i32*, i32** %20, align 8
  %128 = call i32 @spin_unlock(i32* %127)
  store i32 -1, i32* %6, align 4
  br label %185

129:                                              ; preds = %108
  %130 = load i32*, i32** %20, align 8
  %131 = call i32 @spin_unlock(i32* %130)
  %132 = load %struct.ext3_reserve_window_node*, %struct.ext3_reserve_window_node** %7, align 8
  %133 = getelementptr inbounds %struct.ext3_reserve_window_node, %struct.ext3_reserve_window_node* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %13, align 4
  %136 = sub nsw i32 %134, %135
  %137 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %138 = load i32, i32* %14, align 4
  %139 = load i32, i32* %13, align 4
  %140 = sub nsw i32 %138, %139
  %141 = add nsw i32 %140, 1
  %142 = call i64 @bitmap_search_next_usable_block(i32 %136, %struct.buffer_head* %137, i32 %141)
  store i64 %142, i64* %16, align 8
  %143 = load i64, i64* %16, align 8
  %144 = icmp slt i64 %143, 0
  br i1 %144, label %145, label %159

145:                                              ; preds = %129
  %146 = load i32*, i32** %20, align 8
  %147 = call i32 @spin_lock(i32* %146)
  %148 = load %struct.ext3_reserve_window_node*, %struct.ext3_reserve_window_node** %7, align 8
  %149 = getelementptr inbounds %struct.ext3_reserve_window_node, %struct.ext3_reserve_window_node* %148, i32 0, i32 4
  %150 = call i32 @rsv_is_empty(i32* %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %156, label %152

152:                                              ; preds = %145
  %153 = load %struct.super_block*, %struct.super_block** %9, align 8
  %154 = load %struct.ext3_reserve_window_node*, %struct.ext3_reserve_window_node** %7, align 8
  %155 = call i32 @rsv_window_remove(%struct.super_block* %153, %struct.ext3_reserve_window_node* %154)
  br label %156

156:                                              ; preds = %152, %145
  %157 = load i32*, i32** %20, align 8
  %158 = call i32 @spin_unlock(i32* %157)
  store i32 -1, i32* %6, align 4
  br label %185

159:                                              ; preds = %129
  %160 = load i64, i64* %16, align 8
  %161 = load i32, i32* %13, align 4
  %162 = sext i32 %161 to i64
  %163 = add nsw i64 %160, %162
  %164 = trunc i64 %163 to i32
  store i32 %164, i32* %15, align 4
  %165 = load i32, i32* %15, align 4
  %166 = load %struct.ext3_reserve_window_node*, %struct.ext3_reserve_window_node** %7, align 8
  %167 = getelementptr inbounds %struct.ext3_reserve_window_node, %struct.ext3_reserve_window_node* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = icmp sge i32 %165, %168
  br i1 %169, label %170, label %181

170:                                              ; preds = %159
  %171 = load i32, i32* %15, align 4
  %172 = load %struct.ext3_reserve_window_node*, %struct.ext3_reserve_window_node** %7, align 8
  %173 = getelementptr inbounds %struct.ext3_reserve_window_node, %struct.ext3_reserve_window_node* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = icmp sle i32 %171, %174
  br i1 %175, label %176, label %181

176:                                              ; preds = %170
  %177 = load %struct.super_block*, %struct.super_block** %9, align 8
  %178 = load i32, i32* %15, align 4
  %179 = load %struct.ext3_reserve_window_node*, %struct.ext3_reserve_window_node** %7, align 8
  %180 = call i32 @trace_ext3_reserved(%struct.super_block* %177, i32 %178, %struct.ext3_reserve_window_node* %179)
  store i32 0, i32* %6, align 4
  br label %185

181:                                              ; preds = %170, %159
  %182 = load %struct.ext3_reserve_window_node*, %struct.ext3_reserve_window_node** %7, align 8
  store %struct.ext3_reserve_window_node* %182, %struct.ext3_reserve_window_node** %12, align 8
  %183 = load i32*, i32** %20, align 8
  %184 = call i32 @spin_lock(i32* %183)
  br label %108

185:                                              ; preds = %176, %156, %126, %74
  %186 = load i32, i32* %6, align 4
  ret i32 %186
}

declare dso_local %struct.TYPE_2__* @EXT3_SB(%struct.super_block*) #1

declare dso_local i32 @ext3_group_first_block_no(%struct.super_block*, i32) #1

declare dso_local i32 @EXT3_BLOCKS_PER_GROUP(%struct.super_block*) #1

declare dso_local i32 @trace_ext3_alloc_new_reservation(%struct.super_block*, i32) #1

declare dso_local i32 @rsv_is_empty(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.ext3_reserve_window_node* @search_reserve_window(%struct.rb_root*, i32) #1

declare dso_local i32 @find_next_reservable_window(%struct.ext3_reserve_window_node*, %struct.ext3_reserve_window_node*, %struct.super_block*, i32, i32) #1

declare dso_local i32 @rsv_window_remove(%struct.super_block*, %struct.ext3_reserve_window_node*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @bitmap_search_next_usable_block(i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @trace_ext3_reserved(%struct.super_block*, i32, %struct.ext3_reserve_window_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
