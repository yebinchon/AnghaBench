; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_filemode.c_ftypelet.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_filemode.c_ftypelet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_IFMPB = common dso_local global i64 0, align 8
@S_IFMPC = common dso_local global i64 0, align 8
@S_IFMT = common dso_local global i64 0, align 8
@S_IFNWK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i64)* @ftypelet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @ftypelet(i64 %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = call i64 @S_ISDIR(i64 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i8 100, i8* %2, align 1
  br label %34

8:                                                ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = call i64 @S_ISLNK(i64 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i8 108, i8* %2, align 1
  br label %34

13:                                               ; preds = %8
  %14 = load i64, i64* %3, align 8
  %15 = call i64 @S_ISBLK(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i8 98, i8* %2, align 1
  br label %34

18:                                               ; preds = %13
  %19 = load i64, i64* %3, align 8
  %20 = call i64 @S_ISCHR(i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i8 99, i8* %2, align 1
  br label %34

23:                                               ; preds = %18
  %24 = load i64, i64* %3, align 8
  %25 = call i64 @S_ISSOCK(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i8 115, i8* %2, align 1
  br label %34

28:                                               ; preds = %23
  %29 = load i64, i64* %3, align 8
  %30 = call i64 @S_ISFIFO(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i8 112, i8* %2, align 1
  br label %34

33:                                               ; preds = %28
  store i8 45, i8* %2, align 1
  br label %34

34:                                               ; preds = %33, %32, %27, %22, %17, %12, %7
  %35 = load i8, i8* %2, align 1
  ret i8 %35
}

declare dso_local i64 @S_ISDIR(i64) #1

declare dso_local i64 @S_ISLNK(i64) #1

declare dso_local i64 @S_ISBLK(i64) #1

declare dso_local i64 @S_ISCHR(i64) #1

declare dso_local i64 @S_ISSOCK(i64) #1

declare dso_local i64 @S_ISFIFO(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
