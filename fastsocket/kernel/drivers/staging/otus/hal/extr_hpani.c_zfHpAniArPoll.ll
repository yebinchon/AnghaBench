; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpani.c_zfHpAniArPoll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpani.c_zfHpAniArPoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.zsAniState = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.zsHpPriv = type { i32, i32, %struct.TYPE_3__, i64, %struct.zsAniState* }
%struct.TYPE_3__ = type { i32, i32 }

@wd = common dso_local global %struct.TYPE_4__* null, align 8
@ZM_HAL_PROCESS_ANI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfHpAniArPoll(i32* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.zsAniState*, align 8
  %10 = alloca %struct.zsHpPriv*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @zmw_get_wlan_dev(i32* %13)
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.zsHpPriv*
  store %struct.zsHpPriv* %18, %struct.zsHpPriv** %10, align 8
  %19 = load %struct.zsHpPriv*, %struct.zsHpPriv** %10, align 8
  %20 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %19, i32 0, i32 4
  %21 = load %struct.zsAniState*, %struct.zsAniState** %20, align 8
  store %struct.zsAniState* %21, %struct.zsAniState** %9, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.zsAniState*, %struct.zsAniState** %9, align 8
  %24 = getelementptr inbounds %struct.zsAniState, %struct.zsAniState* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %22
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %24, align 4
  %29 = load %struct.zsHpPriv*, %struct.zsHpPriv** %10, align 8
  %30 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %66

33:                                               ; preds = %4
  %34 = load i64, i64* %7, align 8
  store i64 %34, i64* %11, align 8
  %35 = load i64, i64* %11, align 8
  %36 = load %struct.zsHpPriv*, %struct.zsHpPriv** %10, align 8
  %37 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %35
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %38, align 4
  %43 = load i64, i64* %11, align 8
  %44 = load %struct.zsAniState*, %struct.zsAniState** %9, align 8
  %45 = getelementptr inbounds %struct.zsAniState, %struct.zsAniState* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %43
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %45, align 4
  %50 = load i64, i64* %8, align 8
  store i64 %50, i64* %12, align 8
  %51 = load i64, i64* %12, align 8
  %52 = load %struct.zsHpPriv*, %struct.zsHpPriv** %10, align 8
  %53 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %56, %51
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %54, align 8
  %59 = load i64, i64* %12, align 8
  %60 = load %struct.zsAniState*, %struct.zsAniState** %9, align 8
  %61 = getelementptr inbounds %struct.zsAniState, %struct.zsAniState* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %63, %59
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %61, align 4
  br label %66

66:                                               ; preds = %33, %4
  %67 = load %struct.zsHpPriv*, %struct.zsHpPriv** %10, align 8
  %68 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @ZM_HAL_PROCESS_ANI, align 4
  %71 = and i32 %69, %70
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %162

74:                                               ; preds = %66
  %75 = load %struct.zsAniState*, %struct.zsAniState** %9, align 8
  %76 = getelementptr inbounds %struct.zsAniState, %struct.zsAniState* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.zsHpPriv*, %struct.zsHpPriv** %10, align 8
  %79 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = mul nsw i32 5, %80
  %82 = icmp sgt i32 %77, %81
  br i1 %82, label %83, label %115

83:                                               ; preds = %74
  %84 = load %struct.zsAniState*, %struct.zsAniState** %9, align 8
  %85 = getelementptr inbounds %struct.zsAniState, %struct.zsAniState* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.zsAniState*, %struct.zsAniState** %9, align 8
  %88 = getelementptr inbounds %struct.zsAniState, %struct.zsAniState* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.zsAniState*, %struct.zsAniState** %9, align 8
  %91 = getelementptr inbounds %struct.zsAniState, %struct.zsAniState* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = mul nsw i32 %89, %92
  %94 = sdiv i32 %93, 1000
  %95 = icmp sle i32 %86, %94
  br i1 %95, label %96, label %112

96:                                               ; preds = %83
  %97 = load %struct.zsAniState*, %struct.zsAniState** %9, align 8
  %98 = getelementptr inbounds %struct.zsAniState, %struct.zsAniState* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.zsAniState*, %struct.zsAniState** %9, align 8
  %101 = getelementptr inbounds %struct.zsAniState, %struct.zsAniState* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.zsAniState*, %struct.zsAniState** %9, align 8
  %104 = getelementptr inbounds %struct.zsAniState, %struct.zsAniState* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = mul nsw i32 %102, %105
  %107 = sdiv i32 %106, 1000
  %108 = icmp sle i32 %99, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %96
  %110 = load i32*, i32** %5, align 8
  %111 = call i32 @zfHpAniLowerImmunity(i32* %110)
  br label %112

112:                                              ; preds = %109, %96, %83
  %113 = load i32*, i32** %5, align 8
  %114 = call i32 @zfHpAniRestart(i32* %113)
  br label %162

115:                                              ; preds = %74
  %116 = load %struct.zsAniState*, %struct.zsAniState** %9, align 8
  %117 = getelementptr inbounds %struct.zsAniState, %struct.zsAniState* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.zsHpPriv*, %struct.zsHpPriv** %10, align 8
  %120 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp sgt i32 %118, %121
  br i1 %122, label %123, label %161

123:                                              ; preds = %115
  %124 = load %struct.zsAniState*, %struct.zsAniState** %9, align 8
  %125 = getelementptr inbounds %struct.zsAniState, %struct.zsAniState* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.zsAniState*, %struct.zsAniState** %9, align 8
  %128 = getelementptr inbounds %struct.zsAniState, %struct.zsAniState* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.zsAniState*, %struct.zsAniState** %9, align 8
  %131 = getelementptr inbounds %struct.zsAniState, %struct.zsAniState* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 4
  %133 = mul nsw i32 %129, %132
  %134 = sdiv i32 %133, 1000
  %135 = icmp sgt i32 %126, %134
  br i1 %135, label %136, label %141

136:                                              ; preds = %123
  %137 = load i32*, i32** %5, align 8
  %138 = call i32 @zfHpAniOfdmErrTrigger(i32* %137)
  %139 = load i32*, i32** %5, align 8
  %140 = call i32 @zfHpAniRestart(i32* %139)
  br label %160

141:                                              ; preds = %123
  %142 = load %struct.zsAniState*, %struct.zsAniState** %9, align 8
  %143 = getelementptr inbounds %struct.zsAniState, %struct.zsAniState* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.zsAniState*, %struct.zsAniState** %9, align 8
  %146 = getelementptr inbounds %struct.zsAniState, %struct.zsAniState* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.zsAniState*, %struct.zsAniState** %9, align 8
  %149 = getelementptr inbounds %struct.zsAniState, %struct.zsAniState* %148, i32 0, i32 6
  %150 = load i32, i32* %149, align 4
  %151 = mul nsw i32 %147, %150
  %152 = sdiv i32 %151, 1000
  %153 = icmp sgt i32 %144, %152
  br i1 %153, label %154, label %159

154:                                              ; preds = %141
  %155 = load i32*, i32** %5, align 8
  %156 = call i32 @zfHpAniCckErrTrigger(i32* %155)
  %157 = load i32*, i32** %5, align 8
  %158 = call i32 @zfHpAniRestart(i32* %157)
  br label %159

159:                                              ; preds = %154, %141
  br label %160

160:                                              ; preds = %159, %136
  br label %161

161:                                              ; preds = %160, %115
  br label %162

162:                                              ; preds = %73, %161, %112
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zfHpAniLowerImmunity(i32*) #1

declare dso_local i32 @zfHpAniRestart(i32*) #1

declare dso_local i32 @zfHpAniOfdmErrTrigger(i32*) #1

declare dso_local i32 @zfHpAniCckErrTrigger(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
