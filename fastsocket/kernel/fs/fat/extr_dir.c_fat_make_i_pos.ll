; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_dir.c_fat_make_i_pos.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_dir.c_fat_make_i_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i64, i64 }
%struct.msdos_dir_entry = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.buffer_head*, %struct.msdos_dir_entry*)* @fat_make_i_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fat_make_i_pos(%struct.super_block* %0, %struct.buffer_head* %1, %struct.msdos_dir_entry* %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.msdos_dir_entry*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  store %struct.msdos_dir_entry* %2, %struct.msdos_dir_entry** %6, align 8
  %7 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %8 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = trunc i64 %9 to i32
  %11 = load %struct.super_block*, %struct.super_block** %4, align 8
  %12 = call %struct.TYPE_2__* @MSDOS_SB(%struct.super_block* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = shl i32 %10, %14
  %16 = sext i32 %15 to i64
  %17 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %6, align 8
  %18 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %19 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.msdos_dir_entry*
  %22 = ptrtoint %struct.msdos_dir_entry* %17 to i64
  %23 = ptrtoint %struct.msdos_dir_entry* %21 to i64
  %24 = sub i64 %22, %23
  %25 = sdiv exact i64 %24, 4
  %26 = or i64 %16, %25
  %27 = trunc i64 %26 to i32
  ret i32 %27
}

declare dso_local %struct.TYPE_2__* @MSDOS_SB(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
