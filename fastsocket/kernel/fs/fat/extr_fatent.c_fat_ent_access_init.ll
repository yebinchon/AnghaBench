; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_fatent.c_fat_ent_access_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_fatent.c_fat_ent_access_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.msdos_sb_info = type { i32, i32, i32*, i32 }

@fat32_ops = common dso_local global i32 0, align 4
@fat16_ops = common dso_local global i32 0, align 4
@fat12_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fat_ent_access_init(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.msdos_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %4 = load %struct.super_block*, %struct.super_block** %2, align 8
  %5 = call %struct.msdos_sb_info* @MSDOS_SB(%struct.super_block* %4)
  store %struct.msdos_sb_info* %5, %struct.msdos_sb_info** %3, align 8
  %6 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %3, align 8
  %7 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %6, i32 0, i32 3
  %8 = call i32 @mutex_init(i32* %7)
  %9 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %3, align 8
  %10 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %27 [
    i32 32, label %12
    i32 16, label %17
    i32 12, label %22
  ]

12:                                               ; preds = %1
  %13 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %3, align 8
  %14 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %13, i32 0, i32 1
  store i32 2, i32* %14, align 4
  %15 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %3, align 8
  %16 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %15, i32 0, i32 2
  store i32* @fat32_ops, i32** %16, align 8
  br label %27

17:                                               ; preds = %1
  %18 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %3, align 8
  %19 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %18, i32 0, i32 1
  store i32 1, i32* %19, align 4
  %20 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %3, align 8
  %21 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %20, i32 0, i32 2
  store i32* @fat16_ops, i32** %21, align 8
  br label %27

22:                                               ; preds = %1
  %23 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %3, align 8
  %24 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %23, i32 0, i32 1
  store i32 -1, i32* %24, align 4
  %25 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %3, align 8
  %26 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %25, i32 0, i32 2
  store i32* @fat12_ops, i32** %26, align 8
  br label %27

27:                                               ; preds = %1, %22, %17, %12
  ret void
}

declare dso_local %struct.msdos_sb_info* @MSDOS_SB(%struct.super_block*) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
