; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_suff.c_SuffRemoveSrc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_suff.c_SuffRemoveSrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_5__*, %struct.TYPE_6__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32, i64 }

@FAILURE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@PrintAddr = common dso_local global i32 0, align 4
@debug_file = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @SuffRemoveSrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SuffRemoveSrc(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load i64, i64* %3, align 8
  %8 = call i64 @Lst_Open(i64 %7)
  %9 = load i64, i64* @FAILURE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %62

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %57, %12
  %14 = load i64, i64* %3, align 8
  %15 = call i32* @Lst_Next(i64 %14)
  store i32* %15, i32** %4, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %58

17:                                               ; preds = %13
  %18 = load i32*, i32** %4, align 8
  %19 = call i64 @Lst_Datum(i32* %18)
  %20 = inttoptr i64 %19 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %5, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %57

25:                                               ; preds = %17
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = call i32 @free(%struct.TYPE_6__* %28)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = icmp ne %struct.TYPE_5__* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %25
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = call i32 @free(%struct.TYPE_6__* %37)
  br label %46

39:                                               ; preds = %25
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %39, %34
  %47 = load i64, i64* %3, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @Lst_Remove(i64 %47, i32* %48)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = call i32 @free(%struct.TYPE_6__* %50)
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, 1
  store i32 %53, i32* %6, align 4
  %54 = load i64, i64* %3, align 8
  %55 = call i32 @Lst_Close(i64 %54)
  %56 = load i32, i32* @TRUE, align 4
  store i32 %56, i32* %2, align 4
  br label %62

57:                                               ; preds = %17
  br label %13

58:                                               ; preds = %13
  %59 = load i64, i64* %3, align 8
  %60 = call i32 @Lst_Close(i64 %59)
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %58, %46, %11
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i64 @Lst_Open(i64) #1

declare dso_local i32* @Lst_Next(i64) #1

declare dso_local i64 @Lst_Datum(i32*) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

declare dso_local i32 @Lst_Remove(i64, i32*) #1

declare dso_local i32 @Lst_Close(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
