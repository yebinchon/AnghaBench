; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_super.c_hpfs_count_one_bitmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_super.c_hpfs_count_one_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.quad_buffer_head = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hpfs_count_one_bitmap(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.quad_buffer_head, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.super_block*, %struct.super_block** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32* @hpfs_map_4sectors(%struct.super_block* %11, i32 %12, %struct.quad_buffer_head* %6, i32 4)
  store i32* %13, i32** %7, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %53

16:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %47, %16
  %18 = load i32, i32* %8, align 4
  %19 = zext i32 %18 to i64
  %20 = icmp ult i64 %19, 512
  br i1 %20, label %21, label %50

21:                                               ; preds = %17
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  br label %47

29:                                               ; preds = %21
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %43, %29
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load i32, i32* %10, align 4
  %40 = and i32 %39, 1
  %41 = load i32, i32* %9, align 4
  %42 = add i32 %41, %40
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %38
  %44 = load i32, i32* %10, align 4
  %45 = lshr i32 %44, 1
  store i32 %45, i32* %10, align 4
  br label %35

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %46, %28
  %48 = load i32, i32* %8, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %17

50:                                               ; preds = %17
  %51 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %6)
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %50, %15
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32* @hpfs_map_4sectors(%struct.super_block*, i32, %struct.quad_buffer_head*, i32) #1

declare dso_local i32 @hpfs_brelse4(%struct.quad_buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
