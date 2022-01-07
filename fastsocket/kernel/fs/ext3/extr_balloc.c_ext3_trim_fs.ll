; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_balloc.c_ext3_trim_fs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_balloc.c_ext3_trim_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32 }
%struct.fstrim_range = type { i32, i32, i32 }
%struct.ext3_group_desc = type { i32 }
%struct.ext3_super_block = type { i32, i32 }
%struct.TYPE_2__ = type { %struct.ext3_super_block* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext3_trim_fs(%struct.super_block* %0, %struct.fstrim_range* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.fstrim_range*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ext3_group_desc*, align 8
  %12 = alloca %struct.ext3_super_block*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.fstrim_range* %1, %struct.fstrim_range** %5, align 8
  %20 = load %struct.super_block*, %struct.super_block** %4, align 8
  %21 = call %struct.TYPE_2__* @EXT3_SB(%struct.super_block* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.ext3_super_block*, %struct.ext3_super_block** %22, align 8
  store %struct.ext3_super_block* %23, %struct.ext3_super_block** %12, align 8
  store i32 0, i32* %16, align 4
  %24 = load %struct.super_block*, %struct.super_block** %4, align 8
  %25 = call %struct.TYPE_2__* @EXT3_SB(%struct.super_block* %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.ext3_super_block*, %struct.ext3_super_block** %26, align 8
  %28 = getelementptr inbounds %struct.ext3_super_block, %struct.ext3_super_block* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @le32_to_cpu(i32 %29)
  store i32 %30, i32* %17, align 4
  %31 = load %struct.ext3_super_block*, %struct.ext3_super_block** %12, align 8
  %32 = getelementptr inbounds %struct.ext3_super_block, %struct.ext3_super_block* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @le32_to_cpu(i32 %33)
  store i32 %34, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %35 = load %struct.fstrim_range*, %struct.fstrim_range** %5, align 8
  %36 = getelementptr inbounds %struct.fstrim_range, %struct.fstrim_range* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.super_block*, %struct.super_block** %4, align 8
  %39 = getelementptr inbounds %struct.super_block, %struct.super_block* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = ashr i32 %37, %40
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = load %struct.fstrim_range*, %struct.fstrim_range** %5, align 8
  %44 = getelementptr inbounds %struct.fstrim_range, %struct.fstrim_range* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.super_block*, %struct.super_block** %4, align 8
  %47 = getelementptr inbounds %struct.super_block, %struct.super_block* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = ashr i32 %45, %48
  %50 = add nsw i32 %42, %49
  %51 = sub nsw i32 %50, 1
  store i32 %51, i32* %15, align 4
  %52 = load %struct.fstrim_range*, %struct.fstrim_range** %5, align 8
  %53 = getelementptr inbounds %struct.fstrim_range, %struct.fstrim_range* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.super_block*, %struct.super_block** %4, align 8
  %56 = getelementptr inbounds %struct.super_block, %struct.super_block* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = ashr i32 %54, %57
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = load %struct.super_block*, %struct.super_block** %4, align 8
  %61 = call i32 @EXT3_BLOCKS_PER_GROUP(%struct.super_block* %60)
  %62 = icmp sgt i32 %59, %61
  %63 = zext i1 %62 to i32
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %2
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* %18, align 4
  %69 = icmp sge i32 %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %66, %2
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %163

76:                                               ; preds = %66
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* %18, align 4
  %79 = icmp sge i32 %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = load i32, i32* %18, align 4
  %85 = sub nsw i32 %84, 1
  store i32 %85, i32* %15, align 4
  br label %86

86:                                               ; preds = %83, %76
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* %17, align 4
  %89 = icmp sle i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store i32 0, i32* %3, align 4
  br label %163

91:                                               ; preds = %86
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %17, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = load i32, i32* %17, align 4
  store i32 %96, i32* %13, align 4
  br label %97

97:                                               ; preds = %95, %91
  %98 = call i32 (...) @smp_rmb()
  %99 = load %struct.super_block*, %struct.super_block** %4, align 8
  %100 = load i32, i32* %13, align 4
  %101 = call i32 @ext3_get_group_no_and_offset(%struct.super_block* %99, i32 %100, i64* %9, i32* %7)
  %102 = load %struct.super_block*, %struct.super_block** %4, align 8
  %103 = load i32, i32* %15, align 4
  %104 = call i32 @ext3_get_group_no_and_offset(%struct.super_block* %102, i32 %103, i64* %10, i32* %6)
  %105 = load %struct.super_block*, %struct.super_block** %4, align 8
  %106 = call i32 @EXT3_BLOCKS_PER_GROUP(%struct.super_block* %105)
  store i32 %106, i32* %15, align 4
  %107 = load i64, i64* %9, align 8
  store i64 %107, i64* %8, align 8
  br label %108

108:                                              ; preds = %147, %97
  %109 = load i64, i64* %8, align 8
  %110 = load i64, i64* %10, align 8
  %111 = icmp ule i64 %109, %110
  br i1 %111, label %112, label %150

112:                                              ; preds = %108
  %113 = load %struct.super_block*, %struct.super_block** %4, align 8
  %114 = load i64, i64* %8, align 8
  %115 = call %struct.ext3_group_desc* @ext3_get_group_desc(%struct.super_block* %113, i64 %114, i32* null)
  store %struct.ext3_group_desc* %115, %struct.ext3_group_desc** %11, align 8
  %116 = load %struct.ext3_group_desc*, %struct.ext3_group_desc** %11, align 8
  %117 = icmp ne %struct.ext3_group_desc* %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %112
  br label %150

119:                                              ; preds = %112
  %120 = load %struct.ext3_group_desc*, %struct.ext3_group_desc** %11, align 8
  %121 = getelementptr inbounds %struct.ext3_group_desc, %struct.ext3_group_desc* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @le16_to_cpu(i32 %122)
  %124 = load i32, i32* %14, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %119
  br label %147

127:                                              ; preds = %119
  %128 = load i64, i64* %8, align 8
  %129 = load i64, i64* %10, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %127
  %132 = load i32, i32* %6, align 4
  store i32 %132, i32* %15, align 4
  br label %133

133:                                              ; preds = %131, %127
  %134 = load %struct.super_block*, %struct.super_block** %4, align 8
  %135 = load i64, i64* %8, align 8
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* %15, align 4
  %138 = load i32, i32* %14, align 4
  %139 = call i32 @ext3_trim_all_free(%struct.super_block* %134, i64 %135, i32 %136, i32 %137, i32 %138)
  store i32 %139, i32* %19, align 4
  %140 = load i32, i32* %19, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %133
  br label %150

143:                                              ; preds = %133
  %144 = load i32, i32* %19, align 4
  %145 = load i32, i32* %16, align 4
  %146 = add nsw i32 %145, %144
  store i32 %146, i32* %16, align 4
  store i32 0, i32* %7, align 4
  br label %147

147:                                              ; preds = %143, %126
  %148 = load i64, i64* %8, align 8
  %149 = add i64 %148, 1
  store i64 %149, i64* %8, align 8
  br label %108

150:                                              ; preds = %142, %118, %108
  %151 = load i32, i32* %19, align 4
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %150
  store i32 0, i32* %19, align 4
  br label %154

154:                                              ; preds = %153, %150
  %155 = load i32, i32* %16, align 4
  %156 = load %struct.super_block*, %struct.super_block** %4, align 8
  %157 = getelementptr inbounds %struct.super_block, %struct.super_block* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = mul nsw i32 %155, %158
  %160 = load %struct.fstrim_range*, %struct.fstrim_range** %5, align 8
  %161 = getelementptr inbounds %struct.fstrim_range, %struct.fstrim_range* %160, i32 0, i32 1
  store i32 %159, i32* %161, align 4
  %162 = load i32, i32* %19, align 4
  store i32 %162, i32* %3, align 4
  br label %163

163:                                              ; preds = %154, %90, %73
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local %struct.TYPE_2__* @EXT3_SB(%struct.super_block*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @EXT3_BLOCKS_PER_GROUP(%struct.super_block*) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @ext3_get_group_no_and_offset(%struct.super_block*, i32, i64*, i32*) #1

declare dso_local %struct.ext3_group_desc* @ext3_get_group_desc(%struct.super_block*, i64, i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ext3_trim_all_free(%struct.super_block*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
