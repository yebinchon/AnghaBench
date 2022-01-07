; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/raid6/raid6test/extr_test.c_main.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/raid6/raid6test/extr_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raid6_recov_calls = type { i8*, i32, i32, i32 (...)* }
%struct.raid6_calls = type { i32 (i32, i32, i8**)*, i64 (...)* }

@raid6_recov_algos = common dso_local global %struct.raid6_recov_calls** null, align 8
@raid6_2data_recov = common dso_local global i32 0, align 4
@raid6_datap_recov = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"using recovery %s\0A\00", align 1
@raid6_algos = common dso_local global %struct.raid6_calls** null, align 8
@raid6_call = common dso_local global %struct.raid6_calls zeroinitializer, align 8
@data = common dso_local global i32* null, align 8
@NDISKS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@dataptrs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"\0A*** ERRORS FOUND ***\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.raid6_calls**, align 8
  %7 = alloca %struct.raid6_recov_calls**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %10, align 4
  %11 = call i32 (...) @makedata()
  %12 = load %struct.raid6_recov_calls**, %struct.raid6_recov_calls*** @raid6_recov_algos, align 8
  store %struct.raid6_recov_calls** %12, %struct.raid6_recov_calls*** %7, align 8
  br label %13

13:                                               ; preds = %114, %2
  %14 = load %struct.raid6_recov_calls**, %struct.raid6_recov_calls*** %7, align 8
  %15 = load %struct.raid6_recov_calls*, %struct.raid6_recov_calls** %14, align 8
  %16 = icmp ne %struct.raid6_recov_calls* %15, null
  br i1 %16, label %17, label %117

17:                                               ; preds = %13
  %18 = load %struct.raid6_recov_calls**, %struct.raid6_recov_calls*** %7, align 8
  %19 = load %struct.raid6_recov_calls*, %struct.raid6_recov_calls** %18, align 8
  %20 = getelementptr inbounds %struct.raid6_recov_calls, %struct.raid6_recov_calls* %19, i32 0, i32 3
  %21 = load i32 (...)*, i32 (...)** %20, align 8
  %22 = icmp ne i32 (...)* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load %struct.raid6_recov_calls**, %struct.raid6_recov_calls*** %7, align 8
  %25 = load %struct.raid6_recov_calls*, %struct.raid6_recov_calls** %24, align 8
  %26 = getelementptr inbounds %struct.raid6_recov_calls, %struct.raid6_recov_calls* %25, i32 0, i32 3
  %27 = load i32 (...)*, i32 (...)** %26, align 8
  %28 = call i32 (...) %27()
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  br label %114

31:                                               ; preds = %23, %17
  %32 = load %struct.raid6_recov_calls**, %struct.raid6_recov_calls*** %7, align 8
  %33 = load %struct.raid6_recov_calls*, %struct.raid6_recov_calls** %32, align 8
  %34 = getelementptr inbounds %struct.raid6_recov_calls, %struct.raid6_recov_calls* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* @raid6_2data_recov, align 4
  %36 = load %struct.raid6_recov_calls**, %struct.raid6_recov_calls*** %7, align 8
  %37 = load %struct.raid6_recov_calls*, %struct.raid6_recov_calls** %36, align 8
  %38 = getelementptr inbounds %struct.raid6_recov_calls, %struct.raid6_recov_calls* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* @raid6_datap_recov, align 4
  %40 = load %struct.raid6_recov_calls**, %struct.raid6_recov_calls*** %7, align 8
  %41 = load %struct.raid6_recov_calls*, %struct.raid6_recov_calls** %40, align 8
  %42 = getelementptr inbounds %struct.raid6_recov_calls, %struct.raid6_recov_calls* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %43)
  %45 = load %struct.raid6_calls**, %struct.raid6_calls*** @raid6_algos, align 8
  store %struct.raid6_calls** %45, %struct.raid6_calls*** %6, align 8
  br label %46

46:                                               ; preds = %109, %31
  %47 = load %struct.raid6_calls**, %struct.raid6_calls*** %6, align 8
  %48 = load %struct.raid6_calls*, %struct.raid6_calls** %47, align 8
  %49 = icmp ne %struct.raid6_calls* %48, null
  br i1 %49, label %50, label %112

