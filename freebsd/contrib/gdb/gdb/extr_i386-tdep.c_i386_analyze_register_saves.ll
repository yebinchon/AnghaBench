; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386-tdep.c_i386_analyze_register_saves.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386-tdep.c_i386_analyze_register_saves.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i386_frame_cache = type { i64, i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, %struct.i386_frame_cache*)* @i386_analyze_register_saves to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @i386_analyze_register_saves(i64 %0, i64 %1, %struct.i386_frame_cache* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.i386_frame_cache*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.i386_frame_cache* %2, %struct.i386_frame_cache** %6, align 8
  store i64 0, i64* %7, align 8
  %10 = load %struct.i386_frame_cache*, %struct.i386_frame_cache** %6, align 8
  %11 = getelementptr inbounds %struct.i386_frame_cache, %struct.i386_frame_cache* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load %struct.i386_frame_cache*, %struct.i386_frame_cache** %6, align 8
  %16 = getelementptr inbounds %struct.i386_frame_cache, %struct.i386_frame_cache* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %7, align 8
  %19 = sub nsw i64 %18, %17
  store i64 %19, i64* %7, align 8
  br label %20

20:                                               ; preds = %14, %3
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %59, %20
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 8
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp slt i64 %25, %26
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi i1 [ false, %21 ], [ %27, %24 ]
  br i1 %29, label %30, label %62

30:                                               ; preds = %28
  %31 = load i64, i64* %4, align 8
  %32 = call zeroext i8 @read_memory_unsigned_integer(i64 %31, i32 1)
  store i8 %32, i8* %8, align 1
  %33 = load i8, i8* %8, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp slt i32 %34, 80
  br i1 %35, label %40, label %36

36:                                               ; preds = %30
  %37 = load i8, i8* %8, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp sgt i32 %38, 87
  br i1 %39, label %40, label %41

40:                                               ; preds = %36, %30
  br label %62

41:                                               ; preds = %36
  %42 = load i64, i64* %7, align 8
  %43 = sub nsw i64 %42, 4
  store i64 %43, i64* %7, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load %struct.i386_frame_cache*, %struct.i386_frame_cache** %6, align 8
  %46 = getelementptr inbounds %struct.i386_frame_cache, %struct.i386_frame_cache* %45, i32 0, i32 2
  %47 = load i64*, i64** %46, align 8
  %48 = load i8, i8* %8, align 1
  %49 = zext i8 %48 to i32
  %50 = sub nsw i32 %49, 80
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %47, i64 %51
  store i64 %44, i64* %52, align 8
  %53 = load %struct.i386_frame_cache*, %struct.i386_frame_cache** %6, align 8
  %54 = getelementptr inbounds %struct.i386_frame_cache, %struct.i386_frame_cache* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 4
  store i32 %56, i32* %54, align 8
  %57 = load i64, i64* %4, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %4, align 8
  br label %59

59:                                               ; preds = %41
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %21

62:                                               ; preds = %40, %28
  %63 = load i64, i64* %4, align 8
  ret i64 %63
}

declare dso_local zeroext i8 @read_memory_unsigned_integer(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
