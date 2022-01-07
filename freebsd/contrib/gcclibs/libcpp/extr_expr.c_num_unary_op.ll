; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_expr.c_num_unary_op.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_expr.c_num_unary_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32 }

@CPP_DL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"traditional C rejects the unary plus operator\00", align 1
@precision = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i64, i64 } (%struct.TYPE_16__*, i64, i64, i32)* @num_unary_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i64 } @num_unary_op(%struct.TYPE_16__* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_17__, align 4
  %6 = alloca %struct.TYPE_17__, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__, align 4
  %10 = alloca %struct.TYPE_17__, align 4
  %11 = bitcast %struct.TYPE_17__* %6 to { i64, i64 }*
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 0
  store i64 %1, i64* %12, align 4
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 1
  store i64 %2, i64* %13, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  switch i32 %14, label %74 [
    i32 128, label %15
    i32 129, label %31
    i32 130, label %48
  ]

15:                                               ; preds = %4
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %17 = call i32 @CPP_WTRADITIONAL(%struct.TYPE_16__* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %15
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %27 = load i32, i32* @CPP_DL_WARNING, align 4
  %28 = call i32 @cpp_error(%struct.TYPE_16__* %26, i32 %27, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %25, %19, %15
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  store i32 0, i32* %30, align 4
  br label %85

31:                                               ; preds = %4
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %33 = load i32, i32* @precision, align 4
  %34 = call i32 @CPP_OPTION(%struct.TYPE_16__* %32, i32 %33)
  %35 = bitcast %struct.TYPE_17__* %6 to { i64, i64 }*
  %36 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 4
  %38 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %35, i32 0, i32 1
  %39 = load i64, i64* %38, align 4
  %40 = call { i64, i64 } @num_negate(i64 %37, i64 %39, i32 %34)
  %41 = bitcast %struct.TYPE_17__* %9 to { i64, i64 }*
  %42 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %41, i32 0, i32 0
  %43 = extractvalue { i64, i64 } %40, 0
  store i64 %43, i64* %42, align 4
  %44 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %41, i32 0, i32 1
  %45 = extractvalue { i64, i64 } %40, 1
  store i64 %45, i64* %44, align 4
  %46 = bitcast %struct.TYPE_17__* %6 to i8*
  %47 = bitcast %struct.TYPE_17__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 4 %47, i64 16, i1 false)
  br label %85

48:                                               ; preds = %4
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = xor i32 %50, -1
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 2
  store i32 %51, i32* %52, align 4
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = xor i32 %54, -1
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 3
  store i32 %55, i32* %56, align 4
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %58 = load i32, i32* @precision, align 4
  %59 = call i32 @CPP_OPTION(%struct.TYPE_16__* %57, i32 %58)
  %60 = bitcast %struct.TYPE_17__* %6 to { i64, i64 }*
  %61 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 4
  %63 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %60, i32 0, i32 1
  %64 = load i64, i64* %63, align 4
  %65 = call { i64, i64 } @num_trim(i64 %62, i64 %64, i32 %59)
  %66 = bitcast %struct.TYPE_17__* %10 to { i64, i64 }*
  %67 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %66, i32 0, i32 0
  %68 = extractvalue { i64, i64 } %65, 0
  store i64 %68, i64* %67, align 4
  %69 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %66, i32 0, i32 1
  %70 = extractvalue { i64, i64 } %65, 1
  store i64 %70, i64* %69, align 4
  %71 = bitcast %struct.TYPE_17__* %6 to i8*
  %72 = bitcast %struct.TYPE_17__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %71, i8* align 4 %72, i64 16, i1 false)
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  store i32 0, i32* %73, align 4
  br label %85

74:                                               ; preds = %4
  %75 = bitcast %struct.TYPE_17__* %6 to { i64, i64 }*
  %76 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 4
  %78 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %75, i32 0, i32 1
  %79 = load i64, i64* %78, align 4
  %80 = call i32 @num_zerop(i64 %77, i64 %79)
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 3
  store i32 %80, i32* %81, align 4
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 2
  store i32 0, i32* %82, align 4
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  store i32 0, i32* %83, align 4
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 1
  store i32 0, i32* %84, align 4
  br label %85

85:                                               ; preds = %74, %48, %31, %29
  %86 = bitcast %struct.TYPE_17__* %5 to i8*
  %87 = bitcast %struct.TYPE_17__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %86, i8* align 4 %87, i64 16, i1 false)
  %88 = bitcast %struct.TYPE_17__* %5 to { i64, i64 }*
  %89 = load { i64, i64 }, { i64, i64 }* %88, align 4
  ret { i64, i64 } %89
}

declare dso_local i32 @CPP_WTRADITIONAL(%struct.TYPE_16__*) #1

declare dso_local i32 @cpp_error(%struct.TYPE_16__*, i32, i8*) #1

declare dso_local { i64, i64 } @num_negate(i64, i64, i32) #1

declare dso_local i32 @CPP_OPTION(%struct.TYPE_16__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local { i64, i64 } @num_trim(i64, i64, i32) #1

declare dso_local i32 @num_zerop(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
