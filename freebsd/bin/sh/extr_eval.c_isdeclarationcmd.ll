; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_eval.c_isdeclarationcmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_eval.c_isdeclarationcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.narg = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.narg }

@.str = private unnamed_addr constant [8 x i8] c"command\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"export\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"readonly\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.narg*)* @isdeclarationcmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isdeclarationcmd(%struct.narg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.narg*, align 8
  %4 = alloca i32, align 4
  store %struct.narg* %0, %struct.narg** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.narg*, %struct.narg** %3, align 8
  %6 = icmp eq %struct.narg* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %56

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %23, %8
  %10 = load %struct.narg*, %struct.narg** %3, align 8
  %11 = getelementptr inbounds %struct.narg, %struct.narg* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @mustexpandto(i32 %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %9
  store i32 1, i32* %4, align 4
  %16 = load %struct.narg*, %struct.narg** %3, align 8
  %17 = getelementptr inbounds %struct.narg, %struct.narg* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.narg* %19, %struct.narg** %3, align 8
  %20 = load %struct.narg*, %struct.narg** %3, align 8
  %21 = icmp eq %struct.narg* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %56

23:                                               ; preds = %15
  br label %9

24:                                               ; preds = %9
  %25 = load %struct.narg*, %struct.narg** %3, align 8
  %26 = getelementptr inbounds %struct.narg, %struct.narg* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @mustexpandto(i32 %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %53, label %30

30:                                               ; preds = %24
  %31 = load %struct.narg*, %struct.narg** %3, align 8
  %32 = getelementptr inbounds %struct.narg, %struct.narg* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @mustexpandto(i32 %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %53, label %36

36:                                               ; preds = %30
  %37 = load %struct.narg*, %struct.narg** %3, align 8
  %38 = getelementptr inbounds %struct.narg, %struct.narg* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @mustexpandto(i32 %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = call i32 @isfunc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  br label %49

49:                                               ; preds = %45, %42
  %50 = phi i1 [ true, %42 ], [ %48, %45 ]
  br label %51

51:                                               ; preds = %49, %36
  %52 = phi i1 [ false, %36 ], [ %50, %49 ]
  br label %53

53:                                               ; preds = %51, %30, %24
  %54 = phi i1 [ true, %30 ], [ true, %24 ], [ %52, %51 ]
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %53, %22, %7
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i64 @mustexpandto(i32, i8*) #1

declare dso_local i32 @isfunc(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
