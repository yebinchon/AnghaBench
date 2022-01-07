; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_context.c_print_context_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_context.c_print_context_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_data = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"---\00", align 1
@file_label = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"+++\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"***\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_context_header(%struct.file_data* %0, i32 %1) #0 {
  %3 = alloca %struct.file_data*, align 8
  %4 = alloca i32, align 4
  store %struct.file_data* %0, %struct.file_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %2
  %8 = load %struct.file_data*, %struct.file_data** %3, align 8
  %9 = getelementptr inbounds %struct.file_data, %struct.file_data* %8, i64 0
  %10 = load i32*, i32** @file_label, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @print_context_label(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.file_data* %9, i32 %12)
  %14 = load %struct.file_data*, %struct.file_data** %3, align 8
  %15 = getelementptr inbounds %struct.file_data, %struct.file_data* %14, i64 1
  %16 = load i32*, i32** @file_label, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @print_context_label(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %struct.file_data* %15, i32 %18)
  br label %33

20:                                               ; preds = %2
  %21 = load %struct.file_data*, %struct.file_data** %3, align 8
  %22 = getelementptr inbounds %struct.file_data, %struct.file_data* %21, i64 0
  %23 = load i32*, i32** @file_label, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @print_context_label(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %struct.file_data* %22, i32 %25)
  %27 = load %struct.file_data*, %struct.file_data** %3, align 8
  %28 = getelementptr inbounds %struct.file_data, %struct.file_data* %27, i64 1
  %29 = load i32*, i32** @file_label, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @print_context_label(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.file_data* %28, i32 %31)
  br label %33

33:                                               ; preds = %20, %7
  ret void
}

declare dso_local i32 @print_context_label(i8*, %struct.file_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
