; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_migrate.c_update_dind_extent_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_migrate.c_update_dind_extent_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.list_blocks_struct = type { i32 }
%struct.buffer_head = type { i64 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, i32, i64*, %struct.list_blocks_struct*)* @update_dind_extent_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_dind_extent_range(i32* %0, %struct.inode* %1, i32 %2, i64* %3, %struct.list_blocks_struct* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca %struct.list_blocks_struct*, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store %struct.list_blocks_struct* %4, %struct.list_blocks_struct** %11, align 8
  store i32 0, i32* %15, align 4
  %18 = load i64*, i64** %10, align 8
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %16, align 8
  %20 = load %struct.inode*, %struct.inode** %8, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 2
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %17, align 8
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %5
  %30 = load i64, i64* %17, align 8
  %31 = load i64, i64* %17, align 8
  %32 = mul i64 %30, %31
  %33 = load i64*, i64** %10, align 8
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %34, %32
  store i64 %35, i64* %33, align 8
  store i32 0, i32* %6, align 4
  br label %93

36:                                               ; preds = %5
  %37 = load %struct.inode*, %struct.inode** %8, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call %struct.buffer_head* @sb_bread(%struct.TYPE_2__* %39, i32 %40)
  store %struct.buffer_head* %41, %struct.buffer_head** %12, align 8
  %42 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %43 = icmp ne %struct.buffer_head* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %36
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  br label %93

47:                                               ; preds = %36
  %48 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %49 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i64*
  store i64* %51, i64** %13, align 8
  store i32 0, i32* %14, align 4
  br label %52

52:                                               ; preds = %84, %47
  %53 = load i32, i32* %14, align 4
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* %17, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %87

57:                                               ; preds = %52
  %58 = load i64*, i64** %13, align 8
  %59 = load i32, i32* %14, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %57
  %65 = load i32*, i32** %7, align 8
  %66 = load %struct.inode*, %struct.inode** %8, align 8
  %67 = load i64*, i64** %13, align 8
  %68 = load i32, i32* %14, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @le32_to_cpu(i64 %71)
  %73 = load %struct.list_blocks_struct*, %struct.list_blocks_struct** %11, align 8
  %74 = call i32 @update_ind_extent_range(i32* %65, %struct.inode* %66, i32 %72, i64* %16, %struct.list_blocks_struct* %73)
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %15, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %64
  br label %87

78:                                               ; preds = %64
  br label %83

79:                                               ; preds = %57
  %80 = load i64, i64* %17, align 8
  %81 = load i64, i64* %16, align 8
  %82 = add i64 %81, %80
  store i64 %82, i64* %16, align 8
  br label %83

83:                                               ; preds = %79, %78
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %14, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %14, align 4
  br label %52

87:                                               ; preds = %77, %52
  %88 = load i64, i64* %16, align 8
  %89 = load i64*, i64** %10, align 8
  store i64 %88, i64* %89, align 8
  %90 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %91 = call i32 @put_bh(%struct.buffer_head* %90)
  %92 = load i32, i32* %15, align 4
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %87, %44, %29
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local %struct.buffer_head* @sb_bread(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @update_ind_extent_range(i32*, %struct.inode*, i32, i64*, %struct.list_blocks_struct*) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @put_bh(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
