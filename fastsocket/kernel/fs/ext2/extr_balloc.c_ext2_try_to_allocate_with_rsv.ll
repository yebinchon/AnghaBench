; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_balloc.c_ext2_try_to_allocate_with_rsv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_balloc.c_ext2_try_to_allocate_with_rsv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ext2_reserve_window_node = type { i64, i32, i32, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.super_block*, i32, %struct.buffer_head*, i64, %struct.ext2_reserve_window_node*, i64*)* @ext2_try_to_allocate_with_rsv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ext2_try_to_allocate_with_rsv(%struct.super_block* %0, i32 %1, %struct.buffer_head* %2, i64 %3, %struct.ext2_reserve_window_node* %4, i64* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ext2_reserve_window_node*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.buffer_head* %2, %struct.buffer_head** %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.ext2_reserve_window_node* %4, %struct.ext2_reserve_window_node** %12, align 8
  store i64* %5, i64** %13, align 8
  store i64 0, i64* %16, align 8
  %19 = load i64*, i64** %13, align 8
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %17, align 8
  %21 = load %struct.ext2_reserve_window_node*, %struct.ext2_reserve_window_node** %12, align 8
  %22 = icmp eq %struct.ext2_reserve_window_node* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %6
  %24 = load %struct.super_block*, %struct.super_block** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %27 = load i64, i64* %11, align 8
  %28 = load i64*, i64** %13, align 8
  %29 = call i64 @ext2_try_to_allocate(%struct.super_block* %24, i32 %25, %struct.buffer_head* %26, i64 %27, i64* %28, i32* null)
  store i64 %29, i64* %7, align 8
  br label %159

30:                                               ; preds = %6
  %31 = load %struct.super_block*, %struct.super_block** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @ext2_group_first_block_no(%struct.super_block* %31, i32 %32)
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = load %struct.super_block*, %struct.super_block** %8, align 8
  %36 = call i32 @EXT2_BLOCKS_PER_GROUP(%struct.super_block* %35)
  %37 = sub nsw i32 %36, 1
  %38 = add nsw i32 %34, %37
  store i32 %38, i32* %15, align 4
  br label %39

39:                                               ; preds = %30, %154
  %40 = load %struct.ext2_reserve_window_node*, %struct.ext2_reserve_window_node** %12, align 8
  %41 = getelementptr inbounds %struct.ext2_reserve_window_node, %struct.ext2_reserve_window_node* %40, i32 0, i32 4
  %42 = call i64 @rsv_is_empty(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %39
  %45 = load i64, i64* %16, align 8
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %44
  %48 = load %struct.ext2_reserve_window_node*, %struct.ext2_reserve_window_node** %12, align 8
  %49 = getelementptr inbounds %struct.ext2_reserve_window_node, %struct.ext2_reserve_window_node* %48, i32 0, i32 4
  %50 = load i64, i64* %11, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.super_block*, %struct.super_block** %8, align 8
  %53 = call i32 @goal_in_my_reservation(i32* %49, i64 %50, i32 %51, %struct.super_block* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %87, label %55

55:                                               ; preds = %47, %44, %39
  %56 = load %struct.ext2_reserve_window_node*, %struct.ext2_reserve_window_node** %12, align 8
  %57 = getelementptr inbounds %struct.ext2_reserve_window_node, %struct.ext2_reserve_window_node* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64*, i64** %13, align 8
  %60 = load i64, i64* %59, align 8
  %61 = icmp ult i64 %58, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %55
  %63 = load i64*, i64** %13, align 8
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.ext2_reserve_window_node*, %struct.ext2_reserve_window_node** %12, align 8
  %66 = getelementptr inbounds %struct.ext2_reserve_window_node, %struct.ext2_reserve_window_node* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  br label %67

67:                                               ; preds = %62, %55
  %68 = load %struct.ext2_reserve_window_node*, %struct.ext2_reserve_window_node** %12, align 8
  %69 = load i64, i64* %11, align 8
  %70 = load %struct.super_block*, %struct.super_block** %8, align 8
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %73 = call i64 @alloc_new_reservation(%struct.ext2_reserve_window_node* %68, i64 %69, %struct.super_block* %70, i32 %71, %struct.buffer_head* %72)
  store i64 %73, i64* %16, align 8
  %74 = load i64, i64* %16, align 8
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  br label %157

77:                                               ; preds = %67
  %78 = load %struct.ext2_reserve_window_node*, %struct.ext2_reserve_window_node** %12, align 8
  %79 = getelementptr inbounds %struct.ext2_reserve_window_node, %struct.ext2_reserve_window_node* %78, i32 0, i32 4
  %80 = load i64, i64* %11, align 8
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.super_block*, %struct.super_block** %8, align 8
  %83 = call i32 @goal_in_my_reservation(i32* %79, i64 %80, i32 %81, %struct.super_block* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %77
  store i64 -1, i64* %11, align 8
  br label %86

86:                                               ; preds = %85, %77
  br label %118

87:                                               ; preds = %47
  %88 = load i64, i64* %11, align 8
  %89 = icmp sge i64 %88, 0
  br i1 %89, label %90, label %117

90:                                               ; preds = %87
  %91 = load %struct.ext2_reserve_window_node*, %struct.ext2_reserve_window_node** %12, align 8
  %92 = getelementptr inbounds %struct.ext2_reserve_window_node, %struct.ext2_reserve_window_node* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = load i64, i64* %11, align 8
  %96 = load i32, i32* %14, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %95, %97
  %99 = sub nsw i64 %94, %98
  %100 = add nsw i64 %99, 1
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %18, align 4
  %102 = load i32, i32* %18, align 4
  %103 = sext i32 %102 to i64
  %104 = load i64*, i64** %13, align 8
  %105 = load i64, i64* %104, align 8
  %106 = icmp ult i64 %103, %105
  br i1 %106, label %107, label %116

107:                                              ; preds = %90
  %108 = load %struct.ext2_reserve_window_node*, %struct.ext2_reserve_window_node** %12, align 8
  %109 = load %struct.super_block*, %struct.super_block** %8, align 8
  %110 = load i64*, i64** %13, align 8
  %111 = load i64, i64* %110, align 8
  %112 = load i32, i32* %18, align 4
  %113 = sext i32 %112 to i64
  %114 = sub i64 %111, %113
  %115 = call i32 @try_to_extend_reservation(%struct.ext2_reserve_window_node* %108, %struct.super_block* %109, i64 %114)
  br label %116

116:                                              ; preds = %107, %90
  br label %117

117:                                              ; preds = %116, %87
  br label %118

118:                                              ; preds = %117, %86
  %119 = load %struct.ext2_reserve_window_node*, %struct.ext2_reserve_window_node** %12, align 8
  %120 = getelementptr inbounds %struct.ext2_reserve_window_node, %struct.ext2_reserve_window_node* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %15, align 4
  %123 = icmp sgt i32 %121, %122
  br i1 %123, label %130, label %124

124:                                              ; preds = %118
  %125 = load %struct.ext2_reserve_window_node*, %struct.ext2_reserve_window_node** %12, align 8
  %126 = getelementptr inbounds %struct.ext2_reserve_window_node, %struct.ext2_reserve_window_node* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %14, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %136

130:                                              ; preds = %124, %118
  %131 = load %struct.super_block*, %struct.super_block** %8, align 8
  %132 = call %struct.TYPE_2__* @EXT2_SB(%struct.super_block* %131)
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = call i32 @rsv_window_dump(i32* %133, i32 1)
  %135 = call i32 (...) @BUG()
  br label %136

136:                                              ; preds = %130, %124
  %137 = load %struct.super_block*, %struct.super_block** %8, align 8
  %138 = load i32, i32* %9, align 4
  %139 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %140 = load i64, i64* %11, align 8
  %141 = load %struct.ext2_reserve_window_node*, %struct.ext2_reserve_window_node** %12, align 8
  %142 = getelementptr inbounds %struct.ext2_reserve_window_node, %struct.ext2_reserve_window_node* %141, i32 0, i32 4
  %143 = call i64 @ext2_try_to_allocate(%struct.super_block* %137, i32 %138, %struct.buffer_head* %139, i64 %140, i64* %17, i32* %142)
  store i64 %143, i64* %16, align 8
  %144 = load i64, i64* %16, align 8
  %145 = icmp sge i64 %144, 0
  br i1 %145, label %146, label %154

146:                                              ; preds = %136
  %147 = load i64, i64* %17, align 8
  %148 = load %struct.ext2_reserve_window_node*, %struct.ext2_reserve_window_node** %12, align 8
  %149 = getelementptr inbounds %struct.ext2_reserve_window_node, %struct.ext2_reserve_window_node* %148, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = add i64 %150, %147
  store i64 %151, i64* %149, align 8
  %152 = load i64, i64* %17, align 8
  %153 = load i64*, i64** %13, align 8
  store i64 %152, i64* %153, align 8
  br label %157

154:                                              ; preds = %136
  %155 = load i64*, i64** %13, align 8
  %156 = load i64, i64* %155, align 8
  store i64 %156, i64* %17, align 8
  br label %39

157:                                              ; preds = %146, %76
  %158 = load i64, i64* %16, align 8
  store i64 %158, i64* %7, align 8
  br label %159

159:                                              ; preds = %157, %23
  %160 = load i64, i64* %7, align 8
  ret i64 %160
}

declare dso_local i64 @ext2_try_to_allocate(%struct.super_block*, i32, %struct.buffer_head*, i64, i64*, i32*) #1

declare dso_local i32 @ext2_group_first_block_no(%struct.super_block*, i32) #1

declare dso_local i32 @EXT2_BLOCKS_PER_GROUP(%struct.super_block*) #1

declare dso_local i64 @rsv_is_empty(i32*) #1

declare dso_local i32 @goal_in_my_reservation(i32*, i64, i32, %struct.super_block*) #1

declare dso_local i64 @alloc_new_reservation(%struct.ext2_reserve_window_node*, i64, %struct.super_block*, i32, %struct.buffer_head*) #1

declare dso_local i32 @try_to_extend_reservation(%struct.ext2_reserve_window_node*, %struct.super_block*, i64) #1

declare dso_local i32 @rsv_window_dump(i32*, i32) #1

declare dso_local %struct.TYPE_2__* @EXT2_SB(%struct.super_block*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
