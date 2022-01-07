; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_check_eofblocks_fl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_check_eofblocks_fl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_ext_path = type { i64, %struct.ext4_extent_header*, %struct.ext4_extent* }
%struct.ext4_extent_header = type { i32 }
%struct.ext4_extent = type { i32 }

@EXT4_INODE_EOFBLOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, i64, %struct.ext4_ext_path*, i32)* @check_eofblocks_fl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_eofblocks_fl(i32* %0, %struct.inode* %1, i64 %2, %struct.ext4_ext_path* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ext4_ext_path*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ext4_extent_header*, align 8
  %15 = alloca %struct.ext4_extent*, align 8
  %16 = alloca %struct.ext4_extent*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.ext4_ext_path* %3, %struct.ext4_ext_path** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.inode*, %struct.inode** %8, align 8
  %18 = load i32, i32* @EXT4_INODE_EOFBLOCKS, align 4
  %19 = call i32 @ext4_test_inode_flag(%struct.inode* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %96

22:                                               ; preds = %5
  %23 = load %struct.inode*, %struct.inode** %8, align 8
  %24 = call i32 @ext_depth(%struct.inode* %23)
  store i32 %24, i32* %13, align 4
  %25 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %26 = load i32, i32* %13, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %25, i64 %27
  %29 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %28, i32 0, i32 1
  %30 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %29, align 8
  store %struct.ext4_extent_header* %30, %struct.ext4_extent_header** %14, align 8
  %31 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %32 = load i32, i32* %13, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %31, i64 %33
  %35 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %34, i32 0, i32 2
  %36 = load %struct.ext4_extent*, %struct.ext4_extent** %35, align 8
  store %struct.ext4_extent* %36, %struct.ext4_extent** %15, align 8
  %37 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %14, align 8
  %38 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %22
  br label %89

46:                                               ; preds = %22
  %47 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %14, align 8
  %48 = call %struct.ext4_extent* @EXT_LAST_EXTENT(%struct.ext4_extent_header* %47)
  store %struct.ext4_extent* %48, %struct.ext4_extent** %16, align 8
  %49 = load i64, i64* %9, align 8
  %50 = load i32, i32* %11, align 4
  %51 = zext i32 %50 to i64
  %52 = add nsw i64 %49, %51
  %53 = load %struct.ext4_extent*, %struct.ext4_extent** %16, align 8
  %54 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @le32_to_cpu(i32 %55)
  %57 = load %struct.ext4_extent*, %struct.ext4_extent** %16, align 8
  %58 = call i64 @ext4_ext_get_actual_len(%struct.ext4_extent* %57)
  %59 = add nsw i64 %56, %58
  %60 = icmp slt i64 %52, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %46
  store i32 0, i32* %6, align 4
  br label %96

62:                                               ; preds = %46
  %63 = load i32, i32* %13, align 4
  %64 = sub nsw i32 %63, 1
  store i32 %64, i32* %12, align 4
  br label %65

65:                                               ; preds = %85, %62
  %66 = load i32, i32* %12, align 4
  %67 = icmp sge i32 %66, 0
  br i1 %67, label %68, label %88

68:                                               ; preds = %65
  %69 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %69, i64 %71
  %73 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %75, i64 %77
  %79 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %78, i32 0, i32 1
  %80 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %79, align 8
  %81 = call i64 @EXT_LAST_INDEX(%struct.ext4_extent_header* %80)
  %82 = icmp ne i64 %74, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %68
  store i32 0, i32* %6, align 4
  br label %96

84:                                               ; preds = %68
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %12, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %12, align 4
  br label %65

88:                                               ; preds = %65
  br label %89

89:                                               ; preds = %88, %45
  %90 = load %struct.inode*, %struct.inode** %8, align 8
  %91 = load i32, i32* @EXT4_INODE_EOFBLOCKS, align 4
  %92 = call i32 @ext4_clear_inode_flag(%struct.inode* %90, i32 %91)
  %93 = load i32*, i32** %7, align 8
  %94 = load %struct.inode*, %struct.inode** %8, align 8
  %95 = call i32 @ext4_mark_inode_dirty(i32* %93, %struct.inode* %94)
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %89, %83, %61, %21
  %97 = load i32, i32* %6, align 4
  ret i32 %97
}

declare dso_local i32 @ext4_test_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @ext_depth(%struct.inode*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.ext4_extent* @EXT_LAST_EXTENT(%struct.ext4_extent_header*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @ext4_ext_get_actual_len(%struct.ext4_extent*) #1

declare dso_local i64 @EXT_LAST_INDEX(%struct.ext4_extent_header*) #1

declare dso_local i32 @ext4_clear_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @ext4_mark_inode_dirty(i32*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
