; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_main.c_find_dot_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_main.c_find_dot_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @find_dot_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @find_dot_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.stat, align 4
  store i8* %0, i8** %3, align 8
  %8 = call i8* (...) @pathval()
  store i8* %8, i8** %6, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @strchr(i8* %9, i8 signext 47)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  store i8* %13, i8** %2, align 8
  br label %35

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %30, %14
  %16 = load i8*, i8** %3, align 8
  %17 = call i8* @padvance(i8** %6, i8** %5, i8* %16)
  store i8* %17, i8** %4, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %33

19:                                               ; preds = %15
  %20 = load i8*, i8** %4, align 8
  %21 = call i64 @stat(i8* %20, %struct.stat* %7)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @S_ISREG(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i8*, i8** %4, align 8
  store i8* %29, i8** %2, align 8
  br label %35

30:                                               ; preds = %23, %19
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @stunalloc(i8* %31)
  br label %15

33:                                               ; preds = %15
  %34 = load i8*, i8** %3, align 8
  store i8* %34, i8** %2, align 8
  br label %35

35:                                               ; preds = %33, %28, %12
  %36 = load i8*, i8** %2, align 8
  ret i8* %36
}

declare dso_local i8* @pathval(...) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i8* @padvance(i8**, i8**, i8*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @stunalloc(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
