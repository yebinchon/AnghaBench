; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_balloc.c_sysv_new_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_balloc.c_sysv_new_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.sysv_sb_info = type { i64*, i32, i32, i32, i32, i8**, i64 }
%struct.buffer_head = type { i64 }

@.str = private unnamed_addr constant [50 x i8] c"sysv_new_block: new block %d is not in data zone\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"sysv_new_block: cannot read free-list block\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"sysv_new_block: free-list block with >flc_size entries\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sysv_new_block(%struct.super_block* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.sysv_sb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %10 = load %struct.super_block*, %struct.super_block** %3, align 8
  %11 = call %struct.sysv_sb_info* @SYSV_SB(%struct.super_block* %10)
  store %struct.sysv_sb_info* %11, %struct.sysv_sb_info** %4, align 8
  %12 = load %struct.super_block*, %struct.super_block** %3, align 8
  %13 = call i32 @lock_super(%struct.super_block* %12)
  %14 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %15 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %16 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %15, i32 0, i32 5
  %17 = load i8**, i8*** %16, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @fs16_to_cpu(%struct.sysv_sb_info* %14, i8* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %129

23:                                               ; preds = %1
  %24 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %25 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = add i32 %27, -1
  store i32 %28, i32* %8, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %26, i64 %29
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %6, align 8
  %32 = load i64, i64* %6, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  br label %129

35:                                               ; preds = %23
  %36 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @fs32_to_cpu(%struct.sysv_sb_info* %36, i64 %37)
  store i32 %38, i32* %5, align 4
  %39 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i8* @cpu_to_fs16(%struct.sysv_sb_info* %39, i32 %40)
  %42 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %43 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %42, i32 0, i32 5
  %44 = load i8**, i8*** %43, align 8
  store i8* %41, i8** %44, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %47 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp ult i32 %45, %48
  br i1 %49, label %56, label %50

50:                                               ; preds = %35
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %53 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = icmp uge i32 %51, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50, %35
  %57 = load i32, i32* %5, align 4
  %58 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %129

59:                                               ; preds = %50
  %60 = load i32, i32* %8, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %118

62:                                               ; preds = %59
  %63 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %64 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %63, i32 0, i32 6
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = zext i32 %66 to i64
  %68 = add nsw i64 %67, %65
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %5, align 4
  %70 = load %struct.super_block*, %struct.super_block** %3, align 8
  %71 = load i32, i32* %5, align 4
  %72 = call %struct.buffer_head* @sb_bread(%struct.super_block* %70, i32 %71)
  store %struct.buffer_head* %72, %struct.buffer_head** %7, align 8
  %73 = icmp ne %struct.buffer_head* %72, null
  br i1 %73, label %81, label %74

74:                                               ; preds = %62
  %75 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %76 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %77 = call i8* @cpu_to_fs16(%struct.sysv_sb_info* %76, i32 1)
  %78 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %79 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %78, i32 0, i32 5
  %80 = load i8**, i8*** %79, align 8
  store i8* %77, i8** %80, align 8
  br label %129

81:                                               ; preds = %62
  %82 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %83 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %84 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to i8**
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @fs16_to_cpu(%struct.sysv_sb_info* %82, i8* %87)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %91 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = icmp ugt i32 %89, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %81
  %95 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %96 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %97 = call i32 @brelse(%struct.buffer_head* %96)
  br label %129

98:                                               ; preds = %81
  %99 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %100 = load i32, i32* %9, align 4
  %101 = call i8* @cpu_to_fs16(%struct.sysv_sb_info* %99, i32 %100)
  %102 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %103 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %102, i32 0, i32 5
  %104 = load i8**, i8*** %103, align 8
  store i8* %101, i8** %104, align 8
  %105 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %106 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %105, i32 0, i32 0
  %107 = load i64*, i64** %106, align 8
  %108 = load %struct.super_block*, %struct.super_block** %3, align 8
  %109 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %110 = call i32 @get_chunk(%struct.super_block* %108, %struct.buffer_head* %109)
  %111 = load i32, i32* %9, align 4
  %112 = zext i32 %111 to i64
  %113 = mul i64 %112, 8
  %114 = trunc i64 %113 to i32
  %115 = call i32 @memcpy(i64* %107, i32 %110, i32 %114)
  %116 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %117 = call i32 @brelse(%struct.buffer_head* %116)
  br label %118

118:                                              ; preds = %98, %59
  %119 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %120 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %121 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @fs32_add(%struct.sysv_sb_info* %119, i32 %122, i32 -1)
  %124 = load %struct.super_block*, %struct.super_block** %3, align 8
  %125 = call i32 @dirty_sb(%struct.super_block* %124)
  %126 = load %struct.super_block*, %struct.super_block** %3, align 8
  %127 = call i32 @unlock_super(%struct.super_block* %126)
  %128 = load i64, i64* %6, align 8
  store i64 %128, i64* %2, align 8
  br label %132

129:                                              ; preds = %94, %74, %56, %34, %22
  %130 = load %struct.super_block*, %struct.super_block** %3, align 8
  %131 = call i32 @unlock_super(%struct.super_block* %130)
  store i64 0, i64* %2, align 8
  br label %132

132:                                              ; preds = %129, %118
  %133 = load i64, i64* %2, align 8
  ret i64 %133
}

declare dso_local %struct.sysv_sb_info* @SYSV_SB(%struct.super_block*) #1

declare dso_local i32 @lock_super(%struct.super_block*) #1

declare dso_local i32 @fs16_to_cpu(%struct.sysv_sb_info*, i8*) #1

declare dso_local i32 @fs32_to_cpu(%struct.sysv_sb_info*, i64) #1

declare dso_local i8* @cpu_to_fs16(%struct.sysv_sb_info*, i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.super_block*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @memcpy(i64*, i32, i32) #1

declare dso_local i32 @get_chunk(%struct.super_block*, %struct.buffer_head*) #1

declare dso_local i32 @fs32_add(%struct.sysv_sb_info*, i32, i32) #1

declare dso_local i32 @dirty_sb(%struct.super_block*) #1

declare dso_local i32 @unlock_super(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
