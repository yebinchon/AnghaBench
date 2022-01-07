; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_macro.c_funlike_invocation_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_macro.c_funlike_invocation_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i64, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_13__ = type { i32 }

@CPP_PADDING = common dso_local global i64 0, align 8
@PREV_WHITE = common dso_local global i32 0, align 4
@CPP_OPEN_PAREN = common dso_local global i64 0, align 8
@CPP_EOF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_15__*, i32*)* @funlike_invocation_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @funlike_invocation_p(%struct.TYPE_15__* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %7, align 8
  br label %8

8:                                                ; preds = %35, %2
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %10 = call %struct.TYPE_14__* @cpp_get_token(%struct.TYPE_15__* %9)
  store %struct.TYPE_14__* %10, %struct.TYPE_14__** %6, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CPP_PADDING, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %8
  br label %36

17:                                               ; preds = %8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %19 = icmp eq %struct.TYPE_14__* %18, null
  br i1 %19, label %33, label %20

20:                                               ; preds = %17
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @PREV_WHITE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %20
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %27, %17
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_14__* %34, %struct.TYPE_14__** %7, align 8
  br label %35

35:                                               ; preds = %33, %27, %20
  br label %8

36:                                               ; preds = %16
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @CPP_OPEN_PAREN, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  store i32 2, i32* %45, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = call i32* @collect_args(%struct.TYPE_15__* %46, i32* %47)
  store i32* %48, i32** %3, align 8
  br label %71

49:                                               ; preds = %36
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @CPP_EOF, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %60, label %55

55:                                               ; preds = %49
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = icmp eq %struct.TYPE_14__* %56, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %55, %49
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %62 = call i32 @_cpp_backup_tokens(%struct.TYPE_15__* %61, i32 1)
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %64 = icmp ne %struct.TYPE_14__* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %68 = call i32 @_cpp_push_token_context(%struct.TYPE_15__* %66, i32* null, %struct.TYPE_14__* %67, i32 1)
  br label %69

69:                                               ; preds = %65, %60
  br label %70

70:                                               ; preds = %69, %55
  store i32* null, i32** %3, align 8
  br label %71

71:                                               ; preds = %70, %42
  %72 = load i32*, i32** %3, align 8
  ret i32* %72
}

declare dso_local %struct.TYPE_14__* @cpp_get_token(%struct.TYPE_15__*) #1

declare dso_local i32* @collect_args(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @_cpp_backup_tokens(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @_cpp_push_token_context(%struct.TYPE_15__*, i32*, %struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
