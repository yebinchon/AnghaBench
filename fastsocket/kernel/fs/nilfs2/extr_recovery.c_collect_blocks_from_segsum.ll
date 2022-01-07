; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_recovery.c_collect_blocks_from_segsum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_recovery.c_collect_blocks_from_segsum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_sb_info = type { i32 }
%struct.nilfs_segsum_info = type { i64, i64 }
%struct.list_head = type { i32 }
%struct.buffer_head = type { i64 }
%struct.nilfs_finfo = type { i32, i32, i32 }
%struct.nilfs_recovery_block = type { i32, i8*, i8*, i64, i8* }
%struct.nilfs_binfo_v = type { i32, i32 }
%struct.nilfs_segment_summary = type { i32 }

@EIO = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_sb_info*, i64, %struct.nilfs_segsum_info*, %struct.list_head*)* @collect_blocks_from_segsum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @collect_blocks_from_segsum(%struct.nilfs_sb_info* %0, i64 %1, %struct.nilfs_segsum_info* %2, %struct.list_head* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nilfs_sb_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nilfs_segsum_info*, align 8
  %9 = alloca %struct.list_head*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.nilfs_finfo*, align 8
  %20 = alloca %struct.nilfs_recovery_block*, align 8
  %21 = alloca %struct.nilfs_binfo_v*, align 8
  store %struct.nilfs_sb_info* %0, %struct.nilfs_sb_info** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.nilfs_segsum_info* %2, %struct.nilfs_segsum_info** %8, align 8
  store %struct.list_head* %3, %struct.list_head** %9, align 8
  %22 = load %struct.nilfs_segsum_info*, %struct.nilfs_segsum_info** %8, align 8
  %23 = getelementptr inbounds %struct.nilfs_segsum_info, %struct.nilfs_segsum_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %12, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load %struct.nilfs_segsum_info*, %struct.nilfs_segsum_info** %8, align 8
  %27 = getelementptr inbounds %struct.nilfs_segsum_info, %struct.nilfs_segsum_info* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %25, %28
  store i64 %29, i64* %13, align 8
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %15, align 4
  %32 = load i64, i64* %12, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %165

35:                                               ; preds = %4
  %36 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %6, align 8
  %37 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %7, align 8
  %40 = call %struct.buffer_head* @sb_bread(i32 %38, i64 %39)
  store %struct.buffer_head* %40, %struct.buffer_head** %10, align 8
  %41 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %42 = icmp ne %struct.buffer_head* %41, null
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %35
  br label %161

48:                                               ; preds = %35
  %49 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %50 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.nilfs_segment_summary*
  %53 = getelementptr inbounds %struct.nilfs_segment_summary, %struct.nilfs_segment_summary* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @le16_to_cpu(i32 %54)
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %159, %48
  %57 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %6, align 8
  %58 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @segsum_get(i32 %59, %struct.buffer_head** %10, i32* %11, i32 12)
  %61 = bitcast i8* %60 to %struct.nilfs_finfo*
  store %struct.nilfs_finfo* %61, %struct.nilfs_finfo** %19, align 8
  %62 = load %struct.nilfs_finfo*, %struct.nilfs_finfo** %19, align 8
  %63 = icmp ne %struct.nilfs_finfo* %62, null
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %56
  br label %161

69:                                               ; preds = %56
  %70 = load %struct.nilfs_finfo*, %struct.nilfs_finfo** %19, align 8
  %71 = getelementptr inbounds %struct.nilfs_finfo, %struct.nilfs_finfo* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @le64_to_cpu(i32 %72)
  store i8* %73, i8** %14, align 8
  %74 = load %struct.nilfs_finfo*, %struct.nilfs_finfo** %19, align 8
  %75 = getelementptr inbounds %struct.nilfs_finfo, %struct.nilfs_finfo* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @le32_to_cpu(i32 %76)
  store i64 %77, i64* %16, align 8
  %78 = load %struct.nilfs_finfo*, %struct.nilfs_finfo** %19, align 8
  %79 = getelementptr inbounds %struct.nilfs_finfo, %struct.nilfs_finfo* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @le32_to_cpu(i32 %80)
  store i64 %81, i64* %17, align 8
  %82 = load i64, i64* %16, align 8
  %83 = load i64, i64* %17, align 8
  %84 = sub i64 %82, %83
  store i64 %84, i64* %18, align 8
  br label %85

85:                                               ; preds = %114, %69
  %86 = load i64, i64* %17, align 8
  %87 = add i64 %86, -1
  store i64 %87, i64* %17, align 8
  %88 = icmp ugt i64 %86, 0
  br i1 %88, label %89, label %138

89:                                               ; preds = %85
  %90 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %6, align 8
  %91 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i8* @segsum_get(i32 %92, %struct.buffer_head** %10, i32* %11, i32 8)
  %94 = bitcast i8* %93 to %struct.nilfs_binfo_v*
  store %struct.nilfs_binfo_v* %94, %struct.nilfs_binfo_v** %21, align 8
  %95 = load %struct.nilfs_binfo_v*, %struct.nilfs_binfo_v** %21, align 8
  %96 = icmp ne %struct.nilfs_binfo_v* %95, null
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  %99 = call i64 @unlikely(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %89
  br label %161

102:                                              ; preds = %89
  %103 = load i32, i32* @GFP_NOFS, align 4
  %104 = call %struct.nilfs_recovery_block* @kmalloc(i32 40, i32 %103)
  store %struct.nilfs_recovery_block* %104, %struct.nilfs_recovery_block** %20, align 8
  %105 = load %struct.nilfs_recovery_block*, %struct.nilfs_recovery_block** %20, align 8
  %106 = icmp ne %struct.nilfs_recovery_block* %105, null
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = call i64 @unlikely(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %102
  %112 = load i32, i32* @ENOMEM, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %15, align 4
  br label %161

114:                                              ; preds = %102
  %115 = load i8*, i8** %14, align 8
  %116 = load %struct.nilfs_recovery_block*, %struct.nilfs_recovery_block** %20, align 8
  %117 = getelementptr inbounds %struct.nilfs_recovery_block, %struct.nilfs_recovery_block* %116, i32 0, i32 4
  store i8* %115, i8** %117, align 8
  %118 = load i64, i64* %13, align 8
  %119 = add nsw i64 %118, 1
  store i64 %119, i64* %13, align 8
  %120 = load %struct.nilfs_recovery_block*, %struct.nilfs_recovery_block** %20, align 8
  %121 = getelementptr inbounds %struct.nilfs_recovery_block, %struct.nilfs_recovery_block* %120, i32 0, i32 3
  store i64 %118, i64* %121, align 8
  %122 = load %struct.nilfs_binfo_v*, %struct.nilfs_binfo_v** %21, align 8
  %123 = getelementptr inbounds %struct.nilfs_binfo_v, %struct.nilfs_binfo_v* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i8* @le64_to_cpu(i32 %124)
  %126 = load %struct.nilfs_recovery_block*, %struct.nilfs_recovery_block** %20, align 8
  %127 = getelementptr inbounds %struct.nilfs_recovery_block, %struct.nilfs_recovery_block* %126, i32 0, i32 2
  store i8* %125, i8** %127, align 8
  %128 = load %struct.nilfs_binfo_v*, %struct.nilfs_binfo_v** %21, align 8
  %129 = getelementptr inbounds %struct.nilfs_binfo_v, %struct.nilfs_binfo_v* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i8* @le64_to_cpu(i32 %130)
  %132 = load %struct.nilfs_recovery_block*, %struct.nilfs_recovery_block** %20, align 8
  %133 = getelementptr inbounds %struct.nilfs_recovery_block, %struct.nilfs_recovery_block* %132, i32 0, i32 1
  store i8* %131, i8** %133, align 8
  %134 = load %struct.nilfs_recovery_block*, %struct.nilfs_recovery_block** %20, align 8
  %135 = getelementptr inbounds %struct.nilfs_recovery_block, %struct.nilfs_recovery_block* %134, i32 0, i32 0
  %136 = load %struct.list_head*, %struct.list_head** %9, align 8
  %137 = call i32 @list_add_tail(i32* %135, %struct.list_head* %136)
  br label %85

138:                                              ; preds = %85
  %139 = load i64, i64* %12, align 8
  %140 = add i64 %139, -1
  store i64 %140, i64* %12, align 8
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %138
  br label %160

143:                                              ; preds = %138
  %144 = load i64, i64* %18, align 8
  %145 = load i64, i64* %13, align 8
  %146 = add i64 %145, %144
  store i64 %146, i64* %13, align 8
  %147 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %6, align 8
  %148 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i64, i64* %18, align 8
  %151 = call i32 @segsum_skip(i32 %149, %struct.buffer_head** %10, i32* %11, i32 4, i64 %150)
  %152 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %153 = icmp ne %struct.buffer_head* %152, null
  %154 = xor i1 %153, true
  %155 = zext i1 %154 to i32
  %156 = call i64 @unlikely(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %143
  br label %161

159:                                              ; preds = %143
  br label %56

160:                                              ; preds = %142
  store i32 0, i32* %15, align 4
  br label %161

161:                                              ; preds = %160, %158, %111, %101, %68, %47
  %162 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %163 = call i32 @brelse(%struct.buffer_head* %162)
  %164 = load i32, i32* %15, align 4
  store i32 %164, i32* %5, align 4
  br label %165

165:                                              ; preds = %161, %34
  %166 = load i32, i32* %5, align 4
  ret i32 %166
}

declare dso_local %struct.buffer_head* @sb_bread(i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i8* @segsum_get(i32, %struct.buffer_head**, i32*, i32) #1

declare dso_local i8* @le64_to_cpu(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local %struct.nilfs_recovery_block* @kmalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @segsum_skip(i32, %struct.buffer_head**, i32*, i32, i64) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
