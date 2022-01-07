; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/raid6/extr_raid6algos.c_raid6_choose_gen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/raid6/extr_raid6algos.c_raid6_choose_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raid6_calls = type { i64, i32, i32 (i32, i32, i8**)*, i32 (...)* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@raid6_algos = common dso_local global %struct.raid6_calls** null, align 8
@jiffies = common dso_local global i64 0, align 8
@RAID6_TIME_JIFFIES_LG2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"raid6: %-8s %5ld MB/s\0A\00", align 1
@HZ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"raid6: using algorithm %s (%ld MB/s)\0A\00", align 1
@raid6_call = common dso_local global %struct.raid6_calls zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"raid6: Yikes!  No algorithm found!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.raid6_calls* (i8**, i32)* @raid6_choose_gen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.raid6_calls* @raid6_choose_gen(i8** %0, i32 %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.raid6_calls**, align 8
  %10 = alloca %struct.raid6_calls*, align 8
  store i8** %0, i8*** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* @PAGE_SIZE, align 4
  %12 = sdiv i32 65536, %11
  %13 = add nsw i32 %12, 2
  %14 = zext i32 %13 to i64
  store i64 0, i64* %6, align 8
  store %struct.raid6_calls* null, %struct.raid6_calls** %10, align 8
  %15 = load %struct.raid6_calls**, %struct.raid6_calls*** @raid6_algos, align 8
  store %struct.raid6_calls** %15, %struct.raid6_calls*** %9, align 8
  br label %16

16:                                               ; preds = %99, %2
  %17 = load %struct.raid6_calls**, %struct.raid6_calls*** %9, align 8
  %18 = load %struct.raid6_calls*, %struct.raid6_calls** %17, align 8
  %19 = icmp ne %struct.raid6_calls* %18, null
  br i1 %19, label %20, label %102

20:                                               ; preds = %16
  %21 = load %struct.raid6_calls*, %struct.raid6_calls** %10, align 8
  %22 = icmp ne %struct.raid6_calls* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = load %struct.raid6_calls**, %struct.raid6_calls*** %9, align 8
  %25 = load %struct.raid6_calls*, %struct.raid6_calls** %24, align 8
  %26 = getelementptr inbounds %struct.raid6_calls, %struct.raid6_calls* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.raid6_calls*, %struct.raid6_calls** %10, align 8
  %29 = getelementptr inbounds %struct.raid6_calls, %struct.raid6_calls* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sge i64 %27, %30
  br i1 %31, label %32, label %98

32:                                               ; preds = %23, %20
  %33 = load %struct.raid6_calls**, %struct.raid6_calls*** %9, align 8
  %34 = load %struct.raid6_calls*, %struct.raid6_calls** %33, align 8
  %35 = getelementptr inbounds %struct.raid6_calls, %struct.raid6_calls* %34, i32 0, i32 3
  %36 = load i32 (...)*, i32 (...)** %35, align 8
  %37 = icmp ne i32 (...)* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = load %struct.raid6_calls**, %struct.raid6_calls*** %9, align 8
  %40 = load %struct.raid6_calls*, %struct.raid6_calls** %39, align 8
  %41 = getelementptr inbounds %struct.raid6_calls, %struct.raid6_calls* %40, i32 0, i32 3
  %42 = load i32 (...)*, i32 (...)** %41, align 8
  %43 = call i32 (...) %42()
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %38
  br label %99

46:                                               ; preds = %38, %32
  store i64 0, i64* %5, align 8
  %47 = call i32 (...) @preempt_disable()
  %48 = load i64, i64* @jiffies, align 8
  store i64 %48, i64* %7, align 8
  br label %49

49:                                               ; preds = %53, %46
  %50 = load i64, i64* @jiffies, align 8
  store i64 %50, i64* %8, align 8
  %51 = load i64, i64* %7, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = call i32 (...) @cpu_relax()
  br label %49

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %65, %55
  %57 = load i64, i64* @jiffies, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load i32, i32* @RAID6_TIME_JIFFIES_LG2, align 4
  %60 = shl i32 1, %59
  %61 = sext i32 %60 to i64
  %62 = add i64 %58, %61
  %63 = call i64 @time_before(i64 %57, i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %56
  %66 = load %struct.raid6_calls**, %struct.raid6_calls*** %9, align 8
  %67 = load %struct.raid6_calls*, %struct.raid6_calls** %66, align 8
  %68 = getelementptr inbounds %struct.raid6_calls, %struct.raid6_calls* %67, i32 0, i32 2
  %69 = load i32 (i32, i32, i8**)*, i32 (i32, i32, i8**)** %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @PAGE_SIZE, align 4
  %72 = load i8**, i8*** %3, align 8
  %73 = call i32 %69(i32 %70, i32 %71, i8** %72)
  %74 = load i64, i64* %5, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %5, align 8
  br label %56

76:                                               ; preds = %56
  %77 = call i32 (...) @preempt_enable()
  %78 = load i64, i64* %5, align 8
  %79 = load i64, i64* %6, align 8
  %80 = icmp ugt i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load i64, i64* %5, align 8
  store i64 %82, i64* %6, align 8
  %83 = load %struct.raid6_calls**, %struct.raid6_calls*** %9, align 8
  %84 = load %struct.raid6_calls*, %struct.raid6_calls** %83, align 8
  store %struct.raid6_calls* %84, %struct.raid6_calls** %10, align 8
  br label %85

85:                                               ; preds = %81, %76
  %86 = load %struct.raid6_calls**, %struct.raid6_calls*** %9, align 8
  %87 = load %struct.raid6_calls*, %struct.raid6_calls** %86, align 8
  %88 = getelementptr inbounds %struct.raid6_calls, %struct.raid6_calls* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i64, i64* %5, align 8
  %91 = load i64, i64* @HZ, align 8
  %92 = mul i64 %90, %91
  %93 = load i32, i32* @RAID6_TIME_JIFFIES_LG2, align 4
  %94 = add nsw i32 4, %93
  %95 = zext i32 %94 to i64
  %96 = lshr i64 %92, %95
  %97 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %89, i64 %96)
  br label %98

98:                                               ; preds = %85, %23
  br label %99

99:                                               ; preds = %98, %45
  %100 = load %struct.raid6_calls**, %struct.raid6_calls*** %9, align 8
  %101 = getelementptr inbounds %struct.raid6_calls*, %struct.raid6_calls** %100, i32 1
  store %struct.raid6_calls** %101, %struct.raid6_calls*** %9, align 8
  br label %16

102:                                              ; preds = %16
  %103 = load %struct.raid6_calls*, %struct.raid6_calls** %10, align 8
  %104 = icmp ne %struct.raid6_calls* %103, null
  br i1 %104, label %105, label %119

105:                                              ; preds = %102
  %106 = load %struct.raid6_calls*, %struct.raid6_calls** %10, align 8
  %107 = getelementptr inbounds %struct.raid6_calls, %struct.raid6_calls* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load i64, i64* %6, align 8
  %110 = load i64, i64* @HZ, align 8
  %111 = mul i64 %109, %110
  %112 = load i32, i32* @RAID6_TIME_JIFFIES_LG2, align 4
  %113 = add nsw i32 4, %112
  %114 = zext i32 %113 to i64
  %115 = lshr i64 %111, %114
  %116 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %108, i64 %115)
  %117 = load %struct.raid6_calls*, %struct.raid6_calls** %10, align 8
  %118 = bitcast %struct.raid6_calls* %117 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.raid6_calls* @raid6_call to i8*), i8* align 8 %118, i64 32, i1 false)
  br label %121

119:                                              ; preds = %102
  %120 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %121

121:                                              ; preds = %119, %105
  %122 = load %struct.raid6_calls*, %struct.raid6_calls** %10, align 8
  ret %struct.raid6_calls* %122
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @printk(i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
