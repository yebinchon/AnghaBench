; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_directives.c_do_else.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_directives.c_do_else.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { %struct.if_stack* }
%struct.if_stack = type { i64, i32, i32, i64, i32 }

@CPP_DL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"#else without #if\00", align 1
@T_ELSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"#else after #else\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"the conditional began here\00", align 1
@warn_endif_labels = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @do_else to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_else(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.if_stack*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %7, %struct.TYPE_11__** %3, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = load %struct.if_stack*, %struct.if_stack** %9, align 8
  store %struct.if_stack* %10, %struct.if_stack** %4, align 8
  %11 = load %struct.if_stack*, %struct.if_stack** %4, align 8
  %12 = icmp eq %struct.if_stack* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %15 = load i32, i32* @CPP_DL_ERROR, align 4
  %16 = call i32 @cpp_error(%struct.TYPE_10__* %14, i32 %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %60

17:                                               ; preds = %1
  %18 = load %struct.if_stack*, %struct.if_stack** %4, align 8
  %19 = getelementptr inbounds %struct.if_stack, %struct.if_stack* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @T_ELSE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %17
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %25 = load i32, i32* @CPP_DL_ERROR, align 4
  %26 = call i32 @cpp_error(%struct.TYPE_10__* %24, i32 %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %28 = load i32, i32* @CPP_DL_ERROR, align 4
  %29 = load %struct.if_stack*, %struct.if_stack** %4, align 8
  %30 = getelementptr inbounds %struct.if_stack, %struct.if_stack* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @cpp_error_with_line(%struct.TYPE_10__* %27, i32 %28, i32 %31, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %33

33:                                               ; preds = %23, %17
  %34 = load i64, i64* @T_ELSE, align 8
  %35 = load %struct.if_stack*, %struct.if_stack** %4, align 8
  %36 = getelementptr inbounds %struct.if_stack, %struct.if_stack* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.if_stack*, %struct.if_stack** %4, align 8
  %38 = getelementptr inbounds %struct.if_stack, %struct.if_stack* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  %43 = load %struct.if_stack*, %struct.if_stack** %4, align 8
  %44 = getelementptr inbounds %struct.if_stack, %struct.if_stack* %43, i32 0, i32 1
  store i32 1, i32* %44, align 8
  %45 = load %struct.if_stack*, %struct.if_stack** %4, align 8
  %46 = getelementptr inbounds %struct.if_stack, %struct.if_stack* %45, i32 0, i32 3
  store i64 0, i64* %46, align 8
  %47 = load %struct.if_stack*, %struct.if_stack** %4, align 8
  %48 = getelementptr inbounds %struct.if_stack, %struct.if_stack* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %33
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %53 = load i32, i32* @warn_endif_labels, align 4
  %54 = call i64 @CPP_OPTION(%struct.TYPE_10__* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %58 = call i32 @check_eol(%struct.TYPE_10__* %57)
  br label %59

59:                                               ; preds = %56, %51, %33
  br label %60

60:                                               ; preds = %59, %13
  ret void
}

declare dso_local i32 @cpp_error(%struct.TYPE_10__*, i32, i8*) #1

declare dso_local i32 @cpp_error_with_line(%struct.TYPE_10__*, i32, i32, i32, i8*) #1

declare dso_local i64 @CPP_OPTION(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @check_eol(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
