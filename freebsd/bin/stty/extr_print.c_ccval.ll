; ModuleID = '/home/carl/AnghaBench/freebsd/bin/stty/extr_print.c_ccval.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/stty/extr_print.c_ccval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cchar = type { i64 }

@ccval.buf = internal global [5 x i8] zeroinitializer, align 1
@VMIN = common dso_local global i64 0, align 8
@VTIME = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@_POSIX_VDISABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"<undef>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.cchar*, i32)* @ccval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ccval(%struct.cchar* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.cchar*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.cchar* %0, %struct.cchar** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.cchar*, %struct.cchar** %4, align 8
  %8 = getelementptr inbounds %struct.cchar, %struct.cchar* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @VMIN, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.cchar*, %struct.cchar** %4, align 8
  %14 = getelementptr inbounds %struct.cchar, %struct.cchar* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @VTIME, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %12, %2
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @snprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ccval.buf, i64 0, i64 0), i32 5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ccval.buf, i64 0, i64 0), i8** %3, align 8
  br label %64

21:                                               ; preds = %12
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @_POSIX_VDISABLE, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %64

26:                                               ; preds = %21
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ccval.buf, i64 0, i64 0), i8** %6, align 8
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, 128
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %6, align 8
  store i8 77, i8* %31, align 1
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %6, align 8
  store i8 45, i8* %33, align 1
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, 127
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %30, %26
  %38 = load i32, i32* %5, align 4
  %39 = icmp eq i32 %38, 127
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %6, align 8
  store i8 94, i8* %41, align 1
  %43 = load i8*, i8** %6, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %6, align 8
  store i8 63, i8* %43, align 1
  br label %62

45:                                               ; preds = %37
  %46 = load i32, i32* %5, align 4
  %47 = icmp slt i32 %46, 32
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load i8*, i8** %6, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %6, align 8
  store i8 94, i8* %49, align 1
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 64
  %53 = trunc i32 %52 to i8
  %54 = load i8*, i8** %6, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %6, align 8
  store i8 %53, i8* %54, align 1
  br label %61

56:                                               ; preds = %45
  %57 = load i32, i32* %5, align 4
  %58 = trunc i32 %57 to i8
  %59 = load i8*, i8** %6, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %6, align 8
  store i8 %58, i8* %59, align 1
  br label %61

61:                                               ; preds = %56, %48
  br label %62

62:                                               ; preds = %61, %40
  %63 = load i8*, i8** %6, align 8
  store i8 0, i8* %63, align 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @ccval.buf, i64 0, i64 0), i8** %3, align 8
  br label %64

64:                                               ; preds = %62, %25, %18
  %65 = load i8*, i8** %3, align 8
  ret i8* %65
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
