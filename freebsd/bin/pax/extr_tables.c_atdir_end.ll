; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_tables.c_atdir_end.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_tables.c_atdir_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, %struct.TYPE_3__* }

@atab = common dso_local global %struct.TYPE_3__** null, align 8
@A_TAB_SZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @atdir_end() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = alloca i32, align 4
  %3 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @atab, align 8
  %4 = icmp eq %struct.TYPE_3__** %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %42

6:                                                ; preds = %0
  store i32 0, i32* %2, align 4
  br label %7

7:                                                ; preds = %39, %6
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @A_TAB_SZ, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %42

11:                                               ; preds = %7
  %12 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @atab, align 8
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %12, i64 %14
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %1, align 8
  %17 = icmp eq %struct.TYPE_3__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %39

19:                                               ; preds = %11
  br label %20

20:                                               ; preds = %34, %19
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %22 = icmp ne %struct.TYPE_3__* %21, null
  br i1 %22, label %23, label %38

23:                                               ; preds = %20
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @set_ftime(i32 %26, i32 %29, i32 %32, i32 1)
  br label %34

34:                                               ; preds = %23
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  store %struct.TYPE_3__* %37, %struct.TYPE_3__** %1, align 8
  br label %20

38:                                               ; preds = %20
  br label %39

39:                                               ; preds = %38, %18
  %40 = load i32, i32* %2, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %2, align 4
  br label %7

42:                                               ; preds = %5, %7
  ret void
}

declare dso_local i32 @set_ftime(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
