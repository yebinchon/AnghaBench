; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_seq_file.c_seq_bitmap_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_seq_file.c_seq_bitmap_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seq_bitmap_list(%struct.seq_file* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %13 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %11, %14
  br i1 %15, label %16, label %52

16:                                               ; preds = %3
  %17 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %18 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %21 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %19, %22
  %24 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %25 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %28 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %26, %29
  %31 = load i64*, i64** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @bitmap_scnlistprintf(i64 %23, i64 %30, i64* %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %35 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %36, %38
  %40 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %41 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %39, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %16
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %48 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, %46
  store i64 %50, i64* %48, align 8
  store i32 0, i32* %4, align 4
  br label %58

51:                                               ; preds = %16
  br label %52

52:                                               ; preds = %51, %3
  %53 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %54 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %57 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  store i32 -1, i32* %4, align 4
  br label %58

58:                                               ; preds = %52, %44
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @bitmap_scnlistprintf(i64, i64, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
