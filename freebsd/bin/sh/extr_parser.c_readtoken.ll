; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_parser.c_readtoken.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_parser.c_readtoken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alias = type { i32 }

@checkkwd = common dso_local global i32 0, align 4
@CHKNL = common dso_local global i32 0, align 4
@TNL = common dso_local global i32 0, align 4
@TWORD = common dso_local global i32 0, align 4
@quoteflag = common dso_local global i32 0, align 4
@CHKKWD = common dso_local global i32 0, align 4
@parsekwd = common dso_local global i8** null, align 8
@wordtext = common dso_local global i8* null, align 8
@KWDOFFSET = common dso_local global i32 0, align 4
@lasttoken = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"keyword %s recognized\0A\00", align 1
@tokname = common dso_local global i32* null, align 8
@CHKALIAS = common dso_local global i32 0, align 4
@TNOT = common dso_local global i32 0, align 4
@tokpushback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @readtoken to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readtoken() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.alias*, align 8
  %3 = alloca i8**, align 8
  br label %4

4:                                                ; preds = %85, %0
  %5 = call i32 (...) @xxreadtoken()
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* @checkkwd, align 4
  %7 = load i32, i32* @CHKNL, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %4
  br label %11

11:                                               ; preds = %15, %10
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @TNL, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = call i32 (...) @parseheredoc()
  %17 = call i32 (...) @xxreadtoken()
  store i32 %17, i32* %1, align 4
  br label %11

18:                                               ; preds = %11
  br label %19

19:                                               ; preds = %18, %4
  %20 = load i32, i32* %1, align 4
  %21 = load i32, i32* @TWORD, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %96

23:                                               ; preds = %19
  %24 = load i32, i32* @quoteflag, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %96, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* @checkkwd, align 4
  %28 = load i32, i32* @CHKKWD, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %76

31:                                               ; preds = %26
  %32 = load i8**, i8*** @parsekwd, align 8
  store i8** %32, i8*** %3, align 8
  br label %33

33:                                               ; preds = %72, %31
  %34 = load i8**, i8*** %3, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %75

37:                                               ; preds = %33
  %38 = load i8**, i8*** %3, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = load i8*, i8** @wordtext, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %41, %44
  br i1 %45, label %46, label %71

46:                                               ; preds = %37
  %47 = load i8**, i8*** %3, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = load i8*, i8** @wordtext, align 8
  %50 = call i64 @equal(i8* %48, i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %71

52:                                               ; preds = %46
  %53 = load i8**, i8*** %3, align 8
  %54 = load i8**, i8*** @parsekwd, align 8
  %55 = ptrtoint i8** %53 to i64
  %56 = ptrtoint i8** %54 to i64
  %57 = sub i64 %55, %56
  %58 = sdiv exact i64 %57, 8
  %59 = load i32, i32* @KWDOFFSET, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %58, %60
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %1, align 4
  store i32 %62, i32* @lasttoken, align 4
  %63 = load i32*, i32** @tokname, align 8
  %64 = load i32, i32* %1, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to i8*
  %70 = call i32 @TRACE(i8* %69)
  br label %97

71:                                               ; preds = %46, %37
  br label %72

72:                                               ; preds = %71
  %73 = load i8**, i8*** %3, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i32 1
  store i8** %74, i8*** %3, align 8
  br label %33

75:                                               ; preds = %33
  br label %76

76:                                               ; preds = %75, %26
  %77 = load i32, i32* @checkkwd, align 4
  %78 = load i32, i32* @CHKALIAS, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %95

81:                                               ; preds = %76
  %82 = load i8*, i8** @wordtext, align 8
  %83 = call %struct.alias* @lookupalias(i8* %82, i32 1)
  store %struct.alias* %83, %struct.alias** %2, align 8
  %84 = icmp ne %struct.alias* %83, null
  br i1 %84, label %85, label %95

85:                                               ; preds = %81
  %86 = load %struct.alias*, %struct.alias** %2, align 8
  %87 = getelementptr inbounds %struct.alias, %struct.alias* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.alias*, %struct.alias** %2, align 8
  %90 = getelementptr inbounds %struct.alias, %struct.alias* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @strlen(i32 %91)
  %93 = load %struct.alias*, %struct.alias** %2, align 8
  %94 = call i32 @pushstring(i32 %88, i32 %92, %struct.alias* %93)
  br label %4

95:                                               ; preds = %81, %76
  br label %96

96:                                               ; preds = %95, %23, %19
  br label %97

97:                                               ; preds = %96, %52
  %98 = load i32, i32* %1, align 4
  %99 = load i32, i32* @TNOT, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  store i32 0, i32* @checkkwd, align 4
  br label %102

102:                                              ; preds = %101, %97
  %103 = load i32, i32* %1, align 4
  ret i32 %103
}

declare dso_local i32 @xxreadtoken(...) #1

declare dso_local i32 @parseheredoc(...) #1

declare dso_local i64 @equal(i8*, i8*) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local %struct.alias* @lookupalias(i8*, i32) #1

declare dso_local i32 @pushstring(i32, i32, %struct.alias*) #1

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
