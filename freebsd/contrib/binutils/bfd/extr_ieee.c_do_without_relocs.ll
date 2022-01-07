; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ieee.c_do_without_relocs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ieee.c_do_without_relocs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64* }

@SEC_LOAD = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*)* @do_without_relocs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_without_relocs(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %9 = call %struct.TYPE_8__* @ieee_per_section(%struct.TYPE_7__* %8)
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  store i64* %11, i64** %6, align 8
  %12 = load i64*, i64** %6, align 8
  %13 = icmp eq i64* %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %2
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SEC_LOAD, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %14, %2
  %22 = load i32*, i32** %4, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = call i32 @do_as_repeat(i32* %22, %struct.TYPE_7__* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %3, align 4
  br label %66

28:                                               ; preds = %21
  br label %64

29:                                               ; preds = %14
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %53, %29
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ult i32 %31, %34
  br i1 %35, label %36, label %56

36:                                               ; preds = %30
  %37 = load i64*, i64** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %36
  %44 = load i32*, i32** %4, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %46 = call i32 @do_with_relocs(i32* %44, %struct.TYPE_7__* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @FALSE, align 4
  store i32 %49, i32* %3, align 4
  br label %66

50:                                               ; preds = %43
  %51 = load i32, i32* @TRUE, align 4
  store i32 %51, i32* %3, align 4
  br label %66

52:                                               ; preds = %36
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %7, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %30

56:                                               ; preds = %30
  %57 = load i32*, i32** %4, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %59 = call i32 @do_as_repeat(i32* %57, %struct.TYPE_7__* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* @FALSE, align 4
  store i32 %62, i32* %3, align 4
  br label %66

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63, %28
  %65 = load i32, i32* @TRUE, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %61, %50, %48, %26
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.TYPE_8__* @ieee_per_section(%struct.TYPE_7__*) #1

declare dso_local i32 @do_as_repeat(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @do_with_relocs(i32*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
