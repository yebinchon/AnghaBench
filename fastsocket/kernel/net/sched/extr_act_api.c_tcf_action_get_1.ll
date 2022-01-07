; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_api.c_tcf_action_get_1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_api.c_tcf_action_get_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc_action = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.tc_action*, i32)*, i32 }
%struct.nlattr = type { i32 }
%struct.nlmsghdr = type { i32 }

@TCA_ACT_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TCA_ACT_INDEX = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@TCA_ACT_KIND = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tc_action* (%struct.nlattr*, %struct.nlmsghdr*, i32)* @tcf_action_get_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tc_action* @tcf_action_get_1(%struct.nlattr* %0, %struct.nlmsghdr* %1, i32 %2) #0 {
  %4 = alloca %struct.tc_action*, align 8
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.tc_action*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nlattr* %0, %struct.nlattr** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @TCA_ACT_MAX, align 4
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca %struct.nlattr*, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load i32, i32* @TCA_ACT_MAX, align 4
  %20 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %21 = call i32 @nla_parse_nested(%struct.nlattr** %18, i32 %19, %struct.nlattr* %20, i32* null)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %105

25:                                               ; preds = %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %12, align 4
  %28 = load i64, i64* @TCA_ACT_INDEX, align 8
  %29 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %28
  %30 = load %struct.nlattr*, %struct.nlattr** %29, align 8
  %31 = icmp eq %struct.nlattr* %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %25
  %33 = load i64, i64* @TCA_ACT_INDEX, align 8
  %34 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %33
  %35 = load %struct.nlattr*, %struct.nlattr** %34, align 8
  %36 = call i32 @nla_len(%struct.nlattr* %35)
  %37 = sext i32 %36 to i64
  %38 = icmp ult i64 %37, 4
  br i1 %38, label %39, label %40

39:                                               ; preds = %32, %25
  br label %105

40:                                               ; preds = %32
  %41 = load i64, i64* @TCA_ACT_INDEX, align 8
  %42 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %41
  %43 = load %struct.nlattr*, %struct.nlattr** %42, align 8
  %44 = call i32 @nla_get_u32(%struct.nlattr* %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call %struct.tc_action* @kzalloc(i32 8, i32 %47)
  store %struct.tc_action* %48, %struct.tc_action** %10, align 8
  %49 = load %struct.tc_action*, %struct.tc_action** %10, align 8
  %50 = icmp eq %struct.tc_action* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  br label %105

52:                                               ; preds = %40
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %12, align 4
  %55 = load i64, i64* @TCA_ACT_KIND, align 8
  %56 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %55
  %57 = load %struct.nlattr*, %struct.nlattr** %56, align 8
  %58 = call %struct.TYPE_2__* @tc_lookup_action(%struct.nlattr* %57)
  %59 = load %struct.tc_action*, %struct.tc_action** %10, align 8
  %60 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %59, i32 0, i32 0
  store %struct.TYPE_2__* %58, %struct.TYPE_2__** %60, align 8
  %61 = load %struct.tc_action*, %struct.tc_action** %10, align 8
  %62 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = icmp eq %struct.TYPE_2__* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %52
  br label %102

66:                                               ; preds = %52
  %67 = load %struct.tc_action*, %struct.tc_action** %10, align 8
  %68 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64 (%struct.tc_action*, i32)*, i64 (%struct.tc_action*, i32)** %70, align 8
  %72 = icmp eq i64 (%struct.tc_action*, i32)* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %95

74:                                               ; preds = %66
  %75 = load i32, i32* @ENOENT, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %12, align 4
  %77 = load %struct.tc_action*, %struct.tc_action** %10, align 8
  %78 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64 (%struct.tc_action*, i32)*, i64 (%struct.tc_action*, i32)** %80, align 8
  %82 = load %struct.tc_action*, %struct.tc_action** %10, align 8
  %83 = load i32, i32* %11, align 4
  %84 = call i64 %81(%struct.tc_action* %82, i32 %83)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %74
  br label %95

87:                                               ; preds = %74
  %88 = load %struct.tc_action*, %struct.tc_action** %10, align 8
  %89 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @module_put(i32 %92)
  %94 = load %struct.tc_action*, %struct.tc_action** %10, align 8
  store %struct.tc_action* %94, %struct.tc_action** %4, align 8
  store i32 1, i32* %13, align 4
  br label %108

95:                                               ; preds = %86, %73
  %96 = load %struct.tc_action*, %struct.tc_action** %10, align 8
  %97 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %96, i32 0, i32 0
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @module_put(i32 %100)
  br label %102

102:                                              ; preds = %95, %65
  %103 = load %struct.tc_action*, %struct.tc_action** %10, align 8
  %104 = call i32 @kfree(%struct.tc_action* %103)
  br label %105

105:                                              ; preds = %102, %51, %39, %24
  %106 = load i32, i32* %12, align 4
  %107 = call %struct.tc_action* @ERR_PTR(i32 %106)
  store %struct.tc_action* %107, %struct.tc_action** %4, align 8
  store i32 1, i32* %13, align 4
  br label %108

108:                                              ; preds = %105, %87
  %109 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %109)
  %110 = load %struct.tc_action*, %struct.tc_action** %4, align 8
  ret %struct.tc_action* %110
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested(%struct.nlattr**, i32, %struct.nlattr*, i32*) #2

declare dso_local i32 @nla_len(%struct.nlattr*) #2

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #2

declare dso_local %struct.tc_action* @kzalloc(i32, i32) #2

declare dso_local %struct.TYPE_2__* @tc_lookup_action(%struct.nlattr*) #2

declare dso_local i32 @module_put(i32) #2

declare dso_local i32 @kfree(%struct.tc_action*) #2

declare dso_local %struct.tc_action* @ERR_PTR(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
