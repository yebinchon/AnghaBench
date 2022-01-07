; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_ftree.c_ftree_sel.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_ftree.c_ftree_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@ftcur = common dso_local global %struct.TYPE_5__* null, align 8
@nflag = common dso_local global i64 0, align 8
@ftree_skip = common dso_local global i32 0, align 4
@dflag = common dso_local global i32 0, align 4
@PAX_DIR = common dso_local global i64 0, align 8
@ftent = common dso_local global i32* null, align 8
@ftsp = common dso_local global i32 0, align 4
@FTS_SKIP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ftree_sel(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ftcur, align 8
  %4 = icmp ne %struct.TYPE_5__* %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ftcur, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i32 1, i32* %7, align 4
  br label %8

8:                                                ; preds = %5, %1
  %9 = load i64, i64* @nflag, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  store i32 1, i32* @ftree_skip, align 4
  br label %12

12:                                               ; preds = %11, %8
  %13 = load i32, i32* @dflag, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PAX_DIR, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %12
  br label %30

22:                                               ; preds = %15
  %23 = load i32*, i32** @ftent, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i32, i32* @ftsp, align 4
  %27 = load i32*, i32** @ftent, align 8
  %28 = load i32, i32* @FTS_SKIP, align 4
  %29 = call i32 @fts_set(i32 %26, i32* %27, i32 %28)
  br label %30

30:                                               ; preds = %21, %25, %22
  ret void
}

declare dso_local i32 @fts_set(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
