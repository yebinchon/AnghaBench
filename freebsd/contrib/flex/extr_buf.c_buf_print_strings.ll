; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/flex/extr_buf.c_buf_print_strings.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/flex/extr_buf.c_buf_print_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Buf = type { i32, i64 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Buf* @buf_print_strings(%struct.Buf* %0, i32* %1) #0 {
  %3 = alloca %struct.Buf*, align 8
  %4 = alloca %struct.Buf*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.Buf* %0, %struct.Buf** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.Buf*, %struct.Buf** %4, align 8
  %9 = icmp ne %struct.Buf* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32*, i32** %5, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %10, %2
  %14 = load %struct.Buf*, %struct.Buf** %4, align 8
  store %struct.Buf* %14, %struct.Buf** %3, align 8
  br label %43

15:                                               ; preds = %10
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %38, %15
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.Buf*, %struct.Buf** %4, align 8
  %19 = getelementptr inbounds %struct.Buf, %struct.Buf* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %16
  %23 = load %struct.Buf*, %struct.Buf** %4, align 8
  %24 = getelementptr inbounds %struct.Buf, %struct.Buf* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8**
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %7, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %22
  %34 = load i32*, i32** %5, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @fprintf(i32* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %35)
  br label %37

37:                                               ; preds = %33, %22
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %16

41:                                               ; preds = %16
  %42 = load %struct.Buf*, %struct.Buf** %4, align 8
  store %struct.Buf* %42, %struct.Buf** %3, align 8
  br label %43

43:                                               ; preds = %41, %13
  %44 = load %struct.Buf*, %struct.Buf** %3, align 8
  ret %struct.Buf* %44
}

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
