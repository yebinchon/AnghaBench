; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_super.c_udf_sb_free_bitmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_super.c_udf_sb_free_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udf_bitmap = type { i32, i64* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.udf_bitmap*)* @udf_sb_free_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udf_sb_free_bitmap(%struct.udf_bitmap* %0) #0 {
  %2 = alloca %struct.udf_bitmap*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.udf_bitmap* %0, %struct.udf_bitmap** %2, align 8
  %6 = load %struct.udf_bitmap*, %struct.udf_bitmap** %2, align 8
  %7 = getelementptr inbounds %struct.udf_bitmap, %struct.udf_bitmap* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 8, %10
  %12 = add i64 16, %11
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %37, %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %40

18:                                               ; preds = %14
  %19 = load %struct.udf_bitmap*, %struct.udf_bitmap** %2, align 8
  %20 = getelementptr inbounds %struct.udf_bitmap, %struct.udf_bitmap* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %18
  %28 = load %struct.udf_bitmap*, %struct.udf_bitmap** %2, align 8
  %29 = getelementptr inbounds %struct.udf_bitmap, %struct.udf_bitmap* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @brelse(i64 %34)
  br label %36

36:                                               ; preds = %27, %18
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %14

40:                                               ; preds = %14
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @PAGE_SIZE, align 4
  %43 = icmp sle i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load %struct.udf_bitmap*, %struct.udf_bitmap** %2, align 8
  %46 = call i32 @kfree(%struct.udf_bitmap* %45)
  br label %50

47:                                               ; preds = %40
  %48 = load %struct.udf_bitmap*, %struct.udf_bitmap** %2, align 8
  %49 = call i32 @vfree(%struct.udf_bitmap* %48)
  br label %50

50:                                               ; preds = %47, %44
  ret void
}

declare dso_local i32 @brelse(i64) #1

declare dso_local i32 @kfree(%struct.udf_bitmap*) #1

declare dso_local i32 @vfree(%struct.udf_bitmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
