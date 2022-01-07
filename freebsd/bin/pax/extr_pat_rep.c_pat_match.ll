; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_pat_rep.c_pat_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_pat_rep.c_pat_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_7__ = type { i8*, %struct.TYPE_6__* }

@pathead = common dso_local global %struct.TYPE_6__* null, align 8
@nflag = common dso_local global i64 0, align 8
@cflag = common dso_local global i64 0, align 8
@DIR_MTCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pat_match(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %6, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pathead, align 8
  %8 = icmp eq %struct.TYPE_6__* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load i64, i64* @nflag, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load i64, i64* @cflag, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  store i32 -1, i32* %2, align 4
  br label %94

16:                                               ; preds = %12, %9
  store i32 0, i32* %2, align 4
  br label %94

17:                                               ; preds = %1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pathead, align 8
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %4, align 8
  br label %19

19:                                               ; preds = %67, %17
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = icmp ne %struct.TYPE_6__* %20, null
  br i1 %21, label %22, label %71

22:                                               ; preds = %19
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @DIR_MTCH, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %54

29:                                               ; preds = %22
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i8, i8* %32, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 47
  br i1 %39, label %40, label %53

40:                                               ; preds = %29
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @strncmp(i32 %43, i8* %46, i64 %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %40
  br label %71

53:                                               ; preds = %40, %29
  br label %67

54:                                               ; preds = %22
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 3
  %63 = call i64 @fn_match(i32 %57, i8* %60, i32* %62)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %54
  br label %71

66:                                               ; preds = %54
  br label %67

67:                                               ; preds = %66, %53
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  store %struct.TYPE_6__* %70, %struct.TYPE_6__** %4, align 8
  br label %19

71:                                               ; preds = %65, %52, %19
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %73 = icmp eq %struct.TYPE_6__* %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load i64, i64* @cflag, align 8
  %76 = icmp ne i64 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i32 0, i32 1
  store i32 %78, i32* %2, align 4
  br label %94

79:                                               ; preds = %71
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  store %struct.TYPE_6__* %80, %struct.TYPE_6__** %82, align 8
  %83 = load i64, i64* @cflag, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %79
  store i32 0, i32* %2, align 4
  br label %94

86:                                               ; preds = %79
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %88 = call i64 @pat_sel(%struct.TYPE_7__* %87)
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store i32 -1, i32* %2, align 4
  br label %94

91:                                               ; preds = %86
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %93, align 8
  store i32 1, i32* %2, align 4
  br label %94

94:                                               ; preds = %91, %90, %85, %74, %16, %15
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i64 @strncmp(i32, i8*, i64) #1

declare dso_local i64 @fn_match(i32, i8*, i32*) #1

declare dso_local i64 @pat_sel(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
