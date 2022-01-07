; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/file/src/extr_funcs.c_file_vprintf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/file/src/extr_funcs.c_file_vprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.magic_set = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@EVENT_HAD_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"vasprintf failed (%s)\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @file_vprintf(%struct.magic_set* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.magic_set*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.magic_set* %0, %struct.magic_set** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.magic_set*, %struct.magic_set** %5, align 8
  %12 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @EVENT_HAD_ERR, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %60

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @vasprintf(i8** %9, i8* %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %55

25:                                               ; preds = %18
  %26 = load %struct.magic_set*, %struct.magic_set** %5, align 8
  %27 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %50

31:                                               ; preds = %25
  %32 = load %struct.magic_set*, %struct.magic_set** %5, align 8
  %33 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 @asprintf(i8** %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %35, i8* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i8*, i8** %9, align 8
  %39 = call i32 @free(i8* %38)
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  br label %55

43:                                               ; preds = %31
  %44 = load %struct.magic_set*, %struct.magic_set** %5, align 8
  %45 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @free(i8* %47)
  %49 = load i8*, i8** %10, align 8
  store i8* %49, i8** %9, align 8
  br label %50

50:                                               ; preds = %43, %25
  %51 = load i8*, i8** %9, align 8
  %52 = load %struct.magic_set*, %struct.magic_set** %5, align 8
  %53 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i8* %51, i8** %54, align 8
  store i32 0, i32* %4, align 4
  br label %60

55:                                               ; preds = %42, %24
  %56 = load i32, i32* @stderr, align 4
  %57 = load i32, i32* @errno, align 4
  %58 = call i8* @strerror(i32 %57)
  %59 = call i32 @fprintf(i32 %56, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %58)
  store i32 -1, i32* %4, align 4
  br label %60

60:                                               ; preds = %55, %50, %17
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @vasprintf(i8**, i8*, i32) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
