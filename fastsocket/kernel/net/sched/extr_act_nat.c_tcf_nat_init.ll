; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_nat.c_tcf_nat_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_nat.c_tcf_nat_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.tc_action = type { i32 }
%struct.tc_nat = type { i32, i32, i32, i32, i32, i32 }
%struct.tcf_nat = type { i32, i32, i32, i32, i32, i32 }
%struct.tcf_common = type { i32 }

@TCA_NAT_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@nat_policy = common dso_local global i32 0, align 4
@TCA_NAT_PARMS = common dso_local global i64 0, align 8
@nat_hash_info = common dso_local global i32 0, align 4
@nat_idx_gen = common dso_local global i32 0, align 4
@ACT_P_CREATED = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr*, %struct.nlattr*, %struct.tc_action*, i32, i32)* @tcf_nat_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_nat_init(%struct.nlattr* %0, %struct.nlattr* %1, %struct.tc_action* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca %struct.tc_action*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.tc_nat*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.tcf_nat*, align 8
  %18 = alloca %struct.tcf_common*, align 8
  %19 = alloca i32, align 4
  store %struct.nlattr* %0, %struct.nlattr** %7, align 8
  store %struct.nlattr* %1, %struct.nlattr** %8, align 8
  store %struct.tc_action* %2, %struct.tc_action** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %20 = load i32, i32* @TCA_NAT_MAX, align 4
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %12, align 8
  %24 = alloca %struct.nlattr*, i64 %22, align 16
  store i64 %22, i64* %13, align 8
  store i32 0, i32* %15, align 4
  %25 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %26 = icmp eq %struct.nlattr* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %5
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %130

30:                                               ; preds = %5
  %31 = load i32, i32* @TCA_NAT_MAX, align 4
  %32 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %33 = load i32, i32* @nat_policy, align 4
  %34 = call i32 @nla_parse_nested(%struct.nlattr** %24, i32 %31, %struct.nlattr* %32, i32 %33)
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %16, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %16, align 4
  store i32 %38, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %130

39:                                               ; preds = %30
  %40 = load i64, i64* @TCA_NAT_PARMS, align 8
  %41 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %40
  %42 = load %struct.nlattr*, %struct.nlattr** %41, align 8
  %43 = icmp eq %struct.nlattr* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %130

47:                                               ; preds = %39
  %48 = load i64, i64* @TCA_NAT_PARMS, align 8
  %49 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %48
  %50 = load %struct.nlattr*, %struct.nlattr** %49, align 8
  %51 = call %struct.tc_nat* @nla_data(%struct.nlattr* %50)
  store %struct.tc_nat* %51, %struct.tc_nat** %14, align 8
  %52 = load %struct.tc_nat*, %struct.tc_nat** %14, align 8
  %53 = getelementptr inbounds %struct.tc_nat, %struct.tc_nat* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.tc_action*, %struct.tc_action** %9, align 8
  %56 = load i32, i32* %11, align 4
  %57 = call %struct.tcf_common* @tcf_hash_check(i32 %54, %struct.tc_action* %55, i32 %56, i32* @nat_hash_info)
  store %struct.tcf_common* %57, %struct.tcf_common** %18, align 8
  %58 = load %struct.tcf_common*, %struct.tcf_common** %18, align 8
  %59 = icmp ne %struct.tcf_common* %58, null
  br i1 %59, label %78, label %60

60:                                               ; preds = %47
  %61 = load %struct.tc_nat*, %struct.tc_nat** %14, align 8
  %62 = getelementptr inbounds %struct.tc_nat, %struct.tc_nat* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %65 = load %struct.tc_action*, %struct.tc_action** %9, align 8
  %66 = load i32, i32* %11, align 4
  %67 = call %struct.tcf_common* @tcf_hash_create(i32 %63, %struct.nlattr* %64, %struct.tc_action* %65, i32 24, i32 %66, i32* @nat_idx_gen, i32* @nat_hash_info)
  store %struct.tcf_common* %67, %struct.tcf_common** %18, align 8
  %68 = load %struct.tcf_common*, %struct.tcf_common** %18, align 8
  %69 = call i64 @IS_ERR(%struct.tcf_common* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %60
  %72 = load %struct.tcf_common*, %struct.tcf_common** %18, align 8
  %73 = call i32 @PTR_ERR(%struct.tcf_common* %72)
  store i32 %73, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %130

74:                                               ; preds = %60
  %75 = load %struct.tcf_common*, %struct.tcf_common** %18, align 8
  %76 = call %struct.tcf_nat* @to_tcf_nat(%struct.tcf_common* %75)
  store %struct.tcf_nat* %76, %struct.tcf_nat** %17, align 8
  %77 = load i32, i32* @ACT_P_CREATED, align 4
  store i32 %77, i32* %15, align 4
  br label %90

78:                                               ; preds = %47
  %79 = load %struct.tcf_common*, %struct.tcf_common** %18, align 8
  %80 = call %struct.tcf_nat* @to_tcf_nat(%struct.tcf_common* %79)
  store %struct.tcf_nat* %80, %struct.tcf_nat** %17, align 8
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %78
  %84 = load %struct.tcf_common*, %struct.tcf_common** %18, align 8
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @tcf_hash_release(%struct.tcf_common* %84, i32 %85, i32* @nat_hash_info)
  %87 = load i32, i32* @EEXIST, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %130

89:                                               ; preds = %78
  br label %90

90:                                               ; preds = %89, %74
  %91 = load %struct.tcf_nat*, %struct.tcf_nat** %17, align 8
  %92 = getelementptr inbounds %struct.tcf_nat, %struct.tcf_nat* %91, i32 0, i32 0
  %93 = call i32 @spin_lock_bh(i32* %92)
  %94 = load %struct.tc_nat*, %struct.tc_nat** %14, align 8
  %95 = getelementptr inbounds %struct.tc_nat, %struct.tc_nat* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.tcf_nat*, %struct.tcf_nat** %17, align 8
  %98 = getelementptr inbounds %struct.tcf_nat, %struct.tcf_nat* %97, i32 0, i32 5
  store i32 %96, i32* %98, align 4
  %99 = load %struct.tc_nat*, %struct.tc_nat** %14, align 8
  %100 = getelementptr inbounds %struct.tc_nat, %struct.tc_nat* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.tcf_nat*, %struct.tcf_nat** %17, align 8
  %103 = getelementptr inbounds %struct.tcf_nat, %struct.tcf_nat* %102, i32 0, i32 4
  store i32 %101, i32* %103, align 4
  %104 = load %struct.tc_nat*, %struct.tc_nat** %14, align 8
  %105 = getelementptr inbounds %struct.tc_nat, %struct.tc_nat* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.tcf_nat*, %struct.tcf_nat** %17, align 8
  %108 = getelementptr inbounds %struct.tcf_nat, %struct.tcf_nat* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 4
  %109 = load %struct.tc_nat*, %struct.tc_nat** %14, align 8
  %110 = getelementptr inbounds %struct.tc_nat, %struct.tc_nat* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.tcf_nat*, %struct.tcf_nat** %17, align 8
  %113 = getelementptr inbounds %struct.tcf_nat, %struct.tcf_nat* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 4
  %114 = load %struct.tc_nat*, %struct.tc_nat** %14, align 8
  %115 = getelementptr inbounds %struct.tc_nat, %struct.tc_nat* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.tcf_nat*, %struct.tcf_nat** %17, align 8
  %118 = getelementptr inbounds %struct.tcf_nat, %struct.tcf_nat* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  %119 = load %struct.tcf_nat*, %struct.tcf_nat** %17, align 8
  %120 = getelementptr inbounds %struct.tcf_nat, %struct.tcf_nat* %119, i32 0, i32 0
  %121 = call i32 @spin_unlock_bh(i32* %120)
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* @ACT_P_CREATED, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %90
  %126 = load %struct.tcf_common*, %struct.tcf_common** %18, align 8
  %127 = call i32 @tcf_hash_insert(%struct.tcf_common* %126, i32* @nat_hash_info)
  br label %128

128:                                              ; preds = %125, %90
  %129 = load i32, i32* %15, align 4
  store i32 %129, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %130

130:                                              ; preds = %128, %83, %71, %44, %37, %27
  %131 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %131)
  %132 = load i32, i32* %6, align 4
  ret i32 %132
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested(%struct.nlattr**, i32, %struct.nlattr*, i32) #2

declare dso_local %struct.tc_nat* @nla_data(%struct.nlattr*) #2

declare dso_local %struct.tcf_common* @tcf_hash_check(i32, %struct.tc_action*, i32, i32*) #2

declare dso_local %struct.tcf_common* @tcf_hash_create(i32, %struct.nlattr*, %struct.tc_action*, i32, i32, i32*, i32*) #2

declare dso_local i64 @IS_ERR(%struct.tcf_common*) #2

declare dso_local i32 @PTR_ERR(%struct.tcf_common*) #2

declare dso_local %struct.tcf_nat* @to_tcf_nat(%struct.tcf_common*) #2

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
