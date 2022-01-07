; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_directives.c__cpp_pop_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_directives.c__cpp_pop_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_12__*, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_12__*, %struct.if_stack*, %struct._cpp_file* }
%struct.if_stack = type { i64, i32, %struct.if_stack* }
%struct._cpp_file = type { i32 }
%struct.TYPE_10__ = type { i64 }

@CPP_DL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"unterminated #%s\00", align 1
@dtable = common dso_local global %struct.TYPE_13__* null, align 8
@LC_LEAVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_cpp_pop_buffer(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct._cpp_file*, align 8
  %5 = alloca %struct.if_stack*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_12__* %8, %struct.TYPE_12__** %3, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 3
  %11 = load %struct._cpp_file*, %struct._cpp_file** %10, align 8
  store %struct._cpp_file* %11, %struct._cpp_file** %4, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 2
  %14 = load %struct.if_stack*, %struct.if_stack** %13, align 8
  store %struct.if_stack* %14, %struct.if_stack** %5, align 8
  br label %15

15:                                               ; preds = %32, %1
  %16 = load %struct.if_stack*, %struct.if_stack** %5, align 8
  %17 = icmp ne %struct.if_stack* %16, null
  br i1 %17, label %18, label %36

18:                                               ; preds = %15
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %20 = load i32, i32* @CPP_DL_ERROR, align 4
  %21 = load %struct.if_stack*, %struct.if_stack** %5, align 8
  %22 = getelementptr inbounds %struct.if_stack, %struct.if_stack* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** @dtable, align 8
  %25 = load %struct.if_stack*, %struct.if_stack** %5, align 8
  %26 = getelementptr inbounds %struct.if_stack, %struct.if_stack* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @cpp_error_with_line(%struct.TYPE_11__* %19, i32 %20, i32 %23, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %18
  %33 = load %struct.if_stack*, %struct.if_stack** %5, align 8
  %34 = getelementptr inbounds %struct.if_stack, %struct.if_stack* %33, i32 0, i32 2
  %35 = load %struct.if_stack*, %struct.if_stack** %34, align 8
  store %struct.if_stack* %35, %struct.if_stack** %5, align 8
  br label %15

36:                                               ; preds = %15
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %41, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  store %struct.TYPE_12__* %42, %struct.TYPE_12__** %44, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @free(i32 %47)
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %52 = call i32 @obstack_free(i32* %50, %struct.TYPE_12__* %51)
  %53 = load %struct._cpp_file*, %struct._cpp_file** %4, align 8
  %54 = icmp ne %struct._cpp_file* %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %36
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %57 = load %struct._cpp_file*, %struct._cpp_file** %4, align 8
  %58 = call i32 @_cpp_pop_file_buffer(%struct.TYPE_11__* %56, %struct._cpp_file* %57)
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %60 = load i32, i32* @LC_LEAVE, align 4
  %61 = call i32 @_cpp_do_file_change(%struct.TYPE_11__* %59, i32 %60, i32 0, i32 0, i32 0)
  br label %62

62:                                               ; preds = %55, %36
  ret void
}

declare dso_local i32 @cpp_error_with_line(%struct.TYPE_11__*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @obstack_free(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @_cpp_pop_file_buffer(%struct.TYPE_11__*, %struct._cpp_file*) #1

declare dso_local i32 @_cpp_do_file_change(%struct.TYPE_11__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
