; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_prdbg.c_pr_typed_constant.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_prdbg.c_pr_typed_constant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pr_handle = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"const %s %s = %s;\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @pr_typed_constant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pr_typed_constant(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pr_handle*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [20 x i8], align 16
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.pr_handle*
  store %struct.pr_handle* %12, %struct.pr_handle** %8, align 8
  %13 = load %struct.pr_handle*, %struct.pr_handle** %8, align 8
  %14 = call i8* @pop_type(%struct.pr_handle* %13)
  store i8* %14, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %4, align 4
  br label %37

19:                                               ; preds = %3
  %20 = load %struct.pr_handle*, %struct.pr_handle** %8, align 8
  %21 = call i32 @indent(%struct.pr_handle* %20)
  %22 = load i32, i32* %7, align 4
  %23 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %24 = load i32, i32* @FALSE, align 4
  %25 = load i32, i32* @FALSE, align 4
  %26 = call i32 @print_vma(i32 %22, i8* %23, i32 %24, i32 %25)
  %27 = load %struct.pr_handle*, %struct.pr_handle** %8, align 8
  %28 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %9, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %33 = call i32 @fprintf(i32 %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %30, i8* %31, i8* %32)
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @free(i8* %34)
  %36 = load i32, i32* @TRUE, align 4
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %19, %17
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i8* @pop_type(%struct.pr_handle*) #1

declare dso_local i32 @indent(%struct.pr_handle*) #1

declare dso_local i32 @print_vma(i32, i8*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
