; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_directives.c_do_undef.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_directives.c_do_undef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 (%struct.TYPE_17__*, i32, %struct.TYPE_18__*)* }
%struct.TYPE_18__ = type { i64, i32 }

@NT_MACRO = common dso_local global i64 0, align 8
@NODE_WARN = common dso_local global i32 0, align 4
@CPP_DL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"undefining \22%s\22\00", align 1
@warn_unused_macros = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*)* @do_undef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_undef(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %4 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %5 = call %struct.TYPE_18__* @lex_macro_node(%struct.TYPE_17__* %4)
  store %struct.TYPE_18__* %5, %struct.TYPE_18__** %3, align 8
  %6 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %7 = icmp ne %struct.TYPE_18__* %6, null
  br i1 %7, label %8, label %57

8:                                                ; preds = %1
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %12 = load i32 (%struct.TYPE_17__*, i32, %struct.TYPE_18__*)*, i32 (%struct.TYPE_17__*, i32, %struct.TYPE_18__*)** %11, align 8
  %13 = icmp ne i32 (%struct.TYPE_17__*, i32, %struct.TYPE_18__*)* %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = load i32 (%struct.TYPE_17__*, i32, %struct.TYPE_18__*)*, i32 (%struct.TYPE_17__*, i32, %struct.TYPE_18__*)** %17, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %24 = call i32 %18(%struct.TYPE_17__* %19, i32 %22, %struct.TYPE_18__* %23)
  br label %25

25:                                               ; preds = %14, %8
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @NT_MACRO, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %56

31:                                               ; preds = %25
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @NODE_WARN, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %40 = load i32, i32* @CPP_DL_WARNING, align 4
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %42 = call i32 @NODE_NAME(%struct.TYPE_18__* %41)
  %43 = call i32 @cpp_error(%struct.TYPE_17__* %39, i32 %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %38, %31
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %46 = load i32, i32* @warn_unused_macros, align 4
  %47 = call i64 @CPP_OPTION(%struct.TYPE_17__* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %52 = call i32 @_cpp_warn_if_unused_macro(%struct.TYPE_17__* %50, %struct.TYPE_18__* %51, i32* null)
  br label %53

53:                                               ; preds = %49, %44
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %55 = call i32 @_cpp_free_definition(%struct.TYPE_18__* %54)
  br label %56

56:                                               ; preds = %53, %25
  br label %57

57:                                               ; preds = %56, %1
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %59 = call i32 @check_eol(%struct.TYPE_17__* %58)
  ret void
}

declare dso_local %struct.TYPE_18__* @lex_macro_node(%struct.TYPE_17__*) #1

declare dso_local i32 @cpp_error(%struct.TYPE_17__*, i32, i8*, i32) #1

declare dso_local i32 @NODE_NAME(%struct.TYPE_18__*) #1

declare dso_local i64 @CPP_OPTION(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @_cpp_warn_if_unused_macro(%struct.TYPE_17__*, %struct.TYPE_18__*, i32*) #1

declare dso_local i32 @_cpp_free_definition(%struct.TYPE_18__*) #1

declare dso_local i32 @check_eol(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
