; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_directives.c_parse_answer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_directives.c_parse_answer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.answer = type { i32, i32*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i32 }

@CPP_OPEN_PAREN = common dso_local global i64 0, align 8
@T_IF = common dso_local global i32 0, align 4
@T_UNASSERT = common dso_local global i32 0, align 4
@CPP_EOF = common dso_local global i64 0, align 8
@CPP_DL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"missing '(' after predicate\00", align 1
@CPP_CLOSE_PAREN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"missing ')' to complete answer\00", align 1
@PREV_WHITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"predicate's answer is empty\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.answer**, i32)* @parse_answer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_answer(%struct.TYPE_10__* %0, %struct.answer** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.answer**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.answer*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.answer** %1, %struct.answer*** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %15 = call %struct.TYPE_9__* @cpp_get_token(%struct.TYPE_10__* %14)
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %8, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CPP_OPEN_PAREN, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %43

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @T_IF, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %27 = call i32 @_cpp_backup_tokens(%struct.TYPE_10__* %26, i32 1)
  store i32 0, i32* %4, align 4
  br label %127

28:                                               ; preds = %21
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @T_UNASSERT, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @CPP_EOF, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %127

39:                                               ; preds = %32, %28
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %41 = load i32, i32* @CPP_DL_ERROR, align 4
  %42 = call i32 @cpp_error(%struct.TYPE_10__* %40, i32 %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %127

43:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %44

44:                                               ; preds = %104, %43
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %46 = call %struct.TYPE_9__* @cpp_get_token(%struct.TYPE_10__* %45)
  store %struct.TYPE_9__* %46, %struct.TYPE_9__** %12, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @CPP_CLOSE_PAREN, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %107

53:                                               ; preds = %44
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @CPP_EOF, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %61 = load i32, i32* @CPP_DL_ERROR, align 4
  %62 = call i32 @cpp_error(%struct.TYPE_10__* %60, i32 %61, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %127

63:                                               ; preds = %53
  %64 = load i32, i32* %10, align 4
  %65 = zext i32 %64 to i64
  %66 = mul i64 %65, 16
  %67 = add i64 24, %66
  store i64 %67, i64* %11, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @BUFF_ROOM(i32 %70)
  %72 = load i64, i64* %11, align 8
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %63
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = call i32 @_cpp_extend_buff(%struct.TYPE_10__* %75, i32* %77, i32 24)
  br label %79

79:                                               ; preds = %74, %63
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @BUFF_FRONT(i32 %82)
  %84 = inttoptr i64 %83 to %struct.answer*
  %85 = getelementptr inbounds %struct.answer, %struct.answer* %84, i32 0, i32 2
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i64 %88
  store %struct.TYPE_9__* %89, %struct.TYPE_9__** %13, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %92 = bitcast %struct.TYPE_9__* %90 to i8*
  %93 = bitcast %struct.TYPE_9__* %91 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %92, i8* align 8 %93, i64 16, i1 false)
  %94 = load i32, i32* %10, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %79
  %97 = load i32, i32* @PREV_WHITE, align 4
  %98 = xor i32 %97, -1
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = and i32 %101, %98
  store i32 %102, i32* %100, align 8
  br label %103

103:                                              ; preds = %96, %79
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %10, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %10, align 4
  br label %44

107:                                              ; preds = %52
  %108 = load i32, i32* %10, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %112 = load i32, i32* @CPP_DL_ERROR, align 4
  %113 = call i32 @cpp_error(%struct.TYPE_10__* %111, i32 %112, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %127

114:                                              ; preds = %107
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @BUFF_FRONT(i32 %117)
  %119 = inttoptr i64 %118 to %struct.answer*
  store %struct.answer* %119, %struct.answer** %9, align 8
  %120 = load i32, i32* %10, align 4
  %121 = load %struct.answer*, %struct.answer** %9, align 8
  %122 = getelementptr inbounds %struct.answer, %struct.answer* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  %123 = load %struct.answer*, %struct.answer** %9, align 8
  %124 = getelementptr inbounds %struct.answer, %struct.answer* %123, i32 0, i32 1
  store i32* null, i32** %124, align 8
  %125 = load %struct.answer*, %struct.answer** %9, align 8
  %126 = load %struct.answer**, %struct.answer*** %6, align 8
  store %struct.answer* %125, %struct.answer** %126, align 8
  store i32 0, i32* %4, align 4
  br label %127

127:                                              ; preds = %114, %110, %59, %39, %38, %25
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local %struct.TYPE_9__* @cpp_get_token(%struct.TYPE_10__*) #1

declare dso_local i32 @_cpp_backup_tokens(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @cpp_error(%struct.TYPE_10__*, i32, i8*) #1

declare dso_local i64 @BUFF_ROOM(i32) #1

declare dso_local i32 @_cpp_extend_buff(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i64 @BUFF_FRONT(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
