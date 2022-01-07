; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_fatent.c_fat_ent_update_ptr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_fatent.c_fat_ent_update_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.fat_entry = type { i32, %struct.buffer_head** }
%struct.buffer_head = type { i64 }
%struct.msdos_sb_info = type { i32, %struct.fatent_operations* }
%struct.fatent_operations = type { i32 (%struct.fat_entry.0*, i32)* }
%struct.fat_entry.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.fat_entry*, i32, i64)* @fat_ent_update_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fat_ent_update_ptr(%struct.super_block* %0, %struct.fat_entry* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.fat_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.msdos_sb_info*, align 8
  %11 = alloca %struct.fatent_operations*, align 8
  %12 = alloca %struct.buffer_head**, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.fat_entry* %1, %struct.fat_entry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %13 = load %struct.super_block*, %struct.super_block** %6, align 8
  %14 = call %struct.msdos_sb_info* @MSDOS_SB(%struct.super_block* %13)
  store %struct.msdos_sb_info* %14, %struct.msdos_sb_info** %10, align 8
  %15 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %10, align 8
  %16 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %15, i32 0, i32 1
  %17 = load %struct.fatent_operations*, %struct.fatent_operations** %16, align 8
  store %struct.fatent_operations* %17, %struct.fatent_operations** %11, align 8
  %18 = load %struct.fat_entry*, %struct.fat_entry** %7, align 8
  %19 = getelementptr inbounds %struct.fat_entry, %struct.fat_entry* %18, i32 0, i32 1
  %20 = load %struct.buffer_head**, %struct.buffer_head*** %19, align 8
  store %struct.buffer_head** %20, %struct.buffer_head*** %12, align 8
  %21 = load %struct.fat_entry*, %struct.fat_entry** %7, align 8
  %22 = getelementptr inbounds %struct.fat_entry, %struct.fat_entry* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %4
  %26 = load %struct.buffer_head**, %struct.buffer_head*** %12, align 8
  %27 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %26, i64 0
  %28 = load %struct.buffer_head*, %struct.buffer_head** %27, align 8
  %29 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %9, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25, %4
  store i32 0, i32* %5, align 4
  br label %85

34:                                               ; preds = %25
  %35 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %10, align 8
  %36 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 12
  br i1 %38, label %39, label %77

39:                                               ; preds = %34
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  %42 = load %struct.super_block*, %struct.super_block** %6, align 8
  %43 = getelementptr inbounds %struct.super_block, %struct.super_block* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %59

46:                                               ; preds = %39
  %47 = load %struct.fat_entry*, %struct.fat_entry** %7, align 8
  %48 = getelementptr inbounds %struct.fat_entry, %struct.fat_entry* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load %struct.buffer_head**, %struct.buffer_head*** %12, align 8
  %53 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %52, i64 1
  %54 = load %struct.buffer_head*, %struct.buffer_head** %53, align 8
  %55 = call i32 @brelse(%struct.buffer_head* %54)
  %56 = load %struct.fat_entry*, %struct.fat_entry** %7, align 8
  %57 = getelementptr inbounds %struct.fat_entry, %struct.fat_entry* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  br label %58

58:                                               ; preds = %51, %46
  br label %76

59:                                               ; preds = %39
  %60 = load %struct.fat_entry*, %struct.fat_entry** %7, align 8
  %61 = getelementptr inbounds %struct.fat_entry, %struct.fat_entry* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 2
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i32 0, i32* %5, align 4
  br label %85

65:                                               ; preds = %59
  %66 = load %struct.buffer_head**, %struct.buffer_head*** %12, align 8
  %67 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %66, i64 1
  %68 = load %struct.buffer_head*, %struct.buffer_head** %67, align 8
  %69 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %9, align 8
  %72 = add nsw i64 %71, 1
  %73 = icmp ne i64 %70, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %65
  store i32 0, i32* %5, align 4
  br label %85

75:                                               ; preds = %65
  br label %76

76:                                               ; preds = %75, %58
  br label %77

77:                                               ; preds = %76, %34
  %78 = load %struct.fatent_operations*, %struct.fatent_operations** %11, align 8
  %79 = getelementptr inbounds %struct.fatent_operations, %struct.fatent_operations* %78, i32 0, i32 0
  %80 = load i32 (%struct.fat_entry.0*, i32)*, i32 (%struct.fat_entry.0*, i32)** %79, align 8
  %81 = load %struct.fat_entry*, %struct.fat_entry** %7, align 8
  %82 = bitcast %struct.fat_entry* %81 to %struct.fat_entry.0*
  %83 = load i32, i32* %8, align 4
  %84 = call i32 %80(%struct.fat_entry.0* %82, i32 %83)
  store i32 1, i32* %5, align 4
  br label %85

85:                                               ; preds = %77, %74, %64, %33
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local %struct.msdos_sb_info* @MSDOS_SB(%struct.super_block*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
