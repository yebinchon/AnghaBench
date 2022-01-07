; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_fatent.c_fat12_ent_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_fatent.c_fat12_ent_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fat_entry = type { i32, i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32** }

@FAT_ENT_EOF = common dso_local global i32 0, align 4
@EOF_FAT12 = common dso_local global i32 0, align 4
@fat12_entry_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fat_entry*, i32)* @fat12_ent_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fat12_ent_put(%struct.fat_entry* %0, i32 %1) #0 {
  %3 = alloca %struct.fat_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  store %struct.fat_entry* %0, %struct.fat_entry** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.fat_entry*, %struct.fat_entry** %3, align 8
  %7 = getelementptr inbounds %struct.fat_entry, %struct.fat_entry* %6, i32 0, i32 4
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32**, i32*** %8, align 8
  store i32** %9, i32*** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @FAT_ENT_EOF, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @EOF_FAT12, align 4
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %13, %2
  %16 = call i32 @spin_lock(i32* @fat12_entry_lock)
  %17 = load %struct.fat_entry*, %struct.fat_entry** %3, align 8
  %18 = getelementptr inbounds %struct.fat_entry, %struct.fat_entry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, 1
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %15
  %23 = load i32, i32* %4, align 4
  %24 = shl i32 %23, 4
  %25 = load i32**, i32*** %5, align 8
  %26 = getelementptr inbounds i32*, i32** %25, i64 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 15
  %30 = or i32 %24, %29
  %31 = load i32**, i32*** %5, align 8
  %32 = getelementptr inbounds i32*, i32** %31, i64 0
  %33 = load i32*, i32** %32, align 8
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* %4, align 4
  %35 = ashr i32 %34, 4
  %36 = load i32**, i32*** %5, align 8
  %37 = getelementptr inbounds i32*, i32** %36, i64 1
  %38 = load i32*, i32** %37, align 8
  store i32 %35, i32* %38, align 4
  br label %56

39:                                               ; preds = %15
  %40 = load i32, i32* %4, align 4
  %41 = and i32 %40, 255
  %42 = load i32**, i32*** %5, align 8
  %43 = getelementptr inbounds i32*, i32** %42, i64 0
  %44 = load i32*, i32** %43, align 8
  store i32 %41, i32* %44, align 4
  %45 = load i32**, i32*** %5, align 8
  %46 = getelementptr inbounds i32*, i32** %45, i64 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 240
  %50 = load i32, i32* %4, align 4
  %51 = ashr i32 %50, 8
  %52 = or i32 %49, %51
  %53 = load i32**, i32*** %5, align 8
  %54 = getelementptr inbounds i32*, i32** %53, i64 1
  %55 = load i32*, i32** %54, align 8
  store i32 %52, i32* %55, align 4
  br label %56

56:                                               ; preds = %39, %22
  %57 = call i32 @spin_unlock(i32* @fat12_entry_lock)
  %58 = load %struct.fat_entry*, %struct.fat_entry** %3, align 8
  %59 = getelementptr inbounds %struct.fat_entry, %struct.fat_entry* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.fat_entry*, %struct.fat_entry** %3, align 8
  %64 = getelementptr inbounds %struct.fat_entry, %struct.fat_entry* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @mark_buffer_dirty_inode(i32 %62, i32 %65)
  %67 = load %struct.fat_entry*, %struct.fat_entry** %3, align 8
  %68 = getelementptr inbounds %struct.fat_entry, %struct.fat_entry* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 2
  br i1 %70, label %71, label %81

71:                                               ; preds = %56
  %72 = load %struct.fat_entry*, %struct.fat_entry** %3, align 8
  %73 = getelementptr inbounds %struct.fat_entry, %struct.fat_entry* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.fat_entry*, %struct.fat_entry** %3, align 8
  %78 = getelementptr inbounds %struct.fat_entry, %struct.fat_entry* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @mark_buffer_dirty_inode(i32 %76, i32 %79)
  br label %81

81:                                               ; preds = %71, %56
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mark_buffer_dirty_inode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
