; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_move_extent.c_mext_insert_extents.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_move_extent.c_mext_insert_extents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_ext_path = type { i32, i32, %struct.ext4_extent_header* }
%struct.ext4_extent_header = type { i32, i32 }
%struct.ext4_extent = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, %struct.ext4_ext_path*, %struct.ext4_extent*, %struct.ext4_extent*, %struct.ext4_extent*, %struct.ext4_extent*, %struct.ext4_extent*)* @mext_insert_extents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mext_insert_extents(i32* %0, %struct.inode* %1, %struct.ext4_ext_path* %2, %struct.ext4_extent* %3, %struct.ext4_extent* %4, %struct.ext4_extent* %5, %struct.ext4_extent* %6, %struct.ext4_extent* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.ext4_ext_path*, align 8
  %13 = alloca %struct.ext4_extent*, align 8
  %14 = alloca %struct.ext4_extent*, align 8
  %15 = alloca %struct.ext4_extent*, align 8
  %16 = alloca %struct.ext4_extent*, align 8
  %17 = alloca %struct.ext4_extent*, align 8
  %18 = alloca %struct.ext4_extent_header*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store %struct.inode* %1, %struct.inode** %11, align 8
  store %struct.ext4_ext_path* %2, %struct.ext4_ext_path** %12, align 8
  store %struct.ext4_extent* %3, %struct.ext4_extent** %13, align 8
  store %struct.ext4_extent* %4, %struct.ext4_extent** %14, align 8
  store %struct.ext4_extent* %5, %struct.ext4_extent** %15, align 8
  store %struct.ext4_extent* %6, %struct.ext4_extent** %16, align 8
  store %struct.ext4_extent* %7, %struct.ext4_extent** %17, align 8
  %24 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %25 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 1, i32 0
  %30 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %31 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 1, i32 0
  %36 = add nsw i32 %29, %35
  %37 = load %struct.ext4_extent*, %struct.ext4_extent** %16, align 8
  %38 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 1, i32 0
  %43 = add nsw i32 %36, %42
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %19, align 8
  %45 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %46 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %45, i64 1
  %47 = ptrtoint %struct.ext4_extent* %46 to i64
  %48 = load %struct.ext4_extent*, %struct.ext4_extent** %13, align 8
  %49 = ptrtoint %struct.ext4_extent* %48 to i64
  %50 = sub i64 %47, %49
  %51 = add i64 %50, 1
  %52 = udiv i64 %51, 8
  store i64 %52, i64* %20, align 8
  %53 = load i64, i64* %19, align 8
  %54 = load i64, i64* %20, align 8
  %55 = sub i64 %53, %54
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %21, align 4
  %57 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %58 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %22, align 4
  %60 = load i32, i32* %22, align 4
  %61 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %61, i64 %62
  store %struct.ext4_ext_path* %63, %struct.ext4_ext_path** %12, align 8
  %64 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %65 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %64, i32 0, i32 2
  %66 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %65, align 8
  store %struct.ext4_extent_header* %66, %struct.ext4_extent_header** %18, align 8
  %67 = load i32, i32* %22, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %8
  %70 = load i32*, i32** %10, align 8
  %71 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %72 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ext4_journal_get_write_access(i32* %70, i32 %73)
  store i32 %74, i32* %23, align 4
  %75 = load i32, i32* %23, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = load i32, i32* %23, align 4
  store i32 %78, i32* %9, align 4
  br label %143

79:                                               ; preds = %69
  br label %80

80:                                               ; preds = %79, %8
  %81 = load i32, i32* %21, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %109

83:                                               ; preds = %80
  %84 = load i32, i32* %21, align 4
  %85 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %18, align 8
  %86 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @le16_to_cpu(i32 %87)
  %89 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %18, align 8
  %90 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @le16_to_cpu(i32 %91)
  %93 = sub nsw i32 %88, %92
  %94 = icmp sgt i32 %84, %93
  br i1 %94, label %95, label %109

95:                                               ; preds = %83
  %96 = load i32*, i32** %10, align 8
  %97 = load %struct.inode*, %struct.inode** %11, align 8
  %98 = load %struct.ext4_extent*, %struct.ext4_extent** %13, align 8
  %99 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %100 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %101 = load %struct.ext4_extent*, %struct.ext4_extent** %16, align 8
  %102 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %103 = call i32 @mext_insert_across_blocks(i32* %96, %struct.inode* %97, %struct.ext4_extent* %98, %struct.ext4_extent* %99, %struct.ext4_extent* %100, %struct.ext4_extent* %101, %struct.ext4_extent* %102)
  store i32 %103, i32* %23, align 4
  %104 = load i32, i32* %23, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %95
  %107 = load i32, i32* %23, align 4
  store i32 %107, i32* %9, align 4
  br label %143

108:                                              ; preds = %95
  br label %118

109:                                              ; preds = %83, %80
  %110 = load %struct.ext4_extent*, %struct.ext4_extent** %13, align 8
  %111 = load %struct.ext4_extent*, %struct.ext4_extent** %14, align 8
  %112 = load %struct.ext4_extent*, %struct.ext4_extent** %15, align 8
  %113 = load %struct.ext4_extent*, %struct.ext4_extent** %16, align 8
  %114 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %115 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %18, align 8
  %116 = load i32, i32* %21, align 4
  %117 = call i32 @mext_insert_inside_block(%struct.ext4_extent* %110, %struct.ext4_extent* %111, %struct.ext4_extent* %112, %struct.ext4_extent* %113, %struct.ext4_extent* %114, %struct.ext4_extent_header* %115, i32 %116)
  br label %118

118:                                              ; preds = %109, %108
  %119 = load i32, i32* %22, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %133

121:                                              ; preds = %118
  %122 = load i32*, i32** %10, align 8
  %123 = load %struct.inode*, %struct.inode** %11, align 8
  %124 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %12, align 8
  %125 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @ext4_handle_dirty_metadata(i32* %122, %struct.inode* %123, i32 %126)
  store i32 %127, i32* %23, align 4
  %128 = load i32, i32* %23, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %121
  %131 = load i32, i32* %23, align 4
  store i32 %131, i32* %9, align 4
  br label %143

132:                                              ; preds = %121
  br label %142

133:                                              ; preds = %118
  %134 = load i32*, i32** %10, align 8
  %135 = load %struct.inode*, %struct.inode** %11, align 8
  %136 = call i32 @ext4_mark_inode_dirty(i32* %134, %struct.inode* %135)
  store i32 %136, i32* %23, align 4
  %137 = load i32, i32* %23, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %133
  %140 = load i32, i32* %23, align 4
  store i32 %140, i32* %9, align 4
  br label %143

141:                                              ; preds = %133
  br label %142

142:                                              ; preds = %141, %132
  store i32 0, i32* %9, align 4
  br label %143

143:                                              ; preds = %142, %139, %130, %106, %77
  %144 = load i32, i32* %9, align 4
  ret i32 %144
}

declare dso_local i32 @ext4_journal_get_write_access(i32*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @mext_insert_across_blocks(i32*, %struct.inode*, %struct.ext4_extent*, %struct.ext4_extent*, %struct.ext4_extent*, %struct.ext4_extent*, %struct.ext4_extent*) #1

declare dso_local i32 @mext_insert_inside_block(%struct.ext4_extent*, %struct.ext4_extent*, %struct.ext4_extent*, %struct.ext4_extent*, %struct.ext4_extent*, %struct.ext4_extent_header*, i32) #1

declare dso_local i32 @ext4_handle_dirty_metadata(i32*, %struct.inode*, i32) #1

declare dso_local i32 @ext4_mark_inode_dirty(i32*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
