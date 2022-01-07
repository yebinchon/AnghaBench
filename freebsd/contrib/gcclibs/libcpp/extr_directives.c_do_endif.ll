; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_directives.c_do_endif.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_directives.c_do_endif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__, i64, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { %struct.if_stack* }
%struct.if_stack = type { i64, %struct.if_stack*, i64 }

@CPP_DL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"#endif without #if\00", align 1
@warn_endif_labels = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @do_endif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_endif(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.if_stack*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 4
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_10__* %7, %struct.TYPE_10__** %3, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load %struct.if_stack*, %struct.if_stack** %9, align 8
  store %struct.if_stack* %10, %struct.if_stack** %4, align 8
  %11 = load %struct.if_stack*, %struct.if_stack** %4, align 8
  %12 = icmp eq %struct.if_stack* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %15 = load i32, i32* @CPP_DL_ERROR, align 4
  %16 = call i32 @cpp_error(%struct.TYPE_9__* %14, i32 %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %64

17:                                               ; preds = %1
  %18 = load %struct.if_stack*, %struct.if_stack** %4, align 8
  %19 = getelementptr inbounds %struct.if_stack, %struct.if_stack* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %17
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %24 = load i32, i32* @warn_endif_labels, align 4
  %25 = call i64 @CPP_OPTION(%struct.TYPE_9__* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %29 = call i32 @check_eol(%struct.TYPE_9__* %28)
  br label %30

30:                                               ; preds = %27, %22, %17
  %31 = load %struct.if_stack*, %struct.if_stack** %4, align 8
  %32 = getelementptr inbounds %struct.if_stack, %struct.if_stack* %31, i32 0, i32 1
  %33 = load %struct.if_stack*, %struct.if_stack** %32, align 8
  %34 = icmp eq %struct.if_stack* %33, null
  br i1 %34, label %35, label %48

35:                                               ; preds = %30
  %36 = load %struct.if_stack*, %struct.if_stack** %4, align 8
  %37 = getelementptr inbounds %struct.if_stack, %struct.if_stack* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load %struct.if_stack*, %struct.if_stack** %4, align 8
  %44 = getelementptr inbounds %struct.if_stack, %struct.if_stack* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 3
  store i64 %45, i64* %47, align 8
  br label %48

48:                                               ; preds = %40, %35, %30
  %49 = load %struct.if_stack*, %struct.if_stack** %4, align 8
  %50 = getelementptr inbounds %struct.if_stack, %struct.if_stack* %49, i32 0, i32 1
  %51 = load %struct.if_stack*, %struct.if_stack** %50, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  store %struct.if_stack* %51, %struct.if_stack** %53, align 8
  %54 = load %struct.if_stack*, %struct.if_stack** %4, align 8
  %55 = getelementptr inbounds %struct.if_stack, %struct.if_stack* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  store i64 %56, i64* %59, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = load %struct.if_stack*, %struct.if_stack** %4, align 8
  %63 = call i32 @obstack_free(i32* %61, %struct.if_stack* %62)
  br label %64

64:                                               ; preds = %48, %13
  ret void
}

declare dso_local i32 @cpp_error(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local i64 @CPP_OPTION(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @check_eol(%struct.TYPE_9__*) #1

declare dso_local i32 @obstack_free(i32*, %struct.if_stack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
