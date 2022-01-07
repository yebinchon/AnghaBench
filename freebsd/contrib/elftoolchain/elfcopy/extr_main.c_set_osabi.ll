; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_main.c_set_osabi.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_main.c_set_osabi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }
%struct.elfcopy = type { i32 }

@osabis = common dso_local global %struct.TYPE_2__* null, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"unrecognized OSABI %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elfcopy*, i8*)* @set_osabi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_osabi(%struct.elfcopy* %0, i8* %1) #0 {
  %3 = alloca %struct.elfcopy*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.elfcopy* %0, %struct.elfcopy** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %35, %2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @osabis, align 8
  %9 = load i32, i32* %5, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %38

15:                                               ; preds = %7
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @osabis, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = call i64 @strcasecmp(i32* %21, i8* %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %15
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @osabis, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %33 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  store i32 1, i32* %6, align 4
  br label %38

34:                                               ; preds = %15
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %7

38:                                               ; preds = %25, %7
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* @EXIT_FAILURE, align 4
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @errx(i32 %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %43)
  br label %45

45:                                               ; preds = %41, %38
  ret void
}

declare dso_local i64 @strcasecmp(i32*, i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
