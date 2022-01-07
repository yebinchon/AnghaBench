; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_api.c_tc_ctl_action.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_api.c_tc_ctl_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nlattr = type { i32 }

@TCA_ACT_MAX = common dso_local global i32 0, align 4
@init_net = common dso_local global %struct.net zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@TCA_ACT_TAB = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"tc_ctl_action: received NO action attribs\0A\00", align 1
@NLM_F_REPLACE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, i8*)* @tc_ctl_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc_ctl_action(%struct.sk_buff* %0, %struct.nlmsghdr* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_2__, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.net* @sock_net(i32 %18)
  store %struct.net* %19, %struct.net** %8, align 8
  %20 = load i32, i32* @TCA_ACT_MAX, align 4
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %9, align 8
  %24 = alloca %struct.nlattr*, i64 %22, align 16
  store i64 %22, i64* %10, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = icmp ne %struct.sk_buff* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %3
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = call i32 @NETLINK_CB(%struct.sk_buff* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  br label %34

33:                                               ; preds = %3
  br label %34

34:                                               ; preds = %33, %27
  %35 = phi i32 [ %32, %27 ], [ 0, %33 ]
  store i32 %35, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %36 = load %struct.net*, %struct.net** %8, align 8
  %37 = icmp ne %struct.net* %36, @init_net
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %103

41:                                               ; preds = %34
  %42 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %43 = load i32, i32* @TCA_ACT_MAX, align 4
  %44 = call i32 @nlmsg_parse(%struct.nlmsghdr* %42, i32 4, %struct.nlattr** %24, i32 %43, i32* null)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %13, align 4
  store i32 %48, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %103

49:                                               ; preds = %41
  %50 = load i64, i64* @TCA_ACT_TAB, align 8
  %51 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %50
  %52 = load %struct.nlattr*, %struct.nlattr** %51, align 8
  %53 = icmp eq %struct.nlattr* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = call i32 @pr_notice(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %103

58:                                               ; preds = %49
  %59 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %60 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  switch i32 %61, label %99 [
    i32 128, label %62
    i32 130, label %85
    i32 129, label %92
  ]

62:                                               ; preds = %58
  %63 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %64 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @NLM_F_REPLACE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  store i32 1, i32* %14, align 4
  br label %70

70:                                               ; preds = %69, %62
  br label %71

71:                                               ; preds = %83, %70
  %72 = load i64, i64* @TCA_ACT_TAB, align 8
  %73 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %72
  %74 = load %struct.nlattr*, %struct.nlattr** %73, align 8
  %75 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %14, align 4
  %78 = call i32 @tcf_action_add(%struct.nlattr* %74, %struct.nlmsghdr* %75, i32 %76, i32 %77)
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* @EAGAIN, align 4
  %81 = sub nsw i32 0, %80
  %82 = icmp eq i32 %79, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %71
  br label %71

84:                                               ; preds = %71
  br label %101

85:                                               ; preds = %58
  %86 = load i64, i64* @TCA_ACT_TAB, align 8
  %87 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %86
  %88 = load %struct.nlattr*, %struct.nlattr** %87, align 8
  %89 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @tca_action_gd(%struct.nlattr* %88, %struct.nlmsghdr* %89, i32 %90, i32 130)
  store i32 %91, i32* %13, align 4
  br label %101

92:                                               ; preds = %58
  %93 = load i64, i64* @TCA_ACT_TAB, align 8
  %94 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %93
  %95 = load %struct.nlattr*, %struct.nlattr** %94, align 8
  %96 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @tca_action_gd(%struct.nlattr* %95, %struct.nlmsghdr* %96, i32 %97, i32 129)
  store i32 %98, i32* %13, align 4
  br label %101

99:                                               ; preds = %58
  %100 = call i32 (...) @BUG()
  br label %101

101:                                              ; preds = %99, %92, %85, %84
  %102 = load i32, i32* %13, align 4
  store i32 %102, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %103

103:                                              ; preds = %101, %54, %47, %38
  %104 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %104)
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local %struct.net* @sock_net(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @nlmsg_parse(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32*) #1

declare dso_local i32 @pr_notice(i8*) #1

declare dso_local i32 @tcf_action_add(%struct.nlattr*, %struct.nlmsghdr*, i32, i32) #1

declare dso_local i32 @tca_action_gd(%struct.nlattr*, %struct.nlmsghdr*, i32, i32) #1

declare dso_local i32 @BUG(...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
