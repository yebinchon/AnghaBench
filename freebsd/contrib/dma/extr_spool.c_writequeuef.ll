; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dma/extr_spool.c_writequeuef.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dma/extr_spool.c_writequeuef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qitem = type { i8*, i8*, i8*, i32*, i32 }

@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"ID: %s\0ASender: %s\0ARecipient: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qitem*)* @writequeuef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @writequeuef(%struct.qitem* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qitem*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.qitem* %0, %struct.qitem** %3, align 8
  %6 = load %struct.qitem*, %struct.qitem** %3, align 8
  %7 = getelementptr inbounds %struct.qitem, %struct.qitem* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @O_CREAT, align 4
  %10 = load i32, i32* @O_EXCL, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @O_RDWR, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @open_locked(i32 %8, i32 %13, i32 432)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %65

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @fchmod(i32 %19, i32 432)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 -1, i32* %2, align 4
  br label %65

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  %25 = call i32* @fdopen(i32 %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.qitem*, %struct.qitem** %3, align 8
  %27 = getelementptr inbounds %struct.qitem, %struct.qitem* %26, i32 0, i32 3
  store i32* %25, i32** %27, align 8
  %28 = load %struct.qitem*, %struct.qitem** %3, align 8
  %29 = getelementptr inbounds %struct.qitem, %struct.qitem* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  store i32 -1, i32* %2, align 4
  br label %65

33:                                               ; preds = %23
  %34 = load %struct.qitem*, %struct.qitem** %3, align 8
  %35 = getelementptr inbounds %struct.qitem, %struct.qitem* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.qitem*, %struct.qitem** %3, align 8
  %38 = getelementptr inbounds %struct.qitem, %struct.qitem* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.qitem*, %struct.qitem** %3, align 8
  %41 = getelementptr inbounds %struct.qitem, %struct.qitem* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.qitem*, %struct.qitem** %3, align 8
  %44 = getelementptr inbounds %struct.qitem, %struct.qitem* %43, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @fprintf(i32* %36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %39, i8* %42, i8* %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp sle i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %33
  store i32 -1, i32* %2, align 4
  br label %65

50:                                               ; preds = %33
  %51 = load %struct.qitem*, %struct.qitem** %3, align 8
  %52 = getelementptr inbounds %struct.qitem, %struct.qitem* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = call i64 @fflush(i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %50
  %57 = load %struct.qitem*, %struct.qitem** %3, align 8
  %58 = getelementptr inbounds %struct.qitem, %struct.qitem* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @fileno(i32* %59)
  %61 = call i64 @fsync(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56, %50
  store i32 -1, i32* %2, align 4
  br label %65

64:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %63, %49, %32, %22, %17
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @open_locked(i32, i32, i32) #1

declare dso_local i64 @fchmod(i32, i32) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*, i8*, i8*) #1

declare dso_local i64 @fflush(i32*) #1

declare dso_local i64 @fsync(i32) #1

declare dso_local i32 @fileno(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
