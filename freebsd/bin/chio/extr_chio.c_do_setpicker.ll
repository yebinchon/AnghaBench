; ModuleID = '/home/carl/AnghaBench/freebsd/bin/chio/extr_chio.c_do_setpicker.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/chio/extr_chio.c_do_setpicker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"%s: too few arguments\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"%s: too many arguments\00", align 1
@changer_fd = common dso_local global i32 0, align 4
@CHIOSPICKER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"%s: CHIOSPICKER\00", align 1
@changer_name = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"usage: %s %s <picker>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8**)* @do_setpicker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_setpicker(i8* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %9 = load i8**, i8*** %7, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i32 1
  store i8** %10, i8*** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @warnx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %16)
  br label %37

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = icmp sgt i32 %19, 1
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  br label %37

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %24
  %26 = load i8**, i8*** %7, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @parse_element_unit(i8* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* @changer_fd, align 4
  %30 = load i32, i32* @CHIOSPICKER, align 4
  %31 = call i64 @ioctl(i32 %29, i32 %30, i32* %8)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load i32, i32* @changer_name, align 4
  %35 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %33, %25
  store i32 0, i32* %4, align 4
  br label %42

37:                                               ; preds = %21, %15
  %38 = load i32, i32* @stderr, align 4
  %39 = call i8* (...) @getprogname()
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @fprintf(i32 %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %39, i8* %40)
  store i32 1, i32* %4, align 4
  br label %42

42:                                               ; preds = %37, %36
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32 @parse_element_unit(i8*) #1

declare dso_local i64 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @err(i32, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @getprogname(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
