; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_balloc.c_ext2_try_to_allocate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_balloc.c_ext2_try_to_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ext2_reserve_window = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32, %struct.buffer_head*, i64, i64*, %struct.ext2_reserve_window*)* @ext2_try_to_allocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_try_to_allocate(%struct.super_block* %0, i32 %1, %struct.buffer_head* %2, i64 %3, i64* %4, %struct.ext2_reserve_window* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca %struct.ext2_reserve_window*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.buffer_head* %2, %struct.buffer_head** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64* %4, i64** %12, align 8
  store %struct.ext2_reserve_window* %5, %struct.ext2_reserve_window** %13, align 8
  store i64 0, i64* %17, align 8
  %19 = load %struct.ext2_reserve_window*, %struct.ext2_reserve_window** %13, align 8
  %20 = icmp ne %struct.ext2_reserve_window* %19, null
  br i1 %20, label %21, label %63

21:                                               ; preds = %6
  %22 = load %struct.super_block*, %struct.super_block** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i64 @ext2_group_first_block_no(%struct.super_block* %22, i32 %23)
  store i64 %24, i64* %14, align 8
  %25 = load %struct.ext2_reserve_window*, %struct.ext2_reserve_window** %13, align 8
  %26 = getelementptr inbounds %struct.ext2_reserve_window, %struct.ext2_reserve_window* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %14, align 8
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %21
  %31 = load %struct.ext2_reserve_window*, %struct.ext2_reserve_window** %13, align 8
  %32 = getelementptr inbounds %struct.ext2_reserve_window, %struct.ext2_reserve_window* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %14, align 8
  %35 = sub nsw i64 %33, %34
  store i64 %35, i64* %15, align 8
  br label %37

36:                                               ; preds = %21
  store i64 0, i64* %15, align 8
  br label %37

37:                                               ; preds = %36, %30
  %38 = load %struct.ext2_reserve_window*, %struct.ext2_reserve_window** %13, align 8
  %39 = getelementptr inbounds %struct.ext2_reserve_window, %struct.ext2_reserve_window* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %14, align 8
  %42 = sub nsw i64 %40, %41
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %16, align 8
  %44 = load i64, i64* %16, align 8
  %45 = load %struct.super_block*, %struct.super_block** %8, align 8
  %46 = call i64 @EXT2_BLOCKS_PER_GROUP(%struct.super_block* %45)
  %47 = icmp sgt i64 %44, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %37
  %49 = load %struct.super_block*, %struct.super_block** %8, align 8
  %50 = call i64 @EXT2_BLOCKS_PER_GROUP(%struct.super_block* %49)
  store i64 %50, i64* %16, align 8
  br label %51

51:                                               ; preds = %48, %37
  %52 = load i64, i64* %15, align 8
  %53 = load i64, i64* %11, align 8
  %54 = icmp sle i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* %16, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i64, i64* %11, align 8
  store i64 %60, i64* %15, align 8
  br label %62

61:                                               ; preds = %55, %51
  store i64 -1, i64* %11, align 8
  br label %62

62:                                               ; preds = %61, %59
  br label %72

63:                                               ; preds = %6
  %64 = load i64, i64* %11, align 8
  %65 = icmp sgt i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i64, i64* %11, align 8
  store i64 %67, i64* %15, align 8
  br label %69

68:                                               ; preds = %63
  store i64 0, i64* %15, align 8
  br label %69

69:                                               ; preds = %68, %66
  %70 = load %struct.super_block*, %struct.super_block** %8, align 8
  %71 = call i64 @EXT2_BLOCKS_PER_GROUP(%struct.super_block* %70)
  store i64 %71, i64* %16, align 8
  br label %72

72:                                               ; preds = %69, %62
  %73 = load i64, i64* %15, align 8
  %74 = load %struct.super_block*, %struct.super_block** %8, align 8
  %75 = call i64 @EXT2_BLOCKS_PER_GROUP(%struct.super_block* %74)
  %76 = icmp sgt i64 %73, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @BUG_ON(i32 %77)
  br label %79

79:                                               ; preds = %141, %72
  %80 = load i64, i64* %11, align 8
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %120

82:                                               ; preds = %79
  %83 = load i64, i64* %15, align 8
  %84 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %85 = load i64, i64* %16, align 8
  %86 = call i64 @find_next_usable_block(i64 %83, %struct.buffer_head* %84, i64 %85)
  store i64 %86, i64* %11, align 8
  %87 = load i64, i64* %11, align 8
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %182

90:                                               ; preds = %82
  %91 = load %struct.ext2_reserve_window*, %struct.ext2_reserve_window** %13, align 8
  %92 = icmp ne %struct.ext2_reserve_window* %91, null
  br i1 %92, label %119, label %93

93:                                               ; preds = %90
  store i32 0, i32* %18, align 4
  br label %94

94:                                               ; preds = %113, %93
  %95 = load i32, i32* %18, align 4
  %96 = icmp slt i32 %95, 7
  br i1 %96, label %97, label %110

97:                                               ; preds = %94
  %98 = load i64, i64* %11, align 8
  %99 = load i64, i64* %15, align 8
  %100 = icmp sgt i64 %98, %99
  br i1 %100, label %101, label %110

101:                                              ; preds = %97
  %102 = load i64, i64* %11, align 8
  %103 = sub nsw i64 %102, 1
  %104 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %105 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @ext2_test_bit(i64 %103, i32 %106)
  %108 = icmp ne i32 %107, 0
  %109 = xor i1 %108, true
  br label %110

110:                                              ; preds = %101, %97, %94
  %111 = phi i1 [ false, %97 ], [ false, %94 ], [ %109, %101 ]
  br i1 %111, label %112, label %118

112:                                              ; preds = %110
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %18, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %18, align 4
  %116 = load i64, i64* %11, align 8
  %117 = add nsw i64 %116, -1
  store i64 %117, i64* %11, align 8
  br label %94

118:                                              ; preds = %110
  br label %119

119:                                              ; preds = %118, %90
  br label %120

120:                                              ; preds = %119, %79
  %121 = load i64, i64* %11, align 8
  store i64 %121, i64* %15, align 8
  %122 = load %struct.super_block*, %struct.super_block** %8, align 8
  %123 = call i32 @EXT2_SB(%struct.super_block* %122)
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @sb_bgl_lock(i32 %123, i32 %124)
  %126 = load i64, i64* %11, align 8
  %127 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %128 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i64 @ext2_set_bit_atomic(i32 %125, i64 %126, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %142

132:                                              ; preds = %120
  %133 = load i64, i64* %15, align 8
  %134 = add nsw i64 %133, 1
  store i64 %134, i64* %15, align 8
  %135 = load i64, i64* %11, align 8
  %136 = add nsw i64 %135, 1
  store i64 %136, i64* %11, align 8
  %137 = load i64, i64* %15, align 8
  %138 = load i64, i64* %16, align 8
  %139 = icmp sge i64 %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %132
  br label %182

141:                                              ; preds = %132
  br label %79

142:                                              ; preds = %120
  %143 = load i64, i64* %17, align 8
  %144 = add i64 %143, 1
  store i64 %144, i64* %17, align 8
  %145 = load i64, i64* %11, align 8
  %146 = add nsw i64 %145, 1
  store i64 %146, i64* %11, align 8
  br label %147

147:                                              ; preds = %170, %142
  %148 = load i64, i64* %17, align 8
  %149 = load i64*, i64** %12, align 8
  %150 = load i64, i64* %149, align 8
  %151 = icmp ult i64 %148, %150
  br i1 %151, label %152, label %168

152:                                              ; preds = %147
  %153 = load i64, i64* %11, align 8
  %154 = load i64, i64* %16, align 8
  %155 = icmp slt i64 %153, %154
  br i1 %155, label %156, label %168

156:                                              ; preds = %152
  %157 = load %struct.super_block*, %struct.super_block** %8, align 8
  %158 = call i32 @EXT2_SB(%struct.super_block* %157)
  %159 = load i32, i32* %9, align 4
  %160 = call i32 @sb_bgl_lock(i32 %158, i32 %159)
  %161 = load i64, i64* %11, align 8
  %162 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %163 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i64 @ext2_set_bit_atomic(i32 %160, i64 %161, i32 %164)
  %166 = icmp ne i64 %165, 0
  %167 = xor i1 %166, true
  br label %168

168:                                              ; preds = %156, %152, %147
  %169 = phi i1 [ false, %152 ], [ false, %147 ], [ %167, %156 ]
  br i1 %169, label %170, label %175

170:                                              ; preds = %168
  %171 = load i64, i64* %17, align 8
  %172 = add i64 %171, 1
  store i64 %172, i64* %17, align 8
  %173 = load i64, i64* %11, align 8
  %174 = add nsw i64 %173, 1
  store i64 %174, i64* %11, align 8
  br label %147

175:                                              ; preds = %168
  %176 = load i64, i64* %17, align 8
  %177 = load i64*, i64** %12, align 8
  store i64 %176, i64* %177, align 8
  %178 = load i64, i64* %11, align 8
  %179 = load i64, i64* %17, align 8
  %180 = sub i64 %178, %179
  %181 = trunc i64 %180 to i32
  store i32 %181, i32* %7, align 4
  br label %185

182:                                              ; preds = %140, %89
  %183 = load i64, i64* %17, align 8
  %184 = load i64*, i64** %12, align 8
  store i64 %183, i64* %184, align 8
  store i32 -1, i32* %7, align 4
  br label %185

185:                                              ; preds = %182, %175
  %186 = load i32, i32* %7, align 4
  ret i32 %186
}

declare dso_local i64 @ext2_group_first_block_no(%struct.super_block*, i32) #1

declare dso_local i64 @EXT2_BLOCKS_PER_GROUP(%struct.super_block*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @find_next_usable_block(i64, %struct.buffer_head*, i64) #1

declare dso_local i32 @ext2_test_bit(i64, i32) #1

declare dso_local i64 @ext2_set_bit_atomic(i32, i64, i32) #1

declare dso_local i32 @sb_bgl_lock(i32, i32) #1

declare dso_local i32 @EXT2_SB(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
