; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_cmp.c_sprintc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_cmp.c_sprintc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8)* @sprintc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sprintc(i8* %0, i8 zeroext %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %4, align 1
  %6 = call i32 @isprint(i8 zeroext %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %41, label %8

8:                                                ; preds = %2
  %9 = load i8, i8* %4, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp sge i32 %10, 128
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = load i8*, i8** %3, align 8
  %14 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %14, i8** %3, align 8
  store i8 77, i8* %13, align 1
  %15 = load i8*, i8** %3, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %3, align 8
  store i8 45, i8* %15, align 1
  %17 = load i8, i8* %4, align 1
  %18 = zext i8 %17 to i32
  %19 = sub nsw i32 %18, 128
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %4, align 1
  br label %21

21:                                               ; preds = %12, %8
  %22 = load i8, i8* %4, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp slt i32 %23, 32
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load i8*, i8** %3, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %3, align 8
  store i8 94, i8* %26, align 1
  %28 = load i8, i8* %4, align 1
  %29 = zext i8 %28 to i32
  %30 = add nsw i32 %29, 64
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %4, align 1
  br label %40

32:                                               ; preds = %21
  %33 = load i8, i8* %4, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp eq i32 %34, 127
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i8*, i8** %3, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %3, align 8
  store i8 94, i8* %37, align 1
  store i8 63, i8* %4, align 1
  br label %39

39:                                               ; preds = %36, %32
  br label %40

40:                                               ; preds = %39, %25
  br label %41

41:                                               ; preds = %40, %2
  %42 = load i8, i8* %4, align 1
  %43 = load i8*, i8** %3, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %3, align 8
  store i8 %42, i8* %43, align 1
  %45 = load i8*, i8** %3, align 8
  store i8 0, i8* %45, align 1
  ret void
}

declare dso_local i32 @isprint(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
