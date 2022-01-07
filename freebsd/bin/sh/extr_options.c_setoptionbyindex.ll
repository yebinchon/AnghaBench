; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_options.c_setoptionbyindex.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_options.c_setoptionbyindex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@optval = common dso_local global i64* null, align 8
@privileged = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"setgid\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"setuid\00", align 1
@Vflag = common dso_local global i64 0, align 8
@Eflag = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @setoptionbyindex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setoptionbyindex(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i64*, i64** @optval, align 8
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i64, i64* %5, i64 %7
  %9 = icmp eq i64* %8, @privileged
  br i1 %9, label %10, label %29

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %29, label %13

13:                                               ; preds = %10
  %14 = load i64, i64* @privileged, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %13
  %17 = call i32 (...) @getgid()
  %18 = call i32 @setgid(i32 %17)
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = call i32 @error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %16
  %23 = call i32 (...) @getuid()
  %24 = call i32 @setuid(i32 %23)
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = call i32 @error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %22
  br label %29

29:                                               ; preds = %28, %13, %10, %2
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = load i64*, i64** @optval, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  store i64 %31, i64* %35, align 8
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %29
  %39 = load i64*, i64** @optval, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = icmp eq i64* %42, @Vflag
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i64 0, i64* @Eflag, align 8
  br label %53

45:                                               ; preds = %38
  %46 = load i64*, i64** @optval, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = icmp eq i64* %49, @Eflag
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i64 0, i64* @Vflag, align 8
  br label %52

52:                                               ; preds = %51, %45
  br label %53

53:                                               ; preds = %52, %44
  br label %54

54:                                               ; preds = %53, %29
  ret void
}

declare dso_local i32 @setgid(i32) #1

declare dso_local i32 @getgid(...) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @setuid(i32) #1

declare dso_local i32 @getuid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
