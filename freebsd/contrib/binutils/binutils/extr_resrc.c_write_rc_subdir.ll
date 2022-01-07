; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resrc.c_write_rc_subdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resrc.c_write_rc_subdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_9__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Type: \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"cursor\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"bitmap\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"icon\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"menu\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"dialog\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"stringtable\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"fontdir\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"font\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"accelerators\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"rcdata\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"messagetable\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"group cursor\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"group icon\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"dlginclude\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"plugplay\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"vxd\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"anicursor\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"aniicon\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"toolbar\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"html\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"Name: \00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"Language: \00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"Level %d: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_8__*, i32*, i32*, i32*, i32)* @write_rc_subdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_rc_subdir(i32* %0, %struct.TYPE_8__* %1, i32* %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 (i32*, i8*, ...) @fprintf(i32* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %12, align 4
  switch i32 %16, label %94 [
    i32 1, label %17
    i32 2, label %76
    i32 3, label %85
  ]

17:                                               ; preds = %6
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 (i32*, i8*, ...) @wr_printcomment(i32* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %17
  %26 = load i32*, i32** %7, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = bitcast %struct.TYPE_9__* %28 to i64*
  %30 = load i64, i64* %29, align 4
  %31 = call i32 @res_id_print(i32* %26, i64 %30, i32 1)
  br label %75

32:                                               ; preds = %17
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %59 [
    i32 144, label %38
    i32 145, label %39
    i32 136, label %40
    i32 135, label %41
    i32 143, label %42
    i32 131, label %43
    i32 140, label %44
    i32 141, label %45
    i32 148, label %46
    i32 132, label %47
    i32 134, label %48
    i32 139, label %49
    i32 138, label %50
    i32 129, label %51
    i32 142, label %52
    i32 133, label %53
    i32 128, label %54
    i32 147, label %55
    i32 146, label %56
    i32 130, label %57
    i32 137, label %58
  ]

38:                                               ; preds = %32
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  br label %60

39:                                               ; preds = %32
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %13, align 8
  br label %60

40:                                               ; preds = %32
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %13, align 8
  br label %60

41:                                               ; preds = %32
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %13, align 8
  br label %60

42:                                               ; preds = %32
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %13, align 8
  br label %60

43:                                               ; preds = %32
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8** %13, align 8
  br label %60

44:                                               ; preds = %32
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8** %13, align 8
  br label %60

45:                                               ; preds = %32
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8** %13, align 8
  br label %60

46:                                               ; preds = %32
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8** %13, align 8
  br label %60

47:                                               ; preds = %32
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8** %13, align 8
  br label %60

48:                                               ; preds = %32
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i8** %13, align 8
  br label %60

49:                                               ; preds = %32
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8** %13, align 8
  br label %60

50:                                               ; preds = %32
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i8** %13, align 8
  br label %60

51:                                               ; preds = %32
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i8** %13, align 8
  br label %60

52:                                               ; preds = %32
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i8** %13, align 8
  br label %60

53:                                               ; preds = %32
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i8** %13, align 8
  br label %60

54:                                               ; preds = %32
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8** %13, align 8
  br label %60

55:                                               ; preds = %32
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i8** %13, align 8
  br label %60

56:                                               ; preds = %32
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), i8** %13, align 8
  br label %60

57:                                               ; preds = %32
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i8** %13, align 8
  br label %60

58:                                               ; preds = %32
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i8** %13, align 8
  br label %60

59:                                               ; preds = %32
  store i8* null, i8** %13, align 8
  br label %60

60:                                               ; preds = %59, %58, %57, %56, %55, %54, %53, %52, %51, %50, %49, %48, %47, %46, %45, %44, %43, %42, %41, %40, %39, %38
  %61 = load i8*, i8** %13, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load i32*, i32** %7, align 8
  %65 = load i8*, i8** %13, align 8
  %66 = call i32 (i32*, i8*, ...) @fprintf(i32* %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i8* %65)
  br label %74

67:                                               ; preds = %60
  %68 = load i32*, i32** %7, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = bitcast %struct.TYPE_9__* %70 to i64*
  %72 = load i64, i64* %71, align 4
  %73 = call i32 @res_id_print(i32* %68, i64 %72, i32 1)
  br label %74

74:                                               ; preds = %67, %63
  br label %75

75:                                               ; preds = %74, %25
  br label %104

76:                                               ; preds = %6
  %77 = load i32*, i32** %7, align 8
  %78 = call i32 (i32*, i8*, ...) @wr_printcomment(i32* %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0))
  %79 = load i32*, i32** %7, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = bitcast %struct.TYPE_9__* %81 to i64*
  %83 = load i64, i64* %82, align 4
  %84 = call i32 @res_id_print(i32* %79, i64 %83, i32 1)
  br label %104

85:                                               ; preds = %6
  %86 = load i32*, i32** %7, align 8
  %87 = call i32 (i32*, i8*, ...) @wr_printcomment(i32* %86, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0))
  %88 = load i32*, i32** %7, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = bitcast %struct.TYPE_9__* %90 to i64*
  %92 = load i64, i64* %91, align 4
  %93 = call i32 @res_id_print(i32* %88, i64 %92, i32 1)
  br label %104

94:                                               ; preds = %6
  %95 = load i32*, i32** %7, align 8
  %96 = load i32, i32* %12, align 4
  %97 = call i32 (i32*, i8*, ...) @wr_printcomment(i32* %95, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i64 0, i64 0), i32 %96)
  %98 = load i32*, i32** %7, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = bitcast %struct.TYPE_9__* %100 to i64*
  %102 = load i64, i64* %101, align 4
  %103 = call i32 @res_id_print(i32* %98, i64 %102, i32 1)
  br label %104

104:                                              ; preds = %94, %85, %76, %75
  %105 = load i32*, i32** %7, align 8
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** %9, align 8
  %111 = load i32*, i32** %10, align 8
  %112 = load i32*, i32** %11, align 8
  %113 = load i32, i32* %12, align 4
  %114 = add nsw i32 %113, 1
  %115 = call i32 @write_rc_directory(i32* %105, i32 %109, i32* %110, i32* %111, i32* %112, i32 %114)
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @wr_printcomment(i32*, i8*, ...) #1

declare dso_local i32 @res_id_print(i32*, i64, i32) #1

declare dso_local i32 @write_rc_directory(i32*, i32, i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
