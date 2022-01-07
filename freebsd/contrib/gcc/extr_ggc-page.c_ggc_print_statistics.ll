; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ggc-page.c_ggc_print_statistics.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ggc-page.c_ggc_print_statistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, %struct.TYPE_5__, %struct.TYPE_6__**, i64 }
%struct.TYPE_5__ = type { i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_6__* }
%struct.ggc_statistics = type { i32 }

@G = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Memory still allocated at the end of the compilation process\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"%-5s %10s  %10s  %10s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Size\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Allocated\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Used\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Overhead\00", align 1
@NUM_ORDERS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"%-5lu %10lu%c %10lu%c %10lu%c\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"%-5s %10lu%c %10lu%c %10lu%c\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"Total\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ggc_print_statistics() #0 {
  %1 = alloca %struct.ggc_statistics, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 0, i64* %3, align 8
  %8 = call i32 @memset(%struct.ggc_statistics* %1, i32 0, i32 4)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @G, i32 0, i32 4), align 8
  %9 = load i32, i32* @stderr, align 4
  %10 = call i32 @ggc_print_common_statistics(i32 %9, %struct.ggc_statistics* %1)
  %11 = call i32 (...) @release_pages()
  %12 = load i32, i32* @stderr, align 4
  %13 = call i32 (i32, i8*, ...) @fprintf(i32 %12, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @stderr, align 4
  %15 = call i32 (i32, i8*, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %16

16:                                               ; preds = %87, %0
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @NUM_ORDERS, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %90

20:                                               ; preds = %16
  %21 = load %struct.TYPE_6__**, %struct.TYPE_6__*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @G, i32 0, i32 3), align 8
  %22 = load i32, i32* %2, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %21, i64 %23
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = icmp ne %struct.TYPE_6__* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  br label %87

28:                                               ; preds = %20
  store i64 0, i64* %6, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %7, align 8
  %29 = load %struct.TYPE_6__**, %struct.TYPE_6__*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @G, i32 0, i32 3), align 8
  %30 = load i32, i32* %2, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %29, i64 %31
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  store %struct.TYPE_6__* %33, %struct.TYPE_6__** %4, align 8
  br label %34

34:                                               ; preds = %62, %28
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = icmp ne %struct.TYPE_6__* %35, null
  br i1 %36, label %37, label %66

37:                                               ; preds = %34
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = add i64 %41, %40
  store i64 %42, i64* %5, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = call i64 @OBJECTS_IN_PAGE(%struct.TYPE_6__* %43)
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = sub i64 %44, %47
  %49 = load i32, i32* %2, align 4
  %50 = call i32 @OBJECT_SIZE(i32 %49)
  %51 = sext i32 %50 to i64
  %52 = mul i64 %48, %51
  %53 = load i64, i64* %6, align 8
  %54 = add i64 %53, %52
  store i64 %54, i64* %6, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %56 = call i64 @OBJECTS_IN_PAGE(%struct.TYPE_6__* %55)
  %57 = add i64 %56, 1
  %58 = call i64 @BITMAP_SIZE(i64 %57)
  %59 = add i64 16, %58
  %60 = load i64, i64* %7, align 8
  %61 = add i64 %60, %59
  store i64 %61, i64* %7, align 8
  br label %62

62:                                               ; preds = %37
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  store %struct.TYPE_6__* %65, %struct.TYPE_6__** %4, align 8
  br label %34

66:                                               ; preds = %34
  %67 = load i32, i32* @stderr, align 4
  %68 = load i32, i32* %2, align 4
  %69 = call i32 @OBJECT_SIZE(i32 %68)
  %70 = sext i32 %69 to i64
  %71 = load i64, i64* %5, align 8
  %72 = call i32 @SCALE(i64 %71)
  %73 = load i64, i64* %5, align 8
  %74 = call i32 @STAT_LABEL(i64 %73)
  %75 = load i64, i64* %6, align 8
  %76 = call i32 @SCALE(i64 %75)
  %77 = load i64, i64* %6, align 8
  %78 = call i32 @STAT_LABEL(i64 %77)
  %79 = load i64, i64* %7, align 8
  %80 = call i32 @SCALE(i64 %79)
  %81 = load i64, i64* %7, align 8
  %82 = call i32 @STAT_LABEL(i64 %81)
  %83 = call i32 (i32, i8*, ...) @fprintf(i32 %67, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i64 %70, i32 %72, i32 %74, i32 %76, i32 %78, i32 %80, i32 %82)
  %84 = load i64, i64* %7, align 8
  %85 = load i64, i64* %3, align 8
  %86 = add i64 %85, %84
  store i64 %86, i64* %3, align 8
  br label %87

87:                                               ; preds = %66, %27
  %88 = load i32, i32* %2, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %2, align 4
  br label %16

90:                                               ; preds = %16
  %91 = load i32, i32* @stderr, align 4
  %92 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @G, i32 0, i32 0), align 8
  %93 = call i32 @SCALE(i64 %92)
  %94 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @G, i32 0, i32 0), align 8
  %95 = call i32 @STAT_LABEL(i64 %94)
  %96 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @G, i32 0, i32 1), align 8
  %97 = call i32 @SCALE(i64 %96)
  %98 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @G, i32 0, i32 1), align 8
  %99 = call i32 @STAT_LABEL(i64 %98)
  %100 = load i64, i64* %3, align 8
  %101 = call i32 @SCALE(i64 %100)
  %102 = load i64, i64* %3, align 8
  %103 = call i32 @STAT_LABEL(i64 %102)
  %104 = call i32 (i32, i8*, ...) @fprintf(i32 %91, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %93, i32 %95, i32 %97, i32 %99, i32 %101, i32 %103)
  ret void
}

declare dso_local i32 @memset(%struct.ggc_statistics*, i32, i32) #1

declare dso_local i32 @ggc_print_common_statistics(i32, %struct.ggc_statistics*) #1

declare dso_local i32 @release_pages(...) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @OBJECTS_IN_PAGE(%struct.TYPE_6__*) #1

declare dso_local i32 @OBJECT_SIZE(i32) #1

declare dso_local i64 @BITMAP_SIZE(i64) #1

declare dso_local i32 @SCALE(i64) #1

declare dso_local i32 @STAT_LABEL(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
