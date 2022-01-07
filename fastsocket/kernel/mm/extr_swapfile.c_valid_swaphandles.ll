; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swapfile.c_valid_swaphandles.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swapfile.c_valid_swaphandles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_info_struct = type { i32, i32* }

@page_cluster = common dso_local global i32 0, align 4
@swap_info = common dso_local global %struct.swap_info_struct** null, align 8
@swap_lock = common dso_local global i32 0, align 4
@SWAP_MAP_BAD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @valid_swaphandles(i32 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca %struct.swap_info_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  %13 = load i32, i32* @page_cluster, align 4
  store i32 %13, i32* %7, align 4
  store i32 0, i32* %12, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %130

17:                                               ; preds = %2
  %18 = load %struct.swap_info_struct**, %struct.swap_info_struct*** @swap_info, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i64 @swp_type(i32 %19)
  %21 = getelementptr inbounds %struct.swap_info_struct*, %struct.swap_info_struct** %18, i64 %20
  %22 = load %struct.swap_info_struct*, %struct.swap_info_struct** %21, align 8
  store %struct.swap_info_struct* %22, %struct.swap_info_struct** %6, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @swp_offset(i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %7, align 4
  %27 = ashr i32 %25, %26
  %28 = load i32, i32* %7, align 4
  %29 = shl i32 %27, %28
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %7, align 4
  %32 = shl i32 1, %31
  %33 = add nsw i32 %30, %32
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %17
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %36, %17
  %40 = call i32 @spin_lock(i32* @swap_lock)
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %43 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp sgt i32 %41, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %48 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %46, %39
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %80, %50
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %83

57:                                               ; preds = %52
  %58 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %59 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %57
  br label %83

67:                                               ; preds = %57
  %68 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %69 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @swap_count(i32 %74)
  %76 = load i64, i64* @SWAP_MAP_BAD, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %67
  br label %83

79:                                               ; preds = %67
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %12, align 4
  br label %52

83:                                               ; preds = %78, %66, %52
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %113, %83
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp sge i32 %87, %88
  br i1 %89, label %90, label %116

90:                                               ; preds = %85
  %91 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %92 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %90
  br label %116

100:                                              ; preds = %90
  %101 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %102 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @swap_count(i32 %107)
  %109 = load i64, i64* @SWAP_MAP_BAD, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %100
  br label %116

112:                                              ; preds = %100
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %12, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %12, align 4
  br label %85

116:                                              ; preds = %111, %99, %85
  %117 = call i32 @spin_unlock(i32* @swap_lock)
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = load i64*, i64** %5, align 8
  store i64 %120, i64* %121, align 8
  %122 = load i32, i32* %12, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %116
  %125 = load i32, i32* %12, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %12, align 4
  br label %128

127:                                              ; preds = %116
  br label %128

128:                                              ; preds = %127, %124
  %129 = phi i32 [ %126, %124 ], [ 0, %127 ]
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %128, %16
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i64 @swp_type(i32) #1

declare dso_local i32 @swp_offset(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @swap_count(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
