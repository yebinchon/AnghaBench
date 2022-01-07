; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_darwin_local_data_pic.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_darwin_local_data_pic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MINUS = common dso_local global i64 0, align 8
@LABEL_REF = common dso_local global i64 0, align 8
@SYMBOL_REF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"<pic base>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @darwin_local_data_pic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @darwin_local_data_pic(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i64 @GET_CODE(i32 %5)
  %7 = load i64, i64* @MINUS, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %38

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @XEXP(i32 %10, i32 0)
  %12 = call i64 @GET_CODE(i32 %11)
  %13 = load i64, i64* @LABEL_REF, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %9
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @XEXP(i32 %16, i32 0)
  %18 = call i64 @GET_CODE(i32 %17)
  %19 = load i64, i64* @SYMBOL_REF, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %15, %9
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @XEXP(i32 %22, i32 1)
  %24 = call i64 @GET_CODE(i32 %23)
  %25 = load i64, i64* @SYMBOL_REF, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %21
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @XEXP(i32 %28, i32 1)
  %30 = call i8* @XSTR(i32 %29, i32 0)
  store i8* %30, i8** %4, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  store i32 1, i32* %2, align 4
  br label %39

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %21
  br label %37

37:                                               ; preds = %36, %15
  br label %38

38:                                               ; preds = %37, %1
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %34
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i8* @XSTR(i32, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
