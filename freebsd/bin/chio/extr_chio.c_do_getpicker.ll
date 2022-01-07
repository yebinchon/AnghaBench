; ModuleID = '/home/carl/AnghaBench/freebsd/bin/chio/extr_chio.c_do_getpicker.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/chio/extr_chio.c_do_getpicker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"%s: no arguments expected\00", align 1
@changer_fd = common dso_local global i32 0, align 4
@CHIOGPICKER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"%s: CHIOGPICKER\00", align 1
@changer_name = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"%s: current picker: %d\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"usage: %s %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8**)* @do_getpicker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_getpicker(i8* %0, i32 %1, i8** %2) #0 {
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
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %16)
  br label %30

18:                                               ; preds = %3
  %19 = load i32, i32* @changer_fd, align 4
  %20 = load i32, i32* @CHIOGPICKER, align 4
  %21 = call i64 @ioctl(i32 %19, i32 %20, i32* %8)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i8*, i8** @changer_name, align 8
  %25 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  br label %26

26:                                               ; preds = %23, %18
  %27 = load i8*, i8** @changer_name, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %27, i32 %28)
  store i32 0, i32* %4, align 4
  br label %35

30:                                               ; preds = %15
  %31 = load i32, i32* @stderr, align 4
  %32 = call i8* (...) @getprogname()
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @fprintf(i32 %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %32, i8* %33)
  store i32 1, i32* %4, align 4
  br label %35

35:                                               ; preds = %30, %26
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i64 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @getprogname(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
