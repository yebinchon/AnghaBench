; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_block_group_find_clear_bits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_block_group_find_clear_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_group_desc = type { i8* }

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, %struct.buffer_head*, i32, i32, i32*, i32*)* @ocfs2_block_group_find_clear_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_block_group_find_clear_bits(%struct.ocfs2_super* %0, %struct.buffer_head* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.ocfs2_super*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.ocfs2_group_desc*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %7, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %19, align 4
  %21 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %22 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.ocfs2_group_desc*
  store %struct.ocfs2_group_desc* %24, %struct.ocfs2_group_desc** %20, align 8
  %25 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %20, align 8
  %26 = call i32 @OCFS2_IS_VALID_GROUP_DESC(%struct.ocfs2_group_desc* %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @BUG_ON(i32 %29)
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %31 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %20, align 8
  %32 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %13, align 8
  br label %34

34:                                               ; preds = %80, %6
  %35 = load i8*, i8** %13, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %17, align 4
  %38 = call i32 @ocfs2_find_next_zero_bit(i8* %35, i32 %36, i32 %37)
  store i32 %38, i32* %16, align 4
  %39 = icmp ne i32 %38, -1
  br i1 %39, label %40, label %81

40:                                               ; preds = %34
  %41 = load i32, i32* %16, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %81

45:                                               ; preds = %40
  %46 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %47 = load i32, i32* %16, align 4
  %48 = call i32 @ocfs2_test_bg_bit_allocatable(%struct.buffer_head* %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  store i32 0, i32* %18, align 4
  %51 = load i32, i32* %16, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %17, align 4
  br label %66

53:                                               ; preds = %45
  %54 = load i32, i32* %16, align 4
  %55 = load i32, i32* %17, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load i32, i32* %18, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %18, align 4
  %60 = load i32, i32* %17, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %17, align 4
  br label %65

62:                                               ; preds = %53
  store i32 1, i32* %18, align 4
  %63 = load i32, i32* %16, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %17, align 4
  br label %65

65:                                               ; preds = %62, %57
  br label %66

66:                                               ; preds = %65, %50
  %67 = load i32, i32* %18, align 4
  %68 = load i32, i32* %15, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load i32, i32* %18, align 4
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* %18, align 4
  %74 = sub nsw i32 %72, %73
  store i32 %74, i32* %14, align 4
  br label %75

75:                                               ; preds = %70, %66
  %76 = load i32, i32* %18, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  br label %81

80:                                               ; preds = %75
  br label %34

81:                                               ; preds = %79, %44, %34
  %82 = load i32, i32* %18, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %81
  %86 = load i32, i32* %17, align 4
  %87 = load i32, i32* %18, align 4
  %88 = sub nsw i32 %86, %87
  %89 = load i32*, i32** %11, align 8
  store i32 %88, i32* %89, align 4
  %90 = load i32, i32* %18, align 4
  %91 = load i32*, i32** %12, align 8
  store i32 %90, i32* %91, align 4
  br label %104

92:                                               ; preds = %81
  %93 = load i32, i32* %15, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %92
  %96 = load i32, i32* %14, align 4
  %97 = load i32*, i32** %11, align 8
  store i32 %96, i32* %97, align 4
  %98 = load i32, i32* %15, align 4
  %99 = load i32*, i32** %12, align 8
  store i32 %98, i32* %99, align 4
  br label %103

100:                                              ; preds = %92
  %101 = load i32, i32* @ENOSPC, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %19, align 4
  br label %103

103:                                              ; preds = %100, %95
  br label %104

104:                                              ; preds = %103, %85
  %105 = load i32, i32* %19, align 4
  ret i32 %105
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @OCFS2_IS_VALID_GROUP_DESC(%struct.ocfs2_group_desc*) #1

declare dso_local i32 @ocfs2_find_next_zero_bit(i8*, i32, i32) #1

declare dso_local i32 @ocfs2_test_bg_bit_allocatable(%struct.buffer_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
