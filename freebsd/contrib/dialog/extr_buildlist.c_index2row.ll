; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_buildlist.c_index2row.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_buildlist.c_index2row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32* }

@.str = private unnamed_addr constant [34 x i8] c"!... choice %d: %p vs row %d: %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"! index2row(choice %d, %s) = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32)* @index2row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @index2row(%struct.TYPE_4__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  store i32* %15, i32** %7, align 8
  store i32 -1, i32* %8, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @okIndex(%struct.TYPE_4__* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %58

20:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %54, %20
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %57

27:                                               ; preds = %21
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %31, %33
  %35 = load i32, i32* %9, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i64 @myItem(i32* %36, i32 %37)
  %39 = inttoptr i64 %38 to i8*
  %40 = call i32 @TRACE(i8* %39)
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i64 @myItem(i32* %41, i32 %42)
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %46, %48
  %50 = icmp eq i64 %43, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %27
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %8, align 4
  br label %57

53:                                               ; preds = %27
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %21

57:                                               ; preds = %51, %21
  br label %58

58:                                               ; preds = %57, %3
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @mySide(i32 %60)
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = inttoptr i64 %63 to i8*
  %65 = call i32 @TRACE(i8* %64)
  %66 = load i32, i32* %8, align 4
  ret i32 %66
}

declare dso_local i64 @okIndex(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i64 @myItem(i32*, i32) #1

declare dso_local i32 @mySide(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
