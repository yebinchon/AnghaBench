; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_ar_io.c_ar_rdsync.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_ar_io.c_ar_rdsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.mtop = type { i32, i32 }

@done = common dso_local global i64 0, align 8
@lstrval = common dso_local global i64 0, align 8
@act = common dso_local global i64 0, align 8
@APPND = common dso_local global i64 0, align 8
@ARCHIVE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"Cannot allow updates to an archive with flaws.\00", align 1
@io_ok = common dso_local global i64 0, align 8
@did_io = common dso_local global i32 0, align 4
@artyp = common dso_local global i32 0, align 4
@MTFSR = common dso_local global i32 0, align 4
@arfd = common dso_local global i32 0, align 4
@MTIOCTOP = common dso_local global i32 0, align 4
@arsb = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@BLKMULT = common dso_local global i64 0, align 8
@SEEK_CUR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Unable to recover from an archive read failure.\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"Attempting to recover from an archive read failure.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar_rdsync() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtop, align 4
  %6 = load i64, i64* @done, align 8
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %0
  %9 = load i64, i64* @lstrval, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %0
  store i32 -1, i32* %1, align 4
  br label %81

12:                                               ; preds = %8
  %13 = load i64, i64* @act, align 8
  %14 = load i64, i64* @APPND, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load i64, i64* @act, align 8
  %18 = load i64, i64* @ARCHIVE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16, %12
  %21 = call i32 @paxwarn(i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %81

22:                                               ; preds = %16
  %23 = load i64, i64* @io_ok, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 1, i32* @did_io, align 4
  br label %26

26:                                               ; preds = %25, %22
  %27 = load i32, i32* @artyp, align 4
  switch i32 %27, label %73 [
    i32 128, label %28
    i32 129, label %42
    i32 131, label %42
    i32 132, label %42
    i32 130, label %72
  ]

28:                                               ; preds = %26
  %29 = load i64, i64* @io_ok, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i64 0, i64* @io_ok, align 8
  store i64 1, i64* @lstrval, align 8
  br label %74

32:                                               ; preds = %28
  %33 = load i32, i32* @MTFSR, align 4
  %34 = getelementptr inbounds %struct.mtop, %struct.mtop* %5, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds %struct.mtop, %struct.mtop* %5, i32 0, i32 0
  store i32 1, i32* %35, align 4
  %36 = load i32, i32* @arfd, align 4
  %37 = load i32, i32* @MTIOCTOP, align 4
  %38 = call i32 @ioctl(i32 %36, i32 %37, %struct.mtop* %5)
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %74

41:                                               ; preds = %32
  store i64 1, i64* @lstrval, align 8
  br label %74

42:                                               ; preds = %26, %26, %26
  store i64 0, i64* @io_ok, align 8
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arsb, i32 0, i32 0), align 8
  store i64 %43, i64* %2, align 8
  %44 = icmp sle i64 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* @artyp, align 4
  %47 = icmp ne i32 %46, 129
  br i1 %47, label %48, label %50

48:                                               ; preds = %45, %42
  %49 = load i64, i64* @BLKMULT, align 8
  store i64 %49, i64* %2, align 8
  br label %50

50:                                               ; preds = %48, %45
  %51 = load i32, i32* @arfd, align 4
  %52 = load i32, i32* @SEEK_CUR, align 4
  %53 = call i32 @lseek(i32 %51, i32 0, i32 %52)
  store i32 %53, i32* %3, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %74

56:                                               ; preds = %50
  %57 = load i64, i64* %2, align 8
  %58 = load i32, i32* %3, align 4
  %59 = load i64, i64* %2, align 8
  %60 = trunc i64 %59 to i32
  %61 = srem i32 %58, %60
  %62 = sext i32 %61 to i64
  %63 = sub nsw i64 %57, %62
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* @arfd, align 4
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @SEEK_CUR, align 4
  %68 = call i32 @lseek(i32 %65, i32 %66, i32 %67)
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %56
  br label %74

71:                                               ; preds = %56
  store i64 1, i64* @lstrval, align 8
  br label %74

72:                                               ; preds = %26
  br label %73

73:                                               ; preds = %26, %72
  store i64 0, i64* @io_ok, align 8
  br label %74

74:                                               ; preds = %73, %71, %70, %55, %41, %40, %31
  %75 = load i64, i64* @lstrval, align 8
  %76 = icmp sle i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = call i32 @paxwarn(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %81

79:                                               ; preds = %74
  %80 = call i32 @paxwarn(i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %81

81:                                               ; preds = %79, %77, %20, %11
  %82 = load i32, i32* %1, align 4
  ret i32 %82
}

declare dso_local i32 @paxwarn(i32, i8*) #1

declare dso_local i32 @ioctl(i32, i32, %struct.mtop*) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
