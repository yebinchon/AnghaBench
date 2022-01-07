; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_ext_create_new_leaf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_ext_create_new_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_ext_path = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.ext4_extent = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, i32, %struct.ext4_ext_path*, %struct.ext4_extent*)* @ext4_ext_create_new_leaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_ext_create_new_leaf(i32* %0, %struct.inode* %1, i32 %2, %struct.ext4_ext_path* %3, %struct.ext4_extent* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ext4_ext_path*, align 8
  %10 = alloca %struct.ext4_extent*, align 8
  %11 = alloca %struct.ext4_ext_path*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ext4_ext_path* %3, %struct.ext4_ext_path** %9, align 8
  store %struct.ext4_extent* %4, %struct.ext4_extent** %10, align 8
  store i32 0, i32* %14, align 4
  br label %15

15:                                               ; preds = %117, %5
  %16 = load %struct.inode*, %struct.inode** %7, align 8
  %17 = call i32 @ext_depth(%struct.inode* %16)
  store i32 %17, i32* %12, align 4
  store i32 %17, i32* %13, align 4
  %18 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %19 = load i32, i32* %12, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %18, i64 %20
  store %struct.ext4_ext_path* %21, %struct.ext4_ext_path** %11, align 8
  br label %22

22:                                               ; preds = %32, %15
  %23 = load i32, i32* %13, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %11, align 8
  %27 = call i64 @EXT_HAS_FREE_INDEX(%struct.ext4_ext_path* %26)
  %28 = icmp ne i64 %27, 0
  %29 = xor i1 %28, true
  br label %30

30:                                               ; preds = %25, %22
  %31 = phi i1 [ false, %22 ], [ %29, %25 ]
  br i1 %31, label %32, label %37

32:                                               ; preds = %30
  %33 = load i32, i32* %13, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %13, align 4
  %35 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %11, align 8
  %36 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %35, i32 -1
  store %struct.ext4_ext_path* %36, %struct.ext4_ext_path** %11, align 8
  br label %22

37:                                               ; preds = %30
  %38 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %11, align 8
  %39 = call i64 @EXT_HAS_FREE_INDEX(%struct.ext4_ext_path* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %70

41:                                               ; preds = %37
  %42 = load i32*, i32** %6, align 8
  %43 = load %struct.inode*, %struct.inode** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %46 = load %struct.ext4_extent*, %struct.ext4_extent** %10, align 8
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @ext4_ext_split(i32* %42, %struct.inode* %43, i32 %44, %struct.ext4_ext_path* %45, %struct.ext4_extent* %46, i32 %47)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  br label %120

52:                                               ; preds = %41
  %53 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %54 = call i32 @ext4_ext_drop_refs(%struct.ext4_ext_path* %53)
  %55 = load %struct.inode*, %struct.inode** %7, align 8
  %56 = load %struct.ext4_extent*, %struct.ext4_extent** %10, align 8
  %57 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @le32_to_cpu(i32 %58)
  %60 = trunc i64 %59 to i32
  %61 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %62 = call %struct.ext4_ext_path* @ext4_ext_find_extent(%struct.inode* %55, i32 %60, %struct.ext4_ext_path* %61)
  store %struct.ext4_ext_path* %62, %struct.ext4_ext_path** %9, align 8
  %63 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %64 = call i64 @IS_ERR(%struct.ext4_ext_path* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %52
  %67 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %68 = call i32 @PTR_ERR(%struct.ext4_ext_path* %67)
  store i32 %68, i32* %14, align 4
  br label %69

69:                                               ; preds = %66, %52
  br label %119

70:                                               ; preds = %37
  %71 = load i32*, i32** %6, align 8
  %72 = load %struct.inode*, %struct.inode** %7, align 8
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %75 = load %struct.ext4_extent*, %struct.ext4_extent** %10, align 8
  %76 = call i32 @ext4_ext_grow_indepth(i32* %71, %struct.inode* %72, i32 %73, %struct.ext4_ext_path* %74, %struct.ext4_extent* %75)
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %14, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %70
  br label %120

80:                                               ; preds = %70
  %81 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %82 = call i32 @ext4_ext_drop_refs(%struct.ext4_ext_path* %81)
  %83 = load %struct.inode*, %struct.inode** %7, align 8
  %84 = load %struct.ext4_extent*, %struct.ext4_extent** %10, align 8
  %85 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @le32_to_cpu(i32 %86)
  %88 = trunc i64 %87 to i32
  %89 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %90 = call %struct.ext4_ext_path* @ext4_ext_find_extent(%struct.inode* %83, i32 %88, %struct.ext4_ext_path* %89)
  store %struct.ext4_ext_path* %90, %struct.ext4_ext_path** %9, align 8
  %91 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %92 = call i64 @IS_ERR(%struct.ext4_ext_path* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %80
  %95 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %96 = call i32 @PTR_ERR(%struct.ext4_ext_path* %95)
  store i32 %96, i32* %14, align 4
  br label %120

97:                                               ; preds = %80
  %98 = load %struct.inode*, %struct.inode** %7, align 8
  %99 = call i32 @ext_depth(%struct.inode* %98)
  store i32 %99, i32* %12, align 4
  %100 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %101 = load i32, i32* %12, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %100, i64 %102
  %104 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %103, i32 0, i32 0
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %9, align 8
  %109 = load i32, i32* %12, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %108, i64 %110
  %112 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %111, i32 0, i32 0
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %107, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %97
  br label %15

118:                                              ; preds = %97
  br label %119

119:                                              ; preds = %118, %69
  br label %120

120:                                              ; preds = %119, %94, %79, %51
  %121 = load i32, i32* %14, align 4
  ret i32 %121
}

declare dso_local i32 @ext_depth(%struct.inode*) #1

declare dso_local i64 @EXT_HAS_FREE_INDEX(%struct.ext4_ext_path*) #1

declare dso_local i32 @ext4_ext_split(i32*, %struct.inode*, i32, %struct.ext4_ext_path*, %struct.ext4_extent*, i32) #1

declare dso_local i32 @ext4_ext_drop_refs(%struct.ext4_ext_path*) #1

declare dso_local %struct.ext4_ext_path* @ext4_ext_find_extent(%struct.inode*, i32, %struct.ext4_ext_path*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @IS_ERR(%struct.ext4_ext_path*) #1

declare dso_local i32 @PTR_ERR(%struct.ext4_ext_path*) #1

declare dso_local i32 @ext4_ext_grow_indepth(i32*, %struct.inode*, i32, %struct.ext4_ext_path*, %struct.ext4_extent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
