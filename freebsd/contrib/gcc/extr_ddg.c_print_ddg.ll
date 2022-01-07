; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ddg.c_print_ddg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ddg.c_print_ddg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_8__*, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_8__*, %struct.TYPE_8__* }

@.str = private unnamed_addr constant [11 x i8] c"OUT ARCS: \00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"\0AIN ARCS: \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_ddg(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %70, %2
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %73

13:                                               ; preds = %7
  %14 = load i32*, i32** %3, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @print_rtl_single(i32* %14, i32 %22)
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @fprintf(i32* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %6, align 8
  br label %34

34:                                               ; preds = %41, %13
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %36 = icmp ne %struct.TYPE_8__* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load i32*, i32** %3, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %40 = call i32 @print_ddg_edge(i32* %38, %struct.TYPE_8__* %39)
  br label %41

41:                                               ; preds = %37
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  store %struct.TYPE_8__* %44, %struct.TYPE_8__** %6, align 8
  br label %34

45:                                               ; preds = %34
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @fprintf(i32* %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  store %struct.TYPE_8__* %55, %struct.TYPE_8__** %6, align 8
  br label %56

56:                                               ; preds = %63, %45
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %58 = icmp ne %struct.TYPE_8__* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  %60 = load i32*, i32** %3, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %62 = call i32 @print_ddg_edge(i32* %60, %struct.TYPE_8__* %61)
  br label %63

63:                                               ; preds = %59
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  store %struct.TYPE_8__* %66, %struct.TYPE_8__** %6, align 8
  br label %56

67:                                               ; preds = %56
  %68 = load i32*, i32** %3, align 8
  %69 = call i32 @fprintf(i32* %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %7

73:                                               ; preds = %7
  ret void
}

declare dso_local i32 @print_rtl_single(i32*, i32) #1

declare dso_local i32 @fprintf(i32*, i8*) #1

declare dso_local i32 @print_ddg_edge(i32*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
