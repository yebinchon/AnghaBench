; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_util.h__ubh_clrblock_.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_util.h__ubh_clrblock_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_sb_private_info = type { i32 }
%struct.ufs_buffer_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ufs_sb_private_info*, %struct.ufs_buffer_head*, i32, i32)* @_ubh_clrblock_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ubh_clrblock_(%struct.ufs_sb_private_info* %0, %struct.ufs_buffer_head* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ufs_sb_private_info*, align 8
  %6 = alloca %struct.ufs_buffer_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ufs_sb_private_info* %0, %struct.ufs_sb_private_info** %5, align 8
  store %struct.ufs_buffer_head* %1, %struct.ufs_buffer_head** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %5, align 8
  %10 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %59 [
    i32 8, label %12
    i32 4, label %18
    i32 2, label %32
    i32 1, label %46
  ]

12:                                               ; preds = %4
  %13 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = add i32 %14, %15
  %17 = call i32* @ubh_get_addr(%struct.ufs_buffer_head* %13, i32 %16)
  store i32 0, i32* %17, align 4
  br label %59

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = and i32 %19, 1
  %21 = shl i32 %20, 2
  %22 = shl i32 15, %21
  %23 = xor i32 %22, -1
  %24 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = lshr i32 %26, 1
  %28 = add i32 %25, %27
  %29 = call i32* @ubh_get_addr(%struct.ufs_buffer_head* %24, i32 %28)
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %23
  store i32 %31, i32* %29, align 4
  br label %59

32:                                               ; preds = %4
  %33 = load i32, i32* %8, align 4
  %34 = and i32 %33, 3
  %35 = shl i32 %34, 1
  %36 = shl i32 3, %35
  %37 = xor i32 %36, -1
  %38 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = lshr i32 %40, 2
  %42 = add i32 %39, %41
  %43 = call i32* @ubh_get_addr(%struct.ufs_buffer_head* %38, i32 %42)
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %37
  store i32 %45, i32* %43, align 4
  br label %59

46:                                               ; preds = %4
  %47 = load i32, i32* %8, align 4
  %48 = and i32 %47, 7
  %49 = shl i32 1, %48
  %50 = xor i32 %49, -1
  %51 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = lshr i32 %53, 3
  %55 = add i32 %52, %54
  %56 = call i32* @ubh_get_addr(%struct.ufs_buffer_head* %51, i32 %55)
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, %50
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %12, %18, %32, %46, %4
  ret void
}

declare dso_local i32* @ubh_get_addr(%struct.ufs_buffer_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
