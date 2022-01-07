; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_ar_io.c_get_phys.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_ar_io.c_get_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtop = type { i32, i8* }

@MAXBLK = common dso_local global i32 0, align 4
@lstrval = common dso_local global i32 0, align 4
@arfd = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Unable to locate tape filemark.\00", align 1
@MTBSF = common dso_local global i8* null, align 8
@MTIOCTOP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Unable to backspace over tape filemark.\00", align 1
@MTBSR = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"Unable to backspace over last tape block.\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Cannot determine archive tape blocksize.\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"Tape drive unable to backspace requested amount\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"Unable to backspace tape over %d pad blocks\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @get_phys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_phys() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtop, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %9 = load i32, i32* @MAXBLK, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = load i32, i32* @lstrval, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %32

15:                                               ; preds = %0
  br label %16

16:                                               ; preds = %21, %15
  %17 = load i32, i32* @arfd, align 4
  %18 = trunc i64 %10 to i32
  %19 = call i32 @read(i32 %17, i8* %12, i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %2, align 4
  %24 = add nsw i32 %23, %22
  store i32 %24, i32* %2, align 4
  br label %16

25:                                               ; preds = %16
  %26 = load i32, i32* %3, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* @errno, align 4
  %30 = call i32 (i32, i32, i8*, ...) @syswarn(i32 1, i32 %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %8, align 4
  br label %116

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31, %0
  %33 = load i8*, i8** @MTBSF, align 8
  %34 = getelementptr inbounds %struct.mtop, %struct.mtop* %5, i32 0, i32 1
  store i8* %33, i8** %34, align 8
  %35 = getelementptr inbounds %struct.mtop, %struct.mtop* %5, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load i32, i32* @arfd, align 4
  %37 = load i32, i32* @MTIOCTOP, align 4
  %38 = call i64 @ioctl(i32 %36, i32 %37, %struct.mtop* %5)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load i32, i32* @errno, align 4
  %42 = call i32 (i32, i32, i8*, ...) @syswarn(i32 1, i32 %41, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %8, align 4
  br label %116

43:                                               ; preds = %32
  %44 = load i8*, i8** @MTBSR, align 8
  %45 = getelementptr inbounds %struct.mtop, %struct.mtop* %5, i32 0, i32 1
  store i8* %44, i8** %45, align 8
  %46 = getelementptr inbounds %struct.mtop, %struct.mtop* %5, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load i32, i32* @arfd, align 4
  %48 = load i32, i32* @MTIOCTOP, align 4
  %49 = call i64 @ioctl(i32 %47, i32 %48, %struct.mtop* %5)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load i32, i32* @errno, align 4
  %53 = call i32 (i32, i32, i8*, ...) @syswarn(i32 1, i32 %52, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %8, align 4
  br label %116

54:                                               ; preds = %43
  %55 = load i32, i32* @arfd, align 4
  %56 = trunc i64 %10 to i32
  %57 = call i32 @read(i32 %55, i8* %12, i32 %56)
  store i32 %57, i32* %4, align 4
  %58 = icmp sle i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* @errno, align 4
  %61 = call i32 (i32, i32, i8*, ...) @syswarn(i32 1, i32 %60, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %8, align 4
  br label %116

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %68, %62
  %64 = load i32, i32* @arfd, align 4
  %65 = trunc i64 %10 to i32
  %66 = call i32 @read(i32 %64, i8* %12, i32 %65)
  store i32 %66, i32* %3, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %63

69:                                               ; preds = %63
  %70 = load i32, i32* %3, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32, i32* @errno, align 4
  %74 = call i32 (i32, i32, i8*, ...) @syswarn(i32 1, i32 %73, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %8, align 4
  br label %116

75:                                               ; preds = %69
  %76 = load i8*, i8** @MTBSF, align 8
  %77 = getelementptr inbounds %struct.mtop, %struct.mtop* %5, i32 0, i32 1
  store i8* %76, i8** %77, align 8
  %78 = getelementptr inbounds %struct.mtop, %struct.mtop* %5, i32 0, i32 0
  store i32 1, i32* %78, align 8
  %79 = load i32, i32* @arfd, align 4
  %80 = load i32, i32* @MTIOCTOP, align 4
  %81 = call i64 @ioctl(i32 %79, i32 %80, %struct.mtop* %5)
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %75
  %84 = load i32, i32* @errno, align 4
  %85 = call i32 (i32, i32, i8*, ...) @syswarn(i32 1, i32 %84, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %8, align 4
  br label %116

86:                                               ; preds = %75
  store i32 1, i32* @lstrval, align 4
  %87 = load i32, i32* %2, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = load i32, i32* %4, align 4
  store i32 %90, i32* %1, align 4
  store i32 1, i32* %8, align 4
  br label %116

91:                                               ; preds = %86
  %92 = load i32, i32* %2, align 4
  %93 = load i32, i32* %4, align 4
  %94 = srem i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = call i32 @paxwarn(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %8, align 4
  br label %116

98:                                               ; preds = %91
  %99 = load i8*, i8** @MTBSR, align 8
  %100 = getelementptr inbounds %struct.mtop, %struct.mtop* %5, i32 0, i32 1
  store i8* %99, i8** %100, align 8
  %101 = load i32, i32* %2, align 4
  %102 = load i32, i32* %4, align 4
  %103 = sdiv i32 %101, %102
  %104 = getelementptr inbounds %struct.mtop, %struct.mtop* %5, i32 0, i32 0
  store i32 %103, i32* %104, align 8
  %105 = load i32, i32* @arfd, align 4
  %106 = load i32, i32* @MTIOCTOP, align 4
  %107 = call i64 @ioctl(i32 %105, i32 %106, %struct.mtop* %5)
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %98
  %110 = load i32, i32* @errno, align 4
  %111 = getelementptr inbounds %struct.mtop, %struct.mtop* %5, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 (i32, i32, i8*, ...) @syswarn(i32 1, i32 %110, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %112)
  store i32 -1, i32* %1, align 4
  store i32 1, i32* %8, align 4
  br label %116

114:                                              ; preds = %98
  %115 = load i32, i32* %4, align 4
  store i32 %115, i32* %1, align 4
  store i32 1, i32* %8, align 4
  br label %116

116:                                              ; preds = %114, %109, %96, %89, %83, %72, %59, %51, %40, %28
  %117 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %117)
  %118 = load i32, i32* %1, align 4
  ret i32 %118
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i32 @syswarn(i32, i32, i8*, ...) #2

declare dso_local i64 @ioctl(i32, i32, %struct.mtop*) #2

declare dso_local i32 @paxwarn(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
