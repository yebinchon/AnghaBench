; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386-tdep.c_i386_analyze_struct_return.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386-tdep.c_i386_analyze_struct_return.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i386_frame_cache = type { i32, i32 }

@i386_analyze_struct_return.proto1 = internal global [3 x i8] c"\87\04$", align 1
@i386_analyze_struct_return.proto2 = internal global [4 x i8] c"\87D$\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, %struct.i386_frame_cache*)* @i386_analyze_struct_return to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @i386_analyze_struct_return(i64 %0, i64 %1, %struct.i386_frame_cache* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.i386_frame_cache*, align 8
  %8 = alloca [4 x i8], align 1
  %9 = alloca i8, align 1
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.i386_frame_cache* %2, %struct.i386_frame_cache** %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp sle i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i64, i64* %5, align 8
  store i64 %14, i64* %4, align 8
  br label %69

15:                                               ; preds = %3
  %16 = load i64, i64* %5, align 8
  %17 = call zeroext i8 @read_memory_unsigned_integer(i64 %16, i32 1)
  store i8 %17, i8* %9, align 1
  %18 = load i8, i8* %9, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp ne i32 %19, 88
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i64, i64* %5, align 8
  store i64 %22, i64* %4, align 8
  br label %69

23:                                               ; preds = %15
  %24 = load i64, i64* %5, align 8
  %25 = add nsw i64 %24, 1
  %26 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %27 = call i32 @read_memory(i64 %25, i8* %26, i32 4)
  %28 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %29 = call i64 @memcmp(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @i386_analyze_struct_return.proto1, i64 0, i64 0), i32 3)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %23
  %32 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %33 = call i64 @memcmp(i8* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @i386_analyze_struct_return.proto2, i64 0, i64 0), i32 4)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i64, i64* %5, align 8
  store i64 %36, i64* %4, align 8
  br label %69

37:                                               ; preds = %31, %23
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %5, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load %struct.i386_frame_cache*, %struct.i386_frame_cache** %7, align 8
  %43 = getelementptr inbounds %struct.i386_frame_cache, %struct.i386_frame_cache* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 4
  store i32 %45, i32* %43, align 4
  %46 = load i64, i64* %6, align 8
  store i64 %46, i64* %4, align 8
  br label %69

47:                                               ; preds = %37
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* %5, align 8
  %50 = add nsw i64 %49, 1
  %51 = icmp eq i64 %48, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load %struct.i386_frame_cache*, %struct.i386_frame_cache** %7, align 8
  %54 = getelementptr inbounds %struct.i386_frame_cache, %struct.i386_frame_cache* %53, i32 0, i32 1
  store i32 1, i32* %54, align 4
  %55 = load i64, i64* %6, align 8
  store i64 %55, i64* %4, align 8
  br label %69

56:                                               ; preds = %47
  %57 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 1
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = load i8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @i386_analyze_struct_return.proto1, i64 0, i64 1), align 1
  %61 = zext i8 %60 to i32
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load i64, i64* %5, align 8
  %65 = add nsw i64 %64, 4
  store i64 %65, i64* %4, align 8
  br label %69

66:                                               ; preds = %56
  %67 = load i64, i64* %5, align 8
  %68 = add nsw i64 %67, 5
  store i64 %68, i64* %4, align 8
  br label %69

69:                                               ; preds = %66, %63, %52, %41, %35, %21, %13
  %70 = load i64, i64* %4, align 8
  ret i64 %70
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
