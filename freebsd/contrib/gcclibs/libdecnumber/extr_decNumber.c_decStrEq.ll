; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libdecnumber/extr_decNumber.c_decStrEq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libdecnumber/extr_decNumber.c_decStrEq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @decStrEq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decStrEq(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  br label %8

8:                                                ; preds = %33, %2
  %9 = load i8*, i8** %4, align 8
  %10 = load i8, i8* %9, align 1
  store i8 %10, i8* %6, align 1
  %11 = load i8*, i8** %5, align 8
  %12 = load i8, i8* %11, align 1
  store i8 %12, i8* %7, align 1
  %13 = load i8, i8* %6, align 1
  %14 = zext i8 %13 to i32
  %15 = load i8, i8* %7, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %8
  %19 = load i8, i8* %6, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %38

23:                                               ; preds = %18
  br label %32

24:                                               ; preds = %8
  %25 = load i8, i8* %6, align 1
  %26 = call i64 @tolower(i8 zeroext %25)
  %27 = load i8, i8* %7, align 1
  %28 = call i64 @tolower(i8 zeroext %27)
  %29 = icmp ne i64 %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %39

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31, %23
  br label %33

33:                                               ; preds = %32
  %34 = load i8*, i8** %4, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %4, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %5, align 8
  br label %8

38:                                               ; preds = %22
  store i32 1, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %30
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i64 @tolower(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
