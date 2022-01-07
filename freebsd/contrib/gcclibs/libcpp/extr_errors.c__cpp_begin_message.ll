; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_errors.c__cpp_begin_message.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_errors.c__cpp_begin_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@warn_system_headers = common dso_local global i32 0, align 4
@warnings_are_errors = common dso_local global i32 0, align 4
@pedantic_errors = common dso_local global i32 0, align 4
@inhibit_errors = common dso_local global i32 0, align 4
@inhibit_warnings = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"warning: \00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"internal error: \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"error: \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_cpp_begin_message(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @CPP_DL_EXTRACT(i32 %11)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  switch i32 %13, label %69 [
    i32 129, label %14
    i32 130, label %14
    i32 128, label %25
    i32 132, label %57
    i32 131, label %64
  ]

14:                                               ; preds = %4, %4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %16 = call i32 @cpp_in_system_header(%struct.TYPE_6__* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = load i32, i32* @warn_system_headers, align 4
  %21 = call i32 @CPP_OPTION(%struct.TYPE_6__* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %94

24:                                               ; preds = %18, %14
  br label %25

25:                                               ; preds = %4, %24
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %27 = load i32, i32* @warnings_are_errors, align 4
  %28 = call i32 @CPP_OPTION(%struct.TYPE_6__* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %10, align 4
  %32 = icmp eq i32 %31, 130
  br i1 %32, label %33, label %49

33:                                               ; preds = %30
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %35 = load i32, i32* @pedantic_errors, align 4
  %36 = call i32 @CPP_OPTION(%struct.TYPE_6__* %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %33, %25
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %40 = load i32, i32* @inhibit_errors, align 4
  %41 = call i32 @CPP_OPTION(%struct.TYPE_6__* %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %94

44:                                               ; preds = %38
  store i32 132, i32* %10, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  br label %56

49:                                               ; preds = %33, %30
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %51 = load i32, i32* @inhibit_warnings, align 4
  %52 = call i32 @CPP_OPTION(%struct.TYPE_6__* %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 0, i32* %5, align 4
  br label %94

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %55, %44
  br label %69

57:                                               ; preds = %4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %59 = load i32, i32* @inhibit_errors, align 4
  %60 = call i32 @CPP_OPTION(%struct.TYPE_6__* %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i32 0, i32* %5, align 4
  br label %94

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %4, %63
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %4, %64, %56
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @print_location(%struct.TYPE_6__* %70, i32 %71, i32 %72)
  %74 = load i32, i32* %10, align 4
  %75 = call i64 @CPP_DL_WARNING_P(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %69
  %78 = call i32 @_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %79 = load i32, i32* @stderr, align 4
  %80 = call i32 @fputs(i32 %78, i32 %79)
  br label %93

81:                                               ; preds = %69
  %82 = load i32, i32* %10, align 4
  %83 = icmp eq i32 %82, 131
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %86 = load i32, i32* @stderr, align 4
  %87 = call i32 @fputs(i32 %85, i32 %86)
  br label %92

88:                                               ; preds = %81
  %89 = call i32 @_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %90 = load i32, i32* @stderr, align 4
  %91 = call i32 @fputs(i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %88, %84
  br label %93

93:                                               ; preds = %92, %77
  store i32 1, i32* %5, align 4
  br label %94

94:                                               ; preds = %93, %62, %54, %43, %23
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @CPP_DL_EXTRACT(i32) #1

declare dso_local i32 @cpp_in_system_header(%struct.TYPE_6__*) #1

declare dso_local i32 @CPP_OPTION(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @print_location(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i64 @CPP_DL_WARNING_P(i32) #1

declare dso_local i32 @fputs(i32, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
