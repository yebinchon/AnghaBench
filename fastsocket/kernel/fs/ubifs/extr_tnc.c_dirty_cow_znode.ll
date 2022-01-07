; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_dirty_cow_znode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_dirty_cow_znode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_znode = type { i32 }
%struct.ubifs_info = type { i32, i32 }
%struct.ubifs_zbranch = type { i64, i64, i64, %struct.ubifs_znode* }

@COW_ZNODE = common dso_local global i32 0, align 4
@DIRTY_ZNODE = common dso_local global i32 0, align 4
@ubifs_clean_zn_cnt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ubifs_znode* (%struct.ubifs_info*, %struct.ubifs_zbranch*)* @dirty_cow_znode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ubifs_znode* @dirty_cow_znode(%struct.ubifs_info* %0, %struct.ubifs_zbranch* %1) #0 {
  %3 = alloca %struct.ubifs_znode*, align 8
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca %struct.ubifs_zbranch*, align 8
  %6 = alloca %struct.ubifs_znode*, align 8
  %7 = alloca %struct.ubifs_znode*, align 8
  %8 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store %struct.ubifs_zbranch* %1, %struct.ubifs_zbranch** %5, align 8
  %9 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %5, align 8
  %10 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %9, i32 0, i32 3
  %11 = load %struct.ubifs_znode*, %struct.ubifs_znode** %10, align 8
  store %struct.ubifs_znode* %11, %struct.ubifs_znode** %6, align 8
  %12 = load i32, i32* @COW_ZNODE, align 4
  %13 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %14 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %13, i32 0, i32 0
  %15 = call i32 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %48, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @DIRTY_ZNODE, align 4
  %19 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %20 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %19, i32 0, i32 0
  %21 = call i32 @test_and_set_bit(i32 %18, i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %46, label %23

23:                                               ; preds = %17
  %24 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %25 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %24, i32 0, i32 1
  %26 = call i32 @atomic_long_inc(i32* %25)
  %27 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %28 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %27, i32 0, i32 0
  %29 = call i32 @atomic_long_dec(i32* %28)
  %30 = call i32 @atomic_long_dec(i32* @ubifs_clean_zn_cnt)
  %31 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %32 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %5, align 8
  %33 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %5, align 8
  %36 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @add_idx_dirt(%struct.ubifs_info* %31, i64 %34, i64 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %23
  %43 = load i32, i32* %8, align 4
  %44 = call %struct.ubifs_znode* @ERR_PTR(i32 %43)
  store %struct.ubifs_znode* %44, %struct.ubifs_znode** %3, align 8
  br label %105

45:                                               ; preds = %23
  br label %46

46:                                               ; preds = %45, %17
  %47 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  store %struct.ubifs_znode* %47, %struct.ubifs_znode** %3, align 8
  br label %105

48:                                               ; preds = %2
  %49 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %50 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %51 = call %struct.ubifs_znode* @copy_znode(%struct.ubifs_info* %49, %struct.ubifs_znode* %50)
  store %struct.ubifs_znode* %51, %struct.ubifs_znode** %7, align 8
  %52 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %53 = call i64 @IS_ERR(%struct.ubifs_znode* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  store %struct.ubifs_znode* %56, %struct.ubifs_znode** %3, align 8
  br label %105

57:                                               ; preds = %48
  %58 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %5, align 8
  %59 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %86

62:                                               ; preds = %57
  %63 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %64 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %5, align 8
  %65 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %5, align 8
  %68 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @insert_old_idx(%struct.ubifs_info* %63, i64 %66, i64 %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i64 @unlikely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %62
  %75 = load i32, i32* %8, align 4
  %76 = call %struct.ubifs_znode* @ERR_PTR(i32 %75)
  store %struct.ubifs_znode* %76, %struct.ubifs_znode** %3, align 8
  br label %105

77:                                               ; preds = %62
  %78 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %79 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %5, align 8
  %80 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %5, align 8
  %83 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @add_idx_dirt(%struct.ubifs_info* %78, i64 %81, i64 %84)
  store i32 %85, i32* %8, align 4
  br label %87

86:                                               ; preds = %57
  store i32 0, i32* %8, align 4
  br label %87

87:                                               ; preds = %86, %77
  %88 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  %89 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %5, align 8
  %90 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %89, i32 0, i32 3
  store %struct.ubifs_znode* %88, %struct.ubifs_znode** %90, align 8
  %91 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %5, align 8
  %92 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %91, i32 0, i32 2
  store i64 0, i64* %92, align 8
  %93 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %5, align 8
  %94 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %93, i32 0, i32 1
  store i64 0, i64* %94, align 8
  %95 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %5, align 8
  %96 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %95, i32 0, i32 0
  store i64 0, i64* %96, align 8
  %97 = load i32, i32* %8, align 4
  %98 = call i64 @unlikely(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %87
  %101 = load i32, i32* %8, align 4
  %102 = call %struct.ubifs_znode* @ERR_PTR(i32 %101)
  store %struct.ubifs_znode* %102, %struct.ubifs_znode** %3, align 8
  br label %105

103:                                              ; preds = %87
  %104 = load %struct.ubifs_znode*, %struct.ubifs_znode** %7, align 8
  store %struct.ubifs_znode* %104, %struct.ubifs_znode** %3, align 8
  br label %105

105:                                              ; preds = %103, %100, %74, %55, %46, %42
  %106 = load %struct.ubifs_znode*, %struct.ubifs_znode** %3, align 8
  ret %struct.ubifs_znode* %106
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @atomic_long_inc(i32*) #1

declare dso_local i32 @atomic_long_dec(i32*) #1

declare dso_local i32 @add_idx_dirt(%struct.ubifs_info*, i64, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.ubifs_znode* @ERR_PTR(i32) #1

declare dso_local %struct.ubifs_znode* @copy_znode(%struct.ubifs_info*, %struct.ubifs_znode*) #1

declare dso_local i64 @IS_ERR(%struct.ubifs_znode*) #1

declare dso_local i32 @insert_old_idx(%struct.ubifs_info*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
