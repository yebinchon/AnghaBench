; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_namei.c_ext3_htree_next_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_namei.c_ext3_htree_next_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dx_frame = type { i64, i64, %struct.buffer_head* }
%struct.buffer_head = type { i64 }
%struct.dx_node = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, %struct.dx_frame*, %struct.dx_frame*, i32*)* @ext3_htree_next_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext3_htree_next_block(%struct.inode* %0, i32 %1, %struct.dx_frame* %2, %struct.dx_frame* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dx_frame*, align 8
  %10 = alloca %struct.dx_frame*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.dx_frame*, align 8
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.dx_frame* %2, %struct.dx_frame** %9, align 8
  store %struct.dx_frame* %3, %struct.dx_frame** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %15, align 4
  %17 = load %struct.dx_frame*, %struct.dx_frame** %9, align 8
  store %struct.dx_frame* %17, %struct.dx_frame** %12, align 8
  br label %18

18:                                               ; preds = %5, %38
  %19 = load %struct.dx_frame*, %struct.dx_frame** %12, align 8
  %20 = getelementptr inbounds %struct.dx_frame, %struct.dx_frame* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %20, align 8
  %23 = load %struct.dx_frame*, %struct.dx_frame** %12, align 8
  %24 = getelementptr inbounds %struct.dx_frame, %struct.dx_frame* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.dx_frame*, %struct.dx_frame** %12, align 8
  %27 = getelementptr inbounds %struct.dx_frame, %struct.dx_frame* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @dx_get_count(i64 %28)
  %30 = add nsw i64 %25, %29
  %31 = icmp slt i64 %22, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %18
  br label %43

33:                                               ; preds = %18
  %34 = load %struct.dx_frame*, %struct.dx_frame** %12, align 8
  %35 = load %struct.dx_frame*, %struct.dx_frame** %10, align 8
  %36 = icmp eq %struct.dx_frame* %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  br label %100

38:                                               ; preds = %33
  %39 = load i32, i32* %15, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %15, align 4
  %41 = load %struct.dx_frame*, %struct.dx_frame** %12, align 8
  %42 = getelementptr inbounds %struct.dx_frame, %struct.dx_frame* %41, i32 -1
  store %struct.dx_frame* %42, %struct.dx_frame** %12, align 8
  br label %18

43:                                               ; preds = %32
  %44 = load %struct.dx_frame*, %struct.dx_frame** %12, align 8
  %45 = getelementptr inbounds %struct.dx_frame, %struct.dx_frame* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @dx_get_hash(i64 %46)
  store i32 %47, i32* %16, align 4
  %48 = load i32*, i32** %11, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i32, i32* %16, align 4
  %52 = load i32*, i32** %11, align 8
  store i32 %51, i32* %52, align 4
  br label %53

53:                                               ; preds = %50, %43
  %54 = load i32, i32* %8, align 4
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = load i32, i32* %16, align 4
  %59 = and i32 %58, -2
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i32 0, i32* %6, align 4
  br label %100

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63, %53
  br label %65

65:                                               ; preds = %79, %64
  %66 = load i32, i32* %15, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %15, align 4
  %68 = icmp ne i32 %66, 0
  br i1 %68, label %69, label %99

69:                                               ; preds = %65
  %70 = load %struct.inode*, %struct.inode** %7, align 8
  %71 = load %struct.dx_frame*, %struct.dx_frame** %12, align 8
  %72 = getelementptr inbounds %struct.dx_frame, %struct.dx_frame* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @dx_get_block(i64 %73)
  %75 = call %struct.buffer_head* @ext3_bread(i32* null, %struct.inode* %70, i32 %74, i32 0, i32* %14)
  store %struct.buffer_head* %75, %struct.buffer_head** %13, align 8
  %76 = icmp ne %struct.buffer_head* %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %69
  %78 = load i32, i32* %14, align 4
  store i32 %78, i32* %6, align 4
  br label %100

79:                                               ; preds = %69
  %80 = load %struct.dx_frame*, %struct.dx_frame** %12, align 8
  %81 = getelementptr inbounds %struct.dx_frame, %struct.dx_frame* %80, i32 1
  store %struct.dx_frame* %81, %struct.dx_frame** %12, align 8
  %82 = load %struct.dx_frame*, %struct.dx_frame** %12, align 8
  %83 = getelementptr inbounds %struct.dx_frame, %struct.dx_frame* %82, i32 0, i32 2
  %84 = load %struct.buffer_head*, %struct.buffer_head** %83, align 8
  %85 = call i32 @brelse(%struct.buffer_head* %84)
  %86 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %87 = load %struct.dx_frame*, %struct.dx_frame** %12, align 8
  %88 = getelementptr inbounds %struct.dx_frame, %struct.dx_frame* %87, i32 0, i32 2
  store %struct.buffer_head* %86, %struct.buffer_head** %88, align 8
  %89 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %90 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to %struct.dx_node*
  %93 = getelementptr inbounds %struct.dx_node, %struct.dx_node* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.dx_frame*, %struct.dx_frame** %12, align 8
  %96 = getelementptr inbounds %struct.dx_frame, %struct.dx_frame* %95, i32 0, i32 1
  store i64 %94, i64* %96, align 8
  %97 = load %struct.dx_frame*, %struct.dx_frame** %12, align 8
  %98 = getelementptr inbounds %struct.dx_frame, %struct.dx_frame* %97, i32 0, i32 0
  store i64 %94, i64* %98, align 8
  br label %65

99:                                               ; preds = %65
  store i32 1, i32* %6, align 4
  br label %100

100:                                              ; preds = %99, %77, %62, %37
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

declare dso_local i64 @dx_get_count(i64) #1

declare dso_local i32 @dx_get_hash(i64) #1

declare dso_local %struct.buffer_head* @ext3_bread(i32*, %struct.inode*, i32, i32, i32*) #1

declare dso_local i32 @dx_get_block(i64) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
