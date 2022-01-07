; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_util.c__ubh_bread_.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_util.c__ubh_bread_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_buffer_head = type { i32, i32, i32** }
%struct.ufs_sb_private_info = type { i32, i32 }
%struct.super_block = type { i32 }

@UFS_MAXFRAG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ufs_buffer_head* @_ubh_bread_(%struct.ufs_sb_private_info* %0, %struct.super_block* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ufs_buffer_head*, align 8
  %6 = alloca %struct.ufs_sb_private_info*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ufs_buffer_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ufs_sb_private_info* %0, %struct.ufs_sb_private_info** %6, align 8
  store %struct.super_block* %1, %struct.super_block** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %6, align 8
  %16 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %14, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store %struct.ufs_buffer_head* null, %struct.ufs_buffer_head** %5, align 8
  br label %105

22:                                               ; preds = %4
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %6, align 8
  %25 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %23, %26
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* @UFS_MAXFRAG, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  store %struct.ufs_buffer_head* null, %struct.ufs_buffer_head** %5, align 8
  br label %105

32:                                               ; preds = %22
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i64 @kmalloc(i32 16, i32 %33)
  %35 = inttoptr i64 %34 to %struct.ufs_buffer_head*
  store %struct.ufs_buffer_head* %35, %struct.ufs_buffer_head** %10, align 8
  %36 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %10, align 8
  %37 = icmp ne %struct.ufs_buffer_head* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  store %struct.ufs_buffer_head* null, %struct.ufs_buffer_head** %5, align 8
  br label %105

39:                                               ; preds = %32
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %10, align 8
  %42 = getelementptr inbounds %struct.ufs_buffer_head, %struct.ufs_buffer_head* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* %13, align 4
  %44 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %10, align 8
  %45 = getelementptr inbounds %struct.ufs_buffer_head, %struct.ufs_buffer_head* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  store i32 0, i32* %11, align 4
  br label %46

46:                                               ; preds = %65, %39
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %68

50:                                               ; preds = %46
  %51 = load %struct.super_block*, %struct.super_block** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %11, align 4
  %54 = add i32 %52, %53
  %55 = call i32* @sb_bread(%struct.super_block* %51, i32 %54)
  %56 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %10, align 8
  %57 = getelementptr inbounds %struct.ufs_buffer_head, %struct.ufs_buffer_head* %56, i32 0, i32 2
  %58 = load i32**, i32*** %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32*, i32** %58, i64 %60
  store i32* %55, i32** %61, align 8
  %62 = icmp ne i32* %55, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %50
  br label %85

64:                                               ; preds = %50
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %11, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %11, align 4
  br label %46

68:                                               ; preds = %46
  br label %69

69:                                               ; preds = %80, %68
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @UFS_MAXFRAG, align 4
  %72 = icmp ult i32 %70, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %69
  %74 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %10, align 8
  %75 = getelementptr inbounds %struct.ufs_buffer_head, %struct.ufs_buffer_head* %74, i32 0, i32 2
  %76 = load i32**, i32*** %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i32*, i32** %76, i64 %78
  store i32* null, i32** %79, align 8
  br label %80

80:                                               ; preds = %73
  %81 = load i32, i32* %11, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %11, align 4
  br label %69

83:                                               ; preds = %69
  %84 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %10, align 8
  store %struct.ufs_buffer_head* %84, %struct.ufs_buffer_head** %5, align 8
  br label %105

85:                                               ; preds = %63
  store i32 0, i32* %12, align 4
  br label %86

86:                                               ; preds = %99, %85
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp ult i32 %87, %88
  br i1 %89, label %90, label %102

90:                                               ; preds = %86
  %91 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %10, align 8
  %92 = getelementptr inbounds %struct.ufs_buffer_head, %struct.ufs_buffer_head* %91, i32 0, i32 2
  %93 = load i32**, i32*** %92, align 8
  %94 = load i32, i32* %12, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i32*, i32** %93, i64 %95
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @brelse(i32* %97)
  br label %99

99:                                               ; preds = %90
  %100 = load i32, i32* %12, align 4
  %101 = add i32 %100, 1
  store i32 %101, i32* %12, align 4
  br label %86

102:                                              ; preds = %86
  %103 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %10, align 8
  %104 = call i32 @kfree(%struct.ufs_buffer_head* %103)
  store %struct.ufs_buffer_head* null, %struct.ufs_buffer_head** %5, align 8
  br label %105

105:                                              ; preds = %102, %83, %38, %31, %21
  %106 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %5, align 8
  ret %struct.ufs_buffer_head* %106
}

declare dso_local i64 @kmalloc(i32, i32) #1

declare dso_local i32* @sb_bread(%struct.super_block*, i32) #1

declare dso_local i32 @brelse(i32*) #1

declare dso_local i32 @kfree(%struct.ufs_buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
