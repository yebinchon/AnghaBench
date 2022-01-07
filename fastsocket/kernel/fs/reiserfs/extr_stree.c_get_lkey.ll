; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_stree.c_get_lkey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_stree.c_get_lkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_key = type { i32 }
%struct.treepath = type { i32 }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i64 }

@FIRST_PATH_ELEMENT_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"PAP-5010: invalid offset in the path\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"PAP-5020: parent is not uptodate\00", align 1
@MAX_KEY = common dso_local global %struct.reiserfs_key zeroinitializer, align 4
@MIN_KEY = common dso_local global %struct.reiserfs_key zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.reiserfs_key* (%struct.treepath*, %struct.super_block*)* @get_lkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.reiserfs_key* @get_lkey(%struct.treepath* %0, %struct.super_block* %1) #0 {
  %3 = alloca %struct.reiserfs_key*, align 8
  %4 = alloca %struct.treepath*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer_head*, align 8
  store %struct.treepath* %0, %struct.treepath** %4, align 8
  store %struct.super_block* %1, %struct.super_block** %5, align 8
  %9 = load %struct.treepath*, %struct.treepath** %4, align 8
  %10 = getelementptr inbounds %struct.treepath, %struct.treepath* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @FIRST_PATH_ELEMENT_OFFSET, align 4
  %14 = icmp slt i32 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @RFALSE(i32 %15, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %65, %2
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @FIRST_PATH_ELEMENT_OFFSET, align 4
  %21 = icmp sgt i32 %18, %20
  br i1 %21, label %22, label %66

22:                                               ; preds = %17
  %23 = load %struct.treepath*, %struct.treepath** %4, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call %struct.buffer_head* @PATH_OFFSET_PBUFFER(%struct.treepath* %23, i32 %24)
  %26 = call i32 @buffer_uptodate(%struct.buffer_head* %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @RFALSE(i32 %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.treepath*, %struct.treepath** %4, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call %struct.buffer_head* @PATH_OFFSET_PBUFFER(%struct.treepath* %31, i32 %32)
  store %struct.buffer_head* %33, %struct.buffer_head** %8, align 8
  %34 = call i32 @B_IS_IN_TREE(%struct.buffer_head* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %22
  store %struct.reiserfs_key* @MAX_KEY, %struct.reiserfs_key** %3, align 8
  br label %77

37:                                               ; preds = %22
  %38 = load %struct.treepath*, %struct.treepath** %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @PATH_OFFSET_POSITION(%struct.treepath* %38, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %42 = call i32 @B_NR_ITEMS(%struct.buffer_head* %41)
  %43 = icmp sgt i32 %40, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store %struct.reiserfs_key* @MAX_KEY, %struct.reiserfs_key** %3, align 8
  br label %77

45:                                               ; preds = %37
  %46 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i64 @B_N_CHILD_NUM(%struct.buffer_head* %46, i32 %47)
  %49 = load %struct.treepath*, %struct.treepath** %4, align 8
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  %52 = call %struct.buffer_head* @PATH_OFFSET_PBUFFER(%struct.treepath* %49, i32 %51)
  %53 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %48, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %45
  store %struct.reiserfs_key* @MAX_KEY, %struct.reiserfs_key** %3, align 8
  br label %77

57:                                               ; preds = %45
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sub nsw i32 %62, 1
  %64 = call %struct.reiserfs_key* @B_N_PDELIM_KEY(%struct.buffer_head* %61, i32 %63)
  store %struct.reiserfs_key* %64, %struct.reiserfs_key** %3, align 8
  br label %77

65:                                               ; preds = %57
  br label %17

66:                                               ; preds = %17
  %67 = load %struct.treepath*, %struct.treepath** %4, align 8
  %68 = load i32, i32* @FIRST_PATH_ELEMENT_OFFSET, align 4
  %69 = call %struct.buffer_head* @PATH_OFFSET_PBUFFER(%struct.treepath* %67, i32 %68)
  %70 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.super_block*, %struct.super_block** %5, align 8
  %73 = call i64 @SB_ROOT_BLOCK(%struct.super_block* %72)
  %74 = icmp eq i64 %71, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %66
  store %struct.reiserfs_key* @MIN_KEY, %struct.reiserfs_key** %3, align 8
  br label %77

76:                                               ; preds = %66
  store %struct.reiserfs_key* @MAX_KEY, %struct.reiserfs_key** %3, align 8
  br label %77

77:                                               ; preds = %76, %75, %60, %56, %44, %36
  %78 = load %struct.reiserfs_key*, %struct.reiserfs_key** %3, align 8
  ret %struct.reiserfs_key* %78
}

declare dso_local i32 @RFALSE(i32, i8*) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local %struct.buffer_head* @PATH_OFFSET_PBUFFER(%struct.treepath*, i32) #1

declare dso_local i32 @B_IS_IN_TREE(%struct.buffer_head*) #1

declare dso_local i32 @PATH_OFFSET_POSITION(%struct.treepath*, i32) #1

declare dso_local i32 @B_NR_ITEMS(%struct.buffer_head*) #1

declare dso_local i64 @B_N_CHILD_NUM(%struct.buffer_head*, i32) #1

declare dso_local %struct.reiserfs_key* @B_N_PDELIM_KEY(%struct.buffer_head*, i32) #1

declare dso_local i64 @SB_ROOT_BLOCK(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
