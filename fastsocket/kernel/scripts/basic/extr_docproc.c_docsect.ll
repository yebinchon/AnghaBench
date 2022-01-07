; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/basic/extr_docproc.c_docsect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/basic/extr_docproc.c_docsect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KERNELDOC = common dso_local global i8* null, align 8
@DOCBOOK = common dso_local global i8* null, align 8
@FUNCTION = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @docsect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @docsect(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [6 x i8*], align 16
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  store i8* %7, i8** %6, align 8
  br label %8

8:                                                ; preds = %20, %2
  %9 = load i8*, i8** %6, align 8
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %8
  %13 = load i8*, i8** %6, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 10
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i8*, i8** %6, align 8
  store i8 0, i8* %18, align 1
  br label %19

19:                                               ; preds = %17, %12
  br label %20

20:                                               ; preds = %19
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %6, align 8
  br label %8

23:                                               ; preds = %8
  %24 = load i8*, i8** @KERNELDOC, align 8
  %25 = getelementptr inbounds [6 x i8*], [6 x i8*]* %5, i64 0, i64 0
  store i8* %24, i8** %25, align 16
  %26 = load i8*, i8** @DOCBOOK, align 8
  %27 = getelementptr inbounds [6 x i8*], [6 x i8*]* %5, i64 0, i64 1
  store i8* %26, i8** %27, align 8
  %28 = load i8*, i8** @FUNCTION, align 8
  %29 = getelementptr inbounds [6 x i8*], [6 x i8*]* %5, i64 0, i64 2
  store i8* %28, i8** %29, align 16
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds [6 x i8*], [6 x i8*]* %5, i64 0, i64 3
  store i8* %30, i8** %31, align 8
  %32 = load i8*, i8** %3, align 8
  %33 = getelementptr inbounds [6 x i8*], [6 x i8*]* %5, i64 0, i64 4
  store i8* %32, i8** %33, align 16
  %34 = getelementptr inbounds [6 x i8*], [6 x i8*]* %5, i64 0, i64 5
  store i8* null, i8** %34, align 8
  %35 = getelementptr inbounds [6 x i8*], [6 x i8*]* %5, i64 0, i64 0
  %36 = call i32 @exec_kernel_doc(i8** %35)
  ret void
}

declare dso_local i32 @exec_kernel_doc(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
