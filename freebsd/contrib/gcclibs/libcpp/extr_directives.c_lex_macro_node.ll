; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_directives.c_lex_macro_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_directives.c_lex_macro_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_14__*, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_18__* }
%struct.TYPE_16__ = type { i64, i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_18__* }

@CPP_NAME = common dso_local global i64 0, align 8
@CPP_DL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"\22defined\22 cannot be used as a macro name\00", align 1
@NODE_POISONED = common dso_local global i32 0, align 4
@NAMED_OP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"\22%s\22 cannot be used as a macro name as it is an operator in C++\00", align 1
@CPP_EOF = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"no macro name given in #%s directive\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"macro names must be identifiers\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_18__* (%struct.TYPE_17__*)* @lex_macro_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_18__* @lex_macro_node(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  %6 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %7 = call %struct.TYPE_16__* @_cpp_lex_token(%struct.TYPE_17__* %6)
  store %struct.TYPE_16__* %7, %struct.TYPE_16__** %4, align 8
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CPP_NAME, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %39

13:                                               ; preds = %1
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  store %struct.TYPE_18__* %17, %struct.TYPE_18__** %5, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %23 = icmp eq %struct.TYPE_18__* %18, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %13
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %26 = load i32, i32* @CPP_DL_ERROR, align 4
  %27 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @cpp_error(%struct.TYPE_17__* %25, i32 %26, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %38

28:                                               ; preds = %13
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @NODE_POISONED, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %28
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_18__* %36, %struct.TYPE_18__** %2, align 8
  br label %77

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37, %24
  br label %76

39:                                               ; preds = %1
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @NAMED_OP, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %39
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %48 = load i32, i32* @CPP_DL_ERROR, align 4
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %51, align 8
  %53 = call i32 @NODE_NAME(%struct.TYPE_18__* %52)
  %54 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @cpp_error(%struct.TYPE_17__* %47, i32 %48, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %75

55:                                               ; preds = %39
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @CPP_EOF, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %55
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %63 = load i32, i32* @CPP_DL_ERROR, align 4
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @cpp_error(%struct.TYPE_17__* %62, i32 %63, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  br label %74

70:                                               ; preds = %55
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %72 = load i32, i32* @CPP_DL_ERROR, align 4
  %73 = call i32 (%struct.TYPE_17__*, i32, i8*, ...) @cpp_error(%struct.TYPE_17__* %71, i32 %72, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %74

74:                                               ; preds = %70, %61
  br label %75

75:                                               ; preds = %74, %46
  br label %76

76:                                               ; preds = %75, %38
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %2, align 8
  br label %77

77:                                               ; preds = %76, %35
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  ret %struct.TYPE_18__* %78
}

declare dso_local %struct.TYPE_16__* @_cpp_lex_token(%struct.TYPE_17__*) #1

declare dso_local i32 @cpp_error(%struct.TYPE_17__*, i32, i8*, ...) #1

declare dso_local i32 @NODE_NAME(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
