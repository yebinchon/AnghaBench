; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgloopmanip.c_update_single_exits_after_duplication.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgloopmanip.c_update_single_exits_after_duplication.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.loop = type { %struct.TYPE_6__*, %struct.loop* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@BB_DUPLICATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__**, i32, %struct.loop*)* @update_single_exits_after_duplication to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_single_exits_after_duplication(%struct.TYPE_7__** %0, i32 %1, %struct.loop* %2) #0 {
  %4 = alloca %struct.TYPE_7__**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.loop*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.loop* %2, %struct.loop** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %22, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %8
  %13 = load i32, i32* @BB_DUPLICATED, align 4
  %14 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %15 = load i32, i32* %7, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %14, i64 %16
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %13
  store i32 %21, i32* %19, align 4
  br label %22

22:                                               ; preds = %12
  %23 = load i32, i32* %7, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %7, align 4
  br label %8

25:                                               ; preds = %8
  br label %26

26:                                               ; preds = %52, %25
  %27 = load %struct.loop*, %struct.loop** %6, align 8
  %28 = getelementptr inbounds %struct.loop, %struct.loop* %27, i32 0, i32 1
  %29 = load %struct.loop*, %struct.loop** %28, align 8
  %30 = icmp ne %struct.loop* %29, null
  br i1 %30, label %31, label %56

31:                                               ; preds = %26
  %32 = load %struct.loop*, %struct.loop** %6, align 8
  %33 = getelementptr inbounds %struct.loop, %struct.loop* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = icmp ne %struct.TYPE_6__* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  br label %52

37:                                               ; preds = %31
  %38 = load %struct.loop*, %struct.loop** %6, align 8
  %39 = getelementptr inbounds %struct.loop, %struct.loop* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @BB_DUPLICATED, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %37
  %49 = load %struct.loop*, %struct.loop** %6, align 8
  %50 = getelementptr inbounds %struct.loop, %struct.loop* %49, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %50, align 8
  br label %51

51:                                               ; preds = %48, %37
  br label %52

52:                                               ; preds = %51, %36
  %53 = load %struct.loop*, %struct.loop** %6, align 8
  %54 = getelementptr inbounds %struct.loop, %struct.loop* %53, i32 0, i32 1
  %55 = load %struct.loop*, %struct.loop** %54, align 8
  store %struct.loop* %55, %struct.loop** %6, align 8
  br label %26

56:                                               ; preds = %26
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %72, %56
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %57
  %62 = load i32, i32* @BB_DUPLICATED, align 4
  %63 = xor i32 %62, -1
  %64 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %65 = load i32, i32* %7, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %64, i64 %66
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, %63
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %61
  %73 = load i32, i32* %7, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %57

75:                                               ; preds = %57
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
