; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/lst.lib/extr_lstNext.c_Lst_Next.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/lst.lib/extr_lstNext.c_Lst_Next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i64, i64, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__* }

@FALSE = common dso_local global i64 0, align 8
@Unknown = common dso_local global i64 0, align 8
@Middle = common dso_local global i8* null, align 8
@Tail = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @Lst_Next(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_9__* %6, %struct.TYPE_9__** %5, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %8 = call i64 @LstValid(%struct.TYPE_9__* %7)
  %9 = load i64, i64* @FALSE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @FALSE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11, %1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %80

18:                                               ; preds = %11
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 4
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %23, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = icmp eq %struct.TYPE_8__* %26, null
  br i1 %27, label %28, label %50

28:                                               ; preds = %18
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @Unknown, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %28
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  store %struct.TYPE_8__* %37, %struct.TYPE_8__** %4, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 3
  store %struct.TYPE_8__* %37, %struct.TYPE_8__** %39, align 8
  %40 = load i8*, i8** @Middle, align 8
  %41 = ptrtoint i8* %40 to i64
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  br label %49

44:                                               ; preds = %28
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  %45 = load i8*, i8** @Tail, align 8
  %46 = ptrtoint i8* %45 to i64
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %44, %34
  br label %78

50:                                               ; preds = %18
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 3
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  store %struct.TYPE_8__* %55, %struct.TYPE_8__** %4, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 3
  store %struct.TYPE_8__* %56, %struct.TYPE_8__** %58, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = icmp eq %struct.TYPE_8__* %59, %62
  br i1 %63, label %67, label %64

64:                                               ; preds = %50
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %66 = icmp eq %struct.TYPE_8__* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %64, %50
  %68 = load i8*, i8** @Tail, align 8
  %69 = ptrtoint i8* %68 to i64
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  br label %77

72:                                               ; preds = %64
  %73 = load i8*, i8** @Middle, align 8
  %74 = ptrtoint i8* %73 to i64
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %72, %67
  br label %78

78:                                               ; preds = %77, %49
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %79, %struct.TYPE_8__** %2, align 8
  br label %80

80:                                               ; preds = %78, %17
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  ret %struct.TYPE_8__* %81
}

declare dso_local i64 @LstValid(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
