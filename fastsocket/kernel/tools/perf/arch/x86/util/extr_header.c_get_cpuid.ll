; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/arch/x86/util/extr_header.c_get_cpuid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/arch/x86/util/extr_header.c_get_cpuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"%s,%u,%u,%u$\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_cpuid(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [16 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 -1, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  %16 = call i32 @cpuid(i32 0, i32* %10, i32* %7, i32* %8, i32* %9)
  %17 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  %18 = bitcast i32* %7 to i8*
  %19 = call i32 @strncpy(i8* %17, i8* %18, i32 4)
  %20 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 4
  %21 = bitcast i32* %9 to i8*
  %22 = call i32 @strncpy(i8* %20, i8* %21, i32 4)
  %23 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 8
  %24 = bitcast i32* %8 to i8*
  %25 = call i32 @strncpy(i8* %23, i8* %24, i32 4)
  %26 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 12
  store i8 0, i8* %26, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp uge i32 %27, 1
  br i1 %28, label %29, label %58

29:                                               ; preds = %2
  %30 = call i32 @cpuid(i32 1, i32* %6, i32* %7, i32* %8, i32* %9)
  %31 = load i32, i32* %6, align 4
  %32 = lshr i32 %31, 8
  %33 = and i32 %32, 15
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %6, align 4
  %35 = lshr i32 %34, 4
  %36 = and i32 %35, 15
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %37, 15
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp eq i32 %39, 15
  br i1 %40, label %41, label %47

41:                                               ; preds = %29
  %42 = load i32, i32* %6, align 4
  %43 = lshr i32 %42, 20
  %44 = and i32 %43, 255
  %45 = load i32, i32* %11, align 4
  %46 = add i32 %45, %44
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %41, %29
  %48 = load i32, i32* %11, align 4
  %49 = icmp sge i32 %48, 6
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load i32, i32* %6, align 4
  %52 = lshr i32 %51, 16
  %53 = and i32 %52, 15
  %54 = shl i32 %53, 4
  %55 = load i32, i32* %12, align 4
  %56 = add i32 %55, %54
  store i32 %56, i32* %12, align 4
  br label %57

57:                                               ; preds = %50, %47
  br label %58

58:                                               ; preds = %57, %2
  %59 = load i8*, i8** %4, align 8
  %60 = load i64, i64* %5, align 8
  %61 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @scnprintf(i8* %59, i64 %60, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %61, i32 %62, i32 %63, i32 %64)
  store i32 %65, i32* %14, align 4
  %66 = load i8*, i8** %4, align 8
  %67 = call i64 @strchr(i8* %66, i8 signext 36)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %58
  %70 = load i8*, i8** %4, align 8
  %71 = load i32, i32* %14, align 4
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %70, i64 %73
  store i8 0, i8* %74, align 1
  store i32 0, i32* %3, align 4
  br label %76

75:                                               ; preds = %58
  store i32 -1, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %69
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @cpuid(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @scnprintf(i8*, i64, i8*, i8*, i32, i32, i32) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
