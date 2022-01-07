; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_output_function_profiler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_output_function_profiler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@cfun = common dso_local global %struct.TYPE_2__* null, align 8
@TARGET_NO_PIC = common dso_local global i32 0, align 4
@TARGET_AUTO_PIC = common dso_local global i64 0, align 8
@STATIC_CHAIN_REGNUM = common dso_local global i32 0, align 4
@TARGET_GNU_AS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"\09.prologue 4, r40\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"\09.prologue\0A\09.save ar.pfs, r40\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"\09alloc out0 = ar.pfs, 8, 0, 4, 0\0A\00", align 1
@NO_PROFILE_COUNTERS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"\09mov out3 = r0\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"LP\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"\09movl out3 = @gprel(\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"\09addl out3 = @ltoff(\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"), r1\0A\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"\09addl r14 = @ltoff(@fptr(_mcount)), r1\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"\09;;\0A\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"\09.save rp, r42\0A\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"\09mov out2 = b0\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"\09ld8 r14 = [r14]\0A\09;;\0A\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"\09.body\0A\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"\09mov out1 = r1\0A\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"\09ld8 r16 = [r14], 8\0A\09;;\0A\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"\09mov b6 = r16\0A\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"\09ld8 r1 = [r14]\0A\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"\09br.call.sptk.many b0 = b6\0A\09;;\0A\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"\09br.call.sptk.many b0 = _mcount\0A\09;;\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ia64_output_function_profiler(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [20 x i8], align 16
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfun, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = load i32, i32* @TARGET_NO_PIC, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %11
  %15 = load i64, i64* @TARGET_AUTO_PIC, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* @STATIC_CHAIN_REGNUM, align 4
  %19 = icmp eq i32 %18, 15
  %20 = zext i1 %19 to i32
  %21 = call i32 @gcc_assert(i32 %20)
  store i32 1, i32* %5, align 4
  br label %23

22:                                               ; preds = %14, %11, %2
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %22, %17
  %24 = load i64, i64* @TARGET_GNU_AS, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @fputs(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %27)
  br label %32

29:                                               ; preds = %23
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @fputs(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32* %30)
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @fputs(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32* %33)
  %35 = load i64, i64* @NO_PROFILE_COUNTERS, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @fputs(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32* %38)
  br label %65

40:                                               ; preds = %32
  %41 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @ASM_GENERATE_INTERNAL_LABEL(i8* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %42)
  %44 = load i64, i64* @TARGET_AUTO_PIC, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @fputs(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32* %47)
  br label %52

49:                                               ; preds = %40
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @fputs(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32* %50)
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i32*, i32** %3, align 8
  %54 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %55 = call i32 @assemble_name(i32* %53, i8* %54)
  %56 = load i64, i64* @TARGET_AUTO_PIC, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32*, i32** %3, align 8
  %60 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32* %59)
  br label %64

61:                                               ; preds = %52
  %62 = load i32*, i32** %3, align 8
  %63 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32* %62)
  br label %64

64:                                               ; preds = %61, %58
  br label %65

65:                                               ; preds = %64, %37
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32*, i32** %3, align 8
  %70 = call i32 @fputs(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i32* %69)
  br label %71

71:                                               ; preds = %68, %65
  %72 = load i32*, i32** %3, align 8
  %73 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %72)
  %74 = load i32*, i32** %3, align 8
  %75 = call i32 @fputs(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32* %74)
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 @fputs(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i32* %76)
  %78 = load i32, i32* %5, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %71
  %81 = load i32*, i32** %3, align 8
  %82 = call i32 @fputs(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i32* %81)
  br label %83

83:                                               ; preds = %80, %71
  %84 = load i32*, i32** %3, align 8
  %85 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32* %84)
  %86 = load i32*, i32** %3, align 8
  %87 = call i32 @fputs(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i32* %86)
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %83
  %91 = load i32*, i32** %3, align 8
  %92 = call i32 @fputs(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32* %91)
  %93 = load i32*, i32** %3, align 8
  %94 = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i32* %93)
  %95 = load i32*, i32** %3, align 8
  %96 = call i32 @fputs(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i32* %95)
  %97 = load i32*, i32** %3, align 8
  %98 = call i32 @fputs(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i64 0, i64 0), i32* %97)
  br label %102

99:                                               ; preds = %83
  %100 = load i32*, i32** %3, align 8
  %101 = call i32 @fputs(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i64 0, i64 0), i32* %100)
  br label %102

102:                                              ; preds = %99, %90
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @ASM_GENERATE_INTERNAL_LABEL(i8*, i8*, i32) #1

declare dso_local i32 @assemble_name(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
