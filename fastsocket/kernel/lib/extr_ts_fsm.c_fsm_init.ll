; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_ts_fsm.c_fsm_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_ts_fsm.c_fsm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ts_config = type { i32 }
%struct.ts_fsm = type { i32, %struct.ts_fsm_token* }
%struct.ts_fsm_token = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@TS_IGNORECASE = common dso_local global i32 0, align 4
@TS_FSM_TYPE_MAX = common dso_local global i64 0, align 8
@TS_FSM_RECUR_MAX = common dso_local global i64 0, align 8
@TS_FSM_HEAD_IGNORE = common dso_local global i64 0, align 8
@token_map = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ts_config* (i8*, i32, i32, i32)* @fsm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ts_config* @fsm_init(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ts_config*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ts_config*, align 8
  %13 = alloca %struct.ts_fsm*, align 8
  %14 = alloca %struct.ts_fsm_token*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.ts_fsm_token*, align 8
  %18 = alloca %struct.ts_fsm_token*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %11, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = bitcast i8* %21 to %struct.ts_fsm_token*
  store %struct.ts_fsm_token* %22, %struct.ts_fsm_token** %14, align 8
  %23 = load i32, i32* %7, align 4
  %24 = zext i32 %23 to i64
  %25 = udiv i64 %24, 16
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %7, align 4
  %28 = zext i32 %27 to i64
  %29 = add i64 16, %28
  store i64 %29, i64* %16, align 8
  %30 = load i32, i32* %7, align 4
  %31 = zext i32 %30 to i64
  %32 = urem i64 %31, 16
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %4
  %35 = load i32, i32* %15, align 4
  %36 = icmp ult i32 %35, 1
  br i1 %36, label %37, label %38

37:                                               ; preds = %34, %4
  br label %135

38:                                               ; preds = %34
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @TS_IGNORECASE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %135

44:                                               ; preds = %38
  store i32 0, i32* %10, align 4
  br label %45

45:                                               ; preds = %82, %44
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %49, label %85

49:                                               ; preds = %45
  %50 = load %struct.ts_fsm_token*, %struct.ts_fsm_token** %14, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.ts_fsm_token, %struct.ts_fsm_token* %50, i64 %52
  store %struct.ts_fsm_token* %53, %struct.ts_fsm_token** %17, align 8
  %54 = load %struct.ts_fsm_token*, %struct.ts_fsm_token** %17, align 8
  %55 = getelementptr inbounds %struct.ts_fsm_token, %struct.ts_fsm_token* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @TS_FSM_TYPE_MAX, align 8
  %58 = icmp sgt i64 %56, %57
  br i1 %58, label %65, label %59

59:                                               ; preds = %49
  %60 = load %struct.ts_fsm_token*, %struct.ts_fsm_token** %17, align 8
  %61 = getelementptr inbounds %struct.ts_fsm_token, %struct.ts_fsm_token* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @TS_FSM_RECUR_MAX, align 8
  %64 = icmp sgt i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59, %49
  br label %135

66:                                               ; preds = %59
  %67 = load %struct.ts_fsm_token*, %struct.ts_fsm_token** %17, align 8
  %68 = getelementptr inbounds %struct.ts_fsm_token, %struct.ts_fsm_token* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @TS_FSM_HEAD_IGNORE, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %66
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %15, align 4
  %78 = sub i32 %77, 1
  %79 = icmp eq i32 %76, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %75, %72
  br label %135

81:                                               ; preds = %75, %66
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  br label %45

85:                                               ; preds = %45
  %86 = load i64, i64* %16, align 8
  %87 = load i32, i32* %8, align 4
  %88 = call %struct.ts_config* @alloc_ts_config(i64 %86, i32 %87)
  store %struct.ts_config* %88, %struct.ts_config** %12, align 8
  %89 = load %struct.ts_config*, %struct.ts_config** %12, align 8
  %90 = call i64 @IS_ERR(%struct.ts_config* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = load %struct.ts_config*, %struct.ts_config** %12, align 8
  store %struct.ts_config* %93, %struct.ts_config** %5, align 8
  br label %138

94:                                               ; preds = %85
  %95 = load i32, i32* %9, align 4
  %96 = load %struct.ts_config*, %struct.ts_config** %12, align 8
  %97 = getelementptr inbounds %struct.ts_config, %struct.ts_config* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  %98 = load %struct.ts_config*, %struct.ts_config** %12, align 8
  %99 = call %struct.ts_fsm* @ts_config_priv(%struct.ts_config* %98)
  store %struct.ts_fsm* %99, %struct.ts_fsm** %13, align 8
  %100 = load i32, i32* %15, align 4
  %101 = load %struct.ts_fsm*, %struct.ts_fsm** %13, align 8
  %102 = getelementptr inbounds %struct.ts_fsm, %struct.ts_fsm* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load %struct.ts_fsm*, %struct.ts_fsm** %13, align 8
  %104 = getelementptr inbounds %struct.ts_fsm, %struct.ts_fsm* %103, i32 0, i32 1
  %105 = load %struct.ts_fsm_token*, %struct.ts_fsm_token** %104, align 8
  %106 = load i8*, i8** %6, align 8
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @memcpy(%struct.ts_fsm_token* %105, i8* %106, i32 %107)
  store i32 0, i32* %10, align 4
  br label %109

109:                                              ; preds = %130, %94
  %110 = load i32, i32* %10, align 4
  %111 = load %struct.ts_fsm*, %struct.ts_fsm** %13, align 8
  %112 = getelementptr inbounds %struct.ts_fsm, %struct.ts_fsm* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp ult i32 %110, %113
  br i1 %114, label %115, label %133

115:                                              ; preds = %109
  %116 = load %struct.ts_fsm*, %struct.ts_fsm** %13, align 8
  %117 = getelementptr inbounds %struct.ts_fsm, %struct.ts_fsm* %116, i32 0, i32 1
  %118 = load %struct.ts_fsm_token*, %struct.ts_fsm_token** %117, align 8
  %119 = load i32, i32* %10, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.ts_fsm_token, %struct.ts_fsm_token* %118, i64 %120
  store %struct.ts_fsm_token* %121, %struct.ts_fsm_token** %18, align 8
  %122 = load i64*, i64** @token_map, align 8
  %123 = load %struct.ts_fsm_token*, %struct.ts_fsm_token** %18, align 8
  %124 = getelementptr inbounds %struct.ts_fsm_token, %struct.ts_fsm_token* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds i64, i64* %122, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.ts_fsm_token*, %struct.ts_fsm_token** %18, align 8
  %129 = getelementptr inbounds %struct.ts_fsm_token, %struct.ts_fsm_token* %128, i32 0, i32 0
  store i64 %127, i64* %129, align 8
  br label %130

130:                                              ; preds = %115
  %131 = load i32, i32* %10, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %10, align 4
  br label %109

133:                                              ; preds = %109
  %134 = load %struct.ts_config*, %struct.ts_config** %12, align 8
  store %struct.ts_config* %134, %struct.ts_config** %5, align 8
  br label %138

135:                                              ; preds = %80, %65, %43, %37
  %136 = load i32, i32* %11, align 4
  %137 = call %struct.ts_config* @ERR_PTR(i32 %136)
  store %struct.ts_config* %137, %struct.ts_config** %5, align 8
  br label %138

138:                                              ; preds = %135, %133, %92
  %139 = load %struct.ts_config*, %struct.ts_config** %5, align 8
  ret %struct.ts_config* %139
}

declare dso_local %struct.ts_config* @alloc_ts_config(i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.ts_config*) #1

declare dso_local %struct.ts_fsm* @ts_config_priv(%struct.ts_config*) #1

declare dso_local i32 @memcpy(%struct.ts_fsm_token*, i8*, i32) #1

declare dso_local %struct.ts_config* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
