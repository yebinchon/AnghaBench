; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_macro.c_cpp_quote_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_macro.c_cpp_quote_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @cpp_quote_string(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %8

8:                                                ; preds = %33, %3
  %9 = load i32, i32* %6, align 4
  %10 = add i32 %9, -1
  store i32 %10, i32* %6, align 4
  %11 = icmp ne i32 %9, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %8
  %13 = load i8*, i8** %5, align 8
  %14 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %14, i8** %5, align 8
  %15 = load i8, i8* %13, align 1
  store i8 %15, i8* %7, align 1
  %16 = load i8, i8* %7, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 92
  br i1 %18, label %23, label %19

19:                                               ; preds = %12
  %20 = load i8, i8* %7, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 34
  br i1 %22, label %23, label %29

23:                                               ; preds = %19, %12
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %4, align 8
  store i8 92, i8* %24, align 1
  %26 = load i8, i8* %7, align 1
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %4, align 8
  store i8 %26, i8* %27, align 1
  br label %33

29:                                               ; preds = %19
  %30 = load i8, i8* %7, align 1
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %4, align 8
  store i8 %30, i8* %31, align 1
  br label %33

33:                                               ; preds = %29, %23
  br label %8

34:                                               ; preds = %8
  %35 = load i8*, i8** %4, align 8
  ret i8* %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
