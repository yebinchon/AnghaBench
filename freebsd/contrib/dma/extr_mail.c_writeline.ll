; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dma/extr_mail.c_writeline.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dma/extr_mail.c_writeline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue = type { i32 }

@MAX_LINE_RFC822 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.queue*, i8*, i64)* @writeline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @writeline(%struct.queue* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.queue*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.queue* %0, %struct.queue** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  br label %9

9:                                                ; preds = %42, %3
  %10 = load i64, i64* %7, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %49

12:                                               ; preds = %9
  %13 = load i64, i64* %7, align 8
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @MAX_LINE_RFC822, align 8
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i64, i64* @MAX_LINE_RFC822, align 8
  %19 = sub nsw i64 %18, 10
  store i64 %19, i64* %8, align 8
  br label %20

20:                                               ; preds = %17, %12
  %21 = load i8*, i8** %6, align 8
  %22 = load i64, i64* %8, align 8
  %23 = trunc i64 %22 to i32
  %24 = load %struct.queue*, %struct.queue** %5, align 8
  %25 = getelementptr inbounds %struct.queue, %struct.queue* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @fwrite(i8* %21, i32 %23, i32 1, i32 %26)
  %28 = icmp ne i32 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  store i32 -1, i32* %4, align 4
  br label %50

30:                                               ; preds = %20
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @MAX_LINE_RFC822, align 8
  %33 = icmp sle i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %49

35:                                               ; preds = %30
  %36 = load %struct.queue*, %struct.queue** %5, align 8
  %37 = getelementptr inbounds %struct.queue, %struct.queue* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @fwrite(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1, i32 1, i32 %38)
  %40 = icmp ne i32 %39, 1
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 -1, i32* %4, align 4
  br label %50

42:                                               ; preds = %35
  %43 = load i64, i64* @MAX_LINE_RFC822, align 8
  %44 = sub nsw i64 %43, 10
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 %44
  store i8* %46, i8** %6, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = call i64 @strlen(i8* %47)
  store i64 %48, i64* %7, align 8
  br label %9

49:                                               ; preds = %34, %9
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %41, %29
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @fwrite(i8*, i32, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
