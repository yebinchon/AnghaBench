; ModuleID = '/home/carl/AnghaBench/freebsd/bin/stty/extr_print.c_bput.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/stty/extr_print.c_bput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@col = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@label = common dso_local global i8* null, align 8
@LINELENGTH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @bput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bput(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i64, i64* @col, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load i8*, i8** @label, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i64 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %6, i8* %7)
  store i64 %8, i64* @col, align 8
  br label %26

9:                                                ; preds = %1
  %10 = load i64, i64* @col, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = call i64 @strlen(i8* %11)
  %13 = add nsw i64 %10, %12
  %14 = load i64, i64* @LINELENGTH, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %9
  %17 = call i64 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i8*, i8** %2, align 8
  %19 = call i64 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %18)
  %20 = add nsw i64 %19, 8
  store i64 %20, i64* @col, align 8
  br label %26

21:                                               ; preds = %9
  %22 = load i8*, i8** %2, align 8
  %23 = call i64 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %22)
  %24 = load i64, i64* @col, align 8
  %25 = add nsw i64 %24, %23
  store i64 %25, i64* @col, align 8
  br label %26

26:                                               ; preds = %21, %16, %5
  ret void
}

declare dso_local i64 @printf(i8*, ...) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
