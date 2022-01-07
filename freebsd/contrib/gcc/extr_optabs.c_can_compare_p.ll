; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_optabs.c_can_compare_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_optabs.c_can_compare_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_16__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }

@cmp_optab = common dso_local global %struct.TYPE_14__* null, align 8
@CODE_FOR_nothing = common dso_local global i64 0, align 8
@ccp_jump = common dso_local global i32 0, align 4
@bcc_gen_fctn = common dso_local global i32** null, align 8
@ccp_store_flag = common dso_local global i32 0, align 4
@setcc_gen_code = common dso_local global i64* null, align 8
@cbranch_optab = common dso_local global %struct.TYPE_16__* null, align 8
@ccp_cmov = common dso_local global i32 0, align 4
@cmov_optab = common dso_local global %struct.TYPE_15__* null, align 8
@cstore_optab = common dso_local global %struct.TYPE_13__* null, align 8
@VOIDmode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @can_compare_p(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  br label %8

8:                                                ; preds = %96, %3
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** @cmp_optab, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CODE_FOR_nothing, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %45

19:                                               ; preds = %8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @ccp_jump, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = load i32**, i32*** @bcc_gen_fctn, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32*, i32** %24, i64 %26
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %4, align 4
  br label %101

31:                                               ; preds = %19
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @ccp_store_flag, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = load i64*, i64** @setcc_gen_code, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @CODE_FOR_nothing, align 8
  %42 = icmp ne i64 %40, %41
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %4, align 4
  br label %101

44:                                               ; preds = %31
  store i32 1, i32* %4, align 4
  br label %101

45:                                               ; preds = %8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @ccp_jump, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %45
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** @cbranch_optab, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @CODE_FOR_nothing, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  store i32 1, i32* %4, align 4
  br label %101

61:                                               ; preds = %49, %45
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @ccp_cmov, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %77

65:                                               ; preds = %61
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** @cmov_optab, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @CODE_FOR_nothing, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %65
  store i32 1, i32* %4, align 4
  br label %101

77:                                               ; preds = %65, %61
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @ccp_store_flag, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %77
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** @cstore_optab, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @CODE_FOR_nothing, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %81
  store i32 1, i32* %4, align 4
  br label %101

93:                                               ; preds = %81, %77
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @GET_MODE_WIDER_MODE(i32 %94)
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @VOIDmode, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %8, label %100

100:                                              ; preds = %96
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %100, %92, %76, %60, %44, %35, %23
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @GET_MODE_WIDER_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
