; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_tables.c_add_atdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_tables.c_add_atdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, %struct.TYPE_4__*, i8*, i8*, i32* }

@atab = common dso_local global %struct.TYPE_4__** null, align 8
@A_TAB_SZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Directory access time reset table ran out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_atdir(i8* %0, i64 %1, i64 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @atab, align 8
  %14 = icmp eq %struct.TYPE_4__** %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  br label %91

16:                                               ; preds = %5
  %17 = load i64, i64* %8, align 8
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* @A_TAB_SZ, align 4
  %20 = urem i32 %18, %19
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %12, align 8
  %22 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @atab, align 8
  %23 = load i64, i64* %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %22, i64 %23
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** %11, align 8
  %26 = icmp ne %struct.TYPE_4__* %25, null
  br i1 %26, label %27, label %53

27:                                               ; preds = %16
  br label %28

28:                                               ; preds = %44, %27
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %30 = icmp ne %struct.TYPE_4__* %29, null
  br i1 %30, label %31, label %48

31:                                               ; preds = %28
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %48

44:                                               ; preds = %37, %31
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  store %struct.TYPE_4__* %47, %struct.TYPE_4__** %11, align 8
  br label %28

48:                                               ; preds = %43, %28
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %50 = icmp ne %struct.TYPE_4__* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  br label %91

52:                                               ; preds = %48
  br label %53

53:                                               ; preds = %52, %16
  %54 = call i64 @malloc(i32 48)
  %55 = inttoptr i64 %54 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %55, %struct.TYPE_4__** %11, align 8
  %56 = icmp ne %struct.TYPE_4__* %55, null
  br i1 %56, label %57, label %89

57:                                               ; preds = %53
  %58 = load i8*, i8** %6, align 8
  %59 = call i32* @strdup(i8* %58)
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 5
  store i32* %59, i32** %61, align 8
  %62 = icmp ne i32* %59, null
  br i1 %62, label %63, label %86

63:                                               ; preds = %57
  %64 = load i64, i64* %7, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  store i64 %64, i64* %66, align 8
  %67 = load i64, i64* %8, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 4
  store i8* %70, i8** %72, align 8
  %73 = load i8*, i8** %10, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 3
  store i8* %73, i8** %75, align 8
  %76 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @atab, align 8
  %77 = load i64, i64* %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %76, i64 %77
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  store %struct.TYPE_4__* %79, %struct.TYPE_4__** %81, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %83 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @atab, align 8
  %84 = load i64, i64* %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %83, i64 %84
  store %struct.TYPE_4__* %82, %struct.TYPE_4__** %85, align 8
  br label %91

86:                                               ; preds = %57
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %88 = call i32 @free(%struct.TYPE_4__* %87)
  br label %89

89:                                               ; preds = %86, %53
  %90 = call i32 @paxwarn(i32 1, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %63, %51, %15
  ret void
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @free(%struct.TYPE_4__*) #1

declare dso_local i32 @paxwarn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
