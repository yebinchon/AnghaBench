; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_print.c_dt_print_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_print.c_dt_print_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32*, i32* }
%struct.TYPE_9__ = type { i32, i64 }

@NBBY = common dso_local global i64 0, align 8
@CTF_ERR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"<unknown encoding>\00", align 1
@CTF_INT_VARARGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"'%c'\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"'\\0'\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"'\\%03o'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, %struct.TYPE_8__*)* @dt_print_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt_print_int(i32 %0, i64 %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %6, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %7, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %8, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @NBBY, align 8
  %24 = udiv i64 %22, %23
  %25 = add i64 %21, %24
  store i64 %25, i64* %11, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i64 @ctf_type_encoding(i32* %26, i32 %27, %struct.TYPE_9__* %9)
  %29 = load i64, i64* @CTF_ERR, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 (i32*, i8*, ...) @fprintf(i32* %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %105

34:                                               ; preds = %3
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @CTF_INT_VARARGS, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 (i32*, i8*, ...) @fprintf(i32* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %105

43:                                               ; preds = %34
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @NBBY, align 8
  %47 = udiv i64 %45, %46
  store i64 %47, i64* %10, align 8
  %48 = load i64, i64* %10, align 8
  %49 = icmp ugt i64 %48, 8
  br i1 %49, label %62, label %50

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @NBBY, align 8
  %54 = urem i64 %52, %53
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %50
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* %10, align 8
  %59 = sub i64 %58, 1
  %60 = and i64 %57, %59
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %56, %50, %43
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %64 = load i64, i64* %5, align 8
  %65 = call i32 @print_bitfield(%struct.TYPE_8__* %63, i64 %64, %struct.TYPE_9__* %9)
  br label %105

66:                                               ; preds = %56
  %67 = bitcast %struct.TYPE_9__* %9 to { i32, i64 }*
  %68 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %67, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i64 @CTF_IS_CHAR(i32 %69, i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %100

74:                                               ; preds = %66
  %75 = load i64, i64* %11, align 8
  %76 = inttoptr i64 %75 to i8*
  %77 = load i8, i8* %76, align 1
  store i8 %77, i8* %12, align 1
  %78 = load i8, i8* %12, align 1
  %79 = call i64 @isprint(i8 signext %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %74
  %82 = load i32*, i32** %7, align 8
  %83 = load i8, i8* %12, align 1
  %84 = sext i8 %83 to i32
  %85 = call i32 (i32*, i8*, ...) @fprintf(i32* %82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  br label %99

86:                                               ; preds = %74
  %87 = load i8, i8* %12, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load i32*, i32** %7, align 8
  %92 = call i32 (i32*, i8*, ...) @fprintf(i32* %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %98

93:                                               ; preds = %86
  %94 = load i32*, i32** %7, align 8
  %95 = load i8, i8* %12, align 1
  %96 = sext i8 %95 to i32
  %97 = call i32 (i32*, i8*, ...) @fprintf(i32* %94, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %93, %90
  br label %99

99:                                               ; preds = %98, %81
  br label %105

100:                                              ; preds = %66
  %101 = load i32*, i32** %7, align 8
  %102 = load i64, i64* %11, align 8
  %103 = load i64, i64* %10, align 8
  %104 = call i32 @dt_print_hex(i32* %101, i64 %102, i64 %103)
  br label %105

105:                                              ; preds = %100, %99, %62, %40, %31
  ret void
}

declare dso_local i64 @ctf_type_encoding(i32*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @print_bitfield(%struct.TYPE_8__*, i64, %struct.TYPE_9__*) #1

declare dso_local i64 @CTF_IS_CHAR(i32, i64) #1

declare dso_local i64 @isprint(i8 signext) #1

declare dso_local i32 @dt_print_hex(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
