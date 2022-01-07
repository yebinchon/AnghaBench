; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-trace.c_syscall__scnprintf_args.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-trace.c_syscall__scnprintf_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.syscall = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.format_field* }
%struct.format_field = type { i32, %struct.format_field* }

@.str = private unnamed_addr constant [10 x i8] c"%s%s: %ld\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"%sarg%d: %ld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.syscall*, i8*, i64, i64*)* @syscall__scnprintf_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @syscall__scnprintf_args(%struct.syscall* %0, i8* %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct.syscall*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.format_field*, align 8
  store %struct.syscall* %0, %struct.syscall** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  store i32 0, i32* %9, align 4
  store i64 0, i64* %10, align 8
  %12 = load %struct.syscall*, %struct.syscall** %5, align 8
  %13 = getelementptr inbounds %struct.syscall, %struct.syscall* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %16, label %54

16:                                               ; preds = %4
  %17 = load %struct.syscall*, %struct.syscall** %5, align 8
  %18 = getelementptr inbounds %struct.syscall, %struct.syscall* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.format_field*, %struct.format_field** %21, align 8
  store %struct.format_field* %22, %struct.format_field** %11, align 8
  br label %23

23:                                               ; preds = %49, %16
  %24 = load %struct.format_field*, %struct.format_field** %11, align 8
  %25 = icmp ne %struct.format_field* %24, null
  br i1 %25, label %26, label %53

26:                                               ; preds = %23
  %27 = load i8*, i8** %6, align 8
  %28 = load i64, i64* %10, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* %10, align 8
  %32 = sub i64 %30, %31
  %33 = load i64, i64* %10, align 8
  %34 = icmp ne i64 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %37 = load %struct.format_field*, %struct.format_field** %11, align 8
  %38 = getelementptr inbounds %struct.format_field, %struct.format_field* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i64*, i64** %8, align 8
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %9, align 4
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i64, i64* %40, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @scnprintf(i8* %29, i64 %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %36, i32 %39, i64 %45)
  %47 = load i64, i64* %10, align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* %10, align 8
  br label %49

49:                                               ; preds = %26
  %50 = load %struct.format_field*, %struct.format_field** %11, align 8
  %51 = getelementptr inbounds %struct.format_field, %struct.format_field* %50, i32 0, i32 1
  %52 = load %struct.format_field*, %struct.format_field** %51, align 8
  store %struct.format_field* %52, %struct.format_field** %11, align 8
  br label %23

53:                                               ; preds = %23
  br label %81

54:                                               ; preds = %4
  br label %55

55:                                               ; preds = %58, %54
  %56 = load i32, i32* %9, align 4
  %57 = icmp slt i32 %56, 6
  br i1 %57, label %58, label %80

58:                                               ; preds = %55
  %59 = load i8*, i8** %6, align 8
  %60 = load i64, i64* %10, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* %10, align 8
  %64 = sub i64 %62, %63
  %65 = load i64, i64* %10, align 8
  %66 = icmp ne i64 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %69 = load i32, i32* %9, align 4
  %70 = load i64*, i64** %8, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = call i64 @scnprintf(i8* %61, i64 %64, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %68, i32 %69, i64 %74)
  %76 = load i64, i64* %10, align 8
  %77 = add i64 %76, %75
  store i64 %77, i64* %10, align 8
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %55

80:                                               ; preds = %55
  br label %81

81:                                               ; preds = %80, %53
  %82 = load i64, i64* %10, align 8
  ret i64 %82
}

declare dso_local i64 @scnprintf(i8*, i64, i8*, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
