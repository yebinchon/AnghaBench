; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_mksyntax.c_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_mksyntax.c_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cfile = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"\09[SYNBASE + '%c'] = %s,\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"\09[SYNBASE + '\\%c'] = %s,\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  br label %6

6:                                                ; preds = %29, %2
  %7 = load i8*, i8** %3, align 8
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  br i1 %9, label %10, label %32

10:                                               ; preds = %6
  %11 = load i8*, i8** %3, align 8
  %12 = load i8, i8* %11, align 1
  store i8 %12, i8* %5, align 1
  %13 = load i8, i8* %5, align 1
  %14 = sext i8 %13 to i32
  switch i32 %14, label %19 [
    i32 9, label %15
    i32 10, label %16
    i32 39, label %17
    i32 92, label %18
  ]

15:                                               ; preds = %10
  store i8 116, i8* %5, align 1
  br label %24

16:                                               ; preds = %10
  store i8 110, i8* %5, align 1
  br label %24

17:                                               ; preds = %10
  store i8 39, i8* %5, align 1
  br label %24

18:                                               ; preds = %10
  store i8 92, i8* %5, align 1
  br label %24

19:                                               ; preds = %10
  %20 = load i32, i32* @cfile, align 4
  %21 = load i8, i8* %5, align 1
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @fprintf(i32 %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8 signext %21, i8* %22)
  br label %29

24:                                               ; preds = %18, %17, %16, %15
  %25 = load i32, i32* @cfile, align 4
  %26 = load i8, i8* %5, align 1
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @fprintf(i32 %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8 signext %26, i8* %27)
  br label %29

29:                                               ; preds = %24, %19
  %30 = load i8*, i8** %3, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %3, align 8
  br label %6

32:                                               ; preds = %6
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8 signext, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
