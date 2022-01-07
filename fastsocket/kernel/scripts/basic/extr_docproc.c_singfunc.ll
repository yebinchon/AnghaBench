; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/basic/extr_docproc.c_singfunc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/basic/extr_docproc.c_singfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KERNELDOC = common dso_local global i8* null, align 8
@DOCBOOK = common dso_local global i8* null, align 8
@FUNCTION = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @singfunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @singfunc(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [200 x i8*], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %9 = load i8*, i8** @KERNELDOC, align 8
  %10 = load i32, i32* %7, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %7, align 4
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds [200 x i8*], [200 x i8*]* %5, i64 0, i64 %12
  store i8* %9, i8** %13, align 8
  %14 = load i8*, i8** @DOCBOOK, align 8
  %15 = load i32, i32* %7, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %7, align 4
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds [200 x i8*], [200 x i8*]* %5, i64 0, i64 %17
  store i8* %14, i8** %18, align 8
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %57, %2
  %20 = load i8*, i8** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %26, label %60

26:                                               ; preds = %19
  %27 = load i8*, i8** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = call i64 @isspace(i8 signext %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = load i8*, i8** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  store i8 0, i8* %38, align 1
  store i32 1, i32* %8, align 4
  br label %57

39:                                               ; preds = %26
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %39
  store i32 0, i32* %8, align 4
  %43 = load i8*, i8** @FUNCTION, align 8
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds [200 x i8*], [200 x i8*]* %5, i64 0, i64 %46
  store i8* %43, i8** %47, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds [200 x i8*], [200 x i8*]* %5, i64 0, i64 %54
  store i8* %51, i8** %55, align 8
  br label %56

56:                                               ; preds = %42, %39
  br label %57

57:                                               ; preds = %56, %34
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %19

60:                                               ; preds = %19
  %61 = load i8*, i8** %3, align 8
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds [200 x i8*], [200 x i8*]* %5, i64 0, i64 %64
  store i8* %61, i8** %65, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [200 x i8*], [200 x i8*]* %5, i64 0, i64 %67
  store i8* null, i8** %68, align 8
  %69 = getelementptr inbounds [200 x i8*], [200 x i8*]* %5, i64 0, i64 0
  %70 = call i32 @exec_kernel_doc(i8** %69)
  ret void
}

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @exec_kernel_doc(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
