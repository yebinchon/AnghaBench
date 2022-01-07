; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_balloc.c_sysv_free_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_balloc.c_sysv_free_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.sysv_sb_info = type { i64, i32, i32, i32, i32, i8**, i32*, i64 }
%struct.buffer_head = type { i64 }

@FSTYPE_AFS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"sysv_free_block: trying to free block not in datazone\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"sysv_free_block: flc_count > flc_size\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"sysv_free_block: getblk() failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sysv_free_block(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sysv_sb_info*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.super_block*, %struct.super_block** %3, align 8
  %11 = call %struct.sysv_sb_info* @SYSV_SB(%struct.super_block* %10)
  store %struct.sysv_sb_info* %11, %struct.sysv_sb_info** %5, align 8
  %12 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %5, align 8
  %13 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %12, i32 0, i32 6
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %7, align 8
  %15 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %5, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @fs32_to_cpu(%struct.sysv_sb_info* %15, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %5, align 8
  %19 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @FSTYPE_AFS, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %136

24:                                               ; preds = %2
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %5, align 8
  %27 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ult i32 %25, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %5, align 8
  %33 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = icmp uge i32 %31, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30, %24
  %37 = call i32 @printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %136

38:                                               ; preds = %30
  %39 = load %struct.super_block*, %struct.super_block** %3, align 8
  %40 = call i32 @lock_super(%struct.super_block* %39)
  %41 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %5, align 8
  %42 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %5, align 8
  %43 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %42, i32 0, i32 5
  %44 = load i8**, i8*** %43, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @fs16_to_cpu(%struct.sysv_sb_info* %41, i8* %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %5, align 8
  %49 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = icmp ugt i32 %47, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %38
  %53 = call i32 @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.super_block*, %struct.super_block** %3, align 8
  %55 = call i32 @unlock_super(%struct.super_block* %54)
  br label %136

56:                                               ; preds = %38
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %5, align 8
  %59 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %57, %60
  br i1 %61, label %65, label %62

62:                                               ; preds = %56
  %63 = load i32, i32* %8, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %112

65:                                               ; preds = %62, %56
  %66 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %5, align 8
  %67 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %66, i32 0, i32 7
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = zext i32 %69 to i64
  %71 = add nsw i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %9, align 4
  %73 = load %struct.super_block*, %struct.super_block** %3, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call %struct.buffer_head* @sb_getblk(%struct.super_block* %73, i32 %74)
  store %struct.buffer_head* %75, %struct.buffer_head** %6, align 8
  %76 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %77 = icmp ne %struct.buffer_head* %76, null
  br i1 %77, label %82, label %78

78:                                               ; preds = %65
  %79 = call i32 @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %80 = load %struct.super_block*, %struct.super_block** %3, align 8
  %81 = call i32 @unlock_super(%struct.super_block* %80)
  br label %136

82:                                               ; preds = %65
  %83 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %84 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.super_block*, %struct.super_block** %3, align 8
  %87 = getelementptr inbounds %struct.super_block, %struct.super_block* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @memset(i64 %85, i32 0, i32 %88)
  %90 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %5, align 8
  %91 = load i32, i32* %8, align 4
  %92 = call i8* @cpu_to_fs16(%struct.sysv_sb_info* %90, i32 %91)
  %93 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %94 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = inttoptr i64 %95 to i8**
  store i8* %92, i8** %96, align 8
  %97 = load %struct.super_block*, %struct.super_block** %3, align 8
  %98 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %99 = call i32 @get_chunk(%struct.super_block* %97, %struct.buffer_head* %98)
  %100 = load i32*, i32** %7, align 8
  %101 = load i32, i32* %8, align 4
  %102 = zext i32 %101 to i64
  %103 = mul i64 %102, 4
  %104 = trunc i64 %103 to i32
  %105 = call i32 @memcpy(i32 %99, i32* %100, i32 %104)
  %106 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %107 = call i32 @mark_buffer_dirty(%struct.buffer_head* %106)
  %108 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %109 = call i32 @set_buffer_uptodate(%struct.buffer_head* %108)
  %110 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %111 = call i32 @brelse(%struct.buffer_head* %110)
  store i32 0, i32* %8, align 4
  br label %112

112:                                              ; preds = %82, %62
  %113 = load i32, i32* %4, align 4
  %114 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %5, align 8
  %115 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %114, i32 0, i32 6
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %8, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %8, align 4
  %119 = zext i32 %117 to i64
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  store i32 %113, i32* %120, align 4
  %121 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %5, align 8
  %122 = load i32, i32* %8, align 4
  %123 = call i8* @cpu_to_fs16(%struct.sysv_sb_info* %121, i32 %122)
  %124 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %5, align 8
  %125 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %124, i32 0, i32 5
  %126 = load i8**, i8*** %125, align 8
  store i8* %123, i8** %126, align 8
  %127 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %5, align 8
  %128 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %5, align 8
  %129 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @fs32_add(%struct.sysv_sb_info* %127, i32 %130, i32 1)
  %132 = load %struct.super_block*, %struct.super_block** %3, align 8
  %133 = call i32 @dirty_sb(%struct.super_block* %132)
  %134 = load %struct.super_block*, %struct.super_block** %3, align 8
  %135 = call i32 @unlock_super(%struct.super_block* %134)
  br label %136

136:                                              ; preds = %112, %78, %52, %36, %23
  ret void
}

declare dso_local %struct.sysv_sb_info* @SYSV_SB(%struct.super_block*) #1

declare dso_local i32 @fs32_to_cpu(%struct.sysv_sb_info*, i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @lock_super(%struct.super_block*) #1

declare dso_local i32 @fs16_to_cpu(%struct.sysv_sb_info*, i8*) #1

declare dso_local i32 @unlock_super(%struct.super_block*) #1

declare dso_local %struct.buffer_head* @sb_getblk(%struct.super_block*, i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i8* @cpu_to_fs16(%struct.sysv_sb_info*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @get_chunk(%struct.super_block*, %struct.buffer_head*) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @fs32_add(%struct.sysv_sb_info*, i32, i32) #1

declare dso_local i32 @dirty_sb(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
