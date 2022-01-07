; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/flex/extr_buf.c_buf_prints.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/flex/extr_buf.c_buf_prints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Buf = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"Allocation of buffer to print string failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Buf* @buf_prints(%struct.Buf* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.Buf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.Buf* %0, %struct.Buf** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @strlen(i8* %9)
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @strlen(i8* %11)
  %13 = add nsw i32 %10, %12
  %14 = add nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %8, align 8
  %16 = call i8* @flex_alloc(i64 %15)
  store i8* %16, i8** %7, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 @flexfatal(i32 %20)
  br label %22

22:                                               ; preds = %19, %3
  %23 = load i8*, i8** %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @snprintf(i8* %23, i64 %24, i8* %25, i8* %26)
  %28 = load %struct.Buf*, %struct.Buf** %4, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call %struct.Buf* @buf_strappend(%struct.Buf* %28, i8* %29)
  store %struct.Buf* %30, %struct.Buf** %4, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @flex_free(i8* %31)
  %33 = load %struct.Buf*, %struct.Buf** %4, align 8
  ret %struct.Buf* %33
}

declare dso_local i8* @flex_alloc(i64) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @flexfatal(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*) #1

declare dso_local %struct.Buf* @buf_strappend(%struct.Buf*, i8*) #1

declare dso_local i32 @flex_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
