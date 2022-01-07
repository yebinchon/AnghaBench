; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_gact.c_tcf_gact_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_gact.c_tcf_gact_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.tc_action = type { i32 }
%struct.tc_gact = type { i32, i32 }
%struct.tcf_gact = type { i64, i32, i32, i32, i32 }
%struct.tcf_common = type { i32 }

@TCA_GACT_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@gact_policy = common dso_local global i32 0, align 4
@TCA_GACT_PARMS = common dso_local global i64 0, align 8
@TCA_GACT_PROB = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@gact_hash_info = common dso_local global i32 0, align 4
@gact_idx_gen = common dso_local global i32 0, align 4
@ACT_P_CREATED = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@MAX_RAND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr*, %struct.nlattr*, %struct.tc_action*, i32, i32)* @tcf_gact_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_gact_init(%struct.nlattr* %0, %struct.nlattr* %1, %struct.tc_action* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca %struct.tc_action*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.tc_gact*, align 8
  %15 = alloca %struct.tcf_gact*, align 8
  %16 = alloca %struct.tcf_common*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.nlattr* %0, %struct.nlattr** %7, align 8
  store %struct.nlattr* %1, %struct.nlattr** %8, align 8
  store %struct.tc_action* %2, %struct.tc_action** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %20 = load i32, i32* @TCA_GACT_MAX, align 4
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %12, align 8
  %24 = alloca %struct.nlattr*, i64 %22, align 16
  store i64 %22, i64* %13, align 8
  store i32 0, i32* %17, align 4
  %25 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %26 = icmp eq %struct.nlattr* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %5
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %117

30:                                               ; preds = %5
  %31 = load i32, i32* @TCA_GACT_MAX, align 4
  %32 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %33 = load i32, i32* @gact_policy, align 4
  %34 = call i32 @nla_parse_nested(%struct.nlattr** %24, i32 %31, %struct.nlattr* %32, i32 %33)
  store i32 %34, i32* %18, align 4
  %35 = load i32, i32* %18, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %18, align 4
  store i32 %38, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %117

39:                                               ; preds = %30
  %40 = load i64, i64* @TCA_GACT_PARMS, align 8
  %41 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %40
  %42 = load %struct.nlattr*, %struct.nlattr** %41, align 8
  %43 = icmp eq %struct.nlattr* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %117

47:                                               ; preds = %39
  %48 = load i64, i64* @TCA_GACT_PARMS, align 8
  %49 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %48
  %50 = load %struct.nlattr*, %struct.nlattr** %49, align 8
  %51 = call i8* @nla_data(%struct.nlattr* %50)
  %52 = bitcast i8* %51 to %struct.tc_gact*
  store %struct.tc_gact* %52, %struct.tc_gact** %14, align 8
  %53 = load i64, i64* @TCA_GACT_PROB, align 8
  %54 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %53
  %55 = load %struct.nlattr*, %struct.nlattr** %54, align 8
  %56 = icmp ne %struct.nlattr* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %47
  %58 = load i32, i32* @EOPNOTSUPP, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %117

60:                                               ; preds = %47
  %61 = load %struct.tc_gact*, %struct.tc_gact** %14, align 8
  %62 = getelementptr inbounds %struct.tc_gact, %struct.tc_gact* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.tc_action*, %struct.tc_action** %9, align 8
  %65 = load i32, i32* %11, align 4
  %66 = call %struct.tcf_common* @tcf_hash_check(i32 %63, %struct.tc_action* %64, i32 %65, i32* @gact_hash_info)
  store %struct.tcf_common* %66, %struct.tcf_common** %16, align 8
  %67 = load %struct.tcf_common*, %struct.tcf_common** %16, align 8
  %68 = icmp ne %struct.tcf_common* %67, null
  br i1 %68, label %85, label %69

69:                                               ; preds = %60
  %70 = load %struct.tc_gact*, %struct.tc_gact** %14, align 8
  %71 = getelementptr inbounds %struct.tc_gact, %struct.tc_gact* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %74 = load %struct.tc_action*, %struct.tc_action** %9, align 8
  %75 = load i32, i32* %11, align 4
  %76 = call %struct.tcf_common* @tcf_hash_create(i32 %72, %struct.nlattr* %73, %struct.tc_action* %74, i32 24, i32 %75, i32* @gact_idx_gen, i32* @gact_hash_info)
  store %struct.tcf_common* %76, %struct.tcf_common** %16, align 8
  %77 = load %struct.tcf_common*, %struct.tcf_common** %16, align 8
  %78 = call i64 @IS_ERR(%struct.tcf_common* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %69
  %81 = load %struct.tcf_common*, %struct.tcf_common** %16, align 8
  %82 = call i32 @PTR_ERR(%struct.tcf_common* %81)
  store i32 %82, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %117

83:                                               ; preds = %69
  %84 = load i32, i32* @ACT_P_CREATED, align 4
  store i32 %84, i32* %17, align 4
  br label %95

85:                                               ; preds = %60
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %85
  %89 = load %struct.tcf_common*, %struct.tcf_common** %16, align 8
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @tcf_hash_release(%struct.tcf_common* %89, i32 %90, i32* @gact_hash_info)
  %92 = load i32, i32* @EEXIST, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %117

94:                                               ; preds = %85
  br label %95

95:                                               ; preds = %94, %83
  %96 = load %struct.tcf_common*, %struct.tcf_common** %16, align 8
  %97 = call %struct.tcf_gact* @to_gact(%struct.tcf_common* %96)
  store %struct.tcf_gact* %97, %struct.tcf_gact** %15, align 8
  %98 = load %struct.tcf_gact*, %struct.tcf_gact** %15, align 8
  %99 = getelementptr inbounds %struct.tcf_gact, %struct.tcf_gact* %98, i32 0, i32 1
  %100 = call i32 @spin_lock_bh(i32* %99)
  %101 = load %struct.tc_gact*, %struct.tc_gact** %14, align 8
  %102 = getelementptr inbounds %struct.tc_gact, %struct.tc_gact* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.tcf_gact*, %struct.tcf_gact** %15, align 8
  %105 = getelementptr inbounds %struct.tcf_gact, %struct.tcf_gact* %104, i32 0, i32 4
  store i32 %103, i32* %105, align 4
  %106 = load %struct.tcf_gact*, %struct.tcf_gact** %15, align 8
  %107 = getelementptr inbounds %struct.tcf_gact, %struct.tcf_gact* %106, i32 0, i32 1
  %108 = call i32 @spin_unlock_bh(i32* %107)
  %109 = load i32, i32* %17, align 4
  %110 = load i32, i32* @ACT_P_CREATED, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %95
  %113 = load %struct.tcf_common*, %struct.tcf_common** %16, align 8
  %114 = call i32 @tcf_hash_insert(%struct.tcf_common* %113, i32* @gact_hash_info)
  br label %115

115:                                              ; preds = %112, %95
  %116 = load i32, i32* %17, align 4
  store i32 %116, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %117

117:                                              ; preds = %115, %88, %80, %57, %44, %37, %27
  %118 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %118)
  %119 = load i32, i32* %6, align 4
  ret i32 %119
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested(%struct.nlattr**, i32, %struct.nlattr*, i32) #2

declare dso_local i8* @nla_data(%struct.nlattr*) #2

declare dso_local %struct.tcf_common* @tcf_hash_check(i32, %struct.tc_action*, i32, i32*) #2

declare dso_local %struct.tcf_common* @tcf_hash_create(i32, %struct.nlattr*, %struct.tc_action*, i32, i32, i32*, i32*) #2

declare dso_local i64 @IS_ERR(%struct.tcf_common*) #2

declare dso_local i32 @PTR_ERR(%struct.tcf_common*) #2

declare dso_local i32 @tcf_hash_release(%struct.tcf_common*, i32, i32*) #2

declare dso_local %struct.tcf_gact* @to_gact(%struct.tcf_common*) #2

declare dso_local i32 @spin_lock_bh(i32*) #2

declare dso_local i32 @spin_unlock_bh(i32*) #2

declare dso_local i32 @tcf_hash_insert(%struct.tcf_common*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
