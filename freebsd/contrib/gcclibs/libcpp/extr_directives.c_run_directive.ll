; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_directives.c_run_directive.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_directives.c_run_directive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 (%struct.TYPE_12__*)* }
%struct.TYPE_12__ = type { %struct.TYPE_13__* }

@dtable = common dso_local global %struct.TYPE_13__* null, align 8
@traditional = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32, i8*, i64)* @run_directive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_directive(%struct.TYPE_12__* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to i32*
  %12 = load i64, i64* %8, align 8
  %13 = call i32 @cpp_push_buffer(%struct.TYPE_12__* %9, i32* %11, i64 %12, i32 1)
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %15 = call i32 @start_directive(%struct.TYPE_12__* %14)
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %17 = call i32 @_cpp_clean_line(%struct.TYPE_12__* %16)
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** @dtable, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i64 %20
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %23, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %25 = load i32, i32* @traditional, align 4
  %26 = call i64 @CPP_OPTION(%struct.TYPE_12__* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %30 = call i32 @prepare_directive_trad(%struct.TYPE_12__* %29)
  br label %31

31:                                               ; preds = %28, %4
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %35, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %38 = call i32 %36(%struct.TYPE_12__* %37)
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %40 = call i32 @end_directive(%struct.TYPE_12__* %39, i32 1)
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %42 = call i32 @_cpp_pop_buffer(%struct.TYPE_12__* %41)
  ret void
}

declare dso_local i32 @cpp_push_buffer(%struct.TYPE_12__*, i32*, i64, i32) #1

declare dso_local i32 @start_directive(%struct.TYPE_12__*) #1

declare dso_local i32 @_cpp_clean_line(%struct.TYPE_12__*) #1

declare dso_local i64 @CPP_OPTION(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @prepare_directive_trad(%struct.TYPE_12__*) #1

declare dso_local i32 @end_directive(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @_cpp_pop_buffer(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
