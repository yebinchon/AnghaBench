; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_amd64-tdep.c_amd64_analyze_prologue.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_amd64-tdep.c_amd64_analyze_prologue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd64_frame_cache = type { i32, i64, i64* }

@amd64_analyze_prologue.proto = internal global [3 x i8] c"H\89\E5", align 1
@AMD64_RBP_REGNUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, %struct.amd64_frame_cache*)* @amd64_analyze_prologue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @amd64_analyze_prologue(i64 %0, i64 %1, %struct.amd64_frame_cache* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.amd64_frame_cache*, align 8
  %8 = alloca [3 x i8], align 1
  %9 = alloca i8, align 1
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.amd64_frame_cache* %2, %struct.amd64_frame_cache** %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp sle i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  store i64 %14, i64* %4, align 8
  br label %55

15:                                               ; preds = %3
  %16 = load i64, i64* %5, align 8
  %17 = call zeroext i8 @read_memory_unsigned_integer(i64 %16, i32 1)
  store i8 %17, i8* %9, align 1
  %18 = load i8, i8* %9, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp eq i32 %19, 85
  br i1 %20, label %21, label %53

21:                                               ; preds = %15
  %22 = load %struct.amd64_frame_cache*, %struct.amd64_frame_cache** %7, align 8
  %23 = getelementptr inbounds %struct.amd64_frame_cache, %struct.amd64_frame_cache* %22, i32 0, i32 2
  %24 = load i64*, i64** %23, align 8
  %25 = load i64, i64* @AMD64_RBP_REGNUM, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  store i64 0, i64* %26, align 8
  %27 = load %struct.amd64_frame_cache*, %struct.amd64_frame_cache** %7, align 8
  %28 = getelementptr inbounds %struct.amd64_frame_cache, %struct.amd64_frame_cache* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 8
  store i32 %30, i32* %28, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %5, align 8
  %33 = add nsw i64 %32, 1
  %34 = icmp sle i64 %31, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %21
  %36 = load i64, i64* %6, align 8
  store i64 %36, i64* %4, align 8
  br label %55

37:                                               ; preds = %21
  %38 = load i64, i64* %5, align 8
  %39 = add nsw i64 %38, 1
  %40 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 0
  %41 = call i32 @read_memory(i64 %39, i8* %40, i32 3)
  %42 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 0
  %43 = call i64 @memcmp(i8* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @amd64_analyze_prologue.proto, i64 0, i64 0), i32 3)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i64, i64* %5, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %4, align 8
  br label %55

48:                                               ; preds = %37
  %49 = load %struct.amd64_frame_cache*, %struct.amd64_frame_cache** %7, align 8
  %50 = getelementptr inbounds %struct.amd64_frame_cache, %struct.amd64_frame_cache* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  %51 = load i64, i64* %5, align 8
  %52 = add nsw i64 %51, 4
  store i64 %52, i64* %4, align 8
  br label %55

53:                                               ; preds = %15
  %54 = load i64, i64* %5, align 8
  store i64 %54, i64* %4, align 8
  br label %55

55:                                               ; preds = %53, %48, %45, %35, %13
  %56 = load i64, i64* %4, align 8
  ret i64 %56
}

declare dso_local zeroext i8 @read_memory_unsigned_integer(i64, i32) #1

declare dso_local i32 @read_memory(i64, i8*, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
