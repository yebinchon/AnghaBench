; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_util.c_ubh_bread_uspi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_util.c_ubh_bread_uspi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_buffer_head = type { i32, i32, i32** }
%struct.ufs_sb_private_info = type { i32, i32 }
%struct.super_block = type { i32 }

@UFS_MAXFRAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ufs_buffer_head* @ubh_bread_uspi(%struct.ufs_sb_private_info* %0, %struct.super_block* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ufs_buffer_head*, align 8
  %6 = alloca %struct.ufs_sb_private_info*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ufs_sb_private_info* %0, %struct.ufs_sb_private_info** %6, align 8
  store %struct.super_block* %1, %struct.super_block** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %6, align 8
  %15 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %13, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store %struct.ufs_buffer_head* null, %struct.ufs_buffer_head** %5, align 8
  br label %104

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %6, align 8
  %24 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = ashr i32 %22, %25
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp sle i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @UFS_MAXFRAG, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %21
  store %struct.ufs_buffer_head* null, %struct.ufs_buffer_head** %5, align 8
  br label %104

34:                                               ; preds = %29
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %6, align 8
  %37 = call %struct.ufs_buffer_head* @USPI_UBH(%struct.ufs_sb_private_info* %36)
  %38 = getelementptr inbounds %struct.ufs_buffer_head, %struct.ufs_buffer_head* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 8
  %39 = load i32, i32* %12, align 4
  %40 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %6, align 8
  %41 = call %struct.ufs_buffer_head* @USPI_UBH(%struct.ufs_sb_private_info* %40)
  %42 = getelementptr inbounds %struct.ufs_buffer_head, %struct.ufs_buffer_head* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 4
  store i32 0, i32* %10, align 4
  br label %43

43:                                               ; preds = %63, %34
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %66

47:                                               ; preds = %43
  %48 = load %struct.super_block*, %struct.super_block** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %10, align 4
  %51 = add i32 %49, %50
  %52 = call i32* @sb_bread(%struct.super_block* %48, i32 %51)
  %53 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %6, align 8
  %54 = call %struct.ufs_buffer_head* @USPI_UBH(%struct.ufs_sb_private_info* %53)
  %55 = getelementptr inbounds %struct.ufs_buffer_head, %struct.ufs_buffer_head* %54, i32 0, i32 2
  %56 = load i32**, i32*** %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  store i32* %52, i32** %59, align 8
  %60 = icmp ne i32* %52, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %47
  br label %85

62:                                               ; preds = %47
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %10, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %10, align 4
  br label %43

66:                                               ; preds = %43
  br label %67

67:                                               ; preds = %79, %66
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @UFS_MAXFRAG, align 4
  %70 = icmp ult i32 %68, %69
  br i1 %70, label %71, label %82

71:                                               ; preds = %67
  %72 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %6, align 8
  %73 = call %struct.ufs_buffer_head* @USPI_UBH(%struct.ufs_sb_private_info* %72)
  %74 = getelementptr inbounds %struct.ufs_buffer_head, %struct.ufs_buffer_head* %73, i32 0, i32 2
  %75 = load i32**, i32*** %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i32*, i32** %75, i64 %77
  store i32* null, i32** %78, align 8
  br label %79

79:                                               ; preds = %71
  %80 = load i32, i32* %10, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %10, align 4
  br label %67

82:                                               ; preds = %67
  %83 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %6, align 8
  %84 = call %struct.ufs_buffer_head* @USPI_UBH(%struct.ufs_sb_private_info* %83)
  store %struct.ufs_buffer_head* %84, %struct.ufs_buffer_head** %5, align 8
  br label %104

85:                                               ; preds = %61
  store i32 0, i32* %11, align 4
  br label %86

86:                                               ; preds = %100, %85
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp ult i32 %87, %88
  br i1 %89, label %90, label %103

90:                                               ; preds = %86
  %91 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %6, align 8
  %92 = call %struct.ufs_buffer_head* @USPI_UBH(%struct.ufs_sb_private_info* %91)
  %93 = getelementptr inbounds %struct.ufs_buffer_head, %struct.ufs_buffer_head* %92, i32 0, i32 2
  %94 = load i32**, i32*** %93, align 8
  %95 = load i32, i32* %11, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i32*, i32** %94, i64 %96
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @brelse(i32* %98)
  br label %100

100:                                              ; preds = %90
  %101 = load i32, i32* %11, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %11, align 4
  br label %86

103:                                              ; preds = %86
  store %struct.ufs_buffer_head* null, %struct.ufs_buffer_head** %5, align 8
  br label %104

104:                                              ; preds = %103, %82, %33, %20
  %105 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %5, align 8
  ret %struct.ufs_buffer_head* %105
}

declare dso_local %struct.ufs_buffer_head* @USPI_UBH(%struct.ufs_sb_private_info*) #1

declare dso_local i32* @sb_bread(%struct.super_block*, i32) #1

declare dso_local i32 @brelse(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
