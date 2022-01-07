; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_inode.c___fat_get_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_inode.c___fat_get_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i32 }
%struct.msdos_sb_info = type { i32 }
%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [39 x i8] c"corrupted file size (i_pos %lld, %lld)\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, i64*, %struct.buffer_head*, i32)* @__fat_get_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__fat_get_block(%struct.inode* %0, i64 %1, i64* %2, %struct.buffer_head* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.super_block*, align 8
  %13 = alloca %struct.msdos_sb_info*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load %struct.inode*, %struct.inode** %7, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load %struct.super_block*, %struct.super_block** %19, align 8
  store %struct.super_block* %20, %struct.super_block** %12, align 8
  %21 = load %struct.super_block*, %struct.super_block** %12, align 8
  %22 = call %struct.msdos_sb_info* @MSDOS_SB(%struct.super_block* %21)
  store %struct.msdos_sb_info* %22, %struct.msdos_sb_info** %13, align 8
  %23 = load %struct.inode*, %struct.inode** %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @fat_bmap(%struct.inode* %23, i64 %24, i64* %15, i64* %14, i32 %25)
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* %16, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %5
  %30 = load i32, i32* %16, align 4
  store i32 %30, i32* %6, align 4
  br label %142

31:                                               ; preds = %5
  %32 = load i64, i64* %15, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  %35 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %36 = load %struct.super_block*, %struct.super_block** %12, align 8
  %37 = load i64, i64* %15, align 8
  %38 = call i32 @map_bh(%struct.buffer_head* %35, %struct.super_block* %36, i64 %37)
  %39 = load i64, i64* %14, align 8
  %40 = load i64*, i64** %9, align 8
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @min(i64 %39, i64 %41)
  %43 = load i64*, i64** %9, align 8
  store i64 %42, i64* %43, align 8
  store i32 0, i32* %6, align 4
  br label %142

44:                                               ; preds = %31
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  store i32 0, i32* %6, align 4
  br label %142

48:                                               ; preds = %44
  %49 = load i64, i64* %8, align 8
  %50 = load %struct.inode*, %struct.inode** %7, align 8
  %51 = call %struct.TYPE_2__* @MSDOS_I(%struct.inode* %50)
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.super_block*, %struct.super_block** %12, align 8
  %55 = getelementptr inbounds %struct.super_block, %struct.super_block* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = zext i32 %56 to i64
  %58 = ashr i64 %53, %57
  %59 = icmp ne i64 %49, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %48
  %61 = load %struct.super_block*, %struct.super_block** %12, align 8
  %62 = load %struct.inode*, %struct.inode** %7, align 8
  %63 = call %struct.TYPE_2__* @MSDOS_I(%struct.inode* %62)
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.inode*, %struct.inode** %7, align 8
  %67 = call %struct.TYPE_2__* @MSDOS_I(%struct.inode* %66)
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @fat_fs_error(%struct.super_block* %61, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %65, i64 %69)
  %71 = load i32, i32* @EIO, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %6, align 4
  br label %142

73:                                               ; preds = %48
  %74 = load i64, i64* %8, align 8
  %75 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %13, align 8
  %76 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = and i64 %74, %79
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %17, align 4
  %82 = load i32, i32* %17, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %73
  %85 = load %struct.inode*, %struct.inode** %7, align 8
  %86 = call i32 @fat_add_cluster(%struct.inode* %85)
  store i32 %86, i32* %16, align 4
  %87 = load i32, i32* %16, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = load i32, i32* %16, align 4
  store i32 %90, i32* %6, align 4
  br label %142

91:                                               ; preds = %84
  br label %92

92:                                               ; preds = %91, %73
  %93 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %13, align 8
  %94 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %17, align 4
  %97 = sub nsw i32 %95, %96
  %98 = sext i32 %97 to i64
  store i64 %98, i64* %14, align 8
  %99 = load i64, i64* %14, align 8
  %100 = load i64*, i64** %9, align 8
  %101 = load i64, i64* %100, align 8
  %102 = call i64 @min(i64 %99, i64 %101)
  %103 = load i64*, i64** %9, align 8
  store i64 %102, i64* %103, align 8
  %104 = load i64*, i64** %9, align 8
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.super_block*, %struct.super_block** %12, align 8
  %107 = getelementptr inbounds %struct.super_block, %struct.super_block* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = zext i32 %108 to i64
  %110 = shl i64 %105, %109
  %111 = load %struct.inode*, %struct.inode** %7, align 8
  %112 = call %struct.TYPE_2__* @MSDOS_I(%struct.inode* %111)
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = add i64 %114, %110
  store i64 %115, i64* %113, align 8
  %116 = load %struct.inode*, %struct.inode** %7, align 8
  %117 = load i64, i64* %8, align 8
  %118 = load i32, i32* %11, align 4
  %119 = call i32 @fat_bmap(%struct.inode* %116, i64 %117, i64* %15, i64* %14, i32 %118)
  store i32 %119, i32* %16, align 4
  %120 = load i32, i32* %16, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %92
  %123 = load i32, i32* %16, align 4
  store i32 %123, i32* %6, align 4
  br label %142

124:                                              ; preds = %92
  %125 = load i64, i64* %15, align 8
  %126 = icmp ne i64 %125, 0
  %127 = xor i1 %126, true
  %128 = zext i1 %127 to i32
  %129 = call i32 @BUG_ON(i32 %128)
  %130 = load i64*, i64** %9, align 8
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* %14, align 8
  %133 = icmp ne i64 %131, %132
  %134 = zext i1 %133 to i32
  %135 = call i32 @BUG_ON(i32 %134)
  %136 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %137 = call i32 @set_buffer_new(%struct.buffer_head* %136)
  %138 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %139 = load %struct.super_block*, %struct.super_block** %12, align 8
  %140 = load i64, i64* %15, align 8
  %141 = call i32 @map_bh(%struct.buffer_head* %138, %struct.super_block* %139, i64 %140)
  store i32 0, i32* %6, align 4
  br label %142

142:                                              ; preds = %124, %122, %89, %60, %47, %34, %29
  %143 = load i32, i32* %6, align 4
  ret i32 %143
}

declare dso_local %struct.msdos_sb_info* @MSDOS_SB(%struct.super_block*) #1

declare dso_local i32 @fat_bmap(%struct.inode*, i64, i64*, i64*, i32) #1

declare dso_local i32 @map_bh(%struct.buffer_head*, %struct.super_block*, i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local %struct.TYPE_2__* @MSDOS_I(%struct.inode*) #1

declare dso_local i32 @fat_fs_error(%struct.super_block*, i8*, i32, i64) #1

declare dso_local i32 @fat_add_cluster(%struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @set_buffer_new(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
