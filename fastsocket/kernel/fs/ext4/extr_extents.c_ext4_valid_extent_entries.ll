; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_valid_extent_entries.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_valid_extent_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_extent_header = type { i64 }
%struct.ext4_extent = type { i32 }
%struct.ext4_extent_idx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ext4_extent_header*, i32)* @ext4_valid_extent_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_valid_extent_entries(%struct.inode* %0, %struct.ext4_extent_header* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ext4_extent_header*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ext4_extent*, align 8
  %9 = alloca %struct.ext4_extent_idx*, align 8
  %10 = alloca i16, align 2
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.ext4_extent_header* %1, %struct.ext4_extent_header** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %6, align 8
  %12 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %60

16:                                               ; preds = %3
  %17 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %6, align 8
  %18 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call zeroext i16 @le16_to_cpu(i64 %19)
  store i16 %20, i16* %10, align 2
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %16
  %24 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %6, align 8
  %25 = call %struct.ext4_extent* @EXT_FIRST_EXTENT(%struct.ext4_extent_header* %24)
  store %struct.ext4_extent* %25, %struct.ext4_extent** %8, align 8
  br label %26

26:                                               ; preds = %35, %23
  %27 = load i16, i16* %10, align 2
  %28 = icmp ne i16 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = load %struct.inode*, %struct.inode** %5, align 8
  %31 = load %struct.ext4_extent*, %struct.ext4_extent** %8, align 8
  %32 = call i32 @ext4_valid_extent(%struct.inode* %30, %struct.ext4_extent* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %60

35:                                               ; preds = %29
  %36 = load %struct.ext4_extent*, %struct.ext4_extent** %8, align 8
  %37 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %36, i32 1
  store %struct.ext4_extent* %37, %struct.ext4_extent** %8, align 8
  %38 = load i16, i16* %10, align 2
  %39 = add i16 %38, -1
  store i16 %39, i16* %10, align 2
  br label %26

40:                                               ; preds = %26
  br label %59

41:                                               ; preds = %16
  %42 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %6, align 8
  %43 = call %struct.ext4_extent_idx* @EXT_FIRST_INDEX(%struct.ext4_extent_header* %42)
  store %struct.ext4_extent_idx* %43, %struct.ext4_extent_idx** %9, align 8
  br label %44

44:                                               ; preds = %53, %41
  %45 = load i16, i16* %10, align 2
  %46 = icmp ne i16 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %44
  %48 = load %struct.inode*, %struct.inode** %5, align 8
  %49 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %9, align 8
  %50 = call i32 @ext4_valid_extent_idx(%struct.inode* %48, %struct.ext4_extent_idx* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %60

53:                                               ; preds = %47
  %54 = load %struct.ext4_extent_idx*, %struct.ext4_extent_idx** %9, align 8
  %55 = getelementptr inbounds %struct.ext4_extent_idx, %struct.ext4_extent_idx* %54, i32 1
  store %struct.ext4_extent_idx* %55, %struct.ext4_extent_idx** %9, align 8
  %56 = load i16, i16* %10, align 2
  %57 = add i16 %56, -1
  store i16 %57, i16* %10, align 2
  br label %44

58:                                               ; preds = %44
  br label %59

59:                                               ; preds = %58, %40
  store i32 1, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %52, %34, %15
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local zeroext i16 @le16_to_cpu(i64) #1

declare dso_local %struct.ext4_extent* @EXT_FIRST_EXTENT(%struct.ext4_extent_header*) #1

declare dso_local i32 @ext4_valid_extent(%struct.inode*, %struct.ext4_extent*) #1

declare dso_local %struct.ext4_extent_idx* @EXT_FIRST_INDEX(%struct.ext4_extent_header*) #1

declare dso_local i32 @ext4_valid_extent_idx(%struct.inode*, %struct.ext4_extent_idx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
