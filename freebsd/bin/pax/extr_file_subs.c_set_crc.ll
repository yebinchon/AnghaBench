; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_file_subs.c_set_crc.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_file_subs.c_set_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.stat = type { i64 }

@FILEBLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"File changed size %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Failed stat on %s\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"File %s was modified during read\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"File rewind failed on: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_crc(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.stat, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %8, align 8
  store i64 0, i64* %10, align 8
  %15 = load i32, i32* @FILEBLK, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %115

24:                                               ; preds = %2
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %9, align 8
  %29 = icmp sgt i64 %28, %16
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i64 %16, i64* %9, align 8
  br label %31

31:                                               ; preds = %30, %24
  br label %32

32:                                               ; preds = %60, %31
  %33 = load i32, i32* %5, align 4
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @read(i32 %33, i8* %18, i64 %34)
  store i32 %35, i32* %7, align 4
  %36 = icmp sle i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %61

38:                                               ; preds = %32
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* %8, align 8
  %42 = add nsw i64 %41, %40
  store i64 %42, i64* %8, align 8
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %57, %38
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %43
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %18, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = and i32 %52, 255
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* %10, align 8
  %56 = add i64 %55, %54
  store i64 %56, i64* %10, align 8
  br label %57

57:                                               ; preds = %47
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %43

60:                                               ; preds = %43
  br label %32

61:                                               ; preds = %37
  %62 = load i64, i64* %8, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %62, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %61
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @paxwarn(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %71)
  br label %114

73:                                               ; preds = %61
  %74 = load i32, i32* %5, align 4
  %75 = call i64 @fstat(i32 %74, %struct.stat* %13)
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %73
  %78 = load i32, i32* @errno, align 4
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @syswarn(i32 1, i32 %78, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  br label %113

83:                                               ; preds = %73
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %87, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %83
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @paxwarn(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  br label %112

96:                                               ; preds = %83
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @SEEK_SET, align 4
  %99 = call i64 @lseek(i32 %97, i64 0, i32 %98)
  %100 = icmp slt i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %96
  %102 = load i32, i32* @errno, align 4
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @syswarn(i32 1, i32 %102, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %105)
  br label %111

107:                                              ; preds = %96
  %108 = load i64, i64* %10, align 8
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  store i64 %108, i64* %110, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %115

111:                                              ; preds = %101
  br label %112

112:                                              ; preds = %111, %91
  br label %113

113:                                              ; preds = %112, %77
  br label %114

114:                                              ; preds = %113, %68
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %115

115:                                              ; preds = %114, %107, %21
  %116 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %116)
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @read(i32, i8*, i64) #2

declare dso_local i32 @paxwarn(i32, i8*, i32) #2

declare dso_local i64 @fstat(i32, %struct.stat*) #2

declare dso_local i32 @syswarn(i32, i32, i8*, i32) #2

declare dso_local i64 @lseek(i32, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
