; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_imsttfb.c_compute_imstt_regvals_tvp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_imsttfb.c_compute_imstt_regvals_tvp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imstt_regvals = type { i32 }
%struct.imstt_par = type { %struct.imstt_regvals }

@tvp_reg_init_2 = common dso_local global %struct.imstt_regvals zeroinitializer, align 4
@tvp_reg_init_6 = common dso_local global %struct.imstt_regvals zeroinitializer, align 4
@tvp_reg_init_12 = common dso_local global %struct.imstt_regvals zeroinitializer, align 4
@tvp_reg_init_13 = common dso_local global %struct.imstt_regvals zeroinitializer, align 4
@tvp_reg_init_17 = common dso_local global %struct.imstt_regvals zeroinitializer, align 4
@tvp_reg_init_18 = common dso_local global %struct.imstt_regvals zeroinitializer, align 4
@tvp_reg_init_19 = common dso_local global %struct.imstt_regvals zeroinitializer, align 4
@tvp_reg_init_20 = common dso_local global %struct.imstt_regvals zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.imstt_regvals* (%struct.imstt_par*, i32, i32)* @compute_imstt_regvals_tvp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.imstt_regvals* @compute_imstt_regvals_tvp(%struct.imstt_par* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.imstt_regvals*, align 8
  %5 = alloca %struct.imstt_par*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.imstt_regvals*, align 8
  store %struct.imstt_par* %0, %struct.imstt_par** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %21 [
    i32 512, label %10
    i32 640, label %11
    i32 800, label %12
    i32 832, label %13
    i32 1024, label %14
    i32 1152, label %15
    i32 1280, label %16
  ]

10:                                               ; preds = %3
  store %struct.imstt_regvals* @tvp_reg_init_2, %struct.imstt_regvals** %8, align 8
  br label %22

11:                                               ; preds = %3
  store %struct.imstt_regvals* @tvp_reg_init_6, %struct.imstt_regvals** %8, align 8
  br label %22

12:                                               ; preds = %3
  store %struct.imstt_regvals* @tvp_reg_init_12, %struct.imstt_regvals** %8, align 8
  br label %22

13:                                               ; preds = %3
  store %struct.imstt_regvals* @tvp_reg_init_13, %struct.imstt_regvals** %8, align 8
  br label %22

14:                                               ; preds = %3
  store %struct.imstt_regvals* @tvp_reg_init_17, %struct.imstt_regvals** %8, align 8
  br label %22

15:                                               ; preds = %3
  store %struct.imstt_regvals* @tvp_reg_init_18, %struct.imstt_regvals** %8, align 8
  br label %22

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 960
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, %struct.imstt_regvals* @tvp_reg_init_19, %struct.imstt_regvals* @tvp_reg_init_20
  store %struct.imstt_regvals* %20, %struct.imstt_regvals** %8, align 8
  br label %22

21:                                               ; preds = %3
  store %struct.imstt_regvals* null, %struct.imstt_regvals** %4, align 8
  br label %29

22:                                               ; preds = %16, %15, %14, %13, %12, %11, %10
  %23 = load %struct.imstt_par*, %struct.imstt_par** %5, align 8
  %24 = getelementptr inbounds %struct.imstt_par, %struct.imstt_par* %23, i32 0, i32 0
  %25 = load %struct.imstt_regvals*, %struct.imstt_regvals** %8, align 8
  %26 = bitcast %struct.imstt_regvals* %24 to i8*
  %27 = bitcast %struct.imstt_regvals* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 4, i1 false)
  %28 = load %struct.imstt_regvals*, %struct.imstt_regvals** %8, align 8
  store %struct.imstt_regvals* %28, %struct.imstt_regvals** %4, align 8
  br label %29

29:                                               ; preds = %22, %21
  %30 = load %struct.imstt_regvals*, %struct.imstt_regvals** %4, align 8
  ret %struct.imstt_regvals* %30
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
