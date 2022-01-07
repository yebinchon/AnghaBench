; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_mballoc.c_ext4_mb_good_group.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_mballoc.c_ext4_mb_good_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_allocation_context = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ext4_group_info = type { i32, i32, i32 }

@EXT4_MB_HINT_DATA = common dso_local global i32 0, align 4
@EXT4_FLEX_SIZE_DIR_ALLOC_SCHEME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ext4_allocation_context*, i32, i32)* @ext4_mb_good_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_mb_good_group(%struct.ext4_allocation_context* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ext4_allocation_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ext4_group_info*, align 8
  %12 = alloca i32, align 4
  store %struct.ext4_allocation_context* %0, %struct.ext4_allocation_context** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.ext4_allocation_context*, %struct.ext4_allocation_context** %5, align 8
  %14 = getelementptr inbounds %struct.ext4_allocation_context, %struct.ext4_allocation_context* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @EXT4_SB(i32 %15)
  %17 = call i32 @ext4_flex_bg_size(i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load %struct.ext4_allocation_context*, %struct.ext4_allocation_context** %5, align 8
  %19 = getelementptr inbounds %struct.ext4_allocation_context, %struct.ext4_allocation_context* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call %struct.ext4_group_info* @ext4_get_group_info(i32 %20, i32 %21)
  store %struct.ext4_group_info* %22, %struct.ext4_group_info** %11, align 8
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* %7, align 4
  %27 = icmp sge i32 %26, 4
  br label %28

28:                                               ; preds = %25, %3
  %29 = phi i1 [ true, %3 ], [ %27, %25 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load %struct.ext4_group_info*, %struct.ext4_group_info** %11, align 8
  %33 = call i32 @EXT4_MB_GRP_NEED_INIT(%struct.ext4_group_info* %32)
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %28
  %37 = load %struct.ext4_allocation_context*, %struct.ext4_allocation_context** %5, align 8
  %38 = getelementptr inbounds %struct.ext4_allocation_context, %struct.ext4_allocation_context* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @ext4_mb_init_group(i32 %39, i32 %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %119

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %45, %28
  %47 = load %struct.ext4_group_info*, %struct.ext4_group_info** %11, align 8
  %48 = getelementptr inbounds %struct.ext4_group_info, %struct.ext4_group_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %8, align 4
  %50 = load %struct.ext4_group_info*, %struct.ext4_group_info** %11, align 8
  %51 = getelementptr inbounds %struct.ext4_group_info, %struct.ext4_group_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %119

56:                                               ; preds = %46
  %57 = load i32, i32* %9, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %119

60:                                               ; preds = %56
  %61 = load i32, i32* %7, align 4
  switch i32 %61, label %116 [
    i32 0, label %62
    i32 1, label %95
    i32 2, label %106
    i32 3, label %115
  ]

62:                                               ; preds = %60
  %63 = load %struct.ext4_allocation_context*, %struct.ext4_allocation_context** %5, align 8
  %64 = getelementptr inbounds %struct.ext4_allocation_context, %struct.ext4_allocation_context* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 0
  %67 = zext i1 %66 to i32
  %68 = call i32 @BUG_ON(i32 %67)
  %69 = load %struct.ext4_group_info*, %struct.ext4_group_info** %11, align 8
  %70 = getelementptr inbounds %struct.ext4_group_info, %struct.ext4_group_info* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ext4_allocation_context*, %struct.ext4_allocation_context** %5, align 8
  %73 = getelementptr inbounds %struct.ext4_allocation_context, %struct.ext4_allocation_context* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %62
  store i32 0, i32* %4, align 4
  br label %119

77:                                               ; preds = %62
  %78 = load %struct.ext4_allocation_context*, %struct.ext4_allocation_context** %5, align 8
  %79 = getelementptr inbounds %struct.ext4_allocation_context, %struct.ext4_allocation_context* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @EXT4_MB_HINT_DATA, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %77
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @EXT4_FLEX_SIZE_DIR_ALLOC_SCHEME, align 4
  %87 = icmp sge i32 %85, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %84
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %10, align 4
  %91 = srem i32 %89, %90
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  store i32 0, i32* %4, align 4
  br label %119

94:                                               ; preds = %88, %84, %77
  store i32 1, i32* %4, align 4
  br label %119

95:                                               ; preds = %60
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %9, align 4
  %98 = udiv i32 %96, %97
  %99 = load %struct.ext4_allocation_context*, %struct.ext4_allocation_context** %5, align 8
  %100 = getelementptr inbounds %struct.ext4_allocation_context, %struct.ext4_allocation_context* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp uge i32 %98, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %95
  store i32 1, i32* %4, align 4
  br label %119

105:                                              ; preds = %95
  br label %118

106:                                              ; preds = %60
  %107 = load i32, i32* %8, align 4
  %108 = load %struct.ext4_allocation_context*, %struct.ext4_allocation_context** %5, align 8
  %109 = getelementptr inbounds %struct.ext4_allocation_context, %struct.ext4_allocation_context* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp uge i32 %107, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  store i32 1, i32* %4, align 4
  br label %119

114:                                              ; preds = %106
  br label %118

115:                                              ; preds = %60
  store i32 1, i32* %4, align 4
  br label %119

116:                                              ; preds = %60
  %117 = call i32 (...) @BUG()
  br label %118

118:                                              ; preds = %116, %114, %105
  store i32 0, i32* %4, align 4
  br label %119

119:                                              ; preds = %118, %115, %113, %104, %94, %93, %76, %59, %55, %44
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i32 @ext4_flex_bg_size(i32) #1

declare dso_local i32 @EXT4_SB(i32) #1

declare dso_local %struct.ext4_group_info* @ext4_get_group_info(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @EXT4_MB_GRP_NEED_INIT(%struct.ext4_group_info*) #1

declare dso_local i32 @ext4_mb_init_group(i32, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
