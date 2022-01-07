; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_api.c_tcf_hash_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_api.c_tcf_hash_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_common = type { i32, i32, i32, i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i8*, i8* }
%struct.nlattr = type { i32 }
%struct.tc_action = type { i8* }
%struct.tcf_hashinfo = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tcf_common* @tcf_hash_create(i64 %0, %struct.nlattr* %1, %struct.tc_action* %2, i32 %3, i32 %4, i64* %5, %struct.tcf_hashinfo* %6) #0 {
  %8 = alloca %struct.tcf_common*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.nlattr*, align 8
  %11 = alloca %struct.tc_action*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca %struct.tcf_hashinfo*, align 8
  %16 = alloca %struct.tcf_common*, align 8
  %17 = alloca i32, align 4
  store i64 %0, i64* %9, align 8
  store %struct.nlattr* %1, %struct.nlattr** %10, align 8
  store %struct.tc_action* %2, %struct.tc_action** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i64* %5, i64** %14, align 8
  store %struct.tcf_hashinfo* %6, %struct.tcf_hashinfo** %15, align 8
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.tcf_common* @kzalloc(i32 %18, i32 %19)
  store %struct.tcf_common* %20, %struct.tcf_common** %16, align 8
  %21 = load %struct.tcf_common*, %struct.tcf_common** %16, align 8
  %22 = icmp ne %struct.tcf_common* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %7
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.tcf_common* @ERR_PTR(i32 %29)
  store %struct.tcf_common* %30, %struct.tcf_common** %8, align 8
  br label %88

31:                                               ; preds = %7
  %32 = load %struct.tcf_common*, %struct.tcf_common** %16, align 8
  %33 = getelementptr inbounds %struct.tcf_common, %struct.tcf_common* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.tcf_common*, %struct.tcf_common** %16, align 8
  %38 = getelementptr inbounds %struct.tcf_common, %struct.tcf_common* %37, i32 0, i32 1
  store i32 1, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %31
  %40 = load %struct.tcf_common*, %struct.tcf_common** %16, align 8
  %41 = getelementptr inbounds %struct.tcf_common, %struct.tcf_common* %40, i32 0, i32 2
  %42 = call i32 @spin_lock_init(i32* %41)
  %43 = load i64, i64* %9, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i64, i64* %9, align 8
  br label %51

47:                                               ; preds = %39
  %48 = load i64*, i64** %14, align 8
  %49 = load %struct.tcf_hashinfo*, %struct.tcf_hashinfo** %15, align 8
  %50 = call i64 @tcf_hash_new_index(i64* %48, %struct.tcf_hashinfo* %49)
  br label %51

51:                                               ; preds = %47, %45
  %52 = phi i64 [ %46, %45 ], [ %50, %47 ]
  %53 = load %struct.tcf_common*, %struct.tcf_common** %16, align 8
  %54 = getelementptr inbounds %struct.tcf_common, %struct.tcf_common* %53, i32 0, i32 6
  store i64 %52, i64* %54, align 8
  %55 = load i8*, i8** @jiffies, align 8
  %56 = load %struct.tcf_common*, %struct.tcf_common** %16, align 8
  %57 = getelementptr inbounds %struct.tcf_common, %struct.tcf_common* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  store i8* %55, i8** %58, align 8
  %59 = load i8*, i8** @jiffies, align 8
  %60 = load %struct.tcf_common*, %struct.tcf_common** %16, align 8
  %61 = getelementptr inbounds %struct.tcf_common, %struct.tcf_common* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i8* %59, i8** %62, align 8
  %63 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %64 = icmp ne %struct.nlattr* %63, null
  br i1 %64, label %65, label %82

65:                                               ; preds = %51
  %66 = load %struct.tcf_common*, %struct.tcf_common** %16, align 8
  %67 = getelementptr inbounds %struct.tcf_common, %struct.tcf_common* %66, i32 0, i32 4
  %68 = load %struct.tcf_common*, %struct.tcf_common** %16, align 8
  %69 = getelementptr inbounds %struct.tcf_common, %struct.tcf_common* %68, i32 0, i32 3
  %70 = load %struct.tcf_common*, %struct.tcf_common** %16, align 8
  %71 = getelementptr inbounds %struct.tcf_common, %struct.tcf_common* %70, i32 0, i32 2
  %72 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %73 = call i32 @gen_new_estimator(i32* %67, i32* %69, i32* %71, %struct.nlattr* %72)
  store i32 %73, i32* %17, align 4
  %74 = load i32, i32* %17, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %65
  %77 = load %struct.tcf_common*, %struct.tcf_common** %16, align 8
  %78 = call i32 @kfree(%struct.tcf_common* %77)
  %79 = load i32, i32* %17, align 4
  %80 = call %struct.tcf_common* @ERR_PTR(i32 %79)
  store %struct.tcf_common* %80, %struct.tcf_common** %8, align 8
  br label %88

81:                                               ; preds = %65
  br label %82

82:                                               ; preds = %81, %51
  %83 = load %struct.tcf_common*, %struct.tcf_common** %16, align 8
  %84 = bitcast %struct.tcf_common* %83 to i8*
  %85 = load %struct.tc_action*, %struct.tc_action** %11, align 8
  %86 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %85, i32 0, i32 0
  store i8* %84, i8** %86, align 8
  %87 = load %struct.tcf_common*, %struct.tcf_common** %16, align 8
  store %struct.tcf_common* %87, %struct.tcf_common** %8, align 8
  br label %88

88:                                               ; preds = %82, %76, %27
  %89 = load %struct.tcf_common*, %struct.tcf_common** %8, align 8
  ret %struct.tcf_common* %89
}

declare dso_local %struct.tcf_common* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.tcf_common* @ERR_PTR(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @tcf_hash_new_index(i64*, %struct.tcf_hashinfo*) #1

declare dso_local i32 @gen_new_estimator(i32*, i32*, i32*, %struct.nlattr*) #1

declare dso_local i32 @kfree(%struct.tcf_common*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
