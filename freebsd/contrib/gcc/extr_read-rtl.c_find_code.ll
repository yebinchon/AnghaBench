; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_read-rtl.c_find_code.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_read-rtl.c_find_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUM_RTX_CODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"unknown rtx code `%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @find_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_code(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %20, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @NUM_RTX_CODE, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %7
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @GET_RTX_NAME(i32 %12)
  %14 = load i8*, i8** %4, align 8
  %15 = call i64 @strcmp(i32 %13, i8* %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %3, align 4
  br label %27

19:                                               ; preds = %11
  br label %20

20:                                               ; preds = %19
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %6, align 4
  br label %7

23:                                               ; preds = %7
  %24 = load i32*, i32** %5, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @fatal_with_file_and_line(i32* %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %25)
  br label %27

27:                                               ; preds = %23, %17
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @GET_RTX_NAME(i32) #1

declare dso_local i32 @fatal_with_file_and_line(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
