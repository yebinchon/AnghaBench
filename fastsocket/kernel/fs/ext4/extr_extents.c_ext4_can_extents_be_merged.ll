; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_can_extents_be_merged.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c_ext4_can_extents_be_merged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_extent = type { i32 }

@EXT_UNINIT_MAX_LEN = common dso_local global i16 0, align 2
@EXT_INIT_MAX_LEN = common dso_local global i16 0, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_can_extents_be_merged(%struct.inode* %0, %struct.ext4_extent* %1, %struct.ext4_extent* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ext4_extent*, align 8
  %7 = alloca %struct.ext4_extent*, align 8
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.ext4_extent* %1, %struct.ext4_extent** %6, align 8
  store %struct.ext4_extent* %2, %struct.ext4_extent** %7, align 8
  %11 = load %struct.ext4_extent*, %struct.ext4_extent** %6, align 8
  %12 = call i32 @ext4_ext_is_uninitialized(%struct.ext4_extent* %11)
  %13 = load %struct.ext4_extent*, %struct.ext4_extent** %7, align 8
  %14 = call i32 @ext4_ext_is_uninitialized(%struct.ext4_extent* %13)
  %15 = xor i32 %12, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %65

18:                                               ; preds = %3
  %19 = load %struct.ext4_extent*, %struct.ext4_extent** %6, align 8
  %20 = call i32 @ext4_ext_is_uninitialized(%struct.ext4_extent* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i16, i16* @EXT_UNINIT_MAX_LEN, align 2
  store i16 %23, i16* %10, align 2
  br label %26

24:                                               ; preds = %18
  %25 = load i16, i16* @EXT_INIT_MAX_LEN, align 2
  store i16 %25, i16* %10, align 2
  br label %26

26:                                               ; preds = %24, %22
  %27 = load %struct.ext4_extent*, %struct.ext4_extent** %6, align 8
  %28 = call zeroext i16 @ext4_ext_get_actual_len(%struct.ext4_extent* %27)
  store i16 %28, i16* %8, align 2
  %29 = load %struct.ext4_extent*, %struct.ext4_extent** %7, align 8
  %30 = call zeroext i16 @ext4_ext_get_actual_len(%struct.ext4_extent* %29)
  store i16 %30, i16* %9, align 2
  %31 = load %struct.ext4_extent*, %struct.ext4_extent** %6, align 8
  %32 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @le32_to_cpu(i32 %33)
  %35 = load i16, i16* %8, align 2
  %36 = zext i16 %35 to i64
  %37 = add nsw i64 %34, %36
  %38 = load %struct.ext4_extent*, %struct.ext4_extent** %7, align 8
  %39 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @le32_to_cpu(i32 %40)
  %42 = icmp ne i64 %37, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %65

44:                                               ; preds = %26
  %45 = load i16, i16* %8, align 2
  %46 = zext i16 %45 to i32
  %47 = load i16, i16* %9, align 2
  %48 = zext i16 %47 to i32
  %49 = add nsw i32 %46, %48
  %50 = load i16, i16* %10, align 2
  %51 = zext i16 %50 to i32
  %52 = icmp sgt i32 %49, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %65

54:                                               ; preds = %44
  %55 = load %struct.ext4_extent*, %struct.ext4_extent** %6, align 8
  %56 = call i64 @ext4_ext_pblock(%struct.ext4_extent* %55)
  %57 = load i16, i16* %8, align 2
  %58 = zext i16 %57 to i64
  %59 = add nsw i64 %56, %58
  %60 = load %struct.ext4_extent*, %struct.ext4_extent** %7, align 8
  %61 = call i64 @ext4_ext_pblock(%struct.ext4_extent* %60)
  %62 = icmp eq i64 %59, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  store i32 1, i32* %4, align 4
  br label %65

64:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %63, %53, %43, %17
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @ext4_ext_is_uninitialized(%struct.ext4_extent*) #1

declare dso_local zeroext i16 @ext4_ext_get_actual_len(%struct.ext4_extent*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @ext4_ext_pblock(%struct.ext4_extent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
