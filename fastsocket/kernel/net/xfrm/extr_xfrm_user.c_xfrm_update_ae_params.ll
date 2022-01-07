; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_xfrm_update_ae_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_xfrm_update_ae_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { i8*, i8*, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.nlattr = type { i32 }
%struct.xfrm_replay_state = type { i32 }
%struct.xfrm_lifetime_cur = type { i32, i32, i32, i32 }

@XFRMA_REPLAY_VAL = common dso_local global i64 0, align 8
@XFRMA_LTIME_VAL = common dso_local global i64 0, align 8
@XFRMA_ETIMER_THRESH = common dso_local global i64 0, align 8
@XFRMA_REPLAY_THRESH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfrm_state*, %struct.nlattr**)* @xfrm_update_ae_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfrm_update_ae_params(%struct.xfrm_state* %0, %struct.nlattr** %1) #0 {
  %3 = alloca %struct.xfrm_state*, align 8
  %4 = alloca %struct.nlattr**, align 8
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca %struct.xfrm_replay_state*, align 8
  %10 = alloca %struct.xfrm_lifetime_cur*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %3, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %4, align 8
  %11 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %12 = load i64, i64* @XFRMA_REPLAY_VAL, align 8
  %13 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %11, i64 %12
  %14 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  store %struct.nlattr* %14, %struct.nlattr** %5, align 8
  %15 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %16 = load i64, i64* @XFRMA_LTIME_VAL, align 8
  %17 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %15, i64 %16
  %18 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  store %struct.nlattr* %18, %struct.nlattr** %6, align 8
  %19 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %20 = load i64, i64* @XFRMA_ETIMER_THRESH, align 8
  %21 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %19, i64 %20
  %22 = load %struct.nlattr*, %struct.nlattr** %21, align 8
  store %struct.nlattr* %22, %struct.nlattr** %7, align 8
  %23 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %24 = load i64, i64* @XFRMA_REPLAY_THRESH, align 8
  %25 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %24
  %26 = load %struct.nlattr*, %struct.nlattr** %25, align 8
  store %struct.nlattr* %26, %struct.nlattr** %8, align 8
  %27 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %28 = icmp ne %struct.nlattr* %27, null
  br i1 %28, label %29, label %41

29:                                               ; preds = %2
  %30 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %31 = call i8* @nla_data(%struct.nlattr* %30)
  %32 = bitcast i8* %31 to %struct.xfrm_replay_state*
  store %struct.xfrm_replay_state* %32, %struct.xfrm_replay_state** %9, align 8
  %33 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %34 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %33, i32 0, i32 4
  %35 = load %struct.xfrm_replay_state*, %struct.xfrm_replay_state** %9, align 8
  %36 = call i32 @memcpy(i32* %34, %struct.xfrm_replay_state* %35, i32 4)
  %37 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %38 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %37, i32 0, i32 3
  %39 = load %struct.xfrm_replay_state*, %struct.xfrm_replay_state** %9, align 8
  %40 = call i32 @memcpy(i32* %38, %struct.xfrm_replay_state* %39, i32 4)
  br label %41

41:                                               ; preds = %29, %2
  %42 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %43 = icmp ne %struct.nlattr* %42, null
  br i1 %43, label %44, label %72

44:                                               ; preds = %41
  %45 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %46 = call i8* @nla_data(%struct.nlattr* %45)
  %47 = bitcast i8* %46 to %struct.xfrm_lifetime_cur*
  store %struct.xfrm_lifetime_cur* %47, %struct.xfrm_lifetime_cur** %10, align 8
  %48 = load %struct.xfrm_lifetime_cur*, %struct.xfrm_lifetime_cur** %10, align 8
  %49 = getelementptr inbounds %struct.xfrm_lifetime_cur, %struct.xfrm_lifetime_cur* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %52 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 3
  store i32 %50, i32* %53, align 4
  %54 = load %struct.xfrm_lifetime_cur*, %struct.xfrm_lifetime_cur** %10, align 8
  %55 = getelementptr inbounds %struct.xfrm_lifetime_cur, %struct.xfrm_lifetime_cur* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %58 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  store i32 %56, i32* %59, align 8
  %60 = load %struct.xfrm_lifetime_cur*, %struct.xfrm_lifetime_cur** %10, align 8
  %61 = getelementptr inbounds %struct.xfrm_lifetime_cur, %struct.xfrm_lifetime_cur* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %64 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 4
  %66 = load %struct.xfrm_lifetime_cur*, %struct.xfrm_lifetime_cur** %10, align 8
  %67 = getelementptr inbounds %struct.xfrm_lifetime_cur, %struct.xfrm_lifetime_cur* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %70 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 8
  br label %72

72:                                               ; preds = %44, %41
  %73 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %74 = icmp ne %struct.nlattr* %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %77 = call i8* @nla_get_u32(%struct.nlattr* %76)
  %78 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %79 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %78, i32 0, i32 1
  store i8* %77, i8** %79, align 8
  br label %80

80:                                               ; preds = %75, %72
  %81 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %82 = icmp ne %struct.nlattr* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %85 = call i8* @nla_get_u32(%struct.nlattr* %84)
  %86 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %87 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %86, i32 0, i32 0
  store i8* %85, i8** %87, align 8
  br label %88

88:                                               ; preds = %83, %80
  ret void
}

declare dso_local i8* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @memcpy(i32*, %struct.xfrm_replay_state*, i32) #1

declare dso_local i8* @nla_get_u32(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
