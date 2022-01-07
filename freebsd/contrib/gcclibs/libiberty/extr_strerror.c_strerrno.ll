; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_strerror.c_strerrno.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_strerror.c_strerrno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8* }

@strerrno.buf = internal global [32 x i8] zeroinitializer, align 16
@error_names = common dso_local global i8** null, align 8
@num_error_names = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Error %d\00", align 1
@evmserr = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @strerrno(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i8**, i8*** @error_names, align 8
  %5 = icmp eq i8** %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call i32 (...) @init_error_tables()
  br label %8

8:                                                ; preds = %6, %1
  %9 = load i32, i32* %2, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @num_error_names, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %8
  store i8* null, i8** %3, align 8
  br label %36

16:                                               ; preds = %11
  %17 = load i8**, i8*** @error_names, align 8
  %18 = icmp eq i8** %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %16
  %20 = load i8**, i8*** @error_names, align 8
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %19, %16
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @sprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @strerrno.buf, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %27)
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @strerrno.buf, i64 0, i64 0), i8** %3, align 8
  br label %35

29:                                               ; preds = %19
  %30 = load i8**, i8*** @error_names, align 8
  %31 = load i32, i32* %2, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %3, align 8
  br label %35

35:                                               ; preds = %29, %26
  br label %36

36:                                               ; preds = %35, %15
  %37 = load i8*, i8** %3, align 8
  ret i8* %37
}

declare dso_local i32 @init_error_tables(...) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
