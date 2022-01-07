; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_simple.c_tcf_simp_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_simple.c_tcf_simp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.tc_action = type { i32 }
%struct.tc_defact = type { i32, i32 }
%struct.tcf_defact = type { i32 }
%struct.tcf_common = type { i32 }

@TCA_DEF_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@simple_policy = common dso_local global i32 0, align 4
@TCA_DEF_PARMS = common dso_local global i64 0, align 8
@TCA_DEF_DATA = common dso_local global i64 0, align 8
@simp_hash_info = common dso_local global i32 0, align 4
@simp_idx_gen = common dso_local global i32 0, align 4
@ACT_P_CREATED = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr*, %struct.nlattr*, %struct.tc_action*, i32, i32)* @tcf_simp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_simp_init(%struct.nlattr* %0, %struct.nlattr* %1, %struct.tc_action* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca %struct.tc_action*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.tc_defact*, align 8
  %15 = alloca %struct.tcf_defact*, align 8
  %16 = alloca %struct.tcf_common*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.nlattr* %0, %struct.nlattr** %7, align 8
  store %struct.nlattr* %1, %struct.nlattr** %8, align 8
  store %struct.tc_action* %2, %struct.tc_action** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %21 = load i32, i32* @TCA_DEF_MAX, align 4
  %22 = add nsw i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %12, align 8
  %25 = alloca %struct.nlattr*, i64 %23, align 16
  store i64 %23, i64* %13, align 8
  store i32 0, i32* %18, align 4
  %26 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %27 = icmp eq %struct.nlattr* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %5
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %132

31:                                               ; preds = %5
  %32 = load i32, i32* @TCA_DEF_MAX, align 4
  %33 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %34 = load i32, i32* @simple_policy, align 4
  %35 = call i32 @nla_parse_nested(%struct.nlattr** %25, i32 %32, %struct.nlattr* %33, i32 %34)
  store i32 %35, i32* %19, align 4
  %36 = load i32, i32* %19, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* %19, align 4
  store i32 %39, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %132

40:                                               ; preds = %31
  %41 = load i64, i64* @TCA_DEF_PARMS, align 8
  %42 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %41
  %43 = load %struct.nlattr*, %struct.nlattr** %42, align 8
  %44 = icmp eq %struct.nlattr* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %132

48:                                               ; preds = %40
  %49 = load i64, i64* @TCA_DEF_DATA, align 8
  %50 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %49
  %51 = load %struct.nlattr*, %struct.nlattr** %50, align 8
  %52 = icmp eq %struct.nlattr* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %132

56:                                               ; preds = %48
  %57 = load i64, i64* @TCA_DEF_PARMS, align 8
  %58 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %57
  %59 = load %struct.nlattr*, %struct.nlattr** %58, align 8
  %60 = call i8* @nla_data(%struct.nlattr* %59)
  %61 = bitcast i8* %60 to %struct.tc_defact*
  store %struct.tc_defact* %61, %struct.tc_defact** %14, align 8
  %62 = load i64, i64* @TCA_DEF_DATA, align 8
  %63 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %62
  %64 = load %struct.nlattr*, %struct.nlattr** %63, align 8
  %65 = call i8* @nla_data(%struct.nlattr* %64)
  store i8* %65, i8** %17, align 8
  %66 = load %struct.tc_defact*, %struct.tc_defact** %14, align 8
  %67 = getelementptr inbounds %struct.tc_defact, %struct.tc_defact* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.tc_action*, %struct.tc_action** %9, align 8
  %70 = load i32, i32* %11, align 4
  %71 = call %struct.tcf_common* @tcf_hash_check(i32 %68, %struct.tc_action* %69, i32 %70, i32* @simp_hash_info)
  store %struct.tcf_common* %71, %struct.tcf_common** %16, align 8
  %72 = load %struct.tcf_common*, %struct.tcf_common** %16, align 8
  %73 = icmp ne %struct.tcf_common* %72, null
  br i1 %73, label %107, label %74

74:                                               ; preds = %56
  %75 = load %struct.tc_defact*, %struct.tc_defact** %14, align 8
  %76 = getelementptr inbounds %struct.tc_defact, %struct.tc_defact* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %79 = load %struct.tc_action*, %struct.tc_action** %9, align 8
  %80 = load i32, i32* %11, align 4
  %81 = call %struct.tcf_common* @tcf_hash_create(i32 %77, %struct.nlattr* %78, %struct.tc_action* %79, i32 4, i32 %80, i32* @simp_idx_gen, i32* @simp_hash_info)
  store %struct.tcf_common* %81, %struct.tcf_common** %16, align 8
  %82 = load %struct.tcf_common*, %struct.tcf_common** %16, align 8
  %83 = call i64 @IS_ERR(%struct.tcf_common* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %74
  %86 = load %struct.tcf_common*, %struct.tcf_common** %16, align 8
  %87 = call i32 @PTR_ERR(%struct.tcf_common* %86)
  store i32 %87, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %132

88:                                               ; preds = %74
  %89 = load %struct.tcf_common*, %struct.tcf_common** %16, align 8
  %90 = call %struct.tcf_defact* @to_defact(%struct.tcf_common* %89)
  store %struct.tcf_defact* %90, %struct.tcf_defact** %15, align 8
  %91 = load %struct.tcf_defact*, %struct.tcf_defact** %15, align 8
  %92 = load i8*, i8** %17, align 8
  %93 = call i32 @alloc_defdata(%struct.tcf_defact* %91, i8* %92)
  store i32 %93, i32* %18, align 4
  %94 = load i32, i32* %18, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %88
  %97 = load %struct.tcf_common*, %struct.tcf_common** %16, align 8
  %98 = call i32 @kfree(%struct.tcf_common* %97)
  %99 = load i32, i32* %18, align 4
  store i32 %99, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %132

100:                                              ; preds = %88
  %101 = load %struct.tc_defact*, %struct.tc_defact** %14, align 8
  %102 = getelementptr inbounds %struct.tc_defact, %struct.tc_defact* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.tcf_defact*, %struct.tcf_defact** %15, align 8
  %105 = getelementptr inbounds %struct.tcf_defact, %struct.tcf_defact* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* @ACT_P_CREATED, align 4
  store i32 %106, i32* %18, align 4
  br label %123

107:                                              ; preds = %56
  %108 = load %struct.tcf_common*, %struct.tcf_common** %16, align 8
  %109 = call %struct.tcf_defact* @to_defact(%struct.tcf_common* %108)
  store %struct.tcf_defact* %109, %struct.tcf_defact** %15, align 8
  %110 = load i32, i32* %10, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %118, label %112

112:                                              ; preds = %107
  %113 = load %struct.tcf_defact*, %struct.tcf_defact** %15, align 8
  %114 = load i32, i32* %11, align 4
  %115 = call i32 @tcf_simp_release(%struct.tcf_defact* %113, i32 %114)
  %116 = load i32, i32* @EEXIST, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %132

118:                                              ; preds = %107
  %119 = load %struct.tcf_defact*, %struct.tcf_defact** %15, align 8
  %120 = load i8*, i8** %17, align 8
  %121 = load %struct.tc_defact*, %struct.tc_defact** %14, align 8
  %122 = call i32 @reset_policy(%struct.tcf_defact* %119, i8* %120, %struct.tc_defact* %121)
  br label %123

123:                                              ; preds = %118, %100
  %124 = load i32, i32* %18, align 4
  %125 = load i32, i32* @ACT_P_CREATED, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = load %struct.tcf_common*, %struct.tcf_common** %16, align 8
  %129 = call i32 @tcf_hash_insert(%struct.tcf_common* %128, i32* @simp_hash_info)
  br label %130

130:                                              ; preds = %127, %123
  %131 = load i32, i32* %18, align 4
  store i32 %131, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %132

132:                                              ; preds = %130, %112, %96, %85, %53, %45, %38, %28
  %133 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %133)
  %134 = load i32, i32* %6, align 4
  ret i32 %134
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested(%struct.nlattr**, i32, %struct.nlattr*, i32) #2

declare dso_local i8* @nla_data(%struct.nlattr*) #2

declare dso_local %struct.tcf_common* @tcf_hash_check(i32, %struct.tc_action*, i32, i32*) #2

declare dso_local %struct.tcf_common* @tcf_hash_create(i32, %struct.nlattr*, %struct.tc_action*, i32, i32, i32*, i32*) #2

declare dso_local i64 @IS_ERR(%struct.tcf_common*) #2

declare dso_local i32 @PTR_ERR(%struct.tcf_common*) #2

declare dso_local %struct.tcf_defact* @to_defact(%struct.tcf_common*) #2

declare dso_local i32 @alloc_defdata(%struct.tcf_defact*, i8*) #2

declare dso_local i32 @kfree(%struct.tcf_common*) #2

declare dso_local i32 @tcf_simp_release(%struct.tcf_defact*, i32) #2

declare dso_local i32 @reset_policy(%struct.tcf_defact*, i8*, %struct.tc_defact*) #2

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
