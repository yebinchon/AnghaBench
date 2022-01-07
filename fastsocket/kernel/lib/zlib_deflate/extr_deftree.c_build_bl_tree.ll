; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/zlib_deflate/extr_deftree.c_build_bl_tree.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/zlib_deflate/extr_deftree.c_build_bl_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_10__*, i32, %struct.TYPE_9__, i64, %struct.TYPE_8__, i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@BL_CODES = common dso_local global i32 0, align 4
@bl_order = common dso_local global i64* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"\0Adyn trees: dyn %ld, stat %ld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @build_bl_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_bl_tree(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %4 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 7
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to i32*
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 6
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @scan_tree(%struct.TYPE_11__* %4, i32* %8, i32 %12)
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i32*
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @scan_tree(%struct.TYPE_11__* %14, i32* %18, i32 %22)
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 3
  %27 = call i32 @build_tree(%struct.TYPE_11__* %24, i32* %26)
  %28 = load i32, i32* @BL_CODES, align 4
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %48, %1
  %31 = load i32, i32* %3, align 4
  %32 = icmp sge i32 %31, 3
  br i1 %32, label %33, label %51

33:                                               ; preds = %30
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = load i64*, i64** @bl_order, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %33
  br label %51

47:                                               ; preds = %33
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %3, align 4
  br label %30

51:                                               ; preds = %46, %30
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  %54 = mul nsw i32 3, %53
  %55 = add nsw i32 %54, 5
  %56 = add nsw i32 %55, 5
  %57 = add nsw i32 %56, 4
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, %57
  store i32 %61, i32* %59, align 8
  %62 = load i32, i32* @stderr, align 4
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @Tracev(i32 %68)
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @scan_tree(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @build_tree(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @Tracev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
