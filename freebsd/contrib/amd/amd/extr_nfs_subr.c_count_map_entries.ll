; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_nfs_subr.c_count_map_entries.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_nfs_subr.c_count_map_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_10__** }
%struct.TYPE_10__ = type { i32, %struct.TYPE_10__* }

@NKVHASH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i64*, i64*, i64*)* @count_map_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @count_map_entries(%struct.TYPE_11__* %0, i64* %1, i64* %2, i64* %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %9, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %17 = icmp ne %struct.TYPE_11__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  br label %69

19:                                               ; preds = %4
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %13, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %26 = icmp ne %struct.TYPE_8__* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %19
  br label %69

28:                                               ; preds = %19
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %32, %struct.TYPE_9__** %14, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %34 = icmp ne %struct.TYPE_9__* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  br label %69

36:                                               ; preds = %28
  store i64 0, i64* %12, align 8
  br label %37

37:                                               ; preds = %65, %36
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* @NKVHASH, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %68

41:                                               ; preds = %37
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %43, align 8
  %45 = load i64, i64* %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %44, i64 %45
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  store %struct.TYPE_10__* %47, %struct.TYPE_10__** %15, align 8
  br label %48

48:                                               ; preds = %60, %41
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %50 = icmp ne %struct.TYPE_10__* %49, null
  br i1 %50, label %51, label %64

51:                                               ; preds = %48
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  br label %60

57:                                               ; preds = %51
  %58 = load i64, i64* %9, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %9, align 8
  br label %60

60:                                               ; preds = %57, %56
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  store %struct.TYPE_10__* %63, %struct.TYPE_10__** %15, align 8
  br label %48

64:                                               ; preds = %48
  br label %65

65:                                               ; preds = %64
  %66 = load i64, i64* %12, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %12, align 8
  br label %37

68:                                               ; preds = %37
  br label %69

69:                                               ; preds = %68, %35, %27, %18
  %70 = load i64, i64* %9, align 8
  %71 = load i64*, i64** %6, align 8
  store i64 %70, i64* %71, align 8
  %72 = load i64, i64* %10, align 8
  %73 = load i64*, i64** %7, align 8
  store i64 %72, i64* %73, align 8
  %74 = load i64, i64* %11, align 8
  %75 = load i64*, i64** %8, align 8
  store i64 %74, i64* %75, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
