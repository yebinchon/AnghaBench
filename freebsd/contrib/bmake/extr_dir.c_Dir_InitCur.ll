; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_dir.c_Dir_InitCur.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_dir.c_Dir_InitCur.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@cur = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Dir_InitCur(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %6, label %31

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8
  %8 = call %struct.TYPE_5__* @Dir_AddDir(i32* null, i8* %7)
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %3, align 8
  %9 = icmp ne %struct.TYPE_5__* %8, null
  br i1 %9, label %10, label %30

10:                                               ; preds = %6
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cur, align 8
  %16 = icmp ne %struct.TYPE_5__* %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %10
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cur, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = icmp ne %struct.TYPE_5__* %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cur, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cur, align 8
  %27 = call i32 @Dir_Destroy(%struct.TYPE_5__* %26)
  br label %28

28:                                               ; preds = %21, %17, %10
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** @cur, align 8
  br label %30

30:                                               ; preds = %28, %6
  br label %31

31:                                               ; preds = %30, %1
  ret void
}

declare dso_local %struct.TYPE_5__* @Dir_AddDir(i32*, i8*) #1

declare dso_local i32 @Dir_Destroy(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
