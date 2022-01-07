; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_directives.c__cpp_do__Pragma.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_directives.c__cpp_do__Pragma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@CPP_PADDING = common dso_local global i32 0, align 4
@CPP_DL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"_Pragma takes a parenthesized string literal\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_cpp_do__Pragma(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %4 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %5 = call %struct.TYPE_12__* @get__Pragma_string(%struct.TYPE_13__* %4)
  store %struct.TYPE_12__* %5, %struct.TYPE_12__** %3, align 8
  %6 = load i32, i32* @CPP_PADDING, align 4
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  store i32 %6, i32* %9, align 4
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %11 = icmp ne %struct.TYPE_12__* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = call i32 @destringize_and_run(%struct.TYPE_13__* %13, i32* %16)
  br label %22

18:                                               ; preds = %1
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %20 = load i32, i32* @CPP_DL_ERROR, align 4
  %21 = call i32 @cpp_error(%struct.TYPE_13__* %19, i32 %20, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %18, %12
  ret void
}

declare dso_local %struct.TYPE_12__* @get__Pragma_string(%struct.TYPE_13__*) #1

declare dso_local i32 @destringize_and_run(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @cpp_error(%struct.TYPE_13__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
