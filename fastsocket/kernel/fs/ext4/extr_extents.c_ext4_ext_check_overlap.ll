; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_ext_check_overlap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_ext_check_overlap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_extent = type { i8*, i32 }
%struct.ext4_ext_path = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EXT_MAX_BLOCKS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_ext_check_overlap(%struct.inode* %0, %struct.ext4_extent* %1, %struct.ext4_ext_path* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.ext4_extent*, align 8
  %6 = alloca %struct.ext4_ext_path*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.ext4_extent* %1, %struct.ext4_extent** %5, align 8
  store %struct.ext4_ext_path* %2, %struct.ext4_ext_path** %6, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.ext4_extent*, %struct.ext4_extent** %5, align 8
  %13 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @le32_to_cpu(i32 %14)
  store i64 %15, i64* %7, align 8
  %16 = load %struct.ext4_extent*, %struct.ext4_extent** %5, align 8
  %17 = call i32 @ext4_ext_get_actual_len(%struct.ext4_extent* %16)
  store i32 %17, i32* %10, align 4
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = call i32 @ext_depth(%struct.inode* %18)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %21 = load i32, i32* %9, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %20, i64 %22
  %24 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = icmp ne %struct.TYPE_2__* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %3
  br label %81

28:                                               ; preds = %3
  %29 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %30 = load i32, i32* %9, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %29, i64 %31
  %33 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @le32_to_cpu(i32 %36)
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %28
  %42 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %6, align 8
  %43 = call i64 @ext4_ext_next_allocated_block(%struct.ext4_ext_path* %42)
  store i64 %43, i64* %8, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* @EXT_MAX_BLOCKS, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %81

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48, %28
  %50 = load i64, i64* %7, align 8
  %51 = load i32, i32* %10, align 4
  %52 = zext i32 %51 to i64
  %53 = add nsw i64 %50, %52
  %54 = load i64, i64* %7, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %49
  %57 = load i64, i64* @EXT_MAX_BLOCKS, align 8
  %58 = load i64, i64* %7, align 8
  %59 = sub nsw i64 %57, %58
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = zext i32 %61 to i64
  %63 = call i8* @cpu_to_le16(i64 %62)
  %64 = load %struct.ext4_extent*, %struct.ext4_extent** %5, align 8
  %65 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  store i32 1, i32* %11, align 4
  br label %66

66:                                               ; preds = %56, %49
  %67 = load i64, i64* %7, align 8
  %68 = load i32, i32* %10, align 4
  %69 = zext i32 %68 to i64
  %70 = add nsw i64 %67, %69
  %71 = load i64, i64* %8, align 8
  %72 = icmp sgt i64 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %66
  %74 = load i64, i64* %8, align 8
  %75 = load i64, i64* %7, align 8
  %76 = sub nsw i64 %74, %75
  %77 = call i8* @cpu_to_le16(i64 %76)
  %78 = load %struct.ext4_extent*, %struct.ext4_extent** %5, align 8
  %79 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %78, i32 0, i32 0
  store i8* %77, i8** %79, align 8
  store i32 1, i32* %11, align 4
  br label %80

80:                                               ; preds = %73, %66
  br label %81

81:                                               ; preds = %80, %47, %27
  %82 = load i32, i32* %11, align 4
  ret i32 %82
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @ext4_ext_get_actual_len(%struct.ext4_extent*) #1

declare dso_local i32 @ext_depth(%struct.inode*) #1

declare dso_local i64 @ext4_ext_next_allocated_block(%struct.ext4_ext_path*) #1

declare dso_local i8* @cpu_to_le16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
