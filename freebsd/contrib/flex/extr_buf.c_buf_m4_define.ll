; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/flex/extr_buf.c_buf_m4_define.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/flex/extr_buf.c_buf_m4_define.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Buf = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"m4_define( [[%s]], [[%s]])m4_dnl\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Allocation of buffer for m4 def failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Buf* @buf_m4_define(%struct.Buf* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.Buf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.Buf* %0, %struct.Buf** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  br label %15

14:                                               ; preds = %3
  br label %15

15:                                               ; preds = %14, %12
  %16 = phi i8* [ %13, %12 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %14 ]
  store i8* %16, i8** %6, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @strlen(i8* %17)
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = add nsw i32 %18, %20
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @strlen(i8* %22)
  %24 = add nsw i32 %21, %23
  %25 = add nsw i32 %24, 2
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %9, align 8
  %27 = call i64 @flex_alloc(i64 %26)
  %28 = inttoptr i64 %27 to i8*
  store i8* %28, i8** %8, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %15
  %32 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %33 = call i32 @flexfatal(i32 %32)
  br label %34

34:                                               ; preds = %31, %15
  %35 = load i8*, i8** %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @snprintf(i8* %35, i64 %36, i8* %37, i8* %38, i8* %39)
  %41 = load %struct.Buf*, %struct.Buf** %4, align 8
  %42 = call i32 @buf_append(%struct.Buf* %41, i8** %8, i32 1)
  %43 = load %struct.Buf*, %struct.Buf** %4, align 8
  ret %struct.Buf* %43
}

declare dso_local i64 @flex_alloc(i64) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @flexfatal(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i8*) #1

declare dso_local i32 @buf_append(%struct.Buf*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
