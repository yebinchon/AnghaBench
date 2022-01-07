; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/minix/extr_inode.c_minix_remount.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/minix/extr_inode.c_minix_remount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.minix_sb_info = type { i32, i64, i32, %struct.minix_super_block* }
%struct.minix_super_block = type { i32 }

@MS_RDONLY = common dso_local global i32 0, align 4
@MINIX_VALID_FS = common dso_local global i32 0, align 4
@MINIX_V3 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [72 x i8] c"MINIX-fs warning: remounting unchecked fs, running fsck is recommended\0A\00", align 1
@MINIX_ERROR_FS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [74 x i8] c"MINIX-fs warning: remounting fs with errors, running fsck is recommended\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32*, i8*)* @minix_remount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @minix_remount(%struct.super_block* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.minix_sb_info*, align 8
  %9 = alloca %struct.minix_super_block*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.super_block*, %struct.super_block** %5, align 8
  %11 = call %struct.minix_sb_info* @minix_sb(%struct.super_block* %10)
  store %struct.minix_sb_info* %11, %struct.minix_sb_info** %8, align 8
  %12 = load %struct.minix_sb_info*, %struct.minix_sb_info** %8, align 8
  %13 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %12, i32 0, i32 3
  %14 = load %struct.minix_super_block*, %struct.minix_super_block** %13, align 8
  store %struct.minix_super_block* %14, %struct.minix_super_block** %9, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MS_RDONLY, align 4
  %18 = and i32 %16, %17
  %19 = load %struct.super_block*, %struct.super_block** %5, align 8
  %20 = getelementptr inbounds %struct.super_block, %struct.super_block* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MS_RDONLY, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %18, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %111

26:                                               ; preds = %3
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MS_RDONLY, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %64

32:                                               ; preds = %26
  %33 = load %struct.minix_super_block*, %struct.minix_super_block** %9, align 8
  %34 = getelementptr inbounds %struct.minix_super_block, %struct.minix_super_block* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MINIX_VALID_FS, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %32
  %40 = load %struct.minix_sb_info*, %struct.minix_sb_info** %8, align 8
  %41 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @MINIX_VALID_FS, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %39, %32
  store i32 0, i32* %4, align 4
  br label %111

47:                                               ; preds = %39
  %48 = load %struct.minix_sb_info*, %struct.minix_sb_info** %8, align 8
  %49 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @MINIX_V3, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load %struct.minix_sb_info*, %struct.minix_sb_info** %8, align 8
  %55 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.minix_super_block*, %struct.minix_super_block** %9, align 8
  %58 = getelementptr inbounds %struct.minix_super_block, %struct.minix_super_block* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %53, %47
  %60 = load %struct.minix_sb_info*, %struct.minix_sb_info** %8, align 8
  %61 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @mark_buffer_dirty(i32 %62)
  br label %110

64:                                               ; preds = %26
  %65 = load %struct.minix_sb_info*, %struct.minix_sb_info** %8, align 8
  %66 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @MINIX_V3, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %64
  %71 = load %struct.minix_super_block*, %struct.minix_super_block** %9, align 8
  %72 = getelementptr inbounds %struct.minix_super_block, %struct.minix_super_block* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.minix_sb_info*, %struct.minix_sb_info** %8, align 8
  %75 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* @MINIX_VALID_FS, align 4
  %77 = xor i32 %76, -1
  %78 = load %struct.minix_super_block*, %struct.minix_super_block** %9, align 8
  %79 = getelementptr inbounds %struct.minix_super_block, %struct.minix_super_block* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, %77
  store i32 %81, i32* %79, align 4
  br label %86

82:                                               ; preds = %64
  %83 = load i32, i32* @MINIX_VALID_FS, align 4
  %84 = load %struct.minix_sb_info*, %struct.minix_sb_info** %8, align 8
  %85 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  br label %86

86:                                               ; preds = %82, %70
  %87 = load %struct.minix_sb_info*, %struct.minix_sb_info** %8, align 8
  %88 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @mark_buffer_dirty(i32 %89)
  %91 = load %struct.minix_sb_info*, %struct.minix_sb_info** %8, align 8
  %92 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @MINIX_VALID_FS, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %86
  %98 = call i32 @printk(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0))
  br label %109

99:                                               ; preds = %86
  %100 = load %struct.minix_sb_info*, %struct.minix_sb_info** %8, align 8
  %101 = getelementptr inbounds %struct.minix_sb_info, %struct.minix_sb_info* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @MINIX_ERROR_FS, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %99
  %107 = call i32 @printk(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106, %99
  br label %109

109:                                              ; preds = %108, %97
  br label %110

110:                                              ; preds = %109, %59
  store i32 0, i32* %4, align 4
  br label %111

111:                                              ; preds = %110, %46, %25
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local %struct.minix_sb_info* @minix_sb(%struct.super_block*) #1

declare dso_local i32 @mark_buffer_dirty(i32) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
