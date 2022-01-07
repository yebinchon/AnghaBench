; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_ar_subs.c_next_head.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_ar_subs.c_next_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 (i32*, i8*)*, i32 (i8*, i32, i32*)*, i64 (i32*)*, i64 }

@frmt = common dso_local global %struct.TYPE_2__* null, align 8
@hdbuf = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [38 x i8] c"Premature end of file on archive read\00", align 1
@act = common dso_local global i64 0, align 8
@APPND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"Archive I/O error, cannot continue\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Archive I/O error. Trying to recover.\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Unable to append, archive header flaw\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"Invalid header, starting valid header search.\00", align 1
@flcnt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @next_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @next_head(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @frmt, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %8, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i8*, i8** @hdbuf, align 8
  store i8* %15, i8** %5, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %7, align 4
  br label %18

18:                                               ; preds = %101, %84, %1
  br label %19

19:                                               ; preds = %54, %18
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @rd_wrbuf(i8* %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %57

26:                                               ; preds = %19
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 -1, i32* %2, align 4
  br label %128

33:                                               ; preds = %29, %26
  store i32 0, i32* %11, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = call i64 (...) @rd_sync()
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36, %33
  %40 = call i32 @paxwarn(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %128

41:                                               ; preds = %36
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %41
  %45 = load i64, i64* @act, align 8
  %46 = load i64, i64* @APPND, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = call i32 @paxwarn(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %128

50:                                               ; preds = %44
  %51 = call i32 @paxwarn(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %50, %41
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %6, align 4
  %56 = load i8*, i8** @hdbuf, align 8
  store i8* %56, i8** %5, align 8
  br label %19

57:                                               ; preds = %25
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @frmt, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i64 (i32*, i8*)*, i64 (i32*, i8*)** %59, align 8
  %61 = load i32*, i32** %3, align 8
  %62 = load i8*, i8** @hdbuf, align 8
  %63 = call i64 %60(i32* %61, i8* %62)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %111

66:                                               ; preds = %57
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @frmt, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %88, label %71

71:                                               ; preds = %66
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @frmt, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %73, align 8
  %75 = load i8*, i8** @hdbuf, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i32 %74(i8* %75, i32 %76, i32* %10)
  store i32 %77, i32* %4, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = call i32 (...) @ar_drain()
  store i32 -1, i32* %2, align 4
  br label %128

81:                                               ; preds = %71
  %82 = load i32, i32* %4, align 4
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %6, align 4
  %86 = load i8*, i8** @hdbuf, align 8
  store i8* %86, i8** %5, align 8
  br label %18

87:                                               ; preds = %81
  br label %88

88:                                               ; preds = %87, %66
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %101, label %91

91:                                               ; preds = %88
  %92 = load i64, i64* @act, align 8
  %93 = load i64, i64* @APPND, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = call i32 @paxwarn(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %128

97:                                               ; preds = %91
  %98 = call i32 @paxwarn(i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %9, align 4
  br label %101

101:                                              ; preds = %97, %88
  %102 = load i8*, i8** @hdbuf, align 8
  %103 = load i8*, i8** @hdbuf, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 1
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @memmove(i8* %102, i8* %104, i32 %105)
  store i32 1, i32* %6, align 4
  %107 = load i8*, i8** @hdbuf, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  store i8* %110, i8** %5, align 8
  br label %18

111:                                              ; preds = %65
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** @frmt, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %111
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** @frmt, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 3
  %119 = load i64 (i32*)*, i64 (i32*)** %118, align 8
  %120 = load i32*, i32** %3, align 8
  %121 = call i64 %119(i32* %120)
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %116
  %124 = call i32 (...) @ar_drain()
  store i32 -1, i32* %2, align 4
  br label %128

125:                                              ; preds = %116, %111
  %126 = load i32, i32* @flcnt, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* @flcnt, align 4
  store i32 0, i32* %2, align 4
  br label %128

128:                                              ; preds = %125, %123, %95, %79, %48, %39, %32
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i32 @rd_wrbuf(i8*, i32) #1

declare dso_local i64 @rd_sync(...) #1

declare dso_local i32 @paxwarn(i32, i8*) #1

declare dso_local i32 @ar_drain(...) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
