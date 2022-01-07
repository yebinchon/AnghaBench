; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ggc-page.c_ggc_set_mark.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ggc-page.c_ggc_set_mark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i64*, i32, i32 }

@HOST_BITS_PER_LONG = common dso_local global i32 0, align 4
@GGC_DEBUG_LEVEL = common dso_local global i32 0, align 4
@G = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str = private unnamed_addr constant [12 x i8] c"Marking %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ggc_set_mark(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call %struct.TYPE_5__* @lookup_page_table_entry(i8* %8)
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %4, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = call i32 @gcc_assert(%struct.TYPE_5__* %10)
  %12 = load i8*, i8** %3, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = sub i64 0, %16
  %18 = getelementptr inbounds i8, i8* %12, i64 %17
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @OFFSET_TO_BIT(i8* %18, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @HOST_BITS_PER_LONG, align 4
  %25 = udiv i32 %23, %24
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @HOST_BITS_PER_LONG, align 4
  %28 = urem i32 %26, %27
  %29 = zext i32 %28 to i64
  %30 = shl i64 1, %29
  store i64 %30, i64* %7, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = and i64 %37, %38
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %63

42:                                               ; preds = %1
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = or i64 %50, %43
  store i64 %51, i64* %49, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = sub nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  %56 = load i32, i32* @GGC_DEBUG_LEVEL, align 4
  %57 = icmp sge i32 %56, 4
  br i1 %57, label %58, label %62

58:                                               ; preds = %42
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @G, i32 0, i32 0), align 4
  %60 = load i8*, i8** %3, align 8
  %61 = call i32 @fprintf(i32 %59, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %60)
  br label %62

62:                                               ; preds = %58, %42
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %41
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.TYPE_5__* @lookup_page_table_entry(i8*) #1

declare dso_local i32 @gcc_assert(%struct.TYPE_5__*) #1

declare dso_local i32 @OFFSET_TO_BIT(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
