; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_super.c_ext4_fill_flex_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_super.c_ext4_fill_flex_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext4_sb_info = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ext4_group_desc = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"not enough memory for %u flex groups\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*)* @ext4_fill_flex_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_fill_flex_info(%struct.super_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.ext4_sb_info*, align 8
  %5 = alloca %struct.ext4_group_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %11 = load %struct.super_block*, %struct.super_block** %3, align 8
  %12 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %11)
  store %struct.ext4_sb_info* %12, %struct.ext4_sb_info** %4, align 8
  store %struct.ext4_group_desc* null, %struct.ext4_group_desc** %5, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %4, align 8
  %14 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %13, i32 0, i32 3
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %4, align 8
  %19 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %4, align 8
  %21 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %22, 1
  br i1 %23, label %29, label %24

24:                                               ; preds = %1
  %25 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %4, align 8
  %26 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sgt i32 %27, 31
  br i1 %28, label %29, label %32

29:                                               ; preds = %24, %1
  %30 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %4, align 8
  %31 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  store i32 1, i32* %2, align 4
  br label %146

32:                                               ; preds = %24
  %33 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %4, align 8
  %34 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = shl i32 1, %35
  store i32 %36, i32* %8, align 4
  %37 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %4, align 8
  %38 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %8, align 4
  %41 = add i32 %39, %40
  %42 = sub i32 %41, 1
  %43 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %4, align 8
  %44 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %43, i32 0, i32 3
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @le16_to_cpu(i32 %47)
  %49 = add nsw i32 %48, 1
  %50 = load %struct.super_block*, %struct.super_block** %3, align 8
  %51 = call i32 @EXT4_DESC_PER_BLOCK_BITS(%struct.super_block* %50)
  %52 = shl i32 %49, %51
  %53 = add i32 %42, %52
  %54 = load i32, i32* %8, align 4
  %55 = udiv i32 %53, %54
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 4
  store i64 %58, i64* %9, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call %struct.TYPE_6__* @kzalloc(i64 %59, i32 %60)
  %62 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %4, align 8
  %63 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %62, i32 0, i32 2
  store %struct.TYPE_6__* %61, %struct.TYPE_6__** %63, align 8
  %64 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %4, align 8
  %65 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %64, i32 0, i32 2
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = icmp eq %struct.TYPE_6__* %66, null
  br i1 %67, label %68, label %84

68:                                               ; preds = %32
  %69 = load i64, i64* %9, align 8
  %70 = call %struct.TYPE_6__* @vmalloc(i64 %69)
  %71 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %4, align 8
  %72 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %71, i32 0, i32 2
  store %struct.TYPE_6__* %70, %struct.TYPE_6__** %72, align 8
  %73 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %4, align 8
  %74 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %73, i32 0, i32 2
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = icmp ne %struct.TYPE_6__* %75, null
  br i1 %76, label %77, label %83

77:                                               ; preds = %68
  %78 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %4, align 8
  %79 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %78, i32 0, i32 2
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = load i64, i64* %9, align 8
  %82 = call i32 @memset(%struct.TYPE_6__* %80, i32 0, i64 %81)
  br label %83

83:                                               ; preds = %77, %68
  br label %84

84:                                               ; preds = %83, %32
  %85 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %4, align 8
  %86 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %85, i32 0, i32 2
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = icmp eq %struct.TYPE_6__* %87, null
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load %struct.super_block*, %struct.super_block** %3, align 8
  %91 = load i32, i32* @KERN_ERR, align 4
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @ext4_msg(%struct.super_block* %90, i32 %91, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %92)
  br label %145

94:                                               ; preds = %84
  store i32 0, i32* %10, align 4
  br label %95

95:                                               ; preds = %141, %94
  %96 = load i32, i32* %10, align 4
  %97 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %4, align 8
  %98 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp ult i32 %96, %99
  br i1 %100, label %101, label %144

101:                                              ; preds = %95
  %102 = load %struct.super_block*, %struct.super_block** %3, align 8
  %103 = load i32, i32* %10, align 4
  %104 = call %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block* %102, i32 %103, i32* null)
  store %struct.ext4_group_desc* %104, %struct.ext4_group_desc** %5, align 8
  %105 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %4, align 8
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @ext4_flex_group(%struct.ext4_sb_info* %105, i32 %106)
  store i32 %107, i32* %7, align 4
  %108 = load %struct.super_block*, %struct.super_block** %3, align 8
  %109 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %5, align 8
  %110 = call i32 @ext4_free_inodes_count(%struct.super_block* %108, %struct.ext4_group_desc* %109)
  %111 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %4, align 8
  %112 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %111, i32 0, i32 2
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 2
  %118 = call i32 @atomic_add(i32 %110, i32* %117)
  %119 = load %struct.super_block*, %struct.super_block** %3, align 8
  %120 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %5, align 8
  %121 = call i32 @ext4_free_blks_count(%struct.super_block* %119, %struct.ext4_group_desc* %120)
  %122 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %4, align 8
  %123 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %122, i32 0, i32 2
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  %129 = call i32 @atomic_add(i32 %121, i32* %128)
  %130 = load %struct.super_block*, %struct.super_block** %3, align 8
  %131 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %5, align 8
  %132 = call i32 @ext4_used_dirs_count(%struct.super_block* %130, %struct.ext4_group_desc* %131)
  %133 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %4, align 8
  %134 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %133, i32 0, i32 2
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = load i32, i32* %7, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = call i32 @atomic_add(i32 %132, i32* %139)
  br label %141

141:                                              ; preds = %101
  %142 = load i32, i32* %10, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %10, align 4
  br label %95

144:                                              ; preds = %95
  store i32 1, i32* %2, align 4
  br label %146

145:                                              ; preds = %89
  store i32 0, i32* %2, align 4
  br label %146

146:                                              ; preds = %145, %144, %29
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @EXT4_DESC_PER_BLOCK_BITS(%struct.super_block*) #1

declare dso_local %struct.TYPE_6__* @kzalloc(i64, i32) #1

declare dso_local %struct.TYPE_6__* @vmalloc(i64) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i64) #1

declare dso_local i32 @ext4_msg(%struct.super_block*, i32, i8*, i32) #1

declare dso_local %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block*, i32, i32*) #1

declare dso_local i32 @ext4_flex_group(%struct.ext4_sb_info*, i32) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i32 @ext4_free_inodes_count(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local i32 @ext4_free_blks_count(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local i32 @ext4_used_dirs_count(%struct.super_block*, %struct.ext4_group_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
