; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_balloc.c_ext3_try_to_allocate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_balloc.c_ext3_try_to_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ext3_reserve_window = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.super_block*, i32*, i32, %struct.buffer_head*, i64, i64*, %struct.ext3_reserve_window*)* @ext3_try_to_allocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ext3_try_to_allocate(%struct.super_block* %0, i32* %1, i32 %2, %struct.buffer_head* %3, i64 %4, i64* %5, %struct.ext3_reserve_window* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.super_block*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca %struct.ext3_reserve_window*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.buffer_head* %3, %struct.buffer_head** %12, align 8
  store i64 %4, i64* %13, align 8
  store i64* %5, i64** %14, align 8
  store %struct.ext3_reserve_window* %6, %struct.ext3_reserve_window** %15, align 8
  store i64 0, i64* %19, align 8
  %21 = load %struct.ext3_reserve_window*, %struct.ext3_reserve_window** %15, align 8
  %22 = icmp ne %struct.ext3_reserve_window* %21, null
  br i1 %22, label %23, label %65

23:                                               ; preds = %7
  %24 = load %struct.super_block*, %struct.super_block** %9, align 8
  %25 = load i32, i32* %11, align 4
  %26 = call i64 @ext3_group_first_block_no(%struct.super_block* %24, i32 %25)
  store i64 %26, i64* %16, align 8
  %27 = load %struct.ext3_reserve_window*, %struct.ext3_reserve_window** %15, align 8
  %28 = getelementptr inbounds %struct.ext3_reserve_window, %struct.ext3_reserve_window* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %16, align 8
  %31 = icmp sge i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %23
  %33 = load %struct.ext3_reserve_window*, %struct.ext3_reserve_window** %15, align 8
  %34 = getelementptr inbounds %struct.ext3_reserve_window, %struct.ext3_reserve_window* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %16, align 8
  %37 = sub nsw i64 %35, %36
  store i64 %37, i64* %17, align 8
  br label %39

38:                                               ; preds = %23
  store i64 0, i64* %17, align 8
  br label %39

39:                                               ; preds = %38, %32
  %40 = load %struct.ext3_reserve_window*, %struct.ext3_reserve_window** %15, align 8
  %41 = getelementptr inbounds %struct.ext3_reserve_window, %struct.ext3_reserve_window* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %16, align 8
  %44 = sub nsw i64 %42, %43
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %18, align 8
  %46 = load i64, i64* %18, align 8
  %47 = load %struct.super_block*, %struct.super_block** %9, align 8
  %48 = call i64 @EXT3_BLOCKS_PER_GROUP(%struct.super_block* %47)
  %49 = icmp sgt i64 %46, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %39
  %51 = load %struct.super_block*, %struct.super_block** %9, align 8
  %52 = call i64 @EXT3_BLOCKS_PER_GROUP(%struct.super_block* %51)
  store i64 %52, i64* %18, align 8
  br label %53

53:                                               ; preds = %50, %39
  %54 = load i64, i64* %17, align 8
  %55 = load i64, i64* %13, align 8
  %56 = icmp sle i64 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load i64, i64* %13, align 8
  %59 = load i64, i64* %18, align 8
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i64, i64* %13, align 8
  store i64 %62, i64* %17, align 8
  br label %64

63:                                               ; preds = %57, %53
  store i64 -1, i64* %13, align 8
  br label %64

64:                                               ; preds = %63, %61
  br label %74

65:                                               ; preds = %7
  %66 = load i64, i64* %13, align 8
  %67 = icmp sgt i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load i64, i64* %13, align 8
  store i64 %69, i64* %17, align 8
  br label %71

70:                                               ; preds = %65
  store i64 0, i64* %17, align 8
  br label %71

71:                                               ; preds = %70, %68
  %72 = load %struct.super_block*, %struct.super_block** %9, align 8
  %73 = call i64 @EXT3_BLOCKS_PER_GROUP(%struct.super_block* %72)
  store i64 %73, i64* %18, align 8
  br label %74

74:                                               ; preds = %71, %64
  %75 = load i64, i64* %17, align 8
  %76 = load %struct.super_block*, %struct.super_block** %9, align 8
  %77 = call i64 @EXT3_BLOCKS_PER_GROUP(%struct.super_block* %76)
  %78 = icmp sgt i64 %75, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @BUG_ON(i32 %79)
  br label %81

81:                                               ; preds = %143, %74
  %82 = load i64, i64* %13, align 8
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %81
  %85 = load i64, i64* %13, align 8
  %86 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %87 = call i64 @ext3_test_allocatable(i64 %85, %struct.buffer_head* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %124, label %89

89:                                               ; preds = %84, %81
  %90 = load i64, i64* %17, align 8
  %91 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %92 = load i64, i64* %18, align 8
  %93 = call i64 @find_next_usable_block(i64 %90, %struct.buffer_head* %91, i64 %92)
  store i64 %93, i64* %13, align 8
  %94 = load i64, i64* %13, align 8
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %89
  br label %185

97:                                               ; preds = %89
  %98 = load %struct.ext3_reserve_window*, %struct.ext3_reserve_window** %15, align 8
  %99 = icmp ne %struct.ext3_reserve_window* %98, null
  br i1 %99, label %123, label %100

100:                                              ; preds = %97
  store i32 0, i32* %20, align 4
  br label %101

101:                                              ; preds = %117, %100
  %102 = load i32, i32* %20, align 4
  %103 = icmp slt i32 %102, 7
  br i1 %103, label %104, label %114

104:                                              ; preds = %101
  %105 = load i64, i64* %13, align 8
  %106 = load i64, i64* %17, align 8
  %107 = icmp sgt i64 %105, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %104
  %109 = load i64, i64* %13, align 8
  %110 = sub nsw i64 %109, 1
  %111 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %112 = call i64 @ext3_test_allocatable(i64 %110, %struct.buffer_head* %111)
  %113 = icmp ne i64 %112, 0
  br label %114

114:                                              ; preds = %108, %104, %101
  %115 = phi i1 [ false, %104 ], [ false, %101 ], [ %113, %108 ]
  br i1 %115, label %116, label %122

116:                                              ; preds = %114
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %20, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %20, align 4
  %120 = load i64, i64* %13, align 8
  %121 = add nsw i64 %120, -1
  store i64 %121, i64* %13, align 8
  br label %101

122:                                              ; preds = %114
  br label %123

123:                                              ; preds = %122, %97
  br label %124

124:                                              ; preds = %123, %84
  %125 = load i64, i64* %13, align 8
  store i64 %125, i64* %17, align 8
  %126 = load %struct.super_block*, %struct.super_block** %9, align 8
  %127 = call i32 @EXT3_SB(%struct.super_block* %126)
  %128 = load i32, i32* %11, align 4
  %129 = call i32 @sb_bgl_lock(i32 %127, i32 %128)
  %130 = load i64, i64* %13, align 8
  %131 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %132 = call i64 @claim_block(i32 %129, i64 %130, %struct.buffer_head* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %144, label %134

134:                                              ; preds = %124
  %135 = load i64, i64* %17, align 8
  %136 = add nsw i64 %135, 1
  store i64 %136, i64* %17, align 8
  %137 = load i64, i64* %13, align 8
  %138 = add nsw i64 %137, 1
  store i64 %138, i64* %13, align 8
  %139 = load i64, i64* %17, align 8
  %140 = load i64, i64* %18, align 8
  %141 = icmp sge i64 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %134
  br label %185

143:                                              ; preds = %134
  br label %81

144:                                              ; preds = %124
  %145 = load i64, i64* %19, align 8
  %146 = add i64 %145, 1
  store i64 %146, i64* %19, align 8
  %147 = load i64, i64* %13, align 8
  %148 = add nsw i64 %147, 1
  store i64 %148, i64* %13, align 8
  br label %149

149:                                              ; preds = %174, %144
  %150 = load i64, i64* %19, align 8
  %151 = load i64*, i64** %14, align 8
  %152 = load i64, i64* %151, align 8
  %153 = icmp ult i64 %150, %152
  br i1 %153, label %154, label %172

154:                                              ; preds = %149
  %155 = load i64, i64* %13, align 8
  %156 = load i64, i64* %18, align 8
  %157 = icmp slt i64 %155, %156
  br i1 %157, label %158, label %172

158:                                              ; preds = %154
  %159 = load i64, i64* %13, align 8
  %160 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %161 = call i64 @ext3_test_allocatable(i64 %159, %struct.buffer_head* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %172

163:                                              ; preds = %158
  %164 = load %struct.super_block*, %struct.super_block** %9, align 8
  %165 = call i32 @EXT3_SB(%struct.super_block* %164)
  %166 = load i32, i32* %11, align 4
  %167 = call i32 @sb_bgl_lock(i32 %165, i32 %166)
  %168 = load i64, i64* %13, align 8
  %169 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %170 = call i64 @claim_block(i32 %167, i64 %168, %struct.buffer_head* %169)
  %171 = icmp ne i64 %170, 0
  br label %172

172:                                              ; preds = %163, %158, %154, %149
  %173 = phi i1 [ false, %158 ], [ false, %154 ], [ false, %149 ], [ %171, %163 ]
  br i1 %173, label %174, label %179

174:                                              ; preds = %172
  %175 = load i64, i64* %19, align 8
  %176 = add i64 %175, 1
  store i64 %176, i64* %19, align 8
  %177 = load i64, i64* %13, align 8
  %178 = add nsw i64 %177, 1
  store i64 %178, i64* %13, align 8
  br label %149

179:                                              ; preds = %172
  %180 = load i64, i64* %19, align 8
  %181 = load i64*, i64** %14, align 8
  store i64 %180, i64* %181, align 8
  %182 = load i64, i64* %13, align 8
  %183 = load i64, i64* %19, align 8
  %184 = sub i64 %182, %183
  store i64 %184, i64* %8, align 8
  br label %188

185:                                              ; preds = %142, %96
  %186 = load i64, i64* %19, align 8
  %187 = load i64*, i64** %14, align 8
  store i64 %186, i64* %187, align 8
  store i64 -1, i64* %8, align 8
  br label %188

188:                                              ; preds = %185, %179
  %189 = load i64, i64* %8, align 8
  ret i64 %189
}

declare dso_local i64 @ext3_group_first_block_no(%struct.super_block*, i32) #1

declare dso_local i64 @EXT3_BLOCKS_PER_GROUP(%struct.super_block*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @ext3_test_allocatable(i64, %struct.buffer_head*) #1

declare dso_local i64 @find_next_usable_block(i64, %struct.buffer_head*, i64) #1

declare dso_local i64 @claim_block(i32, i64, %struct.buffer_head*) #1

declare dso_local i32 @sb_bgl_lock(i32, i32) #1

declare dso_local i32 @EXT3_SB(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
