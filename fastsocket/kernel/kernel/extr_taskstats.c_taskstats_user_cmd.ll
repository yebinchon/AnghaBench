; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_taskstats.c_taskstats_user_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_taskstats.c_taskstats_user_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i64*, i32 }
%struct.taskstats = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TASKSTATS_CMD_ATTR_REGISTER_CPUMASK = common dso_local global i64 0, align 8
@REGISTER = common dso_local global i32 0, align 4
@TASKSTATS_CMD_ATTR_DEREGISTER_CPUMASK = common dso_local global i64 0, align 8
@DEREGISTER = common dso_local global i32 0, align 4
@TASKSTATS_CMD_NEW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TASKSTATS_CMD_ATTR_PID = common dso_local global i64 0, align 8
@TASKSTATS_TYPE_PID = common dso_local global i32 0, align 4
@TASKSTATS_CMD_ATTR_TGID = common dso_local global i64 0, align 8
@TASKSTATS_TYPE_TGID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @taskstats_user_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @taskstats_user_cmd(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.taskstats*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i32 @alloc_cpumask_var(i32* %10, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %157

19:                                               ; preds = %2
  %20 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %21 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* @TASKSTATS_CMD_ATTR_REGISTER_CPUMASK, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @parse(i64 %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  br label %63

31:                                               ; preds = %19
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %36 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @REGISTER, align 4
  %40 = call i32 @add_del_listener(i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %6, align 4
  br label %63

41:                                               ; preds = %31
  %42 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %43 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = load i64, i64* @TASKSTATS_CMD_ATTR_DEREGISTER_CPUMASK, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @parse(i64 %47, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  br label %63

53:                                               ; preds = %41
  %54 = load i32, i32* %6, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %53
  %57 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %58 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @DEREGISTER, align 4
  %62 = call i32 @add_del_listener(i32 %59, i32 %60, i32 %61)
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %56, %52, %34, %30
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @free_cpumask_var(i32 %64)
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %3, align 4
  br label %157

67:                                               ; preds = %53
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @free_cpumask_var(i32 %68)
  %70 = call i64 @nla_total_size(i32 4)
  %71 = call i64 @nla_total_size(i32 4)
  %72 = add i64 %70, %71
  %73 = call i64 @nla_total_size(i32 0)
  %74 = add i64 %72, %73
  store i64 %74, i64* %9, align 8
  %75 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %76 = load i32, i32* @TASKSTATS_CMD_NEW, align 4
  %77 = load i64, i64* %9, align 8
  %78 = call i32 @prepare_reply(%struct.genl_info* %75, i32 %76, %struct.sk_buff** %7, i64 %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %67
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %3, align 4
  br label %157

83:                                               ; preds = %67
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %6, align 4
  %86 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %87 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %86, i32 0, i32 0
  %88 = load i64*, i64** %87, align 8
  %89 = load i64, i64* @TASKSTATS_CMD_ATTR_PID, align 8
  %90 = getelementptr inbounds i64, i64* %88, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %116

93:                                               ; preds = %83
  %94 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %95 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %94, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  %97 = load i64, i64* @TASKSTATS_CMD_ATTR_PID, align 8
  %98 = getelementptr inbounds i64, i64* %96, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @nla_get_u32(i64 %99)
  store i32 %100, i32* %11, align 4
  %101 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %102 = load i32, i32* @TASKSTATS_TYPE_PID, align 4
  %103 = load i32, i32* %11, align 4
  %104 = call %struct.taskstats* @mk_reply(%struct.sk_buff* %101, i32 %102, i32 %103)
  store %struct.taskstats* %104, %struct.taskstats** %8, align 8
  %105 = load %struct.taskstats*, %struct.taskstats** %8, align 8
  %106 = icmp ne %struct.taskstats* %105, null
  br i1 %106, label %108, label %107

107:                                              ; preds = %93
  br label %153

108:                                              ; preds = %93
  %109 = load i32, i32* %11, align 4
  %110 = load %struct.taskstats*, %struct.taskstats** %8, align 8
  %111 = call i32 @fill_pid(i32 %109, i32* null, %struct.taskstats* %110)
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* %6, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  br label %153

115:                                              ; preds = %108
  br label %149

116:                                              ; preds = %83
  %117 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %118 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %117, i32 0, i32 0
  %119 = load i64*, i64** %118, align 8
  %120 = load i64, i64* @TASKSTATS_CMD_ATTR_TGID, align 8
  %121 = getelementptr inbounds i64, i64* %119, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %147

124:                                              ; preds = %116
  %125 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %126 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %125, i32 0, i32 0
  %127 = load i64*, i64** %126, align 8
  %128 = load i64, i64* @TASKSTATS_CMD_ATTR_TGID, align 8
  %129 = getelementptr inbounds i64, i64* %127, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @nla_get_u32(i64 %130)
  store i32 %131, i32* %12, align 4
  %132 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %133 = load i32, i32* @TASKSTATS_TYPE_TGID, align 4
  %134 = load i32, i32* %12, align 4
  %135 = call %struct.taskstats* @mk_reply(%struct.sk_buff* %132, i32 %133, i32 %134)
  store %struct.taskstats* %135, %struct.taskstats** %8, align 8
  %136 = load %struct.taskstats*, %struct.taskstats** %8, align 8
  %137 = icmp ne %struct.taskstats* %136, null
  br i1 %137, label %139, label %138

138:                                              ; preds = %124
  br label %153

139:                                              ; preds = %124
  %140 = load i32, i32* %12, align 4
  %141 = load %struct.taskstats*, %struct.taskstats** %8, align 8
  %142 = call i32 @fill_tgid(i32 %140, i32* null, %struct.taskstats* %141)
  store i32 %142, i32* %6, align 4
  %143 = load i32, i32* %6, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %139
  br label %153

146:                                              ; preds = %139
  br label %148

147:                                              ; preds = %116
  br label %153

148:                                              ; preds = %146
  br label %149

149:                                              ; preds = %148, %115
  %150 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %151 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %152 = call i32 @send_reply(%struct.sk_buff* %150, %struct.genl_info* %151)
  store i32 %152, i32* %3, align 4
  br label %157

153:                                              ; preds = %147, %145, %138, %114, %107
  %154 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %155 = call i32 @nlmsg_free(%struct.sk_buff* %154)
  %156 = load i32, i32* %6, align 4
  store i32 %156, i32* %3, align 4
  br label %157

157:                                              ; preds = %153, %149, %81, %63, %16
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local i32 @alloc_cpumask_var(i32*, i32) #1

declare dso_local i32 @parse(i64, i32) #1

declare dso_local i32 @add_del_listener(i32, i32, i32) #1

declare dso_local i32 @free_cpumask_var(i32) #1

declare dso_local i64 @nla_total_size(i32) #1

declare dso_local i32 @prepare_reply(%struct.genl_info*, i32, %struct.sk_buff**, i64) #1

declare dso_local i32 @nla_get_u32(i64) #1

declare dso_local %struct.taskstats* @mk_reply(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @fill_pid(i32, i32*, %struct.taskstats*) #1

declare dso_local i32 @fill_tgid(i32, i32*, %struct.taskstats*) #1

declare dso_local i32 @send_reply(%struct.sk_buff*, %struct.genl_info*) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
