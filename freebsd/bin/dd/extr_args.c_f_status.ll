; ModuleID = '/home/carl/AnghaBench/freebsd/bin/dd/extr_args.c_f_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/dd/extr_args.c_f_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@C_NOINFO = common dso_local global i32 0, align 4
@ddflags = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"noxfer\00", align 1
@C_NOXFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"progress\00", align 1
@C_PROGRESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"unknown status %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @f_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @f_status(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i64 @strcmp(i8* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i32, i32* @C_NOINFO, align 4
  %8 = load i32, i32* @ddflags, align 4
  %9 = or i32 %8, %7
  store i32 %9, i32* @ddflags, align 4
  br label %31

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8
  %12 = call i64 @strcmp(i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load i32, i32* @C_NOXFER, align 4
  %16 = load i32, i32* @ddflags, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* @ddflags, align 4
  br label %30

18:                                               ; preds = %10
  %19 = load i8*, i8** %2, align 8
  %20 = call i64 @strcmp(i8* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32, i32* @C_PROGRESS, align 4
  %24 = load i32, i32* @ddflags, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* @ddflags, align 4
  br label %29

26:                                               ; preds = %18
  %27 = load i8*, i8** %2, align 8
  %28 = call i32 @errx(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %27)
  br label %29

29:                                               ; preds = %26, %22
  br label %30

30:                                               ; preds = %29, %14
  br label %31

31:                                               ; preds = %30, %6
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
