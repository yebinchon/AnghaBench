; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_mirred.c_tcf_mirred_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_mirred.c_tcf_mirred_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.tc_action = type { i32 }
%struct.tc_mirred = type { i64, i32, i32, i32 }
%struct.tcf_mirred = type { i32, i32, i32, %struct.net_device*, i64, i32, i32 }
%struct.net_device = type { i32 }
%struct.tcf_common = type { i32 }

@TCA_MIRRED_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@mirred_policy = common dso_local global i32 0, align 4
@TCA_MIRRED_PARMS = common dso_local global i64 0, align 8
@init_net = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@mirred_hash_info = common dso_local global i32 0, align 4
@mirred_idx_gen = common dso_local global i32 0, align 4
@ACT_P_CREATED = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@mirred_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr*, %struct.nlattr*, %struct.tc_action*, i32, i32)* @tcf_mirred_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_mirred_init(%struct.nlattr* %0, %struct.nlattr* %1, %struct.tc_action* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca %struct.tc_action*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.tc_mirred*, align 8
  %15 = alloca %struct.tcf_mirred*, align 8
  %16 = alloca %struct.tcf_common*, align 8
  %17 = alloca %struct.net_device*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.nlattr* %0, %struct.nlattr** %7, align 8
  store %struct.nlattr* %1, %struct.nlattr** %8, align 8
  store %struct.tc_action* %2, %struct.tc_action** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %22 = load i32, i32* @TCA_MIRRED_MAX, align 4
  %23 = add nsw i32 %22, 1
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %12, align 8
  %26 = alloca %struct.nlattr*, i64 %24, align 16
  store i64 %24, i64* %13, align 8
  store %struct.net_device* null, %struct.net_device** %17, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %20, align 4
  %27 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %28 = icmp eq %struct.nlattr* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %5
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %177

32:                                               ; preds = %5
  %33 = load i32, i32* @TCA_MIRRED_MAX, align 4
  %34 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %35 = load i32, i32* @mirred_policy, align 4
  %36 = call i32 @nla_parse_nested(%struct.nlattr** %26, i32 %33, %struct.nlattr* %34, i32 %35)
  store i32 %36, i32* %19, align 4
  %37 = load i32, i32* %19, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %19, align 4
  store i32 %40, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %177

41:                                               ; preds = %32
  %42 = load i64, i64* @TCA_MIRRED_PARMS, align 8
  %43 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %42
  %44 = load %struct.nlattr*, %struct.nlattr** %43, align 8
  %45 = icmp eq %struct.nlattr* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %177

49:                                               ; preds = %41
  %50 = load i64, i64* @TCA_MIRRED_PARMS, align 8
  %51 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %50
  %52 = load %struct.nlattr*, %struct.nlattr** %51, align 8
  %53 = call %struct.tc_mirred* @nla_data(%struct.nlattr* %52)
  store %struct.tc_mirred* %53, %struct.tc_mirred** %14, align 8
  %54 = load %struct.tc_mirred*, %struct.tc_mirred** %14, align 8
  %55 = getelementptr inbounds %struct.tc_mirred, %struct.tc_mirred* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %49
  %59 = load %struct.tc_mirred*, %struct.tc_mirred** %14, align 8
  %60 = getelementptr inbounds %struct.tc_mirred, %struct.tc_mirred* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call %struct.net_device* @__dev_get_by_index(i32* @init_net, i64 %61)
  store %struct.net_device* %62, %struct.net_device** %17, align 8
  %63 = load %struct.net_device*, %struct.net_device** %17, align 8
  %64 = icmp eq %struct.net_device* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load i32, i32* @ENODEV, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %177

68:                                               ; preds = %58
  %69 = load %struct.net_device*, %struct.net_device** %17, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  switch i32 %71, label %73 [
    i32 130, label %72
    i32 129, label %72
    i32 131, label %72
    i32 133, label %72
    i32 128, label %72
    i32 132, label %72
  ]

72:                                               ; preds = %68, %68, %68, %68, %68, %68
  store i32 0, i32* %20, align 4
  br label %74

73:                                               ; preds = %68
  store i32 1, i32* %20, align 4
  br label %74

74:                                               ; preds = %73, %72
  br label %75

75:                                               ; preds = %74, %49
  %76 = load %struct.tc_mirred*, %struct.tc_mirred** %14, align 8
  %77 = getelementptr inbounds %struct.tc_mirred, %struct.tc_mirred* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.tc_action*, %struct.tc_action** %9, align 8
  %80 = load i32, i32* %11, align 4
  %81 = call %struct.tcf_common* @tcf_hash_check(i32 %78, %struct.tc_action* %79, i32 %80, i32* @mirred_hash_info)
  store %struct.tcf_common* %81, %struct.tcf_common** %16, align 8
  %82 = load %struct.tcf_common*, %struct.tcf_common** %16, align 8
  %83 = icmp ne %struct.tcf_common* %82, null
  br i1 %83, label %108, label %84

84:                                               ; preds = %75
  %85 = load %struct.tc_mirred*, %struct.tc_mirred** %14, align 8
  %86 = getelementptr inbounds %struct.tc_mirred, %struct.tc_mirred* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %84
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %177

92:                                               ; preds = %84
  %93 = load %struct.tc_mirred*, %struct.tc_mirred** %14, align 8
  %94 = getelementptr inbounds %struct.tc_mirred, %struct.tc_mirred* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %97 = load %struct.tc_action*, %struct.tc_action** %9, align 8
  %98 = load i32, i32* %11, align 4
  %99 = call %struct.tcf_common* @tcf_hash_create(i32 %95, %struct.nlattr* %96, %struct.tc_action* %97, i32 40, i32 %98, i32* @mirred_idx_gen, i32* @mirred_hash_info)
  store %struct.tcf_common* %99, %struct.tcf_common** %16, align 8
  %100 = load %struct.tcf_common*, %struct.tcf_common** %16, align 8
  %101 = call i64 @IS_ERR(%struct.tcf_common* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %92
  %104 = load %struct.tcf_common*, %struct.tcf_common** %16, align 8
  %105 = call i32 @PTR_ERR(%struct.tcf_common* %104)
  store i32 %105, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %177

106:                                              ; preds = %92
  %107 = load i32, i32* @ACT_P_CREATED, align 4
  store i32 %107, i32* %18, align 4
  br label %119

108:                                              ; preds = %75
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %118, label %111

111:                                              ; preds = %108
  %112 = load %struct.tcf_common*, %struct.tcf_common** %16, align 8
  %113 = call %struct.tcf_mirred* @to_mirred(%struct.tcf_common* %112)
  %114 = load i32, i32* %11, align 4
  %115 = call i32 @tcf_mirred_release(%struct.tcf_mirred* %113, i32 %114)
  %116 = load i32, i32* @EEXIST, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %177

118:                                              ; preds = %108
  br label %119

119:                                              ; preds = %118, %106
  %120 = load %struct.tcf_common*, %struct.tcf_common** %16, align 8
  %121 = call %struct.tcf_mirred* @to_mirred(%struct.tcf_common* %120)
  store %struct.tcf_mirred* %121, %struct.tcf_mirred** %15, align 8
  %122 = load %struct.tcf_mirred*, %struct.tcf_mirred** %15, align 8
  %123 = getelementptr inbounds %struct.tcf_mirred, %struct.tcf_mirred* %122, i32 0, i32 2
  %124 = call i32 @spin_lock_bh(i32* %123)
  %125 = load %struct.tc_mirred*, %struct.tc_mirred** %14, align 8
  %126 = getelementptr inbounds %struct.tc_mirred, %struct.tc_mirred* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.tcf_mirred*, %struct.tcf_mirred** %15, align 8
  %129 = getelementptr inbounds %struct.tcf_mirred, %struct.tcf_mirred* %128, i32 0, i32 6
  store i32 %127, i32* %129, align 4
  %130 = load %struct.tc_mirred*, %struct.tc_mirred** %14, align 8
  %131 = getelementptr inbounds %struct.tc_mirred, %struct.tc_mirred* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.tcf_mirred*, %struct.tcf_mirred** %15, align 8
  %134 = getelementptr inbounds %struct.tcf_mirred, %struct.tcf_mirred* %133, i32 0, i32 5
  store i32 %132, i32* %134, align 8
  %135 = load %struct.tc_mirred*, %struct.tc_mirred** %14, align 8
  %136 = getelementptr inbounds %struct.tc_mirred, %struct.tc_mirred* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %162

139:                                              ; preds = %119
  %140 = load %struct.tc_mirred*, %struct.tc_mirred** %14, align 8
  %141 = getelementptr inbounds %struct.tc_mirred, %struct.tc_mirred* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.tcf_mirred*, %struct.tcf_mirred** %15, align 8
  %144 = getelementptr inbounds %struct.tcf_mirred, %struct.tcf_mirred* %143, i32 0, i32 4
  store i64 %142, i64* %144, align 8
  %145 = load i32, i32* %18, align 4
  %146 = load i32, i32* @ACT_P_CREATED, align 4
  %147 = icmp ne i32 %145, %146
  br i1 %147, label %148, label %153

148:                                              ; preds = %139
  %149 = load %struct.tcf_mirred*, %struct.tcf_mirred** %15, align 8
  %150 = getelementptr inbounds %struct.tcf_mirred, %struct.tcf_mirred* %149, i32 0, i32 3
  %151 = load %struct.net_device*, %struct.net_device** %150, align 8
  %152 = call i32 @dev_put(%struct.net_device* %151)
  br label %153

153:                                              ; preds = %148, %139
  %154 = load %struct.net_device*, %struct.net_device** %17, align 8
  %155 = load %struct.tcf_mirred*, %struct.tcf_mirred** %15, align 8
  %156 = getelementptr inbounds %struct.tcf_mirred, %struct.tcf_mirred* %155, i32 0, i32 3
  store %struct.net_device* %154, %struct.net_device** %156, align 8
  %157 = load %struct.net_device*, %struct.net_device** %17, align 8
  %158 = call i32 @dev_hold(%struct.net_device* %157)
  %159 = load i32, i32* %20, align 4
  %160 = load %struct.tcf_mirred*, %struct.tcf_mirred** %15, align 8
  %161 = getelementptr inbounds %struct.tcf_mirred, %struct.tcf_mirred* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 8
  br label %162

162:                                              ; preds = %153, %119
  %163 = load %struct.tcf_mirred*, %struct.tcf_mirred** %15, align 8
  %164 = getelementptr inbounds %struct.tcf_mirred, %struct.tcf_mirred* %163, i32 0, i32 2
  %165 = call i32 @spin_unlock_bh(i32* %164)
  %166 = load i32, i32* %18, align 4
  %167 = load i32, i32* @ACT_P_CREATED, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %175

169:                                              ; preds = %162
  %170 = load %struct.tcf_mirred*, %struct.tcf_mirred** %15, align 8
  %171 = getelementptr inbounds %struct.tcf_mirred, %struct.tcf_mirred* %170, i32 0, i32 1
  %172 = call i32 @list_add(i32* %171, i32* @mirred_list)
  %173 = load %struct.tcf_common*, %struct.tcf_common** %16, align 8
  %174 = call i32 @tcf_hash_insert(%struct.tcf_common* %173, i32* @mirred_hash_info)
  br label %175

175:                                              ; preds = %169, %162
  %176 = load i32, i32* %18, align 4
  store i32 %176, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %177

177:                                              ; preds = %175, %111, %103, %89, %65, %46, %39, %29
  %178 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %178)
  %179 = load i32, i32* %6, align 4
  ret i32 %179
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested(%struct.nlattr**, i32, %struct.nlattr*, i32) #2

declare dso_local %struct.tc_mirred* @nla_data(%struct.nlattr*) #2

declare dso_local %struct.net_device* @__dev_get_by_index(i32*, i64) #2

declare dso_local %struct.tcf_common* @tcf_hash_check(i32, %struct.tc_action*, i32, i32*) #2

declare dso_local %struct.tcf_common* @tcf_hash_create(i32, %struct.nlattr*, %struct.tc_action*, i32, i32, i32*, i32*) #2

declare dso_local i64 @IS_ERR(%struct.tcf_common*) #2

declare dso_local i32 @PTR_ERR(%struct.tcf_common*) #2

declare dso_local i32 @tcf_mirred_release(%struct.tcf_mirred*, i32) #2

declare dso_local %struct.tcf_mirred* @to_mirred(%struct.tcf_common*) #2

declare dso_local i32 @spin_lock_bh(i32*) #2

declare dso_local i32 @dev_put(%struct.net_device*) #2

declare dso_local i32 @dev_hold(%struct.net_device*) #2

declare dso_local i32 @spin_unlock_bh(i32*) #2

declare dso_local i32 @list_add(i32*, i32*) #2

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
