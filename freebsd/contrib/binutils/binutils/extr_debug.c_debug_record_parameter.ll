; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_record_parameter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_record_parameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_handle = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { %struct.debug_parameter* }
%struct.debug_parameter = type { i8*, i32, %struct.debug_parameter*, i32, i32* }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"debug_record_parameter: no current function\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @debug_record_parameter(i8* %0, i8* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.debug_handle*, align 8
  %13 = alloca %struct.debug_parameter*, align 8
  %14 = alloca %struct.debug_parameter**, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.debug_handle*
  store %struct.debug_handle* %16, %struct.debug_handle** %12, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i32*, i32** %9, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %5
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %6, align 4
  br label %72

24:                                               ; preds = %19
  %25 = load %struct.debug_handle*, %struct.debug_handle** %12, align 8
  %26 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.debug_handle*, %struct.debug_handle** %12, align 8
  %31 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = icmp eq %struct.TYPE_2__* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %29, %24
  %35 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %36 = call i32 @debug_error(i32 %35)
  %37 = load i32, i32* @FALSE, align 4
  store i32 %37, i32* %6, align 4
  br label %72

38:                                               ; preds = %29
  %39 = call i64 @xmalloc(i32 40)
  %40 = inttoptr i64 %39 to %struct.debug_parameter*
  store %struct.debug_parameter* %40, %struct.debug_parameter** %13, align 8
  %41 = load %struct.debug_parameter*, %struct.debug_parameter** %13, align 8
  %42 = call i32 @memset(%struct.debug_parameter* %41, i32 0, i32 40)
  %43 = load i8*, i8** %8, align 8
  %44 = load %struct.debug_parameter*, %struct.debug_parameter** %13, align 8
  %45 = getelementptr inbounds %struct.debug_parameter, %struct.debug_parameter* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = load %struct.debug_parameter*, %struct.debug_parameter** %13, align 8
  %48 = getelementptr inbounds %struct.debug_parameter, %struct.debug_parameter* %47, i32 0, i32 4
  store i32* %46, i32** %48, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.debug_parameter*, %struct.debug_parameter** %13, align 8
  %51 = getelementptr inbounds %struct.debug_parameter, %struct.debug_parameter* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* %11, align 4
  %53 = load %struct.debug_parameter*, %struct.debug_parameter** %13, align 8
  %54 = getelementptr inbounds %struct.debug_parameter, %struct.debug_parameter* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  %55 = load %struct.debug_handle*, %struct.debug_handle** %12, align 8
  %56 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store %struct.debug_parameter** %58, %struct.debug_parameter*** %14, align 8
  br label %59

59:                                               ; preds = %64, %38
  %60 = load %struct.debug_parameter**, %struct.debug_parameter*** %14, align 8
  %61 = load %struct.debug_parameter*, %struct.debug_parameter** %60, align 8
  %62 = icmp ne %struct.debug_parameter* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  br label %64

64:                                               ; preds = %63
  %65 = load %struct.debug_parameter**, %struct.debug_parameter*** %14, align 8
  %66 = load %struct.debug_parameter*, %struct.debug_parameter** %65, align 8
  %67 = getelementptr inbounds %struct.debug_parameter, %struct.debug_parameter* %66, i32 0, i32 2
  store %struct.debug_parameter** %67, %struct.debug_parameter*** %14, align 8
  br label %59

68:                                               ; preds = %59
  %69 = load %struct.debug_parameter*, %struct.debug_parameter** %13, align 8
  %70 = load %struct.debug_parameter**, %struct.debug_parameter*** %14, align 8
  store %struct.debug_parameter* %69, %struct.debug_parameter** %70, align 8
  %71 = load i32, i32* @TRUE, align 4
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %68, %34, %22
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local i32 @debug_error(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @memset(%struct.debug_parameter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
