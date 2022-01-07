; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_fix_node.c_is_left_neighbor_in_cache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_fix_node.c_is_left_neighbor_in_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_balance = type { i32*, %struct.buffer_head**, i32, %struct.super_block* }
%struct.buffer_head = type { i32 }
%struct.super_block = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"vs-8165: F[h] (%b) or FL[h] (%b) is invalid\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"vs-8170: left neighbor (%b %z) is not in the tree\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tree_balance*, i32)* @is_left_neighbor_in_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_left_neighbor_in_cache(%struct.tree_balance* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tree_balance*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tree_balance* %0, %struct.tree_balance** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %12 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %11, i32 0, i32 3
  %13 = load %struct.super_block*, %struct.super_block** %12, align 8
  store %struct.super_block* %13, %struct.super_block** %8, align 8
  %14 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %15 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %14, i32 0, i32 1
  %16 = load %struct.buffer_head**, %struct.buffer_head*** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %16, i64 %18
  %20 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %21 = icmp ne %struct.buffer_head* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %132

23:                                               ; preds = %2
  %24 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %25 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  %29 = call %struct.buffer_head* @PATH_H_PBUFFER(i32 %26, i32 %28)
  store %struct.buffer_head* %29, %struct.buffer_head** %6, align 8
  %30 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %31 = icmp ne %struct.buffer_head* %30, null
  br i1 %31, label %32, label %61

32:                                               ; preds = %23
  %33 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %34 = call i32 @B_IS_IN_TREE(%struct.buffer_head* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %61

36:                                               ; preds = %32
  %37 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %38 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %37, i32 0, i32 1
  %39 = load %struct.buffer_head**, %struct.buffer_head*** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %39, i64 %41
  %43 = load %struct.buffer_head*, %struct.buffer_head** %42, align 8
  %44 = call i32 @B_IS_IN_TREE(%struct.buffer_head* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %36
  %47 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %48 = call i64 @buffer_uptodate(%struct.buffer_head* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %46
  %51 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %52 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %51, i32 0, i32 1
  %53 = load %struct.buffer_head**, %struct.buffer_head*** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %53, i64 %55
  %57 = load %struct.buffer_head*, %struct.buffer_head** %56, align 8
  %58 = call i64 @buffer_uptodate(%struct.buffer_head* %57)
  %59 = icmp ne i64 %58, 0
  %60 = xor i1 %59, true
  br label %61

61:                                               ; preds = %50, %46, %36, %32, %23
  %62 = phi i1 [ true, %46 ], [ true, %36 ], [ true, %32 ], [ true, %23 ], [ %60, %50 ]
  %63 = zext i1 %62 to i32
  %64 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %65 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %66 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %65, i32 0, i32 1
  %67 = load %struct.buffer_head**, %struct.buffer_head*** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %67, i64 %69
  %71 = load %struct.buffer_head*, %struct.buffer_head** %70, align 8
  %72 = call i32 @RFALSE(i32 %63, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), %struct.buffer_head* %64, %struct.buffer_head* %71)
  %73 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %74 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %75 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %74, i32 0, i32 1
  %76 = load %struct.buffer_head**, %struct.buffer_head*** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %76, i64 %78
  %80 = load %struct.buffer_head*, %struct.buffer_head** %79, align 8
  %81 = icmp eq %struct.buffer_head* %73, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %61
  %83 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %84 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  br label %99

90:                                               ; preds = %61
  %91 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %92 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %91, i32 0, i32 1
  %93 = load %struct.buffer_head**, %struct.buffer_head*** %92, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %93, i64 %95
  %97 = load %struct.buffer_head*, %struct.buffer_head** %96, align 8
  %98 = call i32 @B_NR_ITEMS(%struct.buffer_head* %97)
  br label %99

99:                                               ; preds = %90, %82
  %100 = phi i32 [ %89, %82 ], [ %98, %90 ]
  store i32 %100, i32* %10, align 4
  %101 = load %struct.tree_balance*, %struct.tree_balance** %4, align 8
  %102 = getelementptr inbounds %struct.tree_balance, %struct.tree_balance* %101, i32 0, i32 1
  %103 = load %struct.buffer_head**, %struct.buffer_head*** %102, align 8
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %103, i64 %105
  %107 = load %struct.buffer_head*, %struct.buffer_head** %106, align 8
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @B_N_CHILD_NUM(%struct.buffer_head* %107, i32 %108)
  store i32 %109, i32* %9, align 4
  %110 = load %struct.super_block*, %struct.super_block** %8, align 8
  %111 = load i32, i32* %9, align 4
  %112 = call %struct.buffer_head* @sb_find_get_block(%struct.super_block* %110, i32 %111)
  store %struct.buffer_head* %112, %struct.buffer_head** %7, align 8
  %113 = icmp ne %struct.buffer_head* %112, null
  br i1 %113, label %114, label %131

114:                                              ; preds = %99
  %115 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %116 = call i64 @buffer_uptodate(%struct.buffer_head* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %114
  %119 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %120 = call i32 @B_IS_IN_TREE(%struct.buffer_head* %119)
  %121 = icmp ne i32 %120, 0
  %122 = xor i1 %121, true
  br label %123

123:                                              ; preds = %118, %114
  %124 = phi i1 [ false, %114 ], [ %122, %118 ]
  %125 = zext i1 %124 to i32
  %126 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %127 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %128 = call i32 @RFALSE(i32 %125, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), %struct.buffer_head* %126, %struct.buffer_head* %127)
  %129 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %130 = call i32 @put_bh(%struct.buffer_head* %129)
  store i32 1, i32* %3, align 4
  br label %132

131:                                              ; preds = %99
  store i32 0, i32* %3, align 4
  br label %132

132:                                              ; preds = %131, %123, %22
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local %struct.buffer_head* @PATH_H_PBUFFER(i32, i32) #1

declare dso_local i32 @RFALSE(i32, i8*, %struct.buffer_head*, %struct.buffer_head*) #1

declare dso_local i32 @B_IS_IN_TREE(%struct.buffer_head*) #1

declare dso_local i64 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @B_NR_ITEMS(%struct.buffer_head*) #1

declare dso_local i32 @B_N_CHILD_NUM(%struct.buffer_head*, i32) #1

declare dso_local %struct.buffer_head* @sb_find_get_block(%struct.super_block*, i32) #1

declare dso_local i32 @put_bh(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
