; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_balloc.c_sysv_count_free_blocks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_balloc.c_sysv_count_free_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.sysv_sb_info = type { i64, i64*, i32, i32, i32, i64, i64*, i32* }
%struct.buffer_head = type { i64 }

@FSTYPE_AFS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"sysv_count_free_blocks: new block %d is not in data zone\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"sysv_count_free_blocks: cannot read free-list block\0A\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"sysv_count_free_blocks: >flc_size entries in free-list block\0A\00", align 1
@.str.3 = private unnamed_addr constant [67 x i8] c"sysv_count_free_blocks: free block count was %d, correcting to %d\0A\00", align 1
@MS_RDONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sysv_count_free_blocks(%struct.super_block* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.sysv_sb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %12 = load %struct.super_block*, %struct.super_block** %3, align 8
  %13 = call %struct.sysv_sb_info* @SYSV_SB(%struct.super_block* %12)
  store %struct.sysv_sb_info* %13, %struct.sysv_sb_info** %4, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %7, align 8
  %14 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %15 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @FSTYPE_AFS, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %167

20:                                               ; preds = %1
  %21 = load %struct.super_block*, %struct.super_block** %3, align 8
  %22 = call i32 @lock_super(%struct.super_block* %21)
  %23 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %24 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %25 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %24, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  %27 = load i64, i64* %26, align 8
  %28 = call i8* @fs32_to_cpu(%struct.sysv_sb_info* %23, i64 %27)
  %29 = ptrtoint i8* %28 to i32
  store i32 %29, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %30 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %31 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %32 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %31, i32 0, i32 7
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @fs16_to_cpu(%struct.sysv_sb_info* %30, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %37 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %36, i32 0, i32 6
  %38 = load i64*, i64** %37, align 8
  store i64* %38, i64** %8, align 8
  br label %39

39:                                               ; preds = %20, %104
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %42 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = icmp sgt i32 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %137

46:                                               ; preds = %39
  store i64 0, i64* %11, align 8
  br label %47

47:                                               ; preds = %60, %46
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = load i64*, i64** %8, align 8
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %51, i64 %54
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %11, align 8
  %57 = icmp ne i64 %56, 0
  br label %58

58:                                               ; preds = %50, %47
  %59 = phi i1 [ false, %47 ], [ %57, %50 ]
  br i1 %59, label %60, label %63

60:                                               ; preds = %58
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %47

63:                                               ; preds = %58
  %64 = load i64, i64* %11, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  br label %115

67:                                               ; preds = %63
  %68 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %69 = load i64, i64* %11, align 8
  %70 = call i8* @fs32_to_cpu(%struct.sysv_sb_info* %68, i64 %69)
  %71 = ptrtoint i8* %70 to i32
  store i32 %71, i32* %9, align 4
  %72 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %73 = icmp ne %struct.buffer_head* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %76 = call i32 @brelse(%struct.buffer_head* %75)
  br label %77

77:                                               ; preds = %74, %67
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %80 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = icmp ult i32 %78, %81
  br i1 %82, label %89, label %83

83:                                               ; preds = %77
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %86 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = icmp uge i32 %84, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %83, %77
  br label %132

90:                                               ; preds = %83
  %91 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %92 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %91, i32 0, i32 5
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = zext i32 %94 to i64
  %96 = add nsw i64 %95, %93
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %9, align 4
  %98 = load %struct.super_block*, %struct.super_block** %3, align 8
  %99 = load i32, i32* %9, align 4
  %100 = call %struct.buffer_head* @sb_bread(%struct.super_block* %98, i32 %99)
  store %struct.buffer_head* %100, %struct.buffer_head** %7, align 8
  %101 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %102 = icmp ne %struct.buffer_head* %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %90
  br label %135

104:                                              ; preds = %90
  %105 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %106 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %107 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = inttoptr i64 %108 to i32*
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @fs16_to_cpu(%struct.sysv_sb_info* %105, i32 %110)
  store i32 %111, i32* %10, align 4
  %112 = load %struct.super_block*, %struct.super_block** %3, align 8
  %113 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %114 = call i64* @get_chunk(%struct.super_block* %112, %struct.buffer_head* %113)
  store i64* %114, i64** %8, align 8
  br label %39

115:                                              ; preds = %66
  %116 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %117 = icmp ne %struct.buffer_head* %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %120 = call i32 @brelse(%struct.buffer_head* %119)
  br label %121

121:                                              ; preds = %118, %115
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* %5, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %121
  br label %147

126:                                              ; preds = %121
  br label %127

127:                                              ; preds = %166, %145, %126
  %128 = load %struct.super_block*, %struct.super_block** %3, align 8
  %129 = call i32 @unlock_super(%struct.super_block* %128)
  %130 = load i32, i32* %6, align 4
  %131 = sext i32 %130 to i64
  store i64 %131, i64* %2, align 8
  br label %167

132:                                              ; preds = %89
  %133 = load i32, i32* %9, align 4
  %134 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %133)
  br label %145

135:                                              ; preds = %103
  %136 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %145

137:                                              ; preds = %45
  %138 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  %139 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %140 = icmp ne %struct.buffer_head* %139, null
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %143 = call i32 @brelse(%struct.buffer_head* %142)
  br label %144

144:                                              ; preds = %141, %137
  br label %145

145:                                              ; preds = %144, %135, %132
  %146 = load i32, i32* %5, align 4
  store i32 %146, i32* %6, align 4
  br label %127

147:                                              ; preds = %125
  %148 = load i32, i32* %5, align 4
  %149 = load i32, i32* %6, align 4
  %150 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i32 %148, i32 %149)
  %151 = load %struct.super_block*, %struct.super_block** %3, align 8
  %152 = getelementptr inbounds %struct.super_block, %struct.super_block* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @MS_RDONLY, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %166, label %157

157:                                              ; preds = %147
  %158 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %159 = load i32, i32* %6, align 4
  %160 = call i64 @cpu_to_fs32(%struct.sysv_sb_info* %158, i32 %159)
  %161 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %162 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %161, i32 0, i32 1
  %163 = load i64*, i64** %162, align 8
  store i64 %160, i64* %163, align 8
  %164 = load %struct.super_block*, %struct.super_block** %3, align 8
  %165 = call i32 @dirty_sb(%struct.super_block* %164)
  br label %166

166:                                              ; preds = %157, %147
  br label %127

167:                                              ; preds = %127, %19
  %168 = load i64, i64* %2, align 8
  ret i64 %168
}

declare dso_local %struct.sysv_sb_info* @SYSV_SB(%struct.super_block*) #1

declare dso_local i32 @lock_super(%struct.super_block*) #1

declare dso_local i8* @fs32_to_cpu(%struct.sysv_sb_info*, i64) #1

declare dso_local i32 @fs16_to_cpu(%struct.sysv_sb_info*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.super_block*, i32) #1

declare dso_local i64* @get_chunk(%struct.super_block*, %struct.buffer_head*) #1

declare dso_local i32 @unlock_super(%struct.super_block*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i64 @cpu_to_fs32(%struct.sysv_sb_info*, i32) #1

declare dso_local i32 @dirty_sb(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
