; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_ar_io.c_ar_rev.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_ar_io.c_ar_rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtop = type { i32, i32 }

@lstrval = common dso_local global i32 0, align 4
@artyp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Reverse positioning on pipes is not supported.\00", align 1
@arfd = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Unable to obtain current archive byte offset\00", align 1
@arvol = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Reverse position on previous volume.\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Unable to seek archive backwards\00", align 1
@rdblksz = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"Tape drive unable to backspace requested amount\00", align 1
@MTBSR = common dso_local global i32 0, align 4
@MTIOCTOP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"Unable to backspace tape %d blocks.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar_rev(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtop, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* @lstrval, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @lstrval, align 4
  store i32 %10, i32* %2, align 4
  br label %87

11:                                               ; preds = %1
  %12 = load i32, i32* @artyp, align 4
  switch i32 %12, label %20 [
    i32 130, label %13
    i32 129, label %19
    i32 132, label %19
    i32 131, label %19
    i32 128, label %53
  ]

13:                                               ; preds = %11
  %14 = load i32, i32* %3, align 4
  %15 = icmp sle i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %86

17:                                               ; preds = %13
  %18 = call i32 @paxwarn(i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* @lstrval, align 4
  store i32 -1, i32* %2, align 4
  br label %87

19:                                               ; preds = %11, %11, %11
  br label %20

20:                                               ; preds = %11, %19
  %21 = load i32, i32* %3, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  br label %86

24:                                               ; preds = %20
  %25 = load i32, i32* @arfd, align 4
  %26 = load i32, i32* @SEEK_CUR, align 4
  %27 = call i32 @lseek(i32 %25, i32 0, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @errno, align 4
  %31 = call i32 (i32, i32, i8*, ...) @syswarn(i32 1, i32 %30, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* @lstrval, align 4
  store i32 -1, i32* %2, align 4
  br label %87

32:                                               ; preds = %24
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* %4, align 4
  %35 = sub nsw i32 %34, %33
  store i32 %35, i32* %4, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load i32, i32* @arvol, align 4
  %39 = icmp sgt i32 %38, 1
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = call i32 @paxwarn(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* @lstrval, align 4
  store i32 -1, i32* %2, align 4
  br label %87

42:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %32
  %44 = load i32, i32* @arfd, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @SEEK_SET, align 4
  %47 = call i32 @lseek(i32 %44, i32 %45, i32 %46)
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* @errno, align 4
  %51 = call i32 (i32, i32, i8*, ...) @syswarn(i32 1, i32 %50, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* @lstrval, align 4
  store i32 -1, i32* %2, align 4
  br label %87

52:                                               ; preds = %43
  br label %86

53:                                               ; preds = %11
  %54 = call i32 (...) @get_phys()
  store i32 %54, i32* %6, align 4
  %55 = icmp sle i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 -1, i32* @lstrval, align 4
  store i32 -1, i32* %2, align 4
  br label %87

57:                                               ; preds = %53
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* @rdblksz, align 4
  %59 = load i32, i32* %3, align 4
  %60 = icmp sle i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %86

62:                                               ; preds = %57
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* %6, align 4
  %65 = srem i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = call i32 @paxwarn(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* @lstrval, align 4
  store i32 -1, i32* %2, align 4
  br label %87

69:                                               ; preds = %62
  %70 = load i32, i32* @MTBSR, align 4
  %71 = getelementptr inbounds %struct.mtop, %struct.mtop* %5, i32 0, i32 1
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* %6, align 4
  %74 = sdiv i32 %72, %73
  %75 = getelementptr inbounds %struct.mtop, %struct.mtop* %5, i32 0, i32 0
  store i32 %74, i32* %75, align 4
  %76 = load i32, i32* @arfd, align 4
  %77 = load i32, i32* @MTIOCTOP, align 4
  %78 = call i32 @ioctl(i32 %76, i32 %77, %struct.mtop* %5)
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %69
  %81 = load i32, i32* @errno, align 4
  %82 = getelementptr inbounds %struct.mtop, %struct.mtop* %5, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (i32, i32, i8*, ...) @syswarn(i32 1, i32 %81, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %83)
  store i32 -1, i32* @lstrval, align 4
  store i32 -1, i32* %2, align 4
  br label %87

85:                                               ; preds = %69
  br label %86

86:                                               ; preds = %85, %61, %52, %23, %16
  store i32 1, i32* @lstrval, align 4
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %86, %80, %67, %56, %49, %40, %29, %17, %9
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @paxwarn(i32, i8*) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @syswarn(i32, i32, i8*, ...) #1

declare dso_local i32 @get_phys(...) #1

declare dso_local i32 @ioctl(i32, i32, %struct.mtop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
