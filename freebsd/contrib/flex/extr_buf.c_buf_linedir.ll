; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/flex/extr_buf.c_buf_linedir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/flex/extr_buf.c_buf_linedir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Buf = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"#line \22\22\0A\00", align 1
@NUMCHARLINES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Allocation of buffer for line directive failed\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"#line %d \22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Buf* @buf_linedir(%struct.Buf* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.Buf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.Buf* %0, %struct.Buf** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = call i32 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @strlen(i8* %11)
  %13 = mul nsw i32 2, %12
  %14 = add nsw i32 %10, %13
  %15 = load i32, i32* @NUMCHARLINES, align 4
  %16 = add nsw i32 %14, %15
  %17 = add nsw i32 %16, 1
  %18 = call i8* @flex_alloc(i32 %17)
  store i8* %18, i8** %8, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i32 @flexfatal(i32 %22)
  br label %24

24:                                               ; preds = %21, %3
  %25 = load i8*, i8** %8, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @sprintf(i8* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %25, i64 %29
  store i8* %30, i8** %7, align 8
  %31 = load i8*, i8** %5, align 8
  store i8* %31, i8** %9, align 8
  br label %32

32:                                               ; preds = %45, %24
  %33 = load i8*, i8** %9, align 8
  %34 = load i8, i8* %33, align 1
  %35 = icmp ne i8 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %32
  %37 = load i8*, i8** %9, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 92
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i8*, i8** %7, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %7, align 8
  store i8 92, i8* %42, align 1
  br label %44

44:                                               ; preds = %41, %36
  br label %45

45:                                               ; preds = %44
  %46 = load i8*, i8** %9, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %9, align 8
  %48 = load i8, i8* %46, align 1
  %49 = load i8*, i8** %7, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %7, align 8
  store i8 %48, i8* %49, align 1
  br label %32

51:                                               ; preds = %32
  %52 = load i8*, i8** %7, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %7, align 8
  store i8 34, i8* %52, align 1
  %54 = load i8*, i8** %7, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %7, align 8
  store i8 10, i8* %54, align 1
  %56 = load i8*, i8** %7, align 8
  store i8 0, i8* %56, align 1
  %57 = load %struct.Buf*, %struct.Buf** %4, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = call %struct.Buf* @buf_strappend(%struct.Buf* %57, i8* %58)
  store %struct.Buf* %59, %struct.Buf** %4, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = call i32 @flex_free(i8* %60)
  %62 = load %struct.Buf*, %struct.Buf** %4, align 8
  ret %struct.Buf* %62
}

declare dso_local i8* @flex_alloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @flexfatal(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local %struct.Buf* @buf_strappend(%struct.Buf*, i8*) #1

declare dso_local i32 @flex_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
