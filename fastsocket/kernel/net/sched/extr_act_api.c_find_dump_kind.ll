; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_api.c_find_dump_kind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_api.c_find_dump_kind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.nlmsghdr = type { i32 }

@TCA_ACT_MAX = common dso_local global i32 0, align 4
@TCA_ACT_MAX_PRIO = common dso_local global i32 0, align 4
@TCAA_MAX = common dso_local global i32 0, align 4
@TCA_ACT_TAB = common dso_local global i64 0, align 8
@TCA_ACT_KIND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nlattr* (%struct.nlmsghdr*)* @find_dump_kind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nlattr* @find_dump_kind(%struct.nlmsghdr* %0) #0 {
  %2 = alloca %struct.nlattr*, align 8
  %3 = alloca %struct.nlmsghdr*, align 8
  %4 = alloca %struct.nlattr*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.nlattr*, align 8
  %10 = alloca i32, align 4
  store %struct.nlmsghdr* %0, %struct.nlmsghdr** %3, align 8
  %11 = load i32, i32* @TCA_ACT_MAX, align 4
  %12 = add nsw i32 %11, 1
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca %struct.nlattr*, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  %16 = load i32, i32* @TCA_ACT_MAX_PRIO, align 4
  %17 = add nsw i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = alloca %struct.nlattr*, i64 %18, align 16
  store i64 %18, i64* %7, align 8
  %20 = load i32, i32* @TCAA_MAX, align 4
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = alloca %struct.nlattr*, i64 %22, align 16
  store i64 %22, i64* %8, align 8
  %24 = load %struct.nlmsghdr*, %struct.nlmsghdr** %3, align 8
  %25 = load i32, i32* @TCAA_MAX, align 4
  %26 = call i64 @nlmsg_parse(%struct.nlmsghdr* %24, i32 4, %struct.nlattr** %23, i32 %25, i32* null)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  store %struct.nlattr* null, %struct.nlattr** %2, align 8
  store i32 1, i32* %10, align 4
  br label %67

29:                                               ; preds = %1
  %30 = load i64, i64* @TCA_ACT_TAB, align 8
  %31 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %30
  %32 = load %struct.nlattr*, %struct.nlattr** %31, align 8
  store %struct.nlattr* %32, %struct.nlattr** %4, align 8
  %33 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %34 = icmp eq %struct.nlattr* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store %struct.nlattr* null, %struct.nlattr** %2, align 8
  store i32 1, i32* %10, align 4
  br label %67

36:                                               ; preds = %29
  %37 = load i32, i32* @TCA_ACT_MAX_PRIO, align 4
  %38 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %39 = call i32 @nla_data(%struct.nlattr* %38)
  %40 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %41 = call i32 @nla_len(%struct.nlattr* %40)
  %42 = call i32 @NLMSG_ALIGN(i32 %41)
  %43 = call i64 @nla_parse(%struct.nlattr** %19, i32 %37, i32 %39, i32 %42, i32* null)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  store %struct.nlattr* null, %struct.nlattr** %2, align 8
  store i32 1, i32* %10, align 4
  br label %67

46:                                               ; preds = %36
  %47 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %19, i64 1
  %48 = load %struct.nlattr*, %struct.nlattr** %47, align 8
  %49 = icmp eq %struct.nlattr* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store %struct.nlattr* null, %struct.nlattr** %2, align 8
  store i32 1, i32* %10, align 4
  br label %67

51:                                               ; preds = %46
  %52 = load i32, i32* @TCA_ACT_MAX, align 4
  %53 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %19, i64 1
  %54 = load %struct.nlattr*, %struct.nlattr** %53, align 8
  %55 = call i32 @nla_data(%struct.nlattr* %54)
  %56 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %19, i64 1
  %57 = load %struct.nlattr*, %struct.nlattr** %56, align 8
  %58 = call i32 @nla_len(%struct.nlattr* %57)
  %59 = call i64 @nla_parse(%struct.nlattr** %15, i32 %52, i32 %55, i32 %58, i32* null)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  store %struct.nlattr* null, %struct.nlattr** %2, align 8
  store i32 1, i32* %10, align 4
  br label %67

62:                                               ; preds = %51
  %63 = load i64, i64* @TCA_ACT_KIND, align 8
  %64 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %15, i64 %63
  %65 = load %struct.nlattr*, %struct.nlattr** %64, align 8
  store %struct.nlattr* %65, %struct.nlattr** %9, align 8
  %66 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  store %struct.nlattr* %66, %struct.nlattr** %2, align 8
  store i32 1, i32* %10, align 4
  br label %67

67:                                               ; preds = %62, %61, %50, %45, %35, %28
  %68 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %68)
  %69 = load %struct.nlattr*, %struct.nlattr** %2, align 8
  ret %struct.nlattr* %69
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @nlmsg_parse(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32*) #2

declare dso_local i64 @nla_parse(%struct.nlattr**, i32, i32, i32, i32*) #2

declare dso_local i32 @nla_data(%struct.nlattr*) #2

declare dso_local i32 @NLMSG_ALIGN(i32) #2

declare dso_local i32 @nla_len(%struct.nlattr*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
