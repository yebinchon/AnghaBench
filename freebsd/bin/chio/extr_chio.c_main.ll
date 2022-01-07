; ModuleID = '/home/carl/AnghaBench/freebsd/bin/chio/extr_chio.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/chio/extr_chio.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32 (i32*, i32, i8**)* }

@.str = private unnamed_addr constant [3 x i8] c"f:\00", align 1
@optarg = common dso_local global i32* null, align 8
@changer_name = common dso_local global i32* null, align 8
@optind = common dso_local global i64 0, align 8
@CHANGER_ENV_VAR = common dso_local global i32 0, align 4
@_PATH_CH = common dso_local global i32* null, align 8
@O_RDWR = common dso_local global i32 0, align 4
@changer_fd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"%s: open\00", align 1
@cleanup = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"can't register cleanup function\00", align 1
@commands = common dso_local global %struct.TYPE_2__* null, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"unknown command: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  br label %8

8:                                                ; preds = %19, %2
  %9 = load i32, i32* %4, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = call i32 @getopt(i32 %9, i8** %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %11, i32* %6, align 4
  %12 = icmp ne i32 %11, -1
  br i1 %12, label %13, label %20

13:                                               ; preds = %8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %17 [
    i32 102, label %15
  ]

15:                                               ; preds = %13
  %16 = load i32*, i32** @optarg, align 8
  store i32* %16, i32** @changer_name, align 8
  br label %19

17:                                               ; preds = %13
  %18 = call i32 (...) @usage()
  br label %19

19:                                               ; preds = %17, %15
  br label %8

20:                                               ; preds = %8
  %21 = load i64, i64* @optind, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = sub nsw i64 %23, %21
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %4, align 4
  %26 = load i64, i64* @optind, align 8
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 %26
  store i8** %28, i8*** %5, align 8
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = call i32 (...) @usage()
  br label %33

33:                                               ; preds = %31, %20
  %34 = load i32*, i32** @changer_name, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load i32, i32* @CHANGER_ENV_VAR, align 4
  %38 = call i32* @getenv(i32 %37)
  store i32* %38, i32** @changer_name, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32*, i32** @_PATH_CH, align 8
  store i32* %41, i32** @changer_name, align 8
  br label %42

42:                                               ; preds = %40, %36
  br label %43

43:                                               ; preds = %42, %33
  %44 = load i32*, i32** @changer_name, align 8
  %45 = load i32, i32* @O_RDWR, align 4
  %46 = call i32 @open(i32* %44, i32 %45, i32 384)
  store i32 %46, i32* @changer_fd, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32*, i32** @changer_name, align 8
  %50 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %49)
  br label %51

51:                                               ; preds = %48, %43
  %52 = load i32, i32* @cleanup, align 4
  %53 = call i64 @atexit(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %51
  store i32 0, i32* %7, align 4
  br label %58

58:                                               ; preds = %79, %57
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @commands, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %82

66:                                               ; preds = %58
  %67 = load i8**, i8*** %5, align 8
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @commands, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = call i64 @strcmp(i8* %68, i32* %74)
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %66
  br label %82

78:                                               ; preds = %66
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %58

82:                                               ; preds = %77, %58
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** @commands, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = icmp eq i32* %88, null
  br i1 %89, label %90, label %119

90:                                               ; preds = %82
  store i32 0, i32* %7, align 4
  br label %91

91:                                               ; preds = %115, %90
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** @commands, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %118

99:                                               ; preds = %91
  %100 = load i8**, i8*** %5, align 8
  %101 = load i8*, i8** %100, align 8
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** @commands, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i8**, i8*** %5, align 8
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @strlen(i8* %109)
  %111 = call i64 @strncmp(i8* %101, i32* %107, i32 %110)
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %99
  br label %118

114:                                              ; preds = %99
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %7, align 4
  br label %91

118:                                              ; preds = %113, %91
  br label %119

119:                                              ; preds = %118, %82
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** @commands, align 8
  %121 = load i32, i32* %7, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = icmp eq i32* %125, null
  br i1 %126, label %127, label %131

127:                                              ; preds = %119
  %128 = load i8**, i8*** %5, align 8
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 @errx(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %129)
  br label %131

131:                                              ; preds = %127, %119
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** @commands, align 8
  %133 = load i32, i32* %7, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 1
  %137 = load i32 (i32*, i32, i8**)*, i32 (i32*, i32, i8**)** %136, align 8
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** @commands, align 8
  %139 = load i32, i32* %7, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %4, align 4
  %145 = load i8**, i8*** %5, align 8
  %146 = call i32 %137(i32* %143, i32 %144, i8** %145)
  %147 = call i32 @exit(i32 %146) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32* @getenv(i32) #1

declare dso_local i32 @open(i32*, i32, i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i64 @atexit(i32) #1

declare dso_local i64 @strcmp(i8*, i32*) #1

declare dso_local i64 @strncmp(i8*, i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
