; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_prdbg.c_pr_start_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_prdbg.c_pr_start_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pr_handle = type { i64, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"{ /* %s */\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @pr_start_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pr_start_block(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pr_handle*, align 8
  %6 = alloca [20 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.pr_handle*
  store %struct.pr_handle* %8, %struct.pr_handle** %5, align 8
  %9 = load %struct.pr_handle*, %struct.pr_handle** %5, align 8
  %10 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.pr_handle*, %struct.pr_handle** %5, align 8
  %15 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i32, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.pr_handle*, %struct.pr_handle** %5, align 8
  %19 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  br label %20

20:                                               ; preds = %13, %2
  %21 = load %struct.pr_handle*, %struct.pr_handle** %5, align 8
  %22 = call i32 @indent(%struct.pr_handle* %21)
  %23 = load i32, i32* %4, align 4
  %24 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %25 = load i32, i32* @TRUE, align 4
  %26 = load i32, i32* @TRUE, align 4
  %27 = call i32 @print_vma(i32 %23, i8* %24, i32 %25, i32 %26)
  %28 = load %struct.pr_handle*, %struct.pr_handle** %5, align 8
  %29 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  %33 = load %struct.pr_handle*, %struct.pr_handle** %5, align 8
  %34 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 2
  store i32 %36, i32* %34, align 8
  %37 = load i32, i32* @TRUE, align 4
  ret i32 %37
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @indent(%struct.pr_handle*) #1

declare dso_local i32 @print_vma(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
