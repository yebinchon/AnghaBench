; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ed/extr_buf.c_get_sbuf_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ed/extr_buf.c_get_sbuf_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }

@get_sbuf_line.sfbuf = internal global i8* null, align 8
@get_sbuf_line.sfbufsz = internal global i64 0, align 8
@buffer_head = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@seek_write = common dso_local global i32 0, align 4
@sfseek = common dso_local global i64 0, align 8
@sfp = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"cannot seek temp file\00", align 1
@errmsg = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"cannot read temp file\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_sbuf_line(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %6 = icmp eq %struct.TYPE_4__* %5, @buffer_head
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %57

8:                                                ; preds = %1
  store i32 1, i32* @seek_write, align 4
  %9 = load i64, i64* @sfseek, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %9, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* @sfseek, align 8
  %18 = load i32, i32* @sfp, align 4
  %19 = load i64, i64* @sfseek, align 8
  %20 = load i32, i32* @SEEK_SET, align 4
  %21 = call i64 @fseeko(i32 %18, i64 %19, i32 %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %14
  %24 = load i32, i32* @stderr, align 4
  %25 = load i32, i32* @errno, align 4
  %26 = call i8* @strerror(i32 %25)
  %27 = call i32 @fprintf(i32 %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %26)
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8** @errmsg, align 8
  store i8* null, i8** %2, align 8
  br label %57

28:                                               ; preds = %14
  br label %29

29:                                               ; preds = %28, %8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %4, align 8
  %33 = load i8*, i8** @get_sbuf_line.sfbuf, align 8
  %34 = load i64, i64* @get_sbuf_line.sfbufsz, align 8
  %35 = load i64, i64* %4, align 8
  %36 = add i64 %35, 1
  %37 = call i32 @REALLOC(i8* %33, i64 %34, i64 %36, i32* null)
  %38 = load i8*, i8** @get_sbuf_line.sfbuf, align 8
  %39 = load i64, i64* %4, align 8
  %40 = load i32, i32* @sfp, align 4
  %41 = call i64 @fread(i8* %38, i32 1, i64 %39, i32 %40)
  %42 = load i64, i64* %4, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %29
  %45 = load i32, i32* @stderr, align 4
  %46 = load i32, i32* @errno, align 4
  %47 = call i8* @strerror(i32 %46)
  %48 = call i32 @fprintf(i32 %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %47)
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8** @errmsg, align 8
  store i8* null, i8** %2, align 8
  br label %57

49:                                               ; preds = %29
  %50 = load i64, i64* %4, align 8
  %51 = load i64, i64* @sfseek, align 8
  %52 = add i64 %51, %50
  store i64 %52, i64* @sfseek, align 8
  %53 = load i8*, i8** @get_sbuf_line.sfbuf, align 8
  %54 = load i64, i64* %4, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8 0, i8* %55, align 1
  %56 = load i8*, i8** @get_sbuf_line.sfbuf, align 8
  store i8* %56, i8** %2, align 8
  br label %57

57:                                               ; preds = %49, %44, %23, %7
  %58 = load i8*, i8** %2, align 8
  ret i8* %58
}

declare dso_local i64 @fseeko(i32, i64, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @REALLOC(i8*, i64, i64, i32*) #1

declare dso_local i64 @fread(i8*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
