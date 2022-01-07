; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_buf_subs.c_wr_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_buf_subs.c_wr_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@bufmem = common dso_local global i32* null, align 8
@BLKMULT = common dso_local global i64 0, align 8
@buf = common dso_local global i8* null, align 8
@wrblksz = common dso_local global i64 0, align 8
@frmt = common dso_local global %struct.TYPE_2__* null, align 8
@MAXBLK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"Write block size of %d too large, maximum is: %d\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Write block size of %d is not a %d byte multiple\00", align 1
@MAXBLK_POSIX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [77 x i8] c"Write block size of %d larger than POSIX max %d, archive may not be portable\00", align 1
@rdblksz = common dso_local global i64 0, align 8
@blksz = common dso_local global i64 0, align 8
@arcname = common dso_local global i32 0, align 4
@wrcnt = common dso_local global i64 0, align 8
@bufend = common dso_local global i8* null, align 8
@bufpt = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wr_start() #0 {
  %1 = alloca i32, align 4
  %2 = load i32*, i32** @bufmem, align 8
  %3 = load i64, i64* @BLKMULT, align 8
  %4 = getelementptr inbounds i32, i32* %2, i64 %3
  %5 = bitcast i32* %4 to i8*
  store i8* %5, i8** @buf, align 8
  %6 = load i64, i64* @wrblksz, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @frmt, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* @wrblksz, align 8
  br label %12

12:                                               ; preds = %8, %0
  %13 = load i64, i64* @wrblksz, align 8
  %14 = load i64, i64* @MAXBLK, align 8
  %15 = icmp ugt i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load i64, i64* @wrblksz, align 8
  %18 = load i64, i64* @MAXBLK, align 8
  %19 = call i32 @paxwarn(i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %17, i64 %18)
  store i32 -1, i32* %1, align 4
  br label %51

20:                                               ; preds = %12
  %21 = load i64, i64* @wrblksz, align 8
  %22 = load i64, i64* @BLKMULT, align 8
  %23 = urem i64 %21, %22
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i64, i64* @wrblksz, align 8
  %27 = load i64, i64* @BLKMULT, align 8
  %28 = call i32 @paxwarn(i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i64 %26, i64 %27)
  store i32 -1, i32* %1, align 4
  br label %51

29:                                               ; preds = %20
  %30 = load i64, i64* @wrblksz, align 8
  %31 = load i64, i64* @MAXBLK_POSIX, align 8
  %32 = icmp ugt i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i64, i64* @wrblksz, align 8
  %35 = load i64, i64* @MAXBLK_POSIX, align 8
  %36 = call i32 @paxwarn(i32 0, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.2, i64 0, i64 0), i64 %34, i64 %35)
  store i32 -1, i32* %1, align 4
  br label %51

37:                                               ; preds = %29
  %38 = load i64, i64* @wrblksz, align 8
  store i64 %38, i64* @rdblksz, align 8
  store i64 %38, i64* @blksz, align 8
  %39 = load i32, i32* @arcname, align 4
  %40 = call i64 @ar_open(i32 %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = call i64 (...) @ar_next()
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 -1, i32* %1, align 4
  br label %51

46:                                               ; preds = %42, %37
  store i64 0, i64* @wrcnt, align 8
  %47 = load i8*, i8** @buf, align 8
  %48 = load i64, i64* @wrblksz, align 8
  %49 = getelementptr i8, i8* %47, i64 %48
  store i8* %49, i8** @bufend, align 8
  %50 = load i8*, i8** @buf, align 8
  store i8* %50, i8** @bufpt, align 8
  store i32 0, i32* %1, align 4
  br label %51

51:                                               ; preds = %46, %45, %33, %25, %16
  %52 = load i32, i32* %1, align 4
  ret i32 %52
}

declare dso_local i32 @paxwarn(i32, i8*, i64, i64) #1

declare dso_local i64 @ar_open(i32) #1

declare dso_local i64 @ar_next(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
