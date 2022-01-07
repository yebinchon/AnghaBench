; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_find_near.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_find_near.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.inode = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i64* }
%struct.TYPE_7__ = type { i64, i64 }
%struct.ext4_inode_info = type { i32, i64* }
%struct.TYPE_9__ = type { i32 }

@EXT4_FLEX_SIZE_DIR_ALLOC_SCHEME = common dso_local global i32 0, align 4
@DELALLOC = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_10__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.inode*, %struct.TYPE_8__*)* @ext4_find_near to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ext4_find_near(%struct.inode* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.ext4_inode_info*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = call %struct.ext4_inode_info* @EXT4_I(%struct.inode* %14)
  store %struct.ext4_inode_info* %15, %struct.ext4_inode_info** %6, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = icmp ne %struct.TYPE_7__* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i64*
  br label %31

27:                                               ; preds = %2
  %28 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %6, align 8
  %29 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  br label %31

31:                                               ; preds = %27, %20
  %32 = phi i64* [ %26, %20 ], [ %30, %27 ]
  store i64* %32, i64** %7, align 8
  %33 = load %struct.inode*, %struct.inode** %4, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.TYPE_9__* @EXT4_SB(i32 %35)
  %37 = call i32 @ext4_flex_bg_size(%struct.TYPE_9__* %36)
  store i32 %37, i32* %13, align 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 -1
  store i64* %41, i64** %8, align 8
  br label %42

42:                                               ; preds = %55, %31
  %43 = load i64*, i64** %8, align 8
  %44 = load i64*, i64** %7, align 8
  %45 = icmp uge i64* %43, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %42
  %47 = load i64*, i64** %8, align 8
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i64*, i64** %8, align 8
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @le32_to_cpu(i64 %52)
  store i64 %53, i64* %3, align 8
  br label %151

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54
  %56 = load i64*, i64** %8, align 8
  %57 = getelementptr inbounds i64, i64* %56, i32 -1
  store i64* %57, i64** %8, align 8
  br label %42

58:                                               ; preds = %42
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = icmp ne %struct.TYPE_7__* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %3, align 8
  br label %151

69:                                               ; preds = %58
  %70 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %6, align 8
  %71 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* @EXT4_FLEX_SIZE_DIR_ALLOC_SCHEME, align 4
  %75 = icmp sge i32 %73, %74
  br i1 %75, label %76, label %91

76:                                               ; preds = %69
  %77 = load i32, i32* %13, align 4
  %78 = sub nsw i32 %77, 1
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %12, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %12, align 4
  %82 = load %struct.inode*, %struct.inode** %4, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @S_ISREG(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %76
  %88 = load i32, i32* %12, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %12, align 4
  br label %90

90:                                               ; preds = %87, %76
  br label %91

91:                                               ; preds = %90, %69
  %92 = load %struct.inode*, %struct.inode** %4, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %12, align 4
  %96 = call i64 @ext4_group_first_block_no(i32 %94, i32 %95)
  store i64 %96, i64* %9, align 8
  %97 = load %struct.inode*, %struct.inode** %4, align 8
  %98 = getelementptr inbounds %struct.inode, %struct.inode* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call %struct.TYPE_9__* @EXT4_SB(i32 %99)
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @ext4_blocks_count(i32 %102)
  %104 = sub nsw i64 %103, 1
  store i64 %104, i64* %10, align 8
  %105 = load %struct.inode*, %struct.inode** %4, align 8
  %106 = getelementptr inbounds %struct.inode, %struct.inode* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @DELALLOC, align 4
  %109 = call i64 @test_opt(i32 %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %91
  %112 = load i64, i64* %9, align 8
  store i64 %112, i64* %3, align 8
  br label %151

113:                                              ; preds = %91
  %114 = load i64, i64* %9, align 8
  %115 = load %struct.inode*, %struct.inode** %4, align 8
  %116 = getelementptr inbounds %struct.inode, %struct.inode* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @EXT4_BLOCKS_PER_GROUP(i32 %117)
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %114, %119
  %121 = load i64, i64* %10, align 8
  %122 = icmp sle i64 %120, %121
  br i1 %122, label %123, label %134

123:                                              ; preds = %113
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = srem i32 %126, 16
  %128 = load %struct.inode*, %struct.inode** %4, align 8
  %129 = getelementptr inbounds %struct.inode, %struct.inode* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @EXT4_BLOCKS_PER_GROUP(i32 %130)
  %132 = sdiv i32 %131, 16
  %133 = mul nsw i32 %127, %132
  store i32 %133, i32* %11, align 4
  br label %146

134:                                              ; preds = %113
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = srem i32 %137, 16
  %139 = sext i32 %138 to i64
  %140 = load i64, i64* %10, align 8
  %141 = load i64, i64* %9, align 8
  %142 = sub nsw i64 %140, %141
  %143 = sdiv i64 %142, 16
  %144 = mul nsw i64 %139, %143
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %11, align 4
  br label %146

146:                                              ; preds = %134, %123
  %147 = load i64, i64* %9, align 8
  %148 = load i32, i32* %11, align 4
  %149 = sext i32 %148 to i64
  %150 = add nsw i64 %147, %149
  store i64 %150, i64* %3, align 8
  br label %151

151:                                              ; preds = %146, %111, %63, %50
  %152 = load i64, i64* %3, align 8
  ret i64 %152
}

declare dso_local %struct.ext4_inode_info* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @ext4_flex_bg_size(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @EXT4_SB(i32) #1

declare dso_local i64 @le32_to_cpu(i64) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @ext4_group_first_block_no(i32, i32) #1

declare dso_local i64 @ext4_blocks_count(i32) #1

declare dso_local i64 @test_opt(i32, i32) #1

declare dso_local i32 @EXT4_BLOCKS_PER_GROUP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
