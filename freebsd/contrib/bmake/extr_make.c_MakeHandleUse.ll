; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_make.c_MakeHandleUse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_make.c_MakeHandleUse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }

@OP_MARK = common dso_local global i32 0, align 4
@OP_USE = common dso_local global i32 0, align 4
@OP_USEBEFORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @MakeHandleUse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MakeHandleUse(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %7, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @OP_MARK, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* @OP_MARK, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @OP_USE, align 4
  %30 = load i32, i32* @OP_USEBEFORE, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %60

35:                                               ; preds = %2
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %41 = call i32 @Make_HandleUse(%struct.TYPE_5__* %39, %struct.TYPE_5__* %40)
  br label %42

42:                                               ; preds = %38, %35
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = call i32* @Lst_Member(i32 %45, %struct.TYPE_5__* %46)
  store i32* %47, i32** %8, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %59

49:                                               ; preds = %42
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @Lst_Remove(i32 %52, i32* %53)
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %49, %42
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %34
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @Make_HandleUse(%struct.TYPE_5__*, %struct.TYPE_5__*) #1

declare dso_local i32* @Lst_Member(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @Lst_Remove(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
