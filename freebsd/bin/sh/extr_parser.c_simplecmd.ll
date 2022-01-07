; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_parser.c_simplecmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_parser.c_simplecmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.node = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %union.node*, %union.node* }
%struct.TYPE_5__ = type { i8*, %union.node* }
%struct.TYPE_4__ = type { %union.node* }

@CHKALIAS = common dso_local global i32 0, align 4
@checkkwd = common dso_local global i32 0, align 4
@TWORD = common dso_local global i64 0, align 8
@wordtext = common dso_local global i32 0, align 4
@lasttoken = common dso_local global i64 0, align 8
@TREDIR = common dso_local global i64 0, align 8
@redirnode = common dso_local global %union.node* null, align 8
@TLP = common dso_local global i64 0, align 8
@TRP = common dso_local global i32 0, align 4
@plinno = common dso_local global i64 0, align 8
@funclinno = common dso_local global i64 0, align 8
@quoteflag = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"!%*+-=?@}~\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Bad function name\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Cannot override a special builtin with a function\00", align 1
@NDEFUN = common dso_local global i32 0, align 4
@tokpushback = common dso_local global i32 0, align 4
@NCMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%union.node* (%union.node**, %union.node*)* @simplecmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %union.node* @simplecmd(%union.node** %0, %union.node* %1) #0 {
  %3 = alloca %union.node*, align 8
  %4 = alloca %union.node**, align 8
  %5 = alloca %union.node*, align 8
  %6 = alloca %union.node*, align 8
  %7 = alloca %union.node**, align 8
  %8 = alloca %union.node**, align 8
  %9 = alloca %union.node*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %union.node** %0, %union.node*** %4, align 8
  store %union.node* %1, %union.node** %5, align 8
  %12 = load %union.node**, %union.node*** %4, align 8
  store %union.node** %12, %union.node*** %8, align 8
  store %union.node* null, %union.node** %9, align 8
  %13 = load %union.node*, %union.node** %5, align 8
  %14 = icmp eq %union.node* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store %union.node** %5, %union.node*** %4, align 8
  br label %16

16:                                               ; preds = %15, %2
  store %union.node* null, %union.node** %6, align 8
  store %union.node** %6, %union.node*** %7, align 8
  %17 = load %union.node**, %union.node*** %4, align 8
  store %union.node** %17, %union.node*** %8, align 8
  %18 = load i32, i32* @CHKALIAS, align 4
  store i32 %18, i32* %11, align 4
  br label %19

