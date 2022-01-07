; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_ar_io.c_ar_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_ar_io.c_ar_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@lstrval = common dso_local global i32 0, align 4
@arfd = common dso_local global i32 0, align 4
@wr_trail = common dso_local global i32 0, align 4
@io_ok = common dso_local global i32 0, align 4
@artyp = common dso_local global i32 0, align 4
@BLKMULT = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@EDQUOT = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Write failed, archive is write protected.\00", align 1
@EIO = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Unable to append, trailer re-write failed. Quitting.\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"End of archive volume %d reached\00", align 1
@arvol = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Failed write to archive volume: %d\00", align 1
@frmt = common dso_local global %struct.TYPE_2__* null, align 8
@.str.4 = private unnamed_addr constant [54 x i8] c"WARNING: partial archive write. Archive MAY BE FLAWED\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"WARNING: partial archive write. Archive IS FLAWED\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar_write(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @lstrval, align 4
  %9 = icmp sle i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @lstrval, align 4
  store i32 %11, i32* %3, align 4
  br label %147

12:                                               ; preds = %2
  %13 = load i32, i32* @arfd, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @write(i32 %13, i8* %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  store i32 1, i32* @wr_trail, align 4
  store i32 1, i32* @io_ok, align 4
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %3, align 4
  br label %147

21:                                               ; preds = %12
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* @lstrval, align 4
  br label %27

26:                                               ; preds = %21
  store i32 0, i32* @lstrval, align 4
  br label %27

27:                                               ; preds = %26, %24
  %28 = load i32, i32* @artyp, align 4
  switch i32 %28, label %96 [
    i32 129, label %29
    i32 128, label %71
    i32 131, label %71
    i32 132, label %71
    i32 130, label %95
  ]

29:                                               ; preds = %27
  %30 = load i32, i32* %6, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %53

32:                                               ; preds = %29
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @BLKMULT, align 4
  %35 = srem i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %32
  %38 = load i32, i32* @arfd, align 4
  %39 = load i32, i32* @SEEK_CUR, align 4
  %40 = call i32 @lseek(i32 %38, i32 0, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %97

43:                                               ; preds = %37
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = sub nsw i32 %45, %44
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* @arfd, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @ftruncate(i32 %47, i32 %48)
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %97

52:                                               ; preds = %43
  store i32 0, i32* @lstrval, align 4
  store i32 0, i32* %6, align 4
  br label %97

53:                                               ; preds = %32, %29
  %54 = load i32, i32* %6, align 4
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %97

57:                                               ; preds = %53
  %58 = load i32, i32* @errno, align 4
  %59 = load i32, i32* @ENOSPC, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %69, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* @errno, align 4
  %63 = load i32, i32* @EFBIG, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* @errno, align 4
  %67 = load i32, i32* @EDQUOT, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65, %61, %57
  store i32 0, i32* @lstrval, align 4
  store i32 0, i32* %6, align 4
  br label %70

70:                                               ; preds = %69, %65
  br label %97

71:                                               ; preds = %27, %27, %27
  %72 = load i32, i32* %6, align 4
  %73 = icmp sge i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  br label %97

75:                                               ; preds = %71
  %76 = load i32, i32* @errno, align 4
  %77 = load i32, i32* @EACCES, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = call i32 (i32, i8*, ...) @paxwarn(i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* @lstrval, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %3, align 4
  br label %147

81:                                               ; preds = %75
  %82 = load i32, i32* @errno, align 4
  %83 = load i32, i32* @ENOSPC, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %93, label %85

85:                                               ; preds = %81
  %86 = load i32, i32* @errno, align 4
  %87 = load i32, i32* @EIO, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %93, label %89

89:                                               ; preds = %85
  %90 = load i32, i32* @errno, align 4
  %91 = load i32, i32* @ENXIO, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %89, %85, %81
  store i32 0, i32* @lstrval, align 4
  store i32 0, i32* %6, align 4
  br label %94

94:                                               ; preds = %93, %89
  br label %97

95:                                               ; preds = %27
  br label %96

96:                                               ; preds = %27, %95
  br label %97

97:                                               ; preds = %96, %94, %74, %70, %56, %52, %51, %42
  %98 = load i32, i32* %6, align 4
  %99 = icmp sge i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %97
  %101 = load i32, i32* %6, align 4
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  store i32 1, i32* @wr_trail, align 4
  br label %104

104:                                              ; preds = %103, %100
  store i32 1, i32* @io_ok, align 4
  br label %105

105:                                              ; preds = %104, %97
  %106 = load i32, i32* @wr_trail, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %105
  %109 = load i32, i32* %6, align 4
  %110 = icmp sle i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = call i32 (i32, i8*, ...) @paxwarn(i32 1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %113 = load i32, i32* %6, align 4
  store i32 %113, i32* %3, align 4
  br label %147

114:                                              ; preds = %108, %105
  %115 = load i32, i32* %6, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load i32, i32* @arvol, align 4
  %119 = call i32 (i32, i8*, ...) @paxwarn(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %118)
  br label %145

120:                                              ; preds = %114
  %121 = load i32, i32* %6, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %120
  %124 = load i32, i32* @errno, align 4
  %125 = load i32, i32* @arvol, align 4
  %126 = call i32 @syswarn(i32 1, i32 %124, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %125)
  br label %144

127:                                              ; preds = %120
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** @frmt, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %127
  %133 = load i32, i32* %6, align 4
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** @frmt, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = srem i32 %133, %136
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %132, %127
  %140 = call i32 (i32, i8*, ...) @paxwarn(i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  br label %143

141:                                              ; preds = %132
  %142 = call i32 (i32, i8*, ...) @paxwarn(i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0))
  br label %143

143:                                              ; preds = %141, %139
  br label %144

144:                                              ; preds = %143, %123
  br label %145

145:                                              ; preds = %144, %117
  %146 = load i32, i32* %6, align 4
  store i32 %146, i32* %3, align 4
  br label %147

147:                                              ; preds = %145, %111, %79, %19, %10
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @ftruncate(i32, i32) #1

declare dso_local i32 @paxwarn(i32, i8*, ...) #1

declare dso_local i32 @syswarn(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
