; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_taskstats.c_cgroupstats_user_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_taskstats.c_cgroupstats_user_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { %struct.nlattr** }
%struct.nlattr = type { i32 }
%struct.cgroupstats = type { i32 }
%struct.file = type { i32 }

@CGROUPSTATS_CMD_ATTR_FD = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@CGROUPSTATS_CMD_NEW = common dso_local global i32 0, align 4
@CGROUPSTATS_TYPE_CGROUP_STATS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @cgroupstats_user_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cgroupstats_user_cmd(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.cgroupstats*, align 8
  %9 = alloca %struct.nlattr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.file*, align 8
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  store i32 0, i32* %6, align 4
  %14 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %15 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %14, i32 0, i32 0
  %16 = load %struct.nlattr**, %struct.nlattr*** %15, align 8
  %17 = load i64, i64* @CGROUPSTATS_CMD_ATTR_FD, align 8
  %18 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %17
  %19 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  store %struct.nlattr* %19, %struct.nlattr** %9, align 8
  %20 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %21 = icmp ne %struct.nlattr* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %74

25:                                               ; preds = %2
  %26 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %27 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %26, i32 0, i32 0
  %28 = load %struct.nlattr**, %struct.nlattr*** %27, align 8
  %29 = load i64, i64* @CGROUPSTATS_CMD_ATTR_FD, align 8
  %30 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %29
  %31 = load %struct.nlattr*, %struct.nlattr** %30, align 8
  %32 = call i32 @nla_get_u32(%struct.nlattr* %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call %struct.file* @fget_light(i32 %33, i32* %13)
  store %struct.file* %34, %struct.file** %12, align 8
  %35 = load %struct.file*, %struct.file** %12, align 8
  %36 = icmp ne %struct.file* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %74

38:                                               ; preds = %25
  %39 = call i64 @nla_total_size(i32 4)
  store i64 %39, i64* %10, align 8
  %40 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %41 = load i32, i32* @CGROUPSTATS_CMD_NEW, align 4
  %42 = load i64, i64* %10, align 8
  %43 = call i32 @prepare_reply(%struct.genl_info* %40, i32 %41, %struct.sk_buff** %7, i64 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %69

47:                                               ; preds = %38
  %48 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %49 = load i32, i32* @CGROUPSTATS_TYPE_CGROUP_STATS, align 4
  %50 = call %struct.nlattr* @nla_reserve(%struct.sk_buff* %48, i32 %49, i32 4)
  store %struct.nlattr* %50, %struct.nlattr** %9, align 8
  %51 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %52 = call %struct.cgroupstats* @nla_data(%struct.nlattr* %51)
  store %struct.cgroupstats* %52, %struct.cgroupstats** %8, align 8
  %53 = load %struct.cgroupstats*, %struct.cgroupstats** %8, align 8
  %54 = call i32 @memset(%struct.cgroupstats* %53, i32 0, i32 4)
  %55 = load %struct.cgroupstats*, %struct.cgroupstats** %8, align 8
  %56 = load %struct.file*, %struct.file** %12, align 8
  %57 = getelementptr inbounds %struct.file, %struct.file* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @cgroupstats_build(%struct.cgroupstats* %55, i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %47
  %63 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %64 = call i32 @nlmsg_free(%struct.sk_buff* %63)
  br label %69

65:                                               ; preds = %47
  %66 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %67 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %68 = call i32 @send_reply(%struct.sk_buff* %66, %struct.genl_info* %67)
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %65, %62, %46
  %70 = load %struct.file*, %struct.file** %12, align 8
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @fput_light(%struct.file* %70, i32 %71)
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %69, %37, %22
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local %struct.file* @fget_light(i32, i32*) #1

declare dso_local i64 @nla_total_size(i32) #1

declare dso_local i32 @prepare_reply(%struct.genl_info*, i32, %struct.sk_buff**, i64) #1

declare dso_local %struct.nlattr* @nla_reserve(%struct.sk_buff*, i32, i32) #1

declare dso_local %struct.cgroupstats* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @memset(%struct.cgroupstats*, i32, i32) #1

declare dso_local i32 @cgroupstats_build(%struct.cgroupstats*, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i32 @send_reply(%struct.sk_buff*, %struct.genl_info*) #1

declare dso_local i32 @fput_light(%struct.file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
