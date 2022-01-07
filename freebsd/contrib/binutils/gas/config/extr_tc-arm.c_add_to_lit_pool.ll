; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_add_to_lit_pool.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_add_to_lit_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, i64, i64, i64 }
%struct.TYPE_8__ = type { i32, i64, %struct.TYPE_6__* }

@inst = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@O_constant = common dso_local global i64 0, align 8
@O_symbol = common dso_local global i64 0, align 8
@MAX_LITERAL_POOL_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"literal pool overflow\00", align 1
@FAIL = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @add_to_lit_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_to_lit_pool() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = call %struct.TYPE_8__* (...) @find_or_make_literal_pool()
  store %struct.TYPE_8__* %4, %struct.TYPE_8__** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %99, %0
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ult i32 %6, %9
  br i1 %10, label %11, label %102

11:                                               ; preds = %5
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 0, i32 0, i32 0), align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %49

22:                                               ; preds = %11
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 0, i32 0, i32 0), align 8
  %24 = load i64, i64* @O_constant, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %49

26:                                               ; preds = %22
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 0, i32 0, i32 1), align 8
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %26
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 0, i32 0, i32 2), align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %102

49:                                               ; preds = %37, %26, %22, %11
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = load i32, i32* %3, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 0, i32 0, i32 0), align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %98

60:                                               ; preds = %49
  %61 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 0, i32 0, i32 0), align 8
  %62 = load i64, i64* @O_symbol, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %98

64:                                               ; preds = %60
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = load i32, i32* %3, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 0, i32 0, i32 1), align 8
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %98

75:                                               ; preds = %64
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = load i32, i32* %3, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 0, i32 0, i32 3), align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %98

86:                                               ; preds = %75
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = load i32, i32* %3, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 0, i32 0, i32 4), align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %86
  br label %102

98:                                               ; preds = %86, %75, %64, %60, %49
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %3, align 4
  %101 = add i32 %100, 1
  store i32 %101, i32* %3, align 4
  br label %5

102:                                              ; preds = %97, %48, %5
  %103 = load i32, i32* %3, align 4
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp eq i32 %103, %106
  br i1 %107, label %108, label %127

108:                                              ; preds = %102
  %109 = load i32, i32* %3, align 4
  %110 = load i32, i32* @MAX_LITERAL_POOL_SIZE, align 4
  %111 = icmp uge i32 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 %113, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 1), align 8
  %114 = load i32, i32* @FAIL, align 4
  store i32 %114, i32* %1, align 4
  br label %135

115:                                              ; preds = %108
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = load i32, i32* %3, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i64 %120
  %122 = bitcast %struct.TYPE_6__* %121 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %122, i8* align 8 bitcast (%struct.TYPE_9__* @inst to i8*), i64 40, i1 false)
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = add i32 %125, 1
  store i32 %126, i32* %124, align 8
  br label %127

127:                                              ; preds = %115, %102
  %128 = load i64, i64* @O_symbol, align 8
  store i64 %128, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 0, i32 0, i32 0), align 8
  %129 = load i32, i32* %3, align 4
  %130 = mul nsw i32 %129, 4
  store i32 %130, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 0, i32 0, i32 1), align 8
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  store i64 %133, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @inst, i32 0, i32 0, i32 0, i32 3), align 8
  %134 = load i32, i32* @SUCCESS, align 4
  store i32 %134, i32* %1, align 4
  br label %135

135:                                              ; preds = %127, %112
  %136 = load i32, i32* %1, align 4
  ret i32 %136
}

declare dso_local %struct.TYPE_8__* @find_or_make_literal_pool(...) #1

declare dso_local i32 @_(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
