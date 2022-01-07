; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_migrate.c_update_tind_extent_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_migrate.c_update_tind_extent_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.list_blocks_struct = type { i32 }
%struct.buffer_head = type { i64 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, i32, i64*, %struct.list_blocks_struct*)* @update_tind_extent_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_tind_extent_range(i32* %0, %struct.inode* %1, i32 %2, i64* %3, %struct.list_blocks_struct* %4) #0 {
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
  br i1 %28, label %38, label %29

29:                                               ; preds = %5
  %30 = load i64, i64* %17, align 8
  %31 = load i64, i64* %17, align 8
  %32 = mul i64 %30, %31
  %33 = load i64, i64* %17, align 8
  %34 = mul i64 %32, %33
  %35 = load i64*, i64** %10, align 8
  %36 = load i64, i64* %35, align 8
  %37 = add i64 %36, %34
  store i64 %37, i64* %35, align 8
  store i32 0, i32* %6, align 4
  br label %97

38:                                               ; preds = %5
  %39 = load %struct.inode*, %struct.inode** %8, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call %struct.buffer_head* @sb_bread(%struct.TYPE_2__* %41, i32 %42)
  store %struct.buffer_head* %43, %struct.buffer_head** %12, align 8
  %44 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %45 = icmp ne %struct.buffer_head* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %38
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %97

49:                                               ; preds = %38
  %50 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %51 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i64*
  store i64* %53, i64** %13, align 8
  store i32 0, i32* %14, align 4
  br label %54

54:                                               ; preds = %88, %49
  %55 = load i32, i32* %14, align 4
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* %17, align 8
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %59, label %91

59:                                               ; preds = %54
  %60 = load i64*, i64** %13, align 8
  %61 = load i32, i32* %14, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %59
  %67 = load i32*, i32** %7, align 8
  %68 = load %struct.inode*, %struct.inode** %8, align 8
  %69 = load i64*, i64** %13, align 8
  %70 = load i32, i32* %14, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @le32_to_cpu(i64 %73)
  %75 = load %struct.list_blocks_struct*, %struct.list_blocks_struct** %11, align 8
  %76 = call i32 @update_dind_extent_range(i32* %67, %struct.inode* %68, i32 %74, i64* %16, %struct.list_blocks_struct* %75)
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %15, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %66
  br label %91

80:                                               ; preds = %66
  br label %87

81:                                               ; preds = %59
  %82 = load i64, i64* %17, align 8
  %83 = load i64, i64* %17, align 8
  %84 = mul i64 %82, %83
  %85 = load i64, i64* %16, align 8
  %86 = add i64 %85, %84
  store i64 %86, i64* %16, align 8
  br label %87

87:                                               ; preds = %81, %80
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %14, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %14, align 4
  br label %54

91:                                               ; preds = %79, %54
  %92 = load i64, i64* %16, align 8
  %93 = load i64*, i64** %10, align 8
  store i64 %92, i64* %93, align 8
  %94 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %95 = call i32 @put_bh(%struct.buffer_head* %94)
  %96 = load i32, i32* %15, align 4
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %91, %46, %29
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

declare dso_local %struct.buffer_head* @sb_bread(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @update_dind_extent_range(i32*, %struct.inode*, i32, i64*, %struct.list_blocks_struct*) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @put_bh(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
