; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/addr2line/extr_addr2line.c_print_inlines.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/addr2line/extr_addr2line.c_print_inlines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CU = type { i64, i8** }
%struct.Func = type { i8*, i32, i32, %struct.Func* }

@unknown = common dso_local global i8* null, align 8
@pretty_print = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c" (inlined by) \00", align 1
@func = common dso_local global i64 0, align 8
@demangle = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"%s at \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%s:%ju\0A\00", align 1
@base = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.CU*, %struct.Func*, i32, i32)* @print_inlines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_inlines(%struct.CU* %0, %struct.Func* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.CU*, align 8
  %6 = alloca %struct.Func*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [1024 x i8], align 16
  %10 = alloca i8*, align 8
  store %struct.CU* %0, %struct.CU** %5, align 8
  store %struct.Func* %1, %struct.Func** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %4
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = load %struct.CU*, %struct.CU** %5, align 8
  %17 = getelementptr inbounds %struct.CU, %struct.CU* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sle i64 %15, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %13
  %21 = load %struct.CU*, %struct.CU** %5, align 8
  %22 = getelementptr inbounds %struct.CU, %struct.CU* %21, i32 0, i32 1
  %23 = load i8**, i8*** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %23, i64 %26
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %10, align 8
  br label %31

29:                                               ; preds = %13, %4
  %30 = load i8*, i8** @unknown, align 8
  store i8* %30, i8** %10, align 8
  br label %31

31:                                               ; preds = %29, %20
  %32 = load i64, i64* @pretty_print, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %31
  %37 = load i64, i64* @func, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %74

39:                                               ; preds = %36
  %40 = load i64, i64* @demangle, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %39
  %43 = load %struct.Func*, %struct.Func** %6, align 8
  %44 = getelementptr inbounds %struct.Func, %struct.Func* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %47 = call i32 @elftc_demangle(i8* %45, i8* %46, i32 1024, i32 0)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %42
  %50 = load i64, i64* @pretty_print, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %53)
  br label %58

55:                                               ; preds = %49
  %56 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %56)
  br label %58

58:                                               ; preds = %55, %52
  br label %73

59:                                               ; preds = %42, %39
  %60 = load i64, i64* @pretty_print, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load %struct.Func*, %struct.Func** %6, align 8
  %64 = getelementptr inbounds %struct.Func, %struct.Func* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %65)
  br label %72

67:                                               ; preds = %59
  %68 = load %struct.Func*, %struct.Func** %6, align 8
  %69 = getelementptr inbounds %struct.Func, %struct.Func* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %70)
  br label %72

72:                                               ; preds = %67, %62
  br label %73

73:                                               ; preds = %72, %58
  br label %74

74:                                               ; preds = %73, %36
  %75 = load i64, i64* @base, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i8*, i8** %10, align 8
  %79 = call i8* @basename(i8* %78)
  br label %82

80:                                               ; preds = %74
  %81 = load i8*, i8** %10, align 8
  br label %82

82:                                               ; preds = %80, %77
  %83 = phi i8* [ %79, %77 ], [ %81, %80 ]
  %84 = load i32, i32* %8, align 4
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %83, i32 %84)
  %86 = load %struct.Func*, %struct.Func** %6, align 8
  %87 = getelementptr inbounds %struct.Func, %struct.Func* %86, i32 0, i32 3
  %88 = load %struct.Func*, %struct.Func** %87, align 8
  %89 = icmp ne %struct.Func* %88, null
  br i1 %89, label %90, label %101

90:                                               ; preds = %82
  %91 = load %struct.CU*, %struct.CU** %5, align 8
  %92 = load %struct.Func*, %struct.Func** %6, align 8
  %93 = getelementptr inbounds %struct.Func, %struct.Func* %92, i32 0, i32 3
  %94 = load %struct.Func*, %struct.Func** %93, align 8
  %95 = load %struct.Func*, %struct.Func** %6, align 8
  %96 = getelementptr inbounds %struct.Func, %struct.Func* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.Func*, %struct.Func** %6, align 8
  %99 = getelementptr inbounds %struct.Func, %struct.Func* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  call void @print_inlines(%struct.CU* %91, %struct.Func* %94, i32 %97, i32 %100)
  br label %101

101:                                              ; preds = %90, %82
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @elftc_demangle(i8*, i8*, i32, i32) #1

declare dso_local i8* @basename(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
