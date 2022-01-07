; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ed/extr_buf.c_put_sbuf_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ed/extr_buf.c_put_sbuf_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@errmsg = common dso_local global i8* null, align 8
@LINECHARS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"line too long\00", align 1
@seek_write = common dso_local global i64 0, align 8
@sfp = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"cannot seek temp file\00", align 1
@sfseek = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"cannot write temp file\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @put_sbuf_line(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %7 = call i64 @malloc(i32 16)
  %8 = inttoptr i64 %7 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %4, align 8
  %9 = icmp eq %struct.TYPE_4__* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load i32, i32* @stderr, align 4
  %12 = load i32, i32* @errno, align 4
  %13 = call i8* @strerror(i32 %12)
  %14 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %13)
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** @errmsg, align 8
  store i8* null, i8** %2, align 8
  br label %89

15:                                               ; preds = %1
  %16 = load i8*, i8** %3, align 8
  store i8* %16, i8** %6, align 8
  br label %17

17:                                               ; preds = %23, %15
  %18 = load i8*, i8** %6, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 10
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %22
  %24 = load i8*, i8** %6, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %6, align 8
  br label %17

26:                                               ; preds = %17
  %27 = load i8*, i8** %6, align 8
  %28 = load i8*, i8** %3, align 8
  %29 = ptrtoint i8* %27 to i64
  %30 = ptrtoint i8* %28 to i64
  %31 = sub i64 %29, %30
  %32 = load i32, i32* @LINECHARS, align 4
  %33 = sext i32 %32 to i64
  %34 = icmp sge i64 %31, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** @errmsg, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %37 = call i32 @free(%struct.TYPE_4__* %36)
  store i8* null, i8** %2, align 8
  br label %89

38:                                               ; preds = %26
  %39 = load i8*, i8** %6, align 8
  %40 = load i8*, i8** %3, align 8
  %41 = ptrtoint i8* %39 to i64
  %42 = ptrtoint i8* %40 to i64
  %43 = sub i64 %41, %42
  store i64 %43, i64* %5, align 8
  %44 = load i64, i64* @seek_write, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %38
  %47 = load i32, i32* @sfp, align 4
  %48 = load i32, i32* @SEEK_END, align 4
  %49 = call i64 @fseeko(i32 %47, i32 0, i32 %48)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load i32, i32* @stderr, align 4
  %53 = load i32, i32* @errno, align 4
  %54 = call i8* @strerror(i32 %53)
  %55 = call i32 @fprintf(i32 %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %54)
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8** @errmsg, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %57 = call i32 @free(%struct.TYPE_4__* %56)
  store i8* null, i8** %2, align 8
  br label %89

58:                                               ; preds = %46
  %59 = load i32, i32* @sfp, align 4
  %60 = call i64 @ftello(i32 %59)
  store i64 %60, i64* @sfseek, align 8
  store i64 0, i64* @seek_write, align 8
  br label %61

61:                                               ; preds = %58, %38
  %62 = load i8*, i8** %3, align 8
  %63 = load i64, i64* %5, align 8
  %64 = load i32, i32* @sfp, align 4
  %65 = call i64 @fwrite(i8* %62, i32 1, i64 %63, i32 %64)
  %66 = load i64, i64* %5, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %61
  store i64 -1, i64* @sfseek, align 8
  %69 = load i32, i32* @stderr, align 4
  %70 = load i32, i32* @errno, align 4
  %71 = call i8* @strerror(i32 %70)
  %72 = call i32 @fprintf(i32 %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %71)
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8** @errmsg, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %74 = call i32 @free(%struct.TYPE_4__* %73)
  store i8* null, i8** %2, align 8
  br label %89

75:                                               ; preds = %61
  %76 = load i64, i64* %5, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load i64, i64* @sfseek, align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  store i64 %79, i64* %81, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %83 = call i32 @add_line_node(%struct.TYPE_4__* %82)
  %84 = load i64, i64* %5, align 8
  %85 = load i64, i64* @sfseek, align 8
  %86 = add i64 %85, %84
  store i64 %86, i64* @sfseek, align 8
  %87 = load i8*, i8** %6, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %6, align 8
  store i8* %88, i8** %2, align 8
  br label %89

89:                                               ; preds = %75, %68, %51, %35, %10
  %90 = load i8*, i8** %2, align 8
  ret i8* %90
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @free(%struct.TYPE_4__*) #1

declare dso_local i64 @fseeko(i32, i32, i32) #1

declare dso_local i64 @ftello(i32) #1

declare dso_local i64 @fwrite(i8*, i32, i64, i32) #1

declare dso_local i32 @add_line_node(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
