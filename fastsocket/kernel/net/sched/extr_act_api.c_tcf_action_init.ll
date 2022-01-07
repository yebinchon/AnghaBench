; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_api.c_tcf_action_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_api.c_tcf_action_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc_action = type { i32, %struct.tc_action* }
%struct.nlattr = type { i32 }

@TCA_ACT_MAX_PRIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tc_action* @tcf_action_init(%struct.nlattr* %0, %struct.nlattr* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.tc_action*, align 8
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.tc_action*, align 8
  %15 = alloca %struct.tc_action*, align 8
  %16 = alloca %struct.tc_action*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.nlattr* %0, %struct.nlattr** %7, align 8
  store %struct.nlattr* %1, %struct.nlattr** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %20 = load i32, i32* @TCA_ACT_MAX_PRIO, align 4
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %12, align 8
  %24 = alloca %struct.nlattr*, i64 %22, align 16
  store i64 %22, i64* %13, align 8
  store %struct.tc_action* null, %struct.tc_action** %14, align 8
  store %struct.tc_action* null, %struct.tc_action** %16, align 8
  %25 = load i32, i32* @TCA_ACT_MAX_PRIO, align 4
  %26 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %27 = call i32 @nla_parse_nested(%struct.nlattr** %24, i32 %25, %struct.nlattr* %26, i32* null)
  store i32 %27, i32* %17, align 4
  %28 = load i32, i32* %17, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %5
  %31 = load i32, i32* %17, align 4
  %32 = call %struct.tc_action* @ERR_PTR(i32 %31)
  store %struct.tc_action* %32, %struct.tc_action** %6, align 8
  store i32 1, i32* %19, align 4
  br label %88

33:                                               ; preds = %5
  store i32 1, i32* %18, align 4
  br label %34

34:                                               ; preds = %74, %33
  %35 = load i32, i32* %18, align 4
  %36 = load i32, i32* @TCA_ACT_MAX_PRIO, align 4
  %37 = icmp sle i32 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i32, i32* %18, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %40
  %42 = load %struct.nlattr*, %struct.nlattr** %41, align 8
  %43 = icmp ne %struct.nlattr* %42, null
  br label %44

44:                                               ; preds = %38, %34
  %45 = phi i1 [ false, %34 ], [ %43, %38 ]
  br i1 %45, label %46, label %77

46:                                               ; preds = %44
  %47 = load i32, i32* %18, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %48
  %50 = load %struct.nlattr*, %struct.nlattr** %49, align 8
  %51 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call %struct.tc_action* @tcf_action_init_1(%struct.nlattr* %50, %struct.nlattr* %51, i8* %52, i32 %53, i32 %54)
  store %struct.tc_action* %55, %struct.tc_action** %15, align 8
  %56 = load %struct.tc_action*, %struct.tc_action** %15, align 8
  %57 = call i64 @IS_ERR(%struct.tc_action* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %46
  br label %79

60:                                               ; preds = %46
  %61 = load i32, i32* %18, align 4
  %62 = load %struct.tc_action*, %struct.tc_action** %15, align 8
  %63 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.tc_action*, %struct.tc_action** %14, align 8
  %65 = icmp eq %struct.tc_action* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load %struct.tc_action*, %struct.tc_action** %15, align 8
  store %struct.tc_action* %67, %struct.tc_action** %14, align 8
  br label %72

68:                                               ; preds = %60
  %69 = load %struct.tc_action*, %struct.tc_action** %15, align 8
  %70 = load %struct.tc_action*, %struct.tc_action** %16, align 8
  %71 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %70, i32 0, i32 1
  store %struct.tc_action* %69, %struct.tc_action** %71, align 8
  br label %72

72:                                               ; preds = %68, %66
  %73 = load %struct.tc_action*, %struct.tc_action** %15, align 8
  store %struct.tc_action* %73, %struct.tc_action** %16, align 8
  br label %74

74:                                               ; preds = %72
  %75 = load i32, i32* %18, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %18, align 4
  br label %34

77:                                               ; preds = %44
  %78 = load %struct.tc_action*, %struct.tc_action** %14, align 8
  store %struct.tc_action* %78, %struct.tc_action** %6, align 8
  store i32 1, i32* %19, align 4
  br label %88

79:                                               ; preds = %59
  %80 = load %struct.tc_action*, %struct.tc_action** %14, align 8
  %81 = icmp ne %struct.tc_action* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load %struct.tc_action*, %struct.tc_action** %14, align 8
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @tcf_action_destroy(%struct.tc_action* %83, i32 %84)
  br label %86

86:                                               ; preds = %82, %79
  %87 = load %struct.tc_action*, %struct.tc_action** %15, align 8
  store %struct.tc_action* %87, %struct.tc_action** %6, align 8
  store i32 1, i32* %19, align 4
  br label %88

88:                                               ; preds = %86, %77, %30
  %89 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %89)
  %90 = load %struct.tc_action*, %struct.tc_action** %6, align 8
  ret %struct.tc_action* %90
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested(%struct.nlattr**, i32, %struct.nlattr*, i32*) #2

declare dso_local %struct.tc_action* @ERR_PTR(i32) #2

declare dso_local %struct.tc_action* @tcf_action_init_1(%struct.nlattr*, %struct.nlattr*, i8*, i32, i32) #2

declare dso_local i64 @IS_ERR(%struct.tc_action*) #2

declare dso_local i32 @tcf_action_destroy(%struct.tc_action*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
