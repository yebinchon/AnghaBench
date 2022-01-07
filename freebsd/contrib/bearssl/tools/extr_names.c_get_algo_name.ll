; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/tools/extr_names.c_get_algo_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/tools/extr_names.c_get_algo_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i8* }
%struct.TYPE_3__ = type { i8*, i8* (...)*, i8* }

@algo_names = common dso_local global %struct.TYPE_4__* null, align 8
@algo_names_dyn = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_algo_name(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %6, align 8
  br label %7

7:                                                ; preds = %40, %2
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @algo_names, align 8
  %9 = load i64, i64* %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %43

14:                                               ; preds = %7
  %15 = load i8*, i8** %4, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @algo_names, align 8
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = icmp eq i8* %15, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %14
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @algo_names, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  br label %37

31:                                               ; preds = %22
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @algo_names, align 8
  %33 = load i64, i64* %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load i8*, i8** %35, align 8
  br label %37

37:                                               ; preds = %31, %25
  %38 = phi i8* [ %30, %25 ], [ %36, %31 ]
  store i8* %38, i8** %3, align 8
  br label %82

39:                                               ; preds = %14
  br label %40

40:                                               ; preds = %39
  %41 = load i64, i64* %6, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %6, align 8
  br label %7

43:                                               ; preds = %7
  store i64 0, i64* %6, align 8
  br label %44

44:                                               ; preds = %78, %43
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** @algo_names_dyn, align 8
  %46 = load i64, i64* %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %81

51:                                               ; preds = %44
  %52 = load i8*, i8** %4, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** @algo_names_dyn, align 8
  %54 = load i64, i64* %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i8* (...)*, i8* (...)** %56, align 8
  %58 = call i8* (...) %57()
  %59 = icmp eq i8* %52, %58
  br i1 %59, label %60, label %77

60:                                               ; preds = %51
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** @algo_names_dyn, align 8
  %65 = load i64, i64* %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  br label %75

69:                                               ; preds = %60
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** @algo_names_dyn, align 8
  %71 = load i64, i64* %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  %74 = load i8*, i8** %73, align 8
  br label %75

75:                                               ; preds = %69, %63
  %76 = phi i8* [ %68, %63 ], [ %74, %69 ]
  store i8* %76, i8** %3, align 8
  br label %82

77:                                               ; preds = %51
  br label %78

78:                                               ; preds = %77
  %79 = load i64, i64* %6, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %6, align 8
  br label %44

81:                                               ; preds = %44
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %82

82:                                               ; preds = %81, %75, %37
  %83 = load i8*, i8** %3, align 8
  ret i8* %83
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
