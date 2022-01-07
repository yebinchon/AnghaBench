; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_dir.c_gfs2_dir_exhash_dealloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_dir.c_gfs2_dir_exhash_dealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.gfs2_leaf = type { i32 }

@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_dir_exhash_dealloc(%struct.gfs2_inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gfs2_inode*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.gfs2_leaf*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %3, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %12, align 4
  %14 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %15 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 1, %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %6, align 8
  %19 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %20 = call i32* @gfs2_dir_get_hash_table(%struct.gfs2_inode* %19)
  store i32* %20, i32** %10, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = call i64 @IS_ERR(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load i32*, i32** %10, align 8
  %26 = call i32 @PTR_ERR(i32* %25)
  store i32 %26, i32* %2, align 4
  br label %102

27:                                               ; preds = %1
  br label %28

28:                                               ; preds = %89, %27
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %90

32:                                               ; preds = %28
  %33 = load i32*, i32** %10, align 8
  %34 = load i64, i64* %8, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @be64_to_cpu(i32 %36)
  store i64 %37, i64* %11, align 8
  %38 = load i64, i64* %11, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %86

40:                                               ; preds = %32
  %41 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %42 = load i64, i64* %11, align 8
  %43 = call i32 @get_leaf(%struct.gfs2_inode* %41, i64 %42, %struct.buffer_head** %4)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %100

47:                                               ; preds = %40
  %48 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %49 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to %struct.gfs2_leaf*
  store %struct.gfs2_leaf* %51, %struct.gfs2_leaf** %5, align 8
  %52 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %53 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %5, align 8
  %56 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @be16_to_cpu(i32 %57)
  %59 = sub nsw i32 %54, %58
  %60 = shl i32 1, %59
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %7, align 8
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* %7, align 8
  %64 = sub i64 %63, 1
  %65 = xor i64 %64, -1
  %66 = and i64 %62, %65
  %67 = load i64, i64* %7, align 8
  %68 = add i64 %66, %67
  store i64 %68, i64* %9, align 8
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* %6, align 8
  %71 = icmp uge i64 %69, %70
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 1, i32 0
  store i32 %73, i32* %13, align 4
  %74 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* %7, align 8
  %77 = load i64, i64* %11, align 8
  %78 = call i32 @leaf_dealloc(%struct.gfs2_inode* %74, i64 %75, i64 %76, i64 %77)
  store i32 %78, i32* %12, align 4
  %79 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %80 = call i32 @brelse(%struct.buffer_head* %79)
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %47
  br label %100

84:                                               ; preds = %47
  %85 = load i64, i64* %9, align 8
  store i64 %85, i64* %8, align 8
  br label %89

86:                                               ; preds = %32
  %87 = load i64, i64* %8, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %8, align 8
  br label %89

89:                                               ; preds = %86, %84
  br label %28

90:                                               ; preds = %28
  %91 = load i64, i64* %8, align 8
  %92 = load i64, i64* %6, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %90
  %95 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %96 = call i32 @gfs2_consist_inode(%struct.gfs2_inode* %95)
  %97 = load i32, i32* @EIO, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %12, align 4
  br label %99

99:                                               ; preds = %94, %90
  br label %100

100:                                              ; preds = %99, %83, %46
  %101 = load i32, i32* %12, align 4
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %100, %24
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32* @gfs2_dir_get_hash_table(%struct.gfs2_inode*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @get_leaf(%struct.gfs2_inode*, i64, %struct.buffer_head**) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @leaf_dealloc(%struct.gfs2_inode*, i64, i64, i64) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_consist_inode(%struct.gfs2_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
