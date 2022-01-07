; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_fatent.c_fat32_ent_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_fatent.c_fat32_ent_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fat_entry = type { i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@FAT_ENT_EOF = common dso_local global i32 0, align 4
@EOF_FAT32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fat_entry*, i32)* @fat32_ent_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fat32_ent_put(%struct.fat_entry* %0, i32 %1) #0 {
  %3 = alloca %struct.fat_entry*, align 8
  %4 = alloca i32, align 4
  store %struct.fat_entry* %0, %struct.fat_entry** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @FAT_ENT_EOF, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* @EOF_FAT32, align 4
  store i32 %9, i32* %4, align 4
  br label %10

10:                                               ; preds = %8, %2
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %11, -268435456
  %13 = call i32 @WARN_ON(i32 %12)
  %14 = load %struct.fat_entry*, %struct.fat_entry** %3, align 8
  %15 = getelementptr inbounds %struct.fat_entry, %struct.fat_entry* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @le32_to_cpu(i32 %18)
  %20 = and i32 %19, -268435456
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @cpu_to_le32(i32 %23)
  %25 = load %struct.fat_entry*, %struct.fat_entry** %3, align 8
  %26 = getelementptr inbounds %struct.fat_entry, %struct.fat_entry* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  store i32 %24, i32* %28, align 4
  %29 = load %struct.fat_entry*, %struct.fat_entry** %3, align 8
  %30 = getelementptr inbounds %struct.fat_entry, %struct.fat_entry* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.fat_entry*, %struct.fat_entry** %3, align 8
  %35 = getelementptr inbounds %struct.fat_entry, %struct.fat_entry* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @mark_buffer_dirty_inode(i32 %33, i32 %36)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @mark_buffer_dirty_inode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
