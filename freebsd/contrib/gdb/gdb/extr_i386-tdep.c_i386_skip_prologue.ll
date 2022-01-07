; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386-tdep.c_i386_skip_prologue.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386-tdep.c_i386_skip_prologue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i386_frame_cache = type { i32 }

@i386_skip_prologue.pic_pat = internal global [6 x i8] c"\E8\00\00\00\00[", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @i386_skip_prologue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @i386_skip_prologue(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.i386_frame_cache, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %9 = getelementptr inbounds %struct.i386_frame_cache, %struct.i386_frame_cache* %4, i32 0, i32 0
  store i32 -1, i32* %9, align 4
  %10 = load i64, i64* %3, align 8
  %11 = call i64 @i386_analyze_prologue(i64 %10, i32 -1, %struct.i386_frame_cache* %4)
  store i64 %11, i64* %5, align 8
  %12 = getelementptr inbounds %struct.i386_frame_cache, %struct.i386_frame_cache* %4, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i64, i64* %3, align 8
  store i64 %16, i64* %2, align 8
  br label %109

17:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %38, %17
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 6
  br i1 %20, label %21, label %41

21:                                               ; preds = %18
  %22 = load i64, i64* %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %22, %24
  %26 = call i32 @read_memory_unsigned_integer(i64 %25, i32 1)
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %6, align 1
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [6 x i8], [6 x i8]* @i386_skip_prologue.pic_pat, i64 0, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = load i8, i8* %6, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp ne i32 %32, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %21
  br label %41

37:                                               ; preds = %21
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %18

41:                                               ; preds = %36, %18
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %42, 6
  br i1 %43, label %44, label %106

44:                                               ; preds = %41
  store i32 6, i32* %8, align 4
  %45 = load i64, i64* %5, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %45, %47
  %49 = call i32 @read_memory_unsigned_integer(i64 %48, i32 1)
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* %6, align 1
  %51 = load i8, i8* %6, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp eq i32 %52, 137
  br i1 %53, label %54, label %84

54:                                               ; preds = %44
  %55 = load i64, i64* %5, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %55, %57
  %59 = add nsw i64 %58, 1
  %60 = call i32 @read_memory_unsigned_integer(i64 %59, i32 1)
  %61 = trunc i32 %60 to i8
  store i8 %61, i8* %6, align 1
  %62 = load i8, i8* %6, align 1
  %63 = zext i8 %62 to i32
  %64 = icmp eq i32 %63, 93
  br i1 %64, label %65, label %68

65:                                               ; preds = %54
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 3
  store i32 %67, i32* %8, align 4
  br label %77

68:                                               ; preds = %54
  %69 = load i8, i8* %6, align 1
  %70 = zext i8 %69 to i32
  %71 = icmp eq i32 %70, 157
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 6
  store i32 %74, i32* %8, align 4
  br label %76

75:                                               ; preds = %68
  store i32 0, i32* %8, align 4
  br label %76

76:                                               ; preds = %75, %72
  br label %77

77:                                               ; preds = %76, %65
  %78 = load i64, i64* %5, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %78, %80
  %82 = call i32 @read_memory_unsigned_integer(i64 %81, i32 1)
  %83 = trunc i32 %82 to i8
  store i8 %83, i8* %6, align 1
  br label %84

84:                                               ; preds = %77, %44
  %85 = load i32, i32* %8, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %105

87:                                               ; preds = %84
  %88 = load i8, i8* %6, align 1
  %89 = zext i8 %88 to i32
  %90 = icmp eq i32 %89, 129
  br i1 %90, label %91, label %105

91:                                               ; preds = %87
  %92 = load i64, i64* %5, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %92, %94
  %96 = add nsw i64 %95, 1
  %97 = call i32 @read_memory_unsigned_integer(i64 %96, i32 1)
  %98 = icmp eq i32 %97, 195
  br i1 %98, label %99, label %105

99:                                               ; preds = %91
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 6
  %102 = sext i32 %101 to i64
  %103 = load i64, i64* %5, align 8
  %104 = add nsw i64 %103, %102
  store i64 %104, i64* %5, align 8
  br label %105

105:                                              ; preds = %99, %91, %87, %84
  br label %106

106:                                              ; preds = %105, %41
  %107 = load i64, i64* %5, align 8
  %108 = call i64 @i386_follow_jump(i64 %107)
  store i64 %108, i64* %2, align 8
  br label %109

109:                                              ; preds = %106, %15
  %110 = load i64, i64* %2, align 8
  ret i64 %110
}

declare dso_local i64 @i386_analyze_prologue(i64, i32, %struct.i386_frame_cache*) #1

declare dso_local i32 @read_memory_unsigned_integer(i64, i32) #1

declare dso_local i64 @i386_follow_jump(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
