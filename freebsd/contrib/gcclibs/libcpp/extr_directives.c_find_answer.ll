; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_directives.c_find_answer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_directives.c_find_answer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.answer* }
%struct.answer = type { i32, i32*, %struct.answer* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.answer** (%struct.TYPE_5__*, %struct.answer*)* @find_answer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.answer** @find_answer(%struct.TYPE_5__* %0, %struct.answer* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.answer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.answer**, align 8
  %7 = alloca %struct.answer*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.answer* %1, %struct.answer** %4, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store %struct.answer** %10, %struct.answer*** %6, align 8
  br label %11

11:                                               ; preds = %61, %2
  %12 = load %struct.answer**, %struct.answer*** %6, align 8
  %13 = load %struct.answer*, %struct.answer** %12, align 8
  %14 = icmp ne %struct.answer* %13, null
  br i1 %14, label %15, label %65

15:                                               ; preds = %11
  %16 = load %struct.answer**, %struct.answer*** %6, align 8
  %17 = load %struct.answer*, %struct.answer** %16, align 8
  store %struct.answer* %17, %struct.answer** %7, align 8
  %18 = load %struct.answer*, %struct.answer** %7, align 8
  %19 = getelementptr inbounds %struct.answer, %struct.answer* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.answer*, %struct.answer** %4, align 8
  %22 = getelementptr inbounds %struct.answer, %struct.answer* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %20, %23
  br i1 %24, label %25, label %60

25:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %49, %25
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.answer*, %struct.answer** %7, align 8
  %29 = getelementptr inbounds %struct.answer, %struct.answer* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ult i32 %27, %30
  br i1 %31, label %32, label %52

32:                                               ; preds = %26
  %33 = load %struct.answer*, %struct.answer** %7, align 8
  %34 = getelementptr inbounds %struct.answer, %struct.answer* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load %struct.answer*, %struct.answer** %4, align 8
  %40 = getelementptr inbounds %struct.answer, %struct.answer* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = call i32 @_cpp_equiv_tokens(i32* %38, i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %32
  br label %52

48:                                               ; preds = %32
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %5, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %26

52:                                               ; preds = %47, %26
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.answer*, %struct.answer** %7, align 8
  %55 = getelementptr inbounds %struct.answer, %struct.answer* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %65

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59, %15
  br label %61

61:                                               ; preds = %60
  %62 = load %struct.answer**, %struct.answer*** %6, align 8
  %63 = load %struct.answer*, %struct.answer** %62, align 8
  %64 = getelementptr inbounds %struct.answer, %struct.answer* %63, i32 0, i32 2
  store %struct.answer** %64, %struct.answer*** %6, align 8
  br label %11

65:                                               ; preds = %58, %11
  %66 = load %struct.answer**, %struct.answer*** %6, align 8
  ret %struct.answer** %66
}

declare dso_local i32 @_cpp_equiv_tokens(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
