; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ls/extr_ls.c_traverse.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ls/extr_ls.c_traverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i8*, i32, i32, i32 }

@f_nosort = common dso_local global i64 0, align 8
@mastercmp = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"fts_open\00", align 1
@f_listdir = common dso_local global i64 0, align 8
@f_recursive = common dso_local global i32 0, align 4
@f_label = common dso_local global i32 0, align 4
@FTS_NOSTAT = common dso_local global i32 0, align 4
@FTS_NAMEONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"%s: directory causes a cycle\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@rval = common dso_local global i32 0, align 4
@FTS_ROOTLEVEL = common dso_local global i32 0, align 4
@f_listdot = common dso_local global i32 0, align 4
@output = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c":\00", align 1
@FTS_SKIP = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"fts_read\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**, i32)* @traverse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @traverse(i32 %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i8**, i8*** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i64, i64* @f_nosort, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %18

16:                                               ; preds = %3
  %17 = load i32*, i32** @mastercmp, align 8
  br label %18

18:                                               ; preds = %16, %15
  %19 = phi i32* [ null, %15 ], [ %17, %16 ]
  %20 = call i32* @fts_open(i8** %11, i32 %12, i32* %19)
  store i32* %20, i32** %7, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %18
  %25 = load i32*, i32** %7, align 8
  %26 = call %struct.TYPE_7__* @fts_children(i32* %25, i32 0)
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %9, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %28 = icmp ne %struct.TYPE_7__* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @display(%struct.TYPE_7__* null, %struct.TYPE_7__* %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %24
  %34 = load i64, i64* @f_listdir, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %141

37:                                               ; preds = %33
  %38 = load i32, i32* @f_recursive, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* @f_label, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @FTS_NOSTAT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @FTS_NAMEONLY, align 4
  br label %51

50:                                               ; preds = %43, %40, %37
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi i32 [ %49, %48 ], [ 0, %50 ]
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %135, %51
  %54 = load i32*, i32** %7, align 8
  %55 = call %struct.TYPE_7__* @fts_read(i32* %54)
  store %struct.TYPE_7__* %55, %struct.TYPE_7__** %8, align 8
  %56 = icmp ne %struct.TYPE_7__* %55, null
  br i1 %56, label %57, label %136

57:                                               ; preds = %53
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  switch i32 %60, label %134 [
    i32 130, label %61
    i32 129, label %66
    i32 128, label %66
    i32 131, label %77
  ]

61:                                               ; preds = %57
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %64)
  br label %135

66:                                               ; preds = %57, %57
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = inttoptr i64 %70 to i8*
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @strerror(i32 %74)
  %76 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %71, i32 %75)
  store i32 1, i32* @rval, align 4
  br label %135

77:                                               ; preds = %57
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @FTS_ROOTLEVEL, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %95

83:                                               ; preds = %77
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 0
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 46
  br i1 %90, label %91, label %95

91:                                               ; preds = %83
  %92 = load i32, i32* @f_listdot, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %91
  br label %135

95:                                               ; preds = %91, %83, %77
  %96 = load i32, i32* @output, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %95
  %99 = call i32 @putchar(i8 signext 10)
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @printname(i32 %102)
  %104 = call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %115

105:                                              ; preds = %95
  %106 = load i32, i32* %4, align 4
  %107 = icmp sgt i32 %106, 1
  br i1 %107, label %108, label %114

108:                                              ; preds = %105
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @printname(i32 %111)
  %113 = call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* @output, align 4
  br label %114

114:                                              ; preds = %108, %105
  br label %115

115:                                              ; preds = %114, %98
  %116 = load i32*, i32** %7, align 8
  %117 = load i32, i32* %10, align 4
  %118 = call %struct.TYPE_7__* @fts_children(i32* %116, i32 %117)
  store %struct.TYPE_7__* %118, %struct.TYPE_7__** %9, align 8
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %121 = load i32, i32* %6, align 4
  %122 = call i32 @display(%struct.TYPE_7__* %119, %struct.TYPE_7__* %120, i32 %121)
  %123 = load i32, i32* @f_recursive, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %133, label %125

125:                                              ; preds = %115
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %127 = icmp ne %struct.TYPE_7__* %126, null
  br i1 %127, label %128, label %133

128:                                              ; preds = %125
  %129 = load i32*, i32** %7, align 8
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %131 = load i32, i32* @FTS_SKIP, align 4
  %132 = call i32 @fts_set(i32* %129, %struct.TYPE_7__* %130, i32 %131)
  br label %133

133:                                              ; preds = %128, %125, %115
  br label %135

134:                                              ; preds = %57
  br label %135

135:                                              ; preds = %134, %133, %94, %66, %61
  br label %53

136:                                              ; preds = %53
  %137 = load i64, i64* @errno, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  %140 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %141

141:                                              ; preds = %36, %139, %136
  ret void
}

declare dso_local i32* @fts_open(i8**, i32, i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local %struct.TYPE_7__* @fts_children(i32*, i32) #1

declare dso_local i32 @display(%struct.TYPE_7__*, %struct.TYPE_7__*, i32) #1

declare dso_local %struct.TYPE_7__* @fts_read(i32*) #1

declare dso_local i32 @warnx(i8*, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @printname(i32) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @fts_set(i32*, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
