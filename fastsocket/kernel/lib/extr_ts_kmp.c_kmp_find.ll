; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_ts_kmp.c_kmp_find.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_ts_kmp.c_kmp_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ts_config = type { i32, i32 (i32, i64**, %struct.ts_config*, %struct.ts_state*)* }
%struct.ts_state = type { i32 }
%struct.ts_kmp = type { i64*, i32*, i32 }

@TS_IGNORECASE = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ts_config*, %struct.ts_state*)* @kmp_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kmp_find(%struct.ts_config* %0, %struct.ts_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ts_config*, align 8
  %5 = alloca %struct.ts_state*, align 8
  %6 = alloca %struct.ts_kmp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  store %struct.ts_config* %0, %struct.ts_config** %4, align 8
  store %struct.ts_state* %1, %struct.ts_state** %5, align 8
  %13 = load %struct.ts_config*, %struct.ts_config** %4, align 8
  %14 = call %struct.ts_kmp* @ts_config_priv(%struct.ts_config* %13)
  store %struct.ts_kmp* %14, %struct.ts_kmp** %6, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.ts_state*, %struct.ts_state** %5, align 8
  %16 = getelementptr inbounds %struct.ts_state, %struct.ts_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load %struct.ts_config*, %struct.ts_config** %4, align 8
  %19 = getelementptr inbounds %struct.ts_config, %struct.ts_config* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @TS_IGNORECASE, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %12, align 4
  br label %23

23:                                               ; preds = %139, %2
  %24 = load %struct.ts_config*, %struct.ts_config** %4, align 8
  %25 = getelementptr inbounds %struct.ts_config, %struct.ts_config* %24, i32 0, i32 1
  %26 = load i32 (i32, i64**, %struct.ts_config*, %struct.ts_state*)*, i32 (i32, i64**, %struct.ts_config*, %struct.ts_state*)** %25, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.ts_config*, %struct.ts_config** %4, align 8
  %29 = load %struct.ts_state*, %struct.ts_state** %5, align 8
  %30 = call i32 %26(i32 %27, i64** %11, %struct.ts_config* %28, %struct.ts_state* %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp eq i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %23
  br label %143

37:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %136, %37
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %139

42:                                               ; preds = %38
  br label %43

43:                                               ; preds = %74, %42
  %44 = load i32, i32* %8, align 4
  %45 = icmp ugt i32 %44, 0
  br i1 %45, label %46, label %72

46:                                               ; preds = %43
  %47 = load %struct.ts_kmp*, %struct.ts_kmp** %6, align 8
  %48 = getelementptr inbounds %struct.ts_kmp, %struct.ts_kmp* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %46
  %57 = load i64*, i64** %11, align 8
  %58 = load i32, i32* %7, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @toupper(i64 %61)
  br label %69

63:                                               ; preds = %46
  %64 = load i64*, i64** %11, align 8
  %65 = load i32, i32* %7, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  br label %69

69:                                               ; preds = %63, %56
  %70 = phi i64 [ %62, %56 ], [ %68, %63 ]
  %71 = icmp ne i64 %53, %70
  br label %72

72:                                               ; preds = %69, %43
  %73 = phi i1 [ false, %43 ], [ %71, %69 ]
  br i1 %73, label %74, label %83

74:                                               ; preds = %72
  %75 = load %struct.ts_kmp*, %struct.ts_kmp** %6, align 8
  %76 = getelementptr inbounds %struct.ts_kmp, %struct.ts_kmp* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sub i32 %78, 1
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %8, align 4
  br label %43

83:                                               ; preds = %72
  %84 = load %struct.ts_kmp*, %struct.ts_kmp** %6, align 8
  %85 = getelementptr inbounds %struct.ts_kmp, %struct.ts_kmp* %84, i32 0, i32 0
  %86 = load i64*, i64** %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %83
  %94 = load i64*, i64** %11, align 8
  %95 = load i32, i32* %7, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = call i64 @toupper(i64 %98)
  br label %106

100:                                              ; preds = %83
  %101 = load i64*, i64** %11, align 8
  %102 = load i32, i32* %7, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %101, i64 %103
  %105 = load i64, i64* %104, align 8
  br label %106

106:                                              ; preds = %100, %93
  %107 = phi i64 [ %99, %93 ], [ %105, %100 ]
  %108 = icmp eq i64 %90, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load i32, i32* %8, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %8, align 4
  br label %112

112:                                              ; preds = %109, %106
  %113 = load i32, i32* %8, align 4
  %114 = load %struct.ts_kmp*, %struct.ts_kmp** %6, align 8
  %115 = getelementptr inbounds %struct.ts_kmp, %struct.ts_kmp* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = icmp eq i32 %113, %116
  %118 = zext i1 %117 to i32
  %119 = call i64 @unlikely(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %135

121:                                              ; preds = %112
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* %7, align 4
  %124 = add i32 %122, %123
  %125 = add i32 %124, 1
  %126 = load %struct.ts_state*, %struct.ts_state** %5, align 8
  %127 = getelementptr inbounds %struct.ts_state, %struct.ts_state* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 4
  %128 = load %struct.ts_state*, %struct.ts_state** %5, align 8
  %129 = getelementptr inbounds %struct.ts_state, %struct.ts_state* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.ts_kmp*, %struct.ts_kmp** %6, align 8
  %132 = getelementptr inbounds %struct.ts_kmp, %struct.ts_kmp* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = sub i32 %130, %133
  store i32 %134, i32* %3, align 4
  br label %145

135:                                              ; preds = %112
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %7, align 4
  %138 = add i32 %137, 1
  store i32 %138, i32* %7, align 4
  br label %38

139:                                              ; preds = %38
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* %10, align 4
  %142 = add i32 %141, %140
  store i32 %142, i32* %10, align 4
  br label %23

143:                                              ; preds = %36
  %144 = load i32, i32* @UINT_MAX, align 4
  store i32 %144, i32* %3, align 4
  br label %145

145:                                              ; preds = %143, %121
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local %struct.ts_kmp* @ts_config_priv(%struct.ts_config*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @toupper(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
