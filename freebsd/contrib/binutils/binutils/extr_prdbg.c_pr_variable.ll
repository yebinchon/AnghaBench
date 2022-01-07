; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_prdbg.c_pr_variable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_prdbg.c_pr_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pr_handle = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"static \00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"register \00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"%s /* %s */;\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32)* @pr_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pr_variable(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pr_handle*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [20 x i8], align 16
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.pr_handle*
  store %struct.pr_handle* %14, %struct.pr_handle** %10, align 8
  %15 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @substitute_type(%struct.pr_handle* %15, i8* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %5, align 4
  br label %58

21:                                               ; preds = %4
  %22 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %23 = call i8* @pop_type(%struct.pr_handle* %22)
  store i8* %23, i8** %11, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %5, align 4
  br label %58

28:                                               ; preds = %21
  %29 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %30 = call i32 @indent(%struct.pr_handle* %29)
  %31 = load i32, i32* %8, align 4
  switch i32 %31, label %42 [
    i32 128, label %32
    i32 130, label %32
    i32 129, label %37
  ]

32:                                               ; preds = %28, %28
  %33 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %34 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %43

37:                                               ; preds = %28
  %38 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %39 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %43

42:                                               ; preds = %28
  br label %43

43:                                               ; preds = %42, %37, %32
  %44 = load i32, i32* %9, align 4
  %45 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i64 0, i64 0
  %46 = load i32, i32* @TRUE, align 4
  %47 = load i32, i32* @TRUE, align 4
  %48 = call i32 @print_vma(i32 %44, i8* %45, i32 %46, i32 %47)
  %49 = load %struct.pr_handle*, %struct.pr_handle** %10, align 8
  %50 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** %11, align 8
  %53 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i64 0, i64 0
  %54 = call i32 (i32, i8*, ...) @fprintf(i32 %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %52, i8* %53)
  %55 = load i8*, i8** %11, align 8
  %56 = call i32 @free(i8* %55)
  %57 = load i32, i32* @TRUE, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %43, %26, %19
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @substitute_type(%struct.pr_handle*, i8*) #1

declare dso_local i8* @pop_type(%struct.pr_handle*) #1

declare dso_local i32 @indent(%struct.pr_handle*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @print_vma(i32, i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
