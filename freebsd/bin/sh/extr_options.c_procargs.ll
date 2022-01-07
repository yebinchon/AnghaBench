; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_options.c_procargs.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_options.c_procargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8**, i32, i32 }

@argptr = common dso_local global i8** null, align 8
@NOPTS = common dso_local global i32 0, align 4
@optval = common dso_local global i32* null, align 8
@privileged = common dso_local global i32 0, align 4
@minusc = common dso_local global i32* null, align 8
@sflag = common dso_local global i32 0, align 4
@iflag = common dso_local global i32 0, align 4
@Eflag = common dso_local global i32 0, align 4
@mflag = common dso_local global i32 0, align 4
@arg0 = common dso_local global i8* null, align 8
@commandname = common dso_local global i8* null, align 8
@shellparam = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @procargs(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %7 = load i8**, i8*** %4, align 8
  store i8** %7, i8*** @argptr, align 8
  %8 = load i32, i32* %3, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i8**, i8*** @argptr, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i32 1
  store i8** %12, i8*** @argptr, align 8
  br label %13

13:                                               ; preds = %10, %2
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %23, %13
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @NOPTS, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = load i32*, i32** @optval, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  store i32 2, i32* %22, align 4
  br label %23

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  br label %14

26:                                               ; preds = %14
  %27 = call i64 (...) @getuid()
  %28 = call i64 (...) @geteuid()
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = call i64 (...) @getgid()
  %32 = call i64 (...) @getegid()
  %33 = icmp ne i64 %31, %32
  br label %34

34:                                               ; preds = %30, %26
  %35 = phi i1 [ true, %26 ], [ %33, %30 ]
  %36 = zext i1 %35 to i32
  store i32 %36, i32* @privileged, align 4
  %37 = call i32 @options(i32 1)
  %38 = load i8**, i8*** @argptr, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load i32*, i32** @minusc, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 1, i32* @sflag, align 4
  br label %45

45:                                               ; preds = %44, %41, %34
  %46 = load i32, i32* @iflag, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %45
  %49 = load i32, i32* @sflag, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %62

51:                                               ; preds = %48
  %52 = call i64 @isatty(i32 0)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = call i64 @isatty(i32 1)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  store i32 1, i32* @iflag, align 4
  %58 = load i32, i32* @Eflag, align 4
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 1, i32* @Eflag, align 4
  br label %61

61:                                               ; preds = %60, %57
  br label %62

62:                                               ; preds = %61, %54, %51, %48, %45
  %63 = load i32, i32* @mflag, align 4
  %64 = icmp eq i32 %63, 2
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32, i32* @iflag, align 4
  store i32 %66, i32* @mflag, align 4
  br label %67

67:                                               ; preds = %65, %62
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %85, %67
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @NOPTS, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %88

72:                                               ; preds = %68
  %73 = load i32*, i32** @optval, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 2
  br i1 %78, label %79, label %84

79:                                               ; preds = %72
  %80 = load i32*, i32** @optval, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 0, i32* %83, align 4
  br label %84

84:                                               ; preds = %79, %72
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %68

88:                                               ; preds = %68
  %89 = load i8**, i8*** %4, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 0
  %91 = load i8*, i8** %90, align 8
  store i8* %91, i8** @arg0, align 8
  %92 = load i32, i32* @sflag, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %88
  %95 = load i32*, i32** @minusc, align 8
  %96 = icmp eq i32* %95, null
  br i1 %96, label %97, label %104

97:                                               ; preds = %94
  %98 = load i8**, i8*** @argptr, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i32 1
  store i8** %99, i8*** @argptr, align 8
  %100 = load i8*, i8** %98, align 8
  store i8* %100, i8** %6, align 8
  %101 = load i8*, i8** %6, align 8
  %102 = call i32 @setinputfile(i8* %101, i32 0)
  %103 = load i8*, i8** %6, align 8
  store i8* %103, i8** @arg0, align 8
  store i8* %103, i8** @commandname, align 8
  br label %104

104:                                              ; preds = %97, %94, %88
  %105 = load i8**, i8*** @argptr, align 8
  %106 = icmp ne i8** %105, null
  br i1 %106, label %107, label %118

107:                                              ; preds = %104
  %108 = load i32*, i32** @minusc, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %118

110:                                              ; preds = %107
  %111 = load i8**, i8*** @argptr, align 8
  %112 = load i8*, i8** %111, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = load i8**, i8*** @argptr, align 8
  %116 = getelementptr inbounds i8*, i8** %115, i32 1
  store i8** %116, i8*** @argptr, align 8
  %117 = load i8*, i8** %115, align 8
  store i8* %117, i8** @arg0, align 8
  br label %118

118:                                              ; preds = %114, %110, %107, %104
  %119 = load i8**, i8*** @argptr, align 8
  store i8** %119, i8*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @shellparam, i32 0, i32 0), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @shellparam, i32 0, i32 1), align 8
  br label %120

120:                                              ; preds = %124, %118
  %121 = load i8**, i8*** @argptr, align 8
  %122 = load i8*, i8** %121, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %129

124:                                              ; preds = %120
  %125 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @shellparam, i32 0, i32 2), align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @shellparam, i32 0, i32 2), align 4
  %127 = load i8**, i8*** @argptr, align 8
  %128 = getelementptr inbounds i8*, i8** %127, i32 1
  store i8** %128, i8*** @argptr, align 8
  br label %120

129:                                              ; preds = %120
  %130 = call i32 (...) @optschanged()
  ret void
}

declare dso_local i64 @getuid(...) #1

declare dso_local i64 @geteuid(...) #1

declare dso_local i64 @getgid(...) #1

declare dso_local i64 @getegid(...) #1

declare dso_local i32 @options(i32) #1

declare dso_local i64 @isatty(i32) #1

declare dso_local i32 @setinputfile(i8*, i32) #1

declare dso_local i32 @optschanged(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
