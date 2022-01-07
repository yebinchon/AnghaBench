; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ggc-page.c_free_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ggc-page.c_free_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__*, i32*, %struct.TYPE_4__**, i32 }
%struct.TYPE_4__ = type { i32, i64, %struct.TYPE_4__*, i64, i32, i64 }

@GGC_DEBUG_LEVEL = common dso_local global i32 0, align 4
@G = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str = private unnamed_addr constant [37 x i8] c"Deallocating page at %p, data %p-%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @free_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_page(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %5 = load i32, i32* @GGC_DEBUG_LEVEL, align 4
  %6 = icmp sge i32 %5, 2
  br i1 %6, label %7, label %23

7:                                                ; preds = %1
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @G, i32 0, i32 4), align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %10 = bitcast %struct.TYPE_4__* %9 to i8*
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %16, %19
  %21 = sub nsw i64 %20, 1
  %22 = call i32 @fprintf(i32 %8, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %10, i64 %13, i64 %21)
  br label %23

23:                                               ; preds = %7, %1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @VALGRIND_MAKE_NOACCESS(i64 %26, i64 %29)
  %31 = call i32 @VALGRIND_DISCARD(i32 %30)
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @set_page_table_entry(i64 %34, i32* null)
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @G, i32 0, i32 0), align 8
  %37 = icmp sgt i32 %36, 1
  br i1 %37, label %38, label %75

38:                                               ; preds = %23
  %39 = load %struct.TYPE_4__**, %struct.TYPE_4__*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @G, i32 0, i32 3), align 8
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @G, i32 0, i32 0), align 8
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %39, i64 %42
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  store %struct.TYPE_4__* %44, %struct.TYPE_4__** %3, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %4, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %50, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @gcc_assert(i32 %55)
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %58 = load %struct.TYPE_4__**, %struct.TYPE_4__*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @G, i32 0, i32 3), align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %58, i64 %60
  store %struct.TYPE_4__* %57, %struct.TYPE_4__** %61, align 8
  %62 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @G, i32 0, i32 2), align 8
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @G, i32 0, i32 0), align 8
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @G, i32 0, i32 2), align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 %67, i32* %71, align 4
  %72 = load i32, i32* %4, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  br label %75

75:                                               ; preds = %38, %23
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @G, i32 0, i32 0), align 8
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @G, i32 0, i32 0), align 8
  %78 = call i32 (...) @adjust_depth()
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @G, i32 0, i32 1), align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  store %struct.TYPE_4__* %79, %struct.TYPE_4__** %81, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  store %struct.TYPE_4__* %82, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @G, i32 0, i32 1), align 8
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*, i64, i64) #1

declare dso_local i32 @VALGRIND_DISCARD(i32) #1

declare dso_local i32 @VALGRIND_MAKE_NOACCESS(i64, i64) #1

declare dso_local i32 @set_page_table_entry(i64, i32*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @adjust_depth(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
