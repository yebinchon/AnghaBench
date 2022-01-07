; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dma/extr_dma.c_set_from.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dma/extr_dma.c_set_from.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8* }
%struct.queue = type { i8* }

@.str = private unnamed_addr constant [6 x i8] c"EMAIL\00", align 1
@config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@username = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"%s@%s\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.queue*, i8*)* @set_from to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @set_from(%struct.queue* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.queue*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.queue* %0, %struct.queue** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %6, align 8
  br label %27

13:                                               ; preds = %2
  %14 = call i8* @getenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = call i8* @getenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i8* %17, i8** %6, align 8
  br label %26

18:                                               ; preds = %13
  %19 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  store i8* %22, i8** %6, align 8
  br label %25

23:                                               ; preds = %18
  %24 = load i8*, i8** @username, align 8
  store i8* %24, i8** %6, align 8
  br label %25

25:                                               ; preds = %23, %21
  br label %26

26:                                               ; preds = %25, %16
  br label %27

27:                                               ; preds = %26, %11
  %28 = load i8*, i8** %6, align 8
  %29 = call i32* @strchr(i8* %28, i8 signext 64)
  %30 = icmp ne i32* %29, null
  br i1 %30, label %44, label %31

31:                                               ; preds = %27
  %32 = call i8* (...) @hostname()
  store i8* %32, i8** %8, align 8
  %33 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 1), align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 1), align 8
  store i8* %36, i8** %8, align 8
  br label %37

37:                                               ; preds = %35, %31
  %38 = load i8*, i8** %6, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = call i64 @asprintf(i8** %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %38, i8* %39)
  %41 = icmp sle i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i8* null, i8** %3, align 8
  br label %62

43:                                               ; preds = %37
  br label %51

44:                                               ; preds = %27
  %45 = load i8*, i8** %6, align 8
  %46 = call i8* @strdup(i8* %45)
  store i8* %46, i8** %7, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i8* null, i8** %3, align 8
  br label %62

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %50, %43
  %52 = load i8*, i8** %7, align 8
  %53 = call i32* @strchr(i8* %52, i8 signext 10)
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* @EINVAL, align 4
  store i32 %56, i32* @errno, align 4
  store i8* null, i8** %3, align 8
  br label %62

57:                                               ; preds = %51
  %58 = load i8*, i8** %7, align 8
  %59 = load %struct.queue*, %struct.queue** %4, align 8
  %60 = getelementptr inbounds %struct.queue, %struct.queue* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  %61 = load i8*, i8** %7, align 8
  store i8* %61, i8** %3, align 8
  br label %62

62:                                               ; preds = %57, %55, %49, %42
  %63 = load i8*, i8** %3, align 8
  ret i8* %63
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i8* @hostname(...) #1

declare dso_local i64 @asprintf(i8**, i8*, i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