50:                                               ; preds = %46
  %51 = load %struct.raid6_calls**, %struct.raid6_calls*** %6, align 8
  %52 = load %struct.raid6_calls*, %struct.raid6_calls** %51, align 8
  %53 = getelementptr inbounds %struct.raid6_calls, %struct.raid6_calls* %52, i32 0, i32 1
  %54 = load i64 (...)*, i64 (...)** %53, align 8
  %55 = icmp ne i64 (...)* %54, null
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  %57 = load %struct.raid6_calls**, %struct.raid6_calls*** %6, align 8
  %58 = load %struct.raid6_calls*, %struct.raid6_calls** %57, align 8
  %59 = getelementptr inbounds %struct.raid6_calls, %struct.raid6_calls* %58, i32 0, i32 1
  %60 = load i64 (...)*, i64 (...)** %59, align 8
  %61 = call i64 (...) %60()
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %108

63:                                               ; preds = %56, %50
  %64 = load %struct.raid6_calls**, %struct.raid6_calls*** %6, align 8
  %65 = load %struct.raid6_calls*, %struct.raid6_calls** %64, align 8
  %66 = bitcast %struct.raid6_calls* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.raid6_calls* @raid6_call to i8*), i8* align 8 %66, i64 16, i1 false)
  %67 = load i32*, i32** @data, align 8
  %68 = load i32, i32* @NDISKS, align 4
  %69 = sub nsw i32 %68, 2
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @PAGE_SIZE, align 4
  %74 = mul nsw i32 2, %73
  %75 = call i32 @memset(i32 %72, i32 238, i32 %74)
  %76 = load i32 (i32, i32, i8**)*, i32 (i32, i32, i8**)** getelementptr inbounds (%struct.raid6_calls, %struct.raid6_calls* @raid6_call, i32 0, i32 0), align 8
  %77 = load i32, i32* @NDISKS, align 4
  %78 = load i32, i32* @PAGE_SIZE, align 4
  %79 = call i32 %76(i32 %77, i32 %78, i8** bitcast (i32* @dataptrs to i8**))
  store i32 0, i32* %8, align 4
  br label %80

80:                                               ; preds = %104, %63
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @NDISKS, align 4
  %83 = sub nsw i32 %82, 1
  %84 = icmp slt i32 %81, %83
  br i1 %84, label %85, label %107

85:                                               ; preds = %80
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %100, %85
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @NDISKS, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %103

92:                                               ; preds = %88
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %9, align 4
  %95 = call i64 @test_disks(i32 %93, i32 %94)
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %97, %95
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %10, align 4
  br label %100

100:                                              ; preds = %92
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %9, align 4
  br label %88

103:                                              ; preds = %88
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %8, align 4
  br label %80

107:                                              ; preds = %80
  br label %108

108:                                              ; preds = %107, %56
  br label %109

109:                                              ; preds = %108
  %110 = load %struct.raid6_calls**, %struct.raid6_calls*** %6, align 8
  %111 = getelementptr inbounds %struct.raid6_calls*, %struct.raid6_calls** %110, i32 1
  store %struct.raid6_calls** %111, %struct.raid6_calls*** %6, align 8
  br label %46

112:                                              ; preds = %46
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %114

114:                                              ; preds = %112, %30
  %115 = load %struct.raid6_recov_calls**, %struct.raid6_recov_calls*** %7, align 8
  %116 = getelementptr inbounds %struct.raid6_recov_calls*, %struct.raid6_recov_calls** %115, i32 1
  store %struct.raid6_recov_calls** %116, %struct.raid6_recov_calls*** %7, align 8
  br label %13

117:                                              ; preds = %13
  %118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %119 = call i32 (...) @raid6_select_algo()
  %120 = load i32, i32* %10, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %117
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %124

124:                                              ; preds = %122, %117
  %125 = load i32, i32* %10, align 4
  ret i32 %125
}

declare dso_local i32 @makedata(...) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @test_disks(i32, i32) #1

declare dso_local i32 @raid6_select_algo(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
