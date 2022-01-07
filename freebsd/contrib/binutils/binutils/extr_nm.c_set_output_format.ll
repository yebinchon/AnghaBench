; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_nm.c_set_output_format.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_nm.c_set_output_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FORMAT_BSD = common dso_local global i32 0, align 4
@FORMAT_POSIX = common dso_local global i32 0, align 4
@FORMAT_SYSV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"%s: invalid output format\00", align 1
@formats = common dso_local global i32* null, align 8
@format = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @set_output_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_output_format(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = load i8, i8* %4, align 1
  %6 = sext i8 %5 to i32
  switch i32 %6, label %13 [
    i32 98, label %7
    i32 66, label %7
    i32 112, label %9
    i32 80, label %9
    i32 115, label %11
    i32 83, label %11
  ]

7:                                                ; preds = %1, %1
  %8 = load i32, i32* @FORMAT_BSD, align 4
  store i32 %8, i32* %3, align 4
  br label %17

9:                                                ; preds = %1, %1
  %10 = load i32, i32* @FORMAT_POSIX, align 4
  store i32 %10, i32* %3, align 4
  br label %17

11:                                               ; preds = %1, %1
  %12 = load i32, i32* @FORMAT_SYSV, align 4
  store i32 %12, i32* %3, align 4
  br label %17

13:                                               ; preds = %1
  %14 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 @fatal(i32 %14, i8* %15)
  br label %17

17:                                               ; preds = %13, %11, %9, %7
  %18 = load i32*, i32** @formats, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  store i32* %21, i32** @format, align 8
  ret void
}

declare dso_local i32 @fatal(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
