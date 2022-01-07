; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_analyze.c_briefly_report.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_analyze.c_briefly_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_data = type { i8* }

@file_label = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [24 x i8] c"Files %s and %s differ\0A\00", align 1
@brief = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.file_data*)* @briefly_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @briefly_report(i32 %0, %struct.file_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.file_data* %1, %struct.file_data** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %47

9:                                                ; preds = %2
  %10 = load i8**, i8*** @file_label, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 0
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = load i8**, i8*** @file_label, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  %17 = load i8*, i8** %16, align 8
  br label %23

18:                                               ; preds = %9
  %19 = load %struct.file_data*, %struct.file_data** %4, align 8
  %20 = getelementptr inbounds %struct.file_data, %struct.file_data* %19, i64 0
  %21 = getelementptr inbounds %struct.file_data, %struct.file_data* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  br label %23

23:                                               ; preds = %18, %14
  %24 = phi i8* [ %17, %14 ], [ %22, %18 ]
  store i8* %24, i8** %5, align 8
  %25 = load i8**, i8*** @file_label, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i8**, i8*** @file_label, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = load i8*, i8** %31, align 8
  br label %38

33:                                               ; preds = %23
  %34 = load %struct.file_data*, %struct.file_data** %4, align 8
  %35 = getelementptr inbounds %struct.file_data, %struct.file_data* %34, i64 1
  %36 = getelementptr inbounds %struct.file_data, %struct.file_data* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  br label %38

38:                                               ; preds = %33, %29
  %39 = phi i8* [ %32, %29 ], [ %37, %33 ]
  store i8* %39, i8** %6, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @message(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %40, i8* %41)
  %43 = load i32, i32* @brief, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %38
  store i32 2, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %38
  br label %47

47:                                               ; preds = %46, %2
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @message(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
