; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_ar_io.c_ar_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_ar_io.c_ar_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lstrval = common dso_local global i32 0, align 4
@artyp = common dso_local global i32 0, align 4
@arfd = common dso_local global i32 0, align 4
@io_ok = common dso_local global i32 0, align 4
@rdblksz = common dso_local global i32 0, align 4
@BLKMULT = common dso_local global i32 0, align 4
@invld_rec = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed read on archive volume %d\00", align 1
@arvol = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"End of archive volume %d reached\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar_read(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @lstrval, align 4
  %8 = icmp sle i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @lstrval, align 4
  store i32 %10, i32* %3, align 4
  br label %57

11:                                               ; preds = %2
  %12 = load i32, i32* @artyp, align 4
  switch i32 %12, label %35 [
    i32 128, label %13
    i32 129, label %34
    i32 132, label %34
    i32 131, label %34
    i32 130, label %34
  ]

13:                                               ; preds = %11
  %14 = load i32, i32* @arfd, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @read(i32 %14, i8* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %13
  store i32 1, i32* @io_ok, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @rdblksz, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* @rdblksz, align 4
  %25 = load i32, i32* @rdblksz, align 4
  %26 = load i32, i32* @BLKMULT, align 4
  %27 = srem i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 1, i32* @invld_rec, align 4
  br label %30

30:                                               ; preds = %29, %23
  br label %31

31:                                               ; preds = %30, %19
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %57

33:                                               ; preds = %13
  br label %44

34:                                               ; preds = %11, %11, %11, %11
  br label %35

35:                                               ; preds = %11, %34
  %36 = load i32, i32* @arfd, align 4
  %37 = load i8*, i8** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @read(i32 %36, i8* %37, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  store i32 1, i32* @io_ok, align 4
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %57

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43, %33
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* @lstrval, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32, i32* @errno, align 4
  %50 = load i32, i32* @arvol, align 4
  %51 = call i32 @syswarn(i32 1, i32 %49, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %55

52:                                               ; preds = %44
  %53 = load i32, i32* @arvol, align 4
  %54 = call i32 @paxwarn(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %52, %48
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %41, %31, %9
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @syswarn(i32, i32, i8*, i32) #1

declare dso_local i32 @paxwarn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
