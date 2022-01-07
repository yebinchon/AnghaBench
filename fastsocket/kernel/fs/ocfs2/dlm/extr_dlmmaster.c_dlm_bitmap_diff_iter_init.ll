; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_bitmap_diff_iter_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_bitmap_diff_iter_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_bitmap_diff_iter = type { i32, i64*, i64*, i64* }

@O2NM_MAX_NODES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_bitmap_diff_iter*, i64*, i64*)* @dlm_bitmap_diff_iter_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dlm_bitmap_diff_iter_init(%struct.dlm_bitmap_diff_iter* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.dlm_bitmap_diff_iter*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.dlm_bitmap_diff_iter* %0, %struct.dlm_bitmap_diff_iter** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %10 = load %struct.dlm_bitmap_diff_iter*, %struct.dlm_bitmap_diff_iter** %4, align 8
  %11 = getelementptr inbounds %struct.dlm_bitmap_diff_iter, %struct.dlm_bitmap_diff_iter* %10, i32 0, i32 0
  store i32 -1, i32* %11, align 8
  %12 = load i64*, i64** %5, align 8
  %13 = load %struct.dlm_bitmap_diff_iter*, %struct.dlm_bitmap_diff_iter** %4, align 8
  %14 = getelementptr inbounds %struct.dlm_bitmap_diff_iter, %struct.dlm_bitmap_diff_iter* %13, i32 0, i32 1
  store i64* %12, i64** %14, align 8
  %15 = load i64*, i64** %6, align 8
  %16 = load %struct.dlm_bitmap_diff_iter*, %struct.dlm_bitmap_diff_iter** %4, align 8
  %17 = getelementptr inbounds %struct.dlm_bitmap_diff_iter, %struct.dlm_bitmap_diff_iter* %16, i32 0, i32 2
  store i64* %15, i64** %17, align 8
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %53, %3
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @O2NM_MAX_NODES, align 4
  %21 = call i32 @BITS_TO_LONGS(i32 %20)
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %56

23:                                               ; preds = %18
  %24 = load %struct.dlm_bitmap_diff_iter*, %struct.dlm_bitmap_diff_iter** %4, align 8
  %25 = getelementptr inbounds %struct.dlm_bitmap_diff_iter, %struct.dlm_bitmap_diff_iter* %24, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %7, align 8
  %31 = load %struct.dlm_bitmap_diff_iter*, %struct.dlm_bitmap_diff_iter** %4, align 8
  %32 = getelementptr inbounds %struct.dlm_bitmap_diff_iter, %struct.dlm_bitmap_diff_iter* %31, i32 0, i32 2
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %8, align 8
  %40 = xor i64 %39, -1
  %41 = and i64 %38, %40
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* %7, align 8
  %44 = xor i64 %43, -1
  %45 = and i64 %42, %44
  %46 = or i64 %41, %45
  %47 = load %struct.dlm_bitmap_diff_iter*, %struct.dlm_bitmap_diff_iter** %4, align 8
  %48 = getelementptr inbounds %struct.dlm_bitmap_diff_iter, %struct.dlm_bitmap_diff_iter* %47, i32 0, i32 3
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  store i64 %46, i64* %52, align 8
  br label %53

53:                                               ; preds = %23
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %18

56:                                               ; preds = %18
  ret void
}

declare dso_local i32 @BITS_TO_LONGS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
