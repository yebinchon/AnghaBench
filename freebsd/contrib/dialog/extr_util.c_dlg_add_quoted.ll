; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_util.c_dlg_add_quoted.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_util.c_dlg_add_quoted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@dialog_vars = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@FIX_SINGLE = common dso_local global i8* null, align 8
@FIX_DOUBLE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"\\\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dlg_add_quoted(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [2 x i8], align 1
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %6 = call i8* (...) @quote_delimiter()
  store i8* %6, i8** %4, align 8
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dialog_vars, i32 0, i32 0), align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i8*, i8** @FIX_SINGLE, align 8
  br label %13

11:                                               ; preds = %1
  %12 = load i8*, i8** @FIX_DOUBLE, align 8
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i8* [ %10, %9 ], [ %12, %11 ]
  store i8* %14, i8** %5, align 8
  %15 = load i8*, i8** %2, align 8
  %16 = call i64 @must_quote(i8* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %51

18:                                               ; preds = %13
  %19 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 1
  store i8 0, i8* %19, align 1
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @dlg_add_result(i8* %20)
  br label %22

22:                                               ; preds = %45, %18
  %23 = load i8*, i8** %2, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %22
  %28 = load i8*, i8** %2, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %2, align 8
  %30 = load i8, i8* %28, align 1
  %31 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  store i8 %30, i8* %31, align 1
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i64
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %27
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i64
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37, %27
  %44 = call i32 @dlg_add_result(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %37
  %46 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  %47 = call i32 @dlg_add_result(i8* %46)
  br label %22

48:                                               ; preds = %22
  %49 = load i8*, i8** %4, align 8
  %50 = call i32 @dlg_add_result(i8* %49)
  br label %54

51:                                               ; preds = %13
  %52 = load i8*, i8** %2, align 8
  %53 = call i32 @dlg_add_result(i8* %52)
  br label %54

54:                                               ; preds = %51, %48
  ret void
}

declare dso_local i8* @quote_delimiter(...) #1

declare dso_local i64 @must_quote(i8*) #1

declare dso_local i32 @dlg_add_result(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
