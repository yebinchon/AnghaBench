; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resrc.c_define_rcdata_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resrc.c_define_rcdata_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, i32, i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32* }
%struct.stat = type { i32 }

@FOPEN_RB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"stat failed on file `%s': %s\00", align 1
@errno = common dso_local global i32 0, align 4
@RCDATA_BUFFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @define_rcdata_file(i32 %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.stat, align 4
  %11 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i32, i32* @FOPEN_RB, align 4
  %14 = call i32* @open_file_search(i8* %12, i32 %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %9)
  store i32* %14, i32** %8, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = call i64 @stat(i8* %15, %struct.stat* %10)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i8*, i8** %9, align 8
  %21 = load i32, i32* @errno, align 4
  %22 = call i32 @strerror(i32 %21)
  %23 = call i32 @fatal(i32 %19, i8* %20, i32 %22)
  br label %24

24:                                               ; preds = %18, %3
  %25 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @res_alloc(i32 %26)
  %28 = inttoptr i64 %27 to i32*
  store i32* %28, i32** %11, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @get_data(i32* %29, i32* %30, i32 %32, i8* %33)
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @fclose(i32* %35)
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 @free(i8* %37)
  %39 = call i64 @res_alloc(i32 32)
  %40 = inttoptr i64 %39 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %40, %struct.TYPE_7__** %7, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 2
  store i32* null, i32** %42, align 8
  %43 = load i32, i32* @RCDATA_BUFFER, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i32 %47, i32* %51, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  store i32* %52, i32** %56, align 8
  %57 = load i32, i32* %4, align 4
  %58 = load i32*, i32** %5, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %60 = call i32 @define_rcdata(i32 %57, i32* %58, %struct.TYPE_7__* %59)
  ret void
}

declare dso_local i32* @open_file_search(i8*, i32, i8*, i8**) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @fatal(i32, i8*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @res_alloc(i32) #1

declare dso_local i32 @get_data(i32*, i32*, i32, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @define_rcdata(i32, i32*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
