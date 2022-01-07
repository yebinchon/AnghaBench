; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_hash.c_RebuildTable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_hash.c_RebuildTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i32, %struct.TYPE_7__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @RebuildTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RebuildTable(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_7__**, align 8
  %6 = alloca %struct.TYPE_7__**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__**, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %12, align 8
  store %struct.TYPE_7__** %13, %struct.TYPE_7__*** %9, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %7, align 4
  %18 = shl i32 %17, 1
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sub nsw i32 %22, 1
  store i32 %23, i32* %8, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 8, %27
  %29 = trunc i64 %28 to i32
  %30 = call %struct.TYPE_7__** @bmake_malloc(i32 %29)
  store %struct.TYPE_7__** %30, %struct.TYPE_7__*** %5, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  store %struct.TYPE_7__** %30, %struct.TYPE_7__*** %32, align 8
  br label %33

33:                                               ; preds = %37, %1
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %7, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %38, i32 1
  store %struct.TYPE_7__** %39, %struct.TYPE_7__*** %5, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %38, align 8
  br label %33

40:                                               ; preds = %33
  %41 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  store %struct.TYPE_7__** %41, %struct.TYPE_7__*** %5, align 8
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %76, %40
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %7, align 4
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %77

47:                                               ; preds = %43
  %48 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %48, i32 1
  store %struct.TYPE_7__** %49, %struct.TYPE_7__*** %5, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  store %struct.TYPE_7__* %50, %struct.TYPE_7__** %3, align 8
  br label %51

51:                                               ; preds = %74, %47
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %53 = icmp ne %struct.TYPE_7__* %52, null
  br i1 %53, label %54, label %76

54:                                               ; preds = %51
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  store %struct.TYPE_7__* %57, %struct.TYPE_7__** %4, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %59, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = and i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %60, i64 %66
  store %struct.TYPE_7__** %67, %struct.TYPE_7__*** %6, align 8
  %68 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  store %struct.TYPE_7__* %69, %struct.TYPE_7__** %71, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %73 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  store %struct.TYPE_7__* %72, %struct.TYPE_7__** %73, align 8
  br label %74

74:                                               ; preds = %54
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %75, %struct.TYPE_7__** %3, align 8
  br label %51

76:                                               ; preds = %51
  br label %43

77:                                               ; preds = %43
  %78 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %9, align 8
  %79 = call i32 @free(%struct.TYPE_7__** %78)
  ret void
}

declare dso_local %struct.TYPE_7__** @bmake_malloc(i32) #1

declare dso_local i32 @free(%struct.TYPE_7__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
