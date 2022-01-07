; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/lst.lib/extr_lstFindFrom.c_Lst_FindFrom.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/lst.lib/extr_lstFindFrom.c_Lst_FindFrom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, %struct.TYPE_6__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @Lst_FindFrom(i32 %0, %struct.TYPE_6__* %1, i8* %2, i32 (i8*, i8*)* %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32 (i8*, i8*)*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 (i8*, i8*)* %3, i32 (i8*, i8*)** %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @LstValid(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %4
  %15 = load i32, i32* %6, align 4
  %16 = call i64 @LstIsEmpty(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @LstNodeValid(%struct.TYPE_6__* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18, %14, %4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %5, align 8
  br label %50

24:                                               ; preds = %18
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %10, align 8
  br label %26

26:                                               ; preds = %47, %24
  %27 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %9, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 %27(i8* %30, i8* %31)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* %35, %struct.TYPE_6__** %5, align 8
  br label %50

36:                                               ; preds = %26
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  store %struct.TYPE_6__* %39, %struct.TYPE_6__** %10, align 8
  br label %40

40:                                               ; preds = %36
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %43 = icmp ne %struct.TYPE_6__* %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %46 = icmp ne %struct.TYPE_6__* %45, null
  br label %47

47:                                               ; preds = %44, %40
  %48 = phi i1 [ false, %40 ], [ %46, %44 ]
  br i1 %48, label %26, label %49

49:                                               ; preds = %47
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %5, align 8
  br label %50

50:                                               ; preds = %49, %34, %23
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  ret %struct.TYPE_6__* %51
}

declare dso_local i32 @LstValid(i32) #1

declare dso_local i64 @LstIsEmpty(i32) #1

declare dso_local i32 @LstNodeValid(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
