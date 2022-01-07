; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_ext_try_to_merge_right.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_ext_try_to_merge_right.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.ext4_ext_path = type { %struct.ext4_extent_header* }
%struct.ext4_extent_header = type { i64 }
%struct.ext4_extent = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"inode#%lu, eh->eh_entries = 0!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ext4_ext_path*, %struct.ext4_extent*)* @ext4_ext_try_to_merge_right to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_ext_try_to_merge_right(%struct.inode* %0, %struct.ext4_ext_path* %1, %struct.ext4_extent* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.ext4_ext_path*, align 8
  %6 = alloca %struct.ext4_extent*, align 8
  %7 = alloca %struct.ext4_extent_header*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.ext4_ext_path* %1, %struct.ext4_ext_path** %5, align 8
  store %struct.ext4_extent* %2, %struct.ext4_extent** %6, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = call i32 @ext_depth(%struct.inode* %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %5, align 8
  %15 = load i32, i32* %8, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %14, i64 %16
  %18 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %17, i32 0, i32 0
  %19 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %18, align 8
  %20 = icmp eq %struct.ext4_extent_header* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %5, align 8
  %24 = load i32, i32* %8, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %23, i64 %25
  %27 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %26, i32 0, i32 0
  %28 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %27, align 8
  store %struct.ext4_extent_header* %28, %struct.ext4_extent_header** %7, align 8
  br label %29

29:                                               ; preds = %107, %3
  %30 = load %struct.ext4_extent*, %struct.ext4_extent** %6, align 8
  %31 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %7, align 8
  %32 = call %struct.ext4_extent* @EXT_LAST_EXTENT(%struct.ext4_extent_header* %31)
  %33 = icmp ult %struct.ext4_extent* %30, %32
  br i1 %33, label %34, label %108

34:                                               ; preds = %29
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = load %struct.ext4_extent*, %struct.ext4_extent** %6, align 8
  %37 = load %struct.ext4_extent*, %struct.ext4_extent** %6, align 8
  %38 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %37, i64 1
  %39 = call i32 @ext4_can_extents_be_merged(%struct.inode* %35, %struct.ext4_extent* %36, %struct.ext4_extent* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  br label %108

42:                                               ; preds = %34
  %43 = load %struct.ext4_extent*, %struct.ext4_extent** %6, align 8
  %44 = call i64 @ext4_ext_is_uninitialized(%struct.ext4_extent* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 1, i32* %11, align 4
  br label %47

47:                                               ; preds = %46, %42
  %48 = load %struct.ext4_extent*, %struct.ext4_extent** %6, align 8
  %49 = call i64 @ext4_ext_get_actual_len(%struct.ext4_extent* %48)
  %50 = load %struct.ext4_extent*, %struct.ext4_extent** %6, align 8
  %51 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %50, i64 1
  %52 = call i64 @ext4_ext_get_actual_len(%struct.ext4_extent* %51)
  %53 = add nsw i64 %49, %52
  %54 = call i32 @cpu_to_le16(i64 %53)
  %55 = load %struct.ext4_extent*, %struct.ext4_extent** %6, align 8
  %56 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %47
  %60 = load %struct.ext4_extent*, %struct.ext4_extent** %6, align 8
  %61 = call i32 @ext4_ext_mark_uninitialized(%struct.ext4_extent* %60)
  br label %62

62:                                               ; preds = %59, %47
  %63 = load %struct.ext4_extent*, %struct.ext4_extent** %6, align 8
  %64 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %63, i64 1
  %65 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %7, align 8
  %66 = call %struct.ext4_extent* @EXT_LAST_EXTENT(%struct.ext4_extent_header* %65)
  %67 = icmp ult %struct.ext4_extent* %64, %66
  br i1 %67, label %68, label %85

68:                                               ; preds = %62
  %69 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %7, align 8
  %70 = call %struct.ext4_extent* @EXT_LAST_EXTENT(%struct.ext4_extent_header* %69)
  %71 = load %struct.ext4_extent*, %struct.ext4_extent** %6, align 8
  %72 = ptrtoint %struct.ext4_extent* %70 to i64
  %73 = ptrtoint %struct.ext4_extent* %71 to i64
  %74 = sub i64 %72, %73
  %75 = sdiv exact i64 %74, 4
  %76 = sub nsw i64 %75, 1
  %77 = mul i64 %76, 4
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %9, align 4
  %79 = load %struct.ext4_extent*, %struct.ext4_extent** %6, align 8
  %80 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %79, i64 1
  %81 = load %struct.ext4_extent*, %struct.ext4_extent** %6, align 8
  %82 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %81, i64 2
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @memmove(%struct.ext4_extent* %80, %struct.ext4_extent* %82, i32 %83)
  br label %85

85:                                               ; preds = %68, %62
  %86 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %7, align 8
  %87 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %86, i32 0, i32 0
  %88 = call i32 @le16_add_cpu(i64* %87, i32 -1)
  store i32 1, i32* %10, align 4
  %89 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %7, align 8
  %90 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %91, 0
  %93 = zext i1 %92 to i32
  %94 = call i32 @WARN_ON(i32 %93)
  %95 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %7, align 8
  %96 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %107, label %99

99:                                               ; preds = %85
  %100 = load %struct.inode*, %struct.inode** %4, align 8
  %101 = getelementptr inbounds %struct.inode, %struct.inode* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.inode*, %struct.inode** %4, align 8
  %104 = getelementptr inbounds %struct.inode, %struct.inode* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @ext4_error(i32 %102, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %105)
  br label %107

107:                                              ; preds = %99, %85
  br label %29

108:                                              ; preds = %41, %29
  %109 = load i32, i32* %10, align 4
  ret i32 %109
}

declare dso_local i32 @ext_depth(%struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.ext4_extent* @EXT_LAST_EXTENT(%struct.ext4_extent_header*) #1

declare dso_local i32 @ext4_can_extents_be_merged(%struct.inode*, %struct.ext4_extent*, %struct.ext4_extent*) #1

declare dso_local i64 @ext4_ext_is_uninitialized(%struct.ext4_extent*) #1

declare dso_local i32 @cpu_to_le16(i64) #1

declare dso_local i64 @ext4_ext_get_actual_len(%struct.ext4_extent*) #1

declare dso_local i32 @ext4_ext_mark_uninitialized(%struct.ext4_extent*) #1

declare dso_local i32 @memmove(%struct.ext4_extent*, %struct.ext4_extent*, i32) #1

declare dso_local i32 @le16_add_cpu(i64*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ext4_error(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
