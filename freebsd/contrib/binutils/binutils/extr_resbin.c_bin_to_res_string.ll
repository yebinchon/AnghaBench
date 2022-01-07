; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resbin.c_bin_to_res_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resbin.c_bin_to_res_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i8** }

@.str = private unnamed_addr constant [26 x i8] c"stringtable string length\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"stringtable string\00", align 1
@RES_TYPE_STRINGTABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (i32*, i32*, i32)* @bin_to_res_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @bin_to_res_string(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = call i64 @res_alloc(i32 8)
  %14 = inttoptr i64 %13 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %7, align 8
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %96, %3
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 16
  br i1 %17, label %18, label %99

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 2
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 @toosmall(i32 %22)
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i32*, i32** %4, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = call i8* @windres_get_16(i32* %25, i32* %26, i32 2)
  %28 = ptrtoint i8* %27 to i32
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i32 %29, i32* %36, align 8
  %37 = load i32, i32* %10, align 4
  %38 = icmp ugt i32 %37, 0
  br i1 %38, label %39, label %84

39:                                               ; preds = %24
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %10, align 4
  %42 = mul i32 2, %41
  %43 = add i32 2, %42
  %44 = icmp ult i32 %40, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %47 = call i32 @toosmall(i32 %46)
  br label %48

48:                                               ; preds = %45, %39
  %49 = load i32, i32* %10, align 4
  %50 = zext i32 %49 to i64
  %51 = mul i64 %50, 8
  %52 = trunc i64 %51 to i32
  %53 = call i64 @res_alloc(i32 %52)
  %54 = inttoptr i64 %53 to i8**
  store i8** %54, i8*** %11, align 8
  %55 = load i8**, i8*** %11, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  store i8** %55, i8*** %62, align 8
  store i32 0, i32* %12, align 4
  br label %63

63:                                               ; preds = %80, %48
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp ult i32 %64, %65
  br i1 %66, label %67, label %83

67:                                               ; preds = %63
  %68 = load i32*, i32** %4, align 8
  %69 = load i32*, i32** %5, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  %71 = load i32, i32* %12, align 4
  %72 = mul i32 %71, 2
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  %75 = call i8* @windres_get_16(i32* %68, i32* %74, i32 2)
  %76 = load i8**, i8*** %11, align 8
  %77 = load i32, i32* %12, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  store i8* %75, i8** %79, align 8
  br label %80

80:                                               ; preds = %67
  %81 = load i32, i32* %12, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %12, align 4
  br label %63

83:                                               ; preds = %63
  br label %84

84:                                               ; preds = %83, %24
  %85 = load i32, i32* %10, align 4
  %86 = mul i32 2, %85
  %87 = add i32 2, %86
  %88 = load i32*, i32** %5, align 8
  %89 = zext i32 %87 to i64
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  store i32* %90, i32** %5, align 8
  %91 = load i32, i32* %10, align 4
  %92 = mul i32 2, %91
  %93 = add i32 2, %92
  %94 = load i32, i32* %6, align 4
  %95 = sub i32 %94, %93
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %84
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %8, align 4
  br label %15

99:                                               ; preds = %15
  %100 = call i64 @res_alloc(i32 16)
  %101 = inttoptr i64 %100 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %101, %struct.TYPE_9__** %9, align 8
  %102 = load i32, i32* @RES_TYPE_STRINGTABLE, align 4
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 8
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  store %struct.TYPE_8__* %105, %struct.TYPE_8__** %108, align 8
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  ret %struct.TYPE_9__* %109
}

declare dso_local i64 @res_alloc(i32) #1

declare dso_local i32 @toosmall(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @windres_get_16(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
