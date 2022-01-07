; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_directives.c_do_unassert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_directives.c_do_unassert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.answer = type { %struct.answer* }

@T_UNASSERT = common dso_local global i32 0, align 4
@NT_ASSERTION = common dso_local global i64 0, align 8
@NT_VOID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @do_unassert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_unassert(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.answer*, align 8
  %5 = alloca %struct.answer**, align 8
  %6 = alloca %struct.answer*, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = load i32, i32* @T_UNASSERT, align 4
  %9 = call %struct.TYPE_7__* @parse_assertion(i32* %7, %struct.answer** %4, i32 %8)
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %3, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %11 = icmp ne %struct.TYPE_7__* %10, null
  br i1 %11, label %12, label %51

12:                                               ; preds = %1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @NT_ASSERTION, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %51

18:                                               ; preds = %12
  %19 = load %struct.answer*, %struct.answer** %4, align 8
  %20 = icmp ne %struct.answer* %19, null
  br i1 %20, label %21, label %47

21:                                               ; preds = %18
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = load %struct.answer*, %struct.answer** %4, align 8
  %24 = call %struct.answer** @find_answer(%struct.TYPE_7__* %22, %struct.answer* %23)
  store %struct.answer** %24, %struct.answer*** %5, align 8
  %25 = load %struct.answer**, %struct.answer*** %5, align 8
  %26 = load %struct.answer*, %struct.answer** %25, align 8
  store %struct.answer* %26, %struct.answer** %6, align 8
  %27 = load %struct.answer*, %struct.answer** %6, align 8
  %28 = icmp ne %struct.answer* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %21
  %30 = load %struct.answer*, %struct.answer** %6, align 8
  %31 = getelementptr inbounds %struct.answer, %struct.answer* %30, i32 0, i32 0
  %32 = load %struct.answer*, %struct.answer** %31, align 8
  %33 = load %struct.answer**, %struct.answer*** %5, align 8
  store %struct.answer* %32, %struct.answer** %33, align 8
  br label %34

34:                                               ; preds = %29, %21
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i64, i64* @NT_VOID, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  br label %44

44:                                               ; preds = %40, %34
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 @check_eol(i32* %45)
  br label %50

47:                                               ; preds = %18
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %49 = call i32 @_cpp_free_definition(%struct.TYPE_7__* %48)
  br label %50

50:                                               ; preds = %47, %44
  br label %51

51:                                               ; preds = %50, %12, %1
  ret void
}

declare dso_local %struct.TYPE_7__* @parse_assertion(i32*, %struct.answer**, i32) #1

declare dso_local %struct.answer** @find_answer(%struct.TYPE_7__*, %struct.answer*) #1

declare dso_local i32 @check_eol(i32*) #1

declare dso_local i32 @_cpp_free_definition(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
