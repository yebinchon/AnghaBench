; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_expand.c_cvtnum.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_expand.c_cvtnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @cvtnum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvtnum(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca [32 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 0
  %10 = zext i1 %9 to i32
  store i32 %10, i32* %6, align 4
  %11 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %12 = getelementptr inbounds i8, i8* %11, i64 31
  store i8* %12, i8** %7, align 8
  %13 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 31
  store i8 0, i8* %13, align 1
  br label %14

14:                                               ; preds = %21, %2
  %15 = load i32, i32* %3, align 4
  %16 = srem i32 %15, 10
  %17 = add nsw i32 %16, 48
  %18 = trunc i32 %17 to i8
  %19 = load i8*, i8** %7, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 -1
  store i8* %20, i8** %7, align 8
  store i8 %18, i8* %20, align 1
  br label %21

21:                                               ; preds = %14
  %22 = load i32, i32* %3, align 4
  %23 = sdiv i32 %22, 10
  store i32 %23, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %14, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i8*, i8** %7, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 -1
  store i8* %30, i8** %7, align 8
  store i8 45, i8* %30, align 1
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i8*, i8** %4, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %35 = getelementptr inbounds i8, i8* %34, i64 32
  %36 = load i8*, i8** %7, align 8
  %37 = ptrtoint i8* %35 to i64
  %38 = ptrtoint i8* %36 to i64
  %39 = sub i64 %37, %38
  %40 = trunc i64 %39 to i32
  %41 = call i32 @memcpy(i8* %32, i8* %33, i32 %40)
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
