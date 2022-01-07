; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_util.h__ubh_isblockset_.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_util.h__ubh_isblockset_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_sb_private_info = type { i32 }
%struct.ufs_buffer_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ufs_sb_private_info*, %struct.ufs_buffer_head*, i32, i32)* @_ubh_isblockset_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ubh_isblockset_(%struct.ufs_sb_private_info* %0, %struct.ufs_buffer_head* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ufs_sb_private_info*, align 8
  %7 = alloca %struct.ufs_buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ufs_sb_private_info* %0, %struct.ufs_sb_private_info** %6, align 8
  store %struct.ufs_buffer_head* %1, %struct.ufs_buffer_head** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %6, align 8
  %11 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %63 [
    i32 8, label %13
    i32 4, label %22
    i32 2, label %36
    i32 1, label %50
  ]

13:                                               ; preds = %4
  %14 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = add i32 %15, %16
  %18 = call i32* @ubh_get_addr(%struct.ufs_buffer_head* %14, i32 %17)
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 255
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %5, align 4
  br label %64

22:                                               ; preds = %4
  %23 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = lshr i32 %25, 1
  %27 = add i32 %24, %26
  %28 = call i32* @ubh_get_addr(%struct.ufs_buffer_head* %23, i32 %27)
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %9, align 4
  %31 = and i32 %30, 1
  %32 = shl i32 %31, 2
  %33 = shl i32 15, %32
  %34 = icmp eq i32 %29, %33
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %5, align 4
  br label %64

36:                                               ; preds = %4
  %37 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = lshr i32 %39, 2
  %41 = add i32 %38, %40
  %42 = call i32* @ubh_get_addr(%struct.ufs_buffer_head* %37, i32 %41)
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %9, align 4
  %45 = and i32 %44, 3
  %46 = shl i32 %45, 1
  %47 = shl i32 3, %46
  %48 = icmp eq i32 %43, %47
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %5, align 4
  br label %64

50:                                               ; preds = %4
  %51 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = lshr i32 %53, 3
  %55 = add i32 %52, %54
  %56 = call i32* @ubh_get_addr(%struct.ufs_buffer_head* %51, i32 %55)
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %9, align 4
  %59 = and i32 %58, 7
  %60 = shl i32 1, %59
  %61 = icmp eq i32 %57, %60
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %5, align 4
  br label %64

63:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %63, %50, %36, %22, %13
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32* @ubh_get_addr(%struct.ufs_buffer_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
