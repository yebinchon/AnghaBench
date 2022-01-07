; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_super.c_detect_sysv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_super.c_detect_sysv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysv_sb_info = type { i32, i32, i32, %struct.super_block* }
%struct.super_block = type { i32, i32 }
%struct.buffer_head = type { i64 }
%struct.sysv4_super_block = type { i32, i32, i32, i32 }

@BLOCK_SIZE = common dso_local global i32 0, align 4
@BYTESEX_LE = common dso_local global i32 0, align 4
@BYTESEX_BE = common dso_local global i32 0, align 4
@FSTYPE_AFS = common dso_local global i32 0, align 4
@MS_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"SysV FS: SCO EAFS on %s detected, forcing read-only mode.\0A\00", align 1
@JAN_1_1980 = common dso_local global i64 0, align 8
@FSTYPE_SYSV2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"SysV FS: can't handle long file names on %s, forcing read-only mode.\0A\00", align 1
@FSTYPE_SYSV4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sysv_sb_info*, %struct.buffer_head*)* @detect_sysv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @detect_sysv(%struct.sysv_sb_info* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sysv_sb_info*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.sysv4_super_block*, align 8
  %8 = alloca i32, align 4
  store %struct.sysv_sb_info* %0, %struct.sysv_sb_info** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  %9 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %10 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %9, i32 0, i32 3
  %11 = load %struct.super_block*, %struct.super_block** %10, align 8
  store %struct.super_block* %11, %struct.super_block** %6, align 8
  %12 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %13 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* @BLOCK_SIZE, align 4
  %16 = sdiv i32 %15, 2
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %14, %17
  %19 = inttoptr i64 %18 to %struct.sysv4_super_block*
  store %struct.sysv4_super_block* %19, %struct.sysv4_super_block** %7, align 8
  %20 = load %struct.sysv4_super_block*, %struct.sysv4_super_block** %7, align 8
  %21 = getelementptr inbounds %struct.sysv4_super_block, %struct.sysv4_super_block* %20, i32 0, i32 3
  %22 = bitcast i32* %21 to i64*
  %23 = load i64, i64* %22, align 4
  %24 = call i64 @cpu_to_le32(i32 -48726496)
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load i32, i32* @BYTESEX_LE, align 4
  %28 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %29 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  br label %43

30:                                               ; preds = %2
  %31 = load %struct.sysv4_super_block*, %struct.sysv4_super_block** %7, align 8
  %32 = getelementptr inbounds %struct.sysv4_super_block, %struct.sysv4_super_block* %31, i32 0, i32 3
  %33 = bitcast i32* %32 to i64*
  %34 = load i64, i64* %33, align 4
  %35 = call i64 @cpu_to_be32(i32 -48726496)
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load i32, i32* @BYTESEX_BE, align 4
  %39 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %40 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  br label %42

41:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %131

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %42, %26
  %44 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %45 = load %struct.sysv4_super_block*, %struct.sysv4_super_block** %7, align 8
  %46 = getelementptr inbounds %struct.sysv4_super_block, %struct.sysv4_super_block* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @fs32_to_cpu(%struct.sysv_sb_info* %44, i32 %47)
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %8, align 4
  %50 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %51 = load %struct.sysv4_super_block*, %struct.sysv4_super_block** %7, align 8
  %52 = getelementptr inbounds %struct.sysv4_super_block, %struct.sysv4_super_block* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @fs16_to_cpu(%struct.sysv_sb_info* %50, i32 %53)
  %55 = icmp eq i32 %54, 65535
  br i1 %55, label %56, label %75

56:                                               ; preds = %43
  %57 = load i32, i32* @FSTYPE_AFS, align 4
  %58 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %59 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %61 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = load %struct.super_block*, %struct.super_block** %6, align 8
  %63 = getelementptr inbounds %struct.super_block, %struct.super_block* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @MS_RDONLY, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %56
  %69 = load %struct.super_block*, %struct.super_block** %6, align 8
  %70 = getelementptr inbounds %struct.super_block, %struct.super_block* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @printk(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %68, %56
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %3, align 4
  br label %131

75:                                               ; preds = %43
  %76 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %77 = load %struct.sysv4_super_block*, %struct.sysv4_super_block** %7, align 8
  %78 = getelementptr inbounds %struct.sysv4_super_block, %struct.sysv4_super_block* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @fs32_to_cpu(%struct.sysv_sb_info* %76, i32 %79)
  %81 = load i64, i64* @JAN_1_1980, align 8
  %82 = icmp slt i64 %80, %81
  br i1 %82, label %83, label %95

83:                                               ; preds = %75
  %84 = load i32, i32* %8, align 4
  %85 = icmp sgt i32 %84, 3
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %8, align 4
  %88 = icmp slt i32 %87, 1
  br i1 %88, label %89, label %90

89:                                               ; preds = %86, %83
  store i32 0, i32* %3, align 4
  br label %131

90:                                               ; preds = %86
  %91 = load i32, i32* @FSTYPE_SYSV2, align 4
  %92 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %93 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %3, align 4
  br label %131

95:                                               ; preds = %75
  %96 = load i32, i32* %8, align 4
  %97 = icmp sgt i32 %96, 3
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* %8, align 4
  %100 = icmp slt i32 %99, 1
  br i1 %100, label %101, label %108

101:                                              ; preds = %98, %95
  %102 = load i32, i32* %8, align 4
  %103 = icmp sgt i32 %102, 48
  br i1 %103, label %107, label %104

104:                                              ; preds = %101
  %105 = load i32, i32* %8, align 4
  %106 = icmp slt i32 %105, 16
  br i1 %106, label %107, label %108

107:                                              ; preds = %104, %101
  store i32 0, i32* %3, align 4
  br label %131

108:                                              ; preds = %104, %98
  %109 = load i32, i32* %8, align 4
  %110 = icmp sge i32 %109, 16
  br i1 %110, label %111, label %118

111:                                              ; preds = %108
  %112 = load %struct.super_block*, %struct.super_block** %6, align 8
  %113 = getelementptr inbounds %struct.super_block, %struct.super_block* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @printk(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 %114)
  %116 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %117 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %116, i32 0, i32 0
  store i32 1, i32* %117, align 8
  br label %118

118:                                              ; preds = %111, %108
  %119 = load i32, i32* @FSTYPE_SYSV4, align 4
  %120 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %121 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* %8, align 4
  %123 = icmp sge i32 %122, 16
  br i1 %123, label %124, label %127

124:                                              ; preds = %118
  %125 = load i32, i32* %8, align 4
  %126 = ashr i32 %125, 4
  br label %129

127:                                              ; preds = %118
  %128 = load i32, i32* %8, align 4
  br label %129

129:                                              ; preds = %127, %124
  %130 = phi i32 [ %126, %124 ], [ %128, %127 ]
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %129, %107, %90, %89, %73, %41
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local i64 @fs32_to_cpu(%struct.sysv_sb_info*, i32) #1

declare dso_local i32 @fs16_to_cpu(%struct.sysv_sb_info*, i32) #1

declare dso_local i32 @printk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
