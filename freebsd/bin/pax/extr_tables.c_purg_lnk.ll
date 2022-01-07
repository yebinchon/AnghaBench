; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_tables.c_purg_lnk.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_tables.c_purg_lnk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_8__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64, i64 }

@ltab = common dso_local global %struct.TYPE_8__** null, align 8
@PAX_DIR = common dso_local global i64 0, align 8
@PAX_HLK = common dso_local global i64 0, align 8
@PAX_HRG = common dso_local global i64 0, align 8
@L_TAB_SZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @purg_lnk(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_8__**, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %6 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @ltab, align 8
  %7 = icmp eq %struct.TYPE_8__** %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %96

9:                                                ; preds = %1
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sle i32 %13, 1
  br i1 %14, label %33, label %15

15:                                               ; preds = %9
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PAX_DIR, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %33, label %21

21:                                               ; preds = %15
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PAX_HLK, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PAX_HRG, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27, %21, %15, %9
  br label %96

34:                                               ; preds = %27
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = load i32, i32* @L_TAB_SZ, align 4
  %41 = urem i32 %39, %40
  %42 = zext i32 %41 to i64
  store i64 %42, i64* %5, align 8
  %43 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @ltab, align 8
  %44 = load i64, i64* %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %43, i64 %44
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  store %struct.TYPE_8__* %46, %struct.TYPE_8__** %3, align 8
  %47 = icmp eq %struct.TYPE_8__* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %34
  br label %96

49:                                               ; preds = %34
  %50 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @ltab, align 8
  %51 = load i64, i64* %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %50, i64 %51
  store %struct.TYPE_8__** %52, %struct.TYPE_8__*** %4, align 8
  br label %53

53:                                               ; preds = %75, %49
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %55 = icmp ne %struct.TYPE_8__* %54, null
  br i1 %55, label %56, label %81

56:                                               ; preds = %53
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %59, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %56
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %68, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %65
  br label %81

75:                                               ; preds = %65, %56
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 3
  store %struct.TYPE_8__** %77, %struct.TYPE_8__*** %4, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 3
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  store %struct.TYPE_8__* %80, %struct.TYPE_8__** %3, align 8
  br label %53

81:                                               ; preds = %74, %53
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %83 = icmp eq %struct.TYPE_8__* %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  br label %96

85:                                               ; preds = %81
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 3
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  store %struct.TYPE_8__* %88, %struct.TYPE_8__** %89, align 8
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = call i32 @free(%struct.TYPE_8__* %92)
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %95 = call i32 @free(%struct.TYPE_8__* %94)
  br label %96

96:                                               ; preds = %85, %84, %48, %33, %8
  ret void
}

declare dso_local i32 @free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
