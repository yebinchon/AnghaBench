; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_optabs.c_can_fix_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_optabs.c_can_fix_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__** }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@ufixtrunc_optab = common dso_local global %struct.TYPE_11__* null, align 8
@sfixtrunc_optab = common dso_local global %struct.TYPE_11__* null, align 8
@CODE_FOR_nothing = common dso_local global i32 0, align 4
@ufix_optab = common dso_local global %struct.TYPE_11__* null, align 8
@sfix_optab = common dso_local global %struct.TYPE_11__* null, align 8
@ftrunc_optab = common dso_local global %struct.TYPE_12__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*)* @can_fix_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @can_fix_p(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ufixtrunc_optab, align 8
  br label %18

16:                                               ; preds = %4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sfixtrunc_optab, align 8
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi %struct.TYPE_11__* [ %15, %14 ], [ %17, %16 ]
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %10, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %22, i64 %24
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @CODE_FOR_nothing, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %18
  %36 = load i32*, i32** %9, align 8
  store i32 0, i32* %36, align 4
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %5, align 4
  br label %79

38:                                               ; preds = %18
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ufix_optab, align 8
  br label %45

43:                                               ; preds = %38
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** @sfix_optab, align 8
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi %struct.TYPE_11__* [ %42, %41 ], [ %44, %43 ]
  store %struct.TYPE_11__* %46, %struct.TYPE_11__** %10, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %49, i64 %51
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @CODE_FOR_nothing, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %76

62:                                               ; preds = %45
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ftrunc_optab, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @CODE_FOR_nothing, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %62
  %74 = load i32*, i32** %9, align 8
  store i32 1, i32* %74, align 4
  %75 = load i32, i32* %11, align 4
  store i32 %75, i32* %5, align 4
  br label %79

76:                                               ; preds = %62, %45
  %77 = load i32*, i32** %9, align 8
  store i32 0, i32* %77, align 4
  %78 = load i32, i32* @CODE_FOR_nothing, align 4
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %76, %73, %35
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
