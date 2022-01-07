; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_skbedit.c_tcf_skbedit_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_skbedit.c_tcf_skbedit_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.tc_action = type { i32 }
%struct.tc_skbedit = type { i32, i32 }
%struct.tcf_skbedit = type { i32, i32, i32, i32, i32 }
%struct.tcf_common = type { i32 }

@TCA_SKBEDIT_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@skbedit_policy = common dso_local global i32 0, align 4
@TCA_SKBEDIT_PARMS = common dso_local global i64 0, align 8
@TCA_SKBEDIT_PRIORITY = common dso_local global i64 0, align 8
@SKBEDIT_F_PRIORITY = common dso_local global i32 0, align 4
@TCA_SKBEDIT_QUEUE_MAPPING = common dso_local global i64 0, align 8
@SKBEDIT_F_QUEUE_MAPPING = common dso_local global i32 0, align 4
@skbedit_hash_info = common dso_local global i32 0, align 4
@skbedit_idx_gen = common dso_local global i32 0, align 4
@ACT_P_CREATED = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr*, %struct.nlattr*, %struct.tc_action*, i32, i32)* @tcf_skbedit_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_skbedit_init(%struct.nlattr* %0, %struct.nlattr* %1, %struct.tc_action* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca %struct.tc_action*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.tc_skbedit*, align 8
  %15 = alloca %struct.tcf_skbedit*, align 8
  %16 = alloca %struct.tcf_common*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.nlattr* %0, %struct.nlattr** %7, align 8
  store %struct.nlattr* %1, %struct.nlattr** %8, align 8
  store %struct.tc_action* %2, %struct.tc_action** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %23 = load i32, i32* @TCA_SKBEDIT_MAX, align 4
  %24 = add nsw i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %12, align 8
  %27 = alloca %struct.nlattr*, i64 %25, align 16
  store i64 %25, i64* %13, align 8
  store i32 0, i32* %17, align 4
  store i32* null, i32** %18, align 8
  store i32* null, i32** %19, align 8
  store i32 0, i32* %20, align 4
  %28 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %29 = icmp eq %struct.nlattr* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %5
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %171

33:                                               ; preds = %5
  %34 = load i32, i32* @TCA_SKBEDIT_MAX, align 4
  %35 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %36 = load i32, i32* @skbedit_policy, align 4
  %37 = call i32 @nla_parse_nested(%struct.nlattr** %27, i32 %34, %struct.nlattr* %35, i32 %36)
  store i32 %37, i32* %21, align 4
  %38 = load i32, i32* %21, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* %21, align 4
  store i32 %41, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %171

42:                                               ; preds = %33
  %43 = load i64, i64* @TCA_SKBEDIT_PARMS, align 8
  %44 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %43
  %45 = load %struct.nlattr*, %struct.nlattr** %44, align 8
  %46 = icmp eq %struct.nlattr* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %171

50:                                               ; preds = %42
  %51 = load i64, i64* @TCA_SKBEDIT_PRIORITY, align 8
  %52 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %51
  %53 = load %struct.nlattr*, %struct.nlattr** %52, align 8
  %54 = icmp ne %struct.nlattr* %53, null
  br i1 %54, label %55, label %64

55:                                               ; preds = %50
  %56 = load i32, i32* @SKBEDIT_F_PRIORITY, align 4
  %57 = load i32, i32* %17, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %17, align 4
  %59 = load i64, i64* @TCA_SKBEDIT_PRIORITY, align 8
  %60 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %59
  %61 = load %struct.nlattr*, %struct.nlattr** %60, align 8
  %62 = call i8* @nla_data(%struct.nlattr* %61)
  %63 = bitcast i8* %62 to i32*
  store i32* %63, i32** %18, align 8
  br label %64

64:                                               ; preds = %55, %50
  %65 = load i64, i64* @TCA_SKBEDIT_QUEUE_MAPPING, align 8
  %66 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %65
  %67 = load %struct.nlattr*, %struct.nlattr** %66, align 8
  %68 = icmp ne %struct.nlattr* %67, null
  br i1 %68, label %69, label %78

69:                                               ; preds = %64
  %70 = load i32, i32* @SKBEDIT_F_QUEUE_MAPPING, align 4
  %71 = load i32, i32* %17, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %17, align 4
  %73 = load i64, i64* @TCA_SKBEDIT_QUEUE_MAPPING, align 8
  %74 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %73
  %75 = load %struct.nlattr*, %struct.nlattr** %74, align 8
  %76 = call i8* @nla_data(%struct.nlattr* %75)
  %77 = bitcast i8* %76 to i32*
  store i32* %77, i32** %19, align 8
  br label %78

78:                                               ; preds = %69, %64
  %79 = load i32, i32* %17, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %171

84:                                               ; preds = %78
  %85 = load i64, i64* @TCA_SKBEDIT_PARMS, align 8
  %86 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %85
  %87 = load %struct.nlattr*, %struct.nlattr** %86, align 8
  %88 = call i8* @nla_data(%struct.nlattr* %87)
  %89 = bitcast i8* %88 to %struct.tc_skbedit*
  store %struct.tc_skbedit* %89, %struct.tc_skbedit** %14, align 8
  %90 = load %struct.tc_skbedit*, %struct.tc_skbedit** %14, align 8
  %91 = getelementptr inbounds %struct.tc_skbedit, %struct.tc_skbedit* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.tc_action*, %struct.tc_action** %9, align 8
  %94 = load i32, i32* %11, align 4
  %95 = call %struct.tcf_common* @tcf_hash_check(i32 %92, %struct.tc_action* %93, i32 %94, i32* @skbedit_hash_info)
  store %struct.tcf_common* %95, %struct.tcf_common** %16, align 8
  %96 = load %struct.tcf_common*, %struct.tcf_common** %16, align 8
  %97 = icmp ne %struct.tcf_common* %96, null
  br i1 %97, label %116, label %98

98:                                               ; preds = %84
  %99 = load %struct.tc_skbedit*, %struct.tc_skbedit** %14, align 8
  %100 = getelementptr inbounds %struct.tc_skbedit, %struct.tc_skbedit* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %103 = load %struct.tc_action*, %struct.tc_action** %9, align 8
  %104 = load i32, i32* %11, align 4
  %105 = call %struct.tcf_common* @tcf_hash_create(i32 %101, %struct.nlattr* %102, %struct.tc_action* %103, i32 20, i32 %104, i32* @skbedit_idx_gen, i32* @skbedit_hash_info)
  store %struct.tcf_common* %105, %struct.tcf_common** %16, align 8
  %106 = load %struct.tcf_common*, %struct.tcf_common** %16, align 8
  %107 = call i64 @IS_ERR(%struct.tcf_common* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %98
  %110 = load %struct.tcf_common*, %struct.tcf_common** %16, align 8
  %111 = call i32 @PTR_ERR(%struct.tcf_common* %110)
  store i32 %111, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %171

112:                                              ; preds = %98
  %113 = load %struct.tcf_common*, %struct.tcf_common** %16, align 8
  %114 = call %struct.tcf_skbedit* @to_skbedit(%struct.tcf_common* %113)
  store %struct.tcf_skbedit* %114, %struct.tcf_skbedit** %15, align 8
  %115 = load i32, i32* @ACT_P_CREATED, align 4
  store i32 %115, i32* %20, align 4
  br label %128

116:                                              ; preds = %84
  %117 = load %struct.tcf_common*, %struct.tcf_common** %16, align 8
  %118 = call %struct.tcf_skbedit* @to_skbedit(%struct.tcf_common* %117)
  store %struct.tcf_skbedit* %118, %struct.tcf_skbedit** %15, align 8
  %119 = load i32, i32* %10, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %127, label %121

121:                                              ; preds = %116
  %122 = load %struct.tcf_common*, %struct.tcf_common** %16, align 8
  %123 = load i32, i32* %11, align 4
  %124 = call i32 @tcf_hash_release(%struct.tcf_common* %122, i32 %123, i32* @skbedit_hash_info)
  %125 = load i32, i32* @EEXIST, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %171

127:                                              ; preds = %116
  br label %128

128:                                              ; preds = %127, %112
  %129 = load %struct.tcf_skbedit*, %struct.tcf_skbedit** %15, align 8
  %130 = getelementptr inbounds %struct.tcf_skbedit, %struct.tcf_skbedit* %129, i32 0, i32 2
  %131 = call i32 @spin_lock_bh(i32* %130)
  %132 = load i32, i32* %17, align 4
  %133 = load %struct.tcf_skbedit*, %struct.tcf_skbedit** %15, align 8
  %134 = getelementptr inbounds %struct.tcf_skbedit, %struct.tcf_skbedit* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 4
  %135 = load i32, i32* %17, align 4
  %136 = load i32, i32* @SKBEDIT_F_PRIORITY, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %128
  %140 = load i32*, i32** %18, align 8
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.tcf_skbedit*, %struct.tcf_skbedit** %15, align 8
  %143 = getelementptr inbounds %struct.tcf_skbedit, %struct.tcf_skbedit* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 4
  br label %144

144:                                              ; preds = %139, %128
  %145 = load i32, i32* %17, align 4
  %146 = load i32, i32* @SKBEDIT_F_QUEUE_MAPPING, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %144
  %150 = load i32*, i32** %19, align 8
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.tcf_skbedit*, %struct.tcf_skbedit** %15, align 8
  %153 = getelementptr inbounds %struct.tcf_skbedit, %struct.tcf_skbedit* %152, i32 0, i32 4
  store i32 %151, i32* %153, align 4
  br label %154

154:                                              ; preds = %149, %144
  %155 = load %struct.tc_skbedit*, %struct.tc_skbedit** %14, align 8
  %156 = getelementptr inbounds %struct.tc_skbedit, %struct.tc_skbedit* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.tcf_skbedit*, %struct.tcf_skbedit** %15, align 8
  %159 = getelementptr inbounds %struct.tcf_skbedit, %struct.tcf_skbedit* %158, i32 0, i32 3
  store i32 %157, i32* %159, align 4
  %160 = load %struct.tcf_skbedit*, %struct.tcf_skbedit** %15, align 8
  %161 = getelementptr inbounds %struct.tcf_skbedit, %struct.tcf_skbedit* %160, i32 0, i32 2
  %162 = call i32 @spin_unlock_bh(i32* %161)
  %163 = load i32, i32* %20, align 4
  %164 = load i32, i32* @ACT_P_CREATED, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %154
  %167 = load %struct.tcf_common*, %struct.tcf_common** %16, align 8
  %168 = call i32 @tcf_hash_insert(%struct.tcf_common* %167, i32* @skbedit_hash_info)
  br label %169

169:                                              ; preds = %166, %154
  %170 = load i32, i32* %20, align 4
  store i32 %170, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %171

171:                                              ; preds = %169, %121, %109, %81, %47, %40, %30
  %172 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %172)
  %173 = load i32, i32* %6, align 4
  ret i32 %173
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested(%struct.nlattr**, i32, %struct.nlattr*, i32) #2

declare dso_local i8* @nla_data(%struct.nlattr*) #2

declare dso_local %struct.tcf_common* @tcf_hash_check(i32, %struct.tc_action*, i32, i32*) #2

declare dso_local %struct.tcf_common* @tcf_hash_create(i32, %struct.nlattr*, %struct.tc_action*, i32, i32, i32*, i32*) #2

declare dso_local i64 @IS_ERR(%struct.tcf_common*) #2

declare dso_local i32 @PTR_ERR(%struct.tcf_common*) #2

declare dso_local %struct.tcf_skbedit* @to_skbedit(%struct.tcf_common*) #2

declare dso_local i32 @tcf_hash_release(%struct.tcf_common*, i32, i32*) #2

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
