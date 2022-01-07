; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_buf_subs.c_wr_rdfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_buf_subs.c_wr_rdfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.stat = type { i64 }

@bufend = common dso_local global i32 0, align 4
@bufpt = common dso_local global i32 0, align 4
@blksz = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Read fault on %s\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"File changed size during read %s\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Failed stat on %s\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"File %s was modified during copy to archive\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wr_rdfile(%struct.TYPE_5__* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.stat, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %10, align 8
  br label %16

16:                                               ; preds = %42, %3
  %17 = load i64, i64* %10, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %50

19:                                               ; preds = %16
  %20 = load i32, i32* @bufend, align 4
  %21 = load i32, i32* @bufpt, align 4
  %22 = sub nsw i32 %20, %21
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load i32, i32* @blksz, align 4
  %27 = call i32 @buf_flush(i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i64, i64* %10, align 8
  %31 = load i64*, i64** %7, align 8
  store i64 %30, i64* %31, align 8
  store i32 -1, i32* %4, align 4
  br label %96

32:                                               ; preds = %25, %19
  %33 = load i32, i32* %8, align 4
  %34 = load i64, i64* %10, align 8
  %35 = call i32 @MIN(i32 %33, i64 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @bufpt, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @read(i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = icmp sle i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %50

42:                                               ; preds = %32
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* %10, align 8
  %46 = sub nsw i64 %45, %44
  store i64 %46, i64* %10, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @bufpt, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* @bufpt, align 4
  br label %16

50:                                               ; preds = %41, %16
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load i32, i32* @errno, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @syswarn(i32 1, i32 %54, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %93

59:                                               ; preds = %50
  %60 = load i64, i64* %10, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @paxwarn(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  br label %92

67:                                               ; preds = %59
  %68 = load i32, i32* %6, align 4
  %69 = call i64 @fstat(i32 %68, %struct.stat* %11)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = load i32, i32* @errno, align 4
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @syswarn(i32 1, i32 %72, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  br label %91

77:                                               ; preds = %67
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %81, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %77
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @paxwarn(i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %85, %77
  br label %91

91:                                               ; preds = %90, %71
  br label %92

92:                                               ; preds = %91, %62
  br label %93

93:                                               ; preds = %92, %53
  %94 = load i64, i64* %10, align 8
  %95 = load i64*, i64** %7, align 8
  store i64 %94, i64* %95, align 8
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %93, %29
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @buf_flush(i32) #1

declare dso_local i32 @MIN(i32, i64) #1

declare dso_local i32 @read(i32, i32, i32) #1

declare dso_local i32 @syswarn(i32, i32, i8*, i32) #1

declare dso_local i32 @paxwarn(i32, i8*, i32) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