19:                                               ; preds = %132, %16
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* @checkkwd, align 4
  %21 = call i64 (...) @readtoken()
  %22 = load i64, i64* @TWORD, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %19
  %25 = call %union.node* (...) @makename()
  store %union.node* %25, %union.node** %9, align 8
  %26 = load %union.node*, %union.node** %9, align 8
  %27 = load %union.node**, %union.node*** %7, align 8
  store %union.node* %26, %union.node** %27, align 8
  %28 = load %union.node*, %union.node** %9, align 8
  %29 = bitcast %union.node* %28 to %struct.TYPE_5__*
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  store %union.node** %30, %union.node*** %7, align 8
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %24
  %34 = load i32, i32* @wordtext, align 4
  %35 = call i32 @isassignment(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  store i32 0, i32* %11, align 4
  br label %38

38:                                               ; preds = %37, %33, %24
  br label %132

39:                                               ; preds = %19
  %40 = load i64, i64* @lasttoken, align 8
  %41 = load i64, i64* @TREDIR, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = load %union.node*, %union.node** @redirnode, align 8
  store %union.node* %44, %union.node** %9, align 8
  %45 = load %union.node**, %union.node*** %4, align 8
  store %union.node* %44, %union.node** %45, align 8
  %46 = load %union.node*, %union.node** %9, align 8
  %47 = bitcast %union.node* %46 to %struct.TYPE_4__*
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store %union.node** %48, %union.node*** %4, align 8
  %49 = call i32 (...) @parsefname()
  br label %131

50:                                               ; preds = %39
  %51 = load i64, i64* @lasttoken, align 8
  %52 = load i64, i64* @TLP, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %128

54:                                               ; preds = %50
  %55 = load %union.node**, %union.node*** %7, align 8
  %56 = load %union.node*, %union.node** %6, align 8
  %57 = bitcast %union.node* %56 to %struct.TYPE_5__*
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = icmp eq %union.node** %55, %58
  br i1 %59, label %60, label %128

60:                                               ; preds = %54
  %61 = load %union.node**, %union.node*** %4, align 8
  %62 = load %union.node**, %union.node*** %8, align 8
  %63 = icmp eq %union.node** %61, %62
  br i1 %63, label %64, label %128

64:                                               ; preds = %60
  %65 = load i32, i32* @TRP, align 4
  %66 = call i32 @consumetoken(i32 %65)
  %67 = load i64, i64* @plinno, align 8
  store i64 %67, i64* @funclinno, align 8
  %68 = load %union.node*, %union.node** %9, align 8
  %69 = bitcast %union.node* %68 to %struct.TYPE_5__*
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @noexpand(i8* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %100

74:                                               ; preds = %64
  %75 = load i64, i64* @quoteflag, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %100, label %77

77:                                               ; preds = %74
  %78 = load %union.node*, %union.node** %9, align 8
  %79 = bitcast %union.node* %78 to %struct.TYPE_5__*
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i64 @strchr(i8* %81, i8 signext 47)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %100, label %84

84:                                               ; preds = %77
  %85 = load %union.node*, %union.node** %9, align 8
  %86 = bitcast %union.node* %85 to %struct.TYPE_5__*
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = load %union.node*, %union.node** %9, align 8
  %90 = bitcast %union.node* %89 to %struct.TYPE_5__*
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @strlen(i8* %92)
  %94 = sub nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %88, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = call i64 @strchr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8 signext %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %84, %77, %74, %64
  %101 = call i32 @synerror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %102

102:                                              ; preds = %100, %84
  %103 = load %union.node*, %union.node** %9, align 8
  %104 = bitcast %union.node* %103 to %struct.TYPE_5__*
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @rmescapes(i8* %106)
  %108 = load %union.node*, %union.node** %9, align 8
  %109 = bitcast %union.node* %108 to %struct.TYPE_5__*
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = call i64 @find_builtin(i8* %111, i32* %10)
  %113 = icmp sge i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %102
  %115 = load i32, i32* %10, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %114
  %118 = call i32 @synerror(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  br label %119

119:                                              ; preds = %117, %114, %102
  %120 = load i32, i32* @NDEFUN, align 4
  %121 = load %union.node*, %union.node** %9, align 8
  %122 = bitcast %union.node* %121 to i32*
  store i32 %120, i32* %122, align 8
  %123 = call %union.node* (...) @command()
  %124 = load %union.node*, %union.node** %9, align 8
  %125 = bitcast %union.node* %124 to %struct.TYPE_5__*
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  store %union.node* %123, %union.node** %126, align 8
  store i64 0, i64* @funclinno, align 8
  %127 = load %union.node*, %union.node** %9, align 8
  store %union.node* %127, %union.node** %3, align 8
  br label %150

128:                                              ; preds = %60, %54, %50
  %129 = load i32, i32* @tokpushback, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* @tokpushback, align 4
  br label %133

131:                                              ; preds = %43
  br label %132

132:                                              ; preds = %131, %38
  br label %19

133:                                              ; preds = %128
  %134 = load %union.node**, %union.node*** %7, align 8
  store %union.node* null, %union.node** %134, align 8
  %135 = load %union.node**, %union.node*** %4, align 8
  store %union.node* null, %union.node** %135, align 8
  %136 = call i64 @stalloc(i32 4)
  %137 = inttoptr i64 %136 to %union.node*
  store %union.node* %137, %union.node** %9, align 8
  %138 = load i32, i32* @NCMD, align 4
  %139 = load %union.node*, %union.node** %9, align 8
  %140 = bitcast %union.node* %139 to i32*
  store i32 %138, i32* %140, align 8
  %141 = load %union.node*, %union.node** %6, align 8
  %142 = load %union.node*, %union.node** %9, align 8
  %143 = bitcast %union.node* %142 to %struct.TYPE_6__*
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 1
  store %union.node* %141, %union.node** %144, align 8
  %145 = load %union.node*, %union.node** %5, align 8
  %146 = load %union.node*, %union.node** %9, align 8
  %147 = bitcast %union.node* %146 to %struct.TYPE_6__*
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  store %union.node* %145, %union.node** %148, align 8
  %149 = load %union.node*, %union.node** %9, align 8
  store %union.node* %149, %union.node** %3, align 8
  br label %150

150:                                              ; preds = %133, %119
  %151 = load %union.node*, %union.node** %3, align 8
  ret %union.node* %151
}

declare dso_local i64 @readtoken(...) #1

declare dso_local %union.node* @makename(...) #1

declare dso_local i32 @isassignment(i32) #1

declare dso_local i32 @parsefname(...) #1

declare dso_local i32 @consumetoken(i32) #1

declare dso_local i32 @noexpand(i8*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @synerror(i8*) #1

declare dso_local i32 @rmescapes(i8*) #1

declare dso_local i64 @find_builtin(i8*, i32*) #1

declare dso_local %union.node* @command(...) #1

declare dso_local i64 @stalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
