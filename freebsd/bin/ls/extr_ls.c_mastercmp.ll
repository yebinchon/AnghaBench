; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ls/extr_ls.c_mastercmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ls/extr_ls.c_mastercmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64 }

@FTS_ERR = common dso_local global i32 0, align 4
@FTS_NS = common dso_local global i32 0, align 4
@FTS_ROOTLEVEL = common dso_local global i64 0, align 8
@f_listdir = common dso_local global i32 0, align 4
@FTS_D = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__**, %struct.TYPE_8__**)* @mastercmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mastercmp(%struct.TYPE_8__** %0, %struct.TYPE_8__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__**, align 8
  %5 = alloca %struct.TYPE_8__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_8__** %0, %struct.TYPE_8__*** %4, align 8
  store %struct.TYPE_8__** %1, %struct.TYPE_8__*** %5, align 8
  %8 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @FTS_ERR, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %70

16:                                               ; preds = %2
  %17 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @FTS_ERR, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %70

25:                                               ; preds = %16
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @FTS_NS, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @FTS_NS, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %29, %25
  %34 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = call i32 @namecmp(%struct.TYPE_8__* %35, %struct.TYPE_8__* %37)
  store i32 %38, i32* %3, align 4
  br label %70

39:                                               ; preds = %29
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %64

43:                                               ; preds = %39
  %44 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @FTS_ROOTLEVEL, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %43
  %51 = load i32, i32* @f_listdir, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @FTS_D, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 1, i32* %3, align 4
  br label %70

58:                                               ; preds = %53
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @FTS_D, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 -1, i32* %3, align 4
  br label %70

63:                                               ; preds = %58
  br label %64

64:                                               ; preds = %63, %50, %43, %39
  %65 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = call i32 @sortfcn(%struct.TYPE_8__* %66, %struct.TYPE_8__* %68)
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %64, %62, %57, %33, %24, %15
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @namecmp(%struct.TYPE_8__*, %struct.TYPE_8__*) #1

declare dso_local i32 @sortfcn(%struct.TYPE_8__*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
