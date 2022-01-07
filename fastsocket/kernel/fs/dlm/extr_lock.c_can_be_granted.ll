; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_can_be_granted.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_can_be_granted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_rsb = type { i32 }
%struct.dlm_lkb = type { i64, i64, i32, i32, i32 }

@DLM_LOCK_IV = common dso_local global i64 0, align 8
@DLM_LKF_CONVDEADLK = common dso_local global i32 0, align 4
@DLM_LOCK_NL = common dso_local global i64 0, align 8
@DLM_SBF_DEMOTED = common dso_local global i32 0, align 4
@DLM_LKF_NODLCKWT = common dso_local global i32 0, align 4
@EDEADLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"can_be_granted deadlock %x now %d\00", align 1
@DLM_LOCK_PR = common dso_local global i64 0, align 8
@DLM_LKF_ALTPR = common dso_local global i32 0, align 4
@DLM_LOCK_CW = common dso_local global i64 0, align 8
@DLM_LKF_ALTCW = common dso_local global i32 0, align 4
@DLM_SBF_ALTMODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_rsb*, %struct.dlm_lkb*, i32, i32, i32*)* @can_be_granted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @can_be_granted(%struct.dlm_rsb* %0, %struct.dlm_lkb* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.dlm_rsb*, align 8
  %7 = alloca %struct.dlm_lkb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.dlm_rsb* %0, %struct.dlm_rsb** %6, align 8
  store %struct.dlm_lkb* %1, %struct.dlm_lkb** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i64 0, i64* %12, align 8
  %15 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %16 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %13, align 8
  %18 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %19 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DLM_LOCK_IV, align 8
  %22 = icmp ne i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %14, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32*, i32** %10, align 8
  store i32 0, i32* %28, align 4
  br label %29

29:                                               ; preds = %27, %5
  %30 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %31 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @_can_be_granted(%struct.dlm_rsb* %30, %struct.dlm_lkb* %31, i32 %32, i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %143

38:                                               ; preds = %29
  %39 = load i64, i64* %14, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %91

41:                                               ; preds = %38
  %42 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %43 = call i64 @can_be_queued(%struct.dlm_lkb* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %91

45:                                               ; preds = %41
  %46 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %47 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %48 = call i64 @conversion_deadlock_detect(%struct.dlm_rsb* %46, %struct.dlm_lkb* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %91

50:                                               ; preds = %45
  %51 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %52 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @DLM_LKF_CONVDEADLK, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %50
  %58 = load i64, i64* @DLM_LOCK_NL, align 8
  %59 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %60 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load i32, i32* @DLM_SBF_DEMOTED, align 4
  %62 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %63 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %90

66:                                               ; preds = %50
  %67 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %68 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @DLM_LKF_NODLCKWT, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %89, label %73

73:                                               ; preds = %66
  %74 = load i32*, i32** %10, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i32, i32* @EDEADLK, align 4
  %78 = sub nsw i32 0, %77
  %79 = load i32*, i32** %10, align 8
  store i32 %78, i32* %79, align 4
  br label %88

80:                                               ; preds = %73
  %81 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %82 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @log_print(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %83, i32 %84)
  %86 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %87 = call i32 @dlm_dump_rsb(%struct.dlm_rsb* %86)
  br label %88

88:                                               ; preds = %80, %76
  br label %89

89:                                               ; preds = %88, %66
  br label %90

90:                                               ; preds = %89, %57
  br label %143

91:                                               ; preds = %45, %41, %38
  %92 = load i64, i64* %13, align 8
  %93 = load i64, i64* @DLM_LOCK_PR, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %104

95:                                               ; preds = %91
  %96 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %97 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @DLM_LKF_ALTPR, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %95
  %103 = load i64, i64* @DLM_LOCK_PR, align 8
  store i64 %103, i64* %12, align 8
  br label %118

104:                                              ; preds = %95, %91
  %105 = load i64, i64* %13, align 8
  %106 = load i64, i64* @DLM_LOCK_CW, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %104
  %109 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %110 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @DLM_LKF_ALTCW, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %108
  %116 = load i64, i64* @DLM_LOCK_CW, align 8
  store i64 %116, i64* %12, align 8
  br label %117

117:                                              ; preds = %115, %108, %104
  br label %118

118:                                              ; preds = %117, %102
  %119 = load i64, i64* %12, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %142

121:                                              ; preds = %118
  %122 = load i64, i64* %12, align 8
  %123 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %124 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %123, i32 0, i32 0
  store i64 %122, i64* %124, align 8
  %125 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %126 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @_can_be_granted(%struct.dlm_rsb* %125, %struct.dlm_lkb* %126, i32 %127, i32 0)
  store i32 %128, i32* %11, align 4
  %129 = load i32, i32* %11, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %121
  %132 = load i32, i32* @DLM_SBF_ALTMODE, align 4
  %133 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %134 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 4
  br label %141

137:                                              ; preds = %121
  %138 = load i64, i64* %13, align 8
  %139 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %140 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %139, i32 0, i32 0
  store i64 %138, i64* %140, align 8
  br label %141

141:                                              ; preds = %137, %131
  br label %142

142:                                              ; preds = %141, %118
  br label %143

143:                                              ; preds = %142, %90, %37
  %144 = load i32, i32* %11, align 4
  ret i32 %144
}

declare dso_local i32 @_can_be_granted(%struct.dlm_rsb*, %struct.dlm_lkb*, i32, i32) #1

declare dso_local i64 @can_be_queued(%struct.dlm_lkb*) #1

declare dso_local i64 @conversion_deadlock_detect(%struct.dlm_rsb*, %struct.dlm_lkb*) #1

declare dso_local i32 @log_print(i8*, i32, i32) #1

declare dso_local i32 @dlm_dump_rsb(%struct.dlm_rsb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
