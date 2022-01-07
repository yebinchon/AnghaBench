; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_xfrm_add_acquire.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_xfrm_add_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }
%struct.net = type { i32 }
%struct.xfrm_policy = type { i32, %struct.TYPE_4__, i32, %struct.xfrm_tmpl*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.xfrm_tmpl = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.xfrm_user_tmpl = type { i32 }
%struct.xfrm_mark = type { i32, i32 }
%struct.xfrm_user_acquire = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.xfrm_state = type { i32, %struct.TYPE_4__, i32, %struct.xfrm_tmpl*, %struct.TYPE_3__, i32 }

@XFRMA_TMPL = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"BAD policy passed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**)* @xfrm_add_acquire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_add_acquire(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.xfrm_policy*, align 8
  %10 = alloca %struct.xfrm_user_tmpl*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.nlattr*, align 8
  %13 = alloca %struct.xfrm_mark, align 4
  %14 = alloca %struct.xfrm_user_acquire*, align 8
  %15 = alloca %struct.xfrm_state*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.xfrm_tmpl*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.net* @sock_net(i32 %20)
  store %struct.net* %21, %struct.net** %8, align 8
  %22 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %23 = load i64, i64* @XFRMA_TMPL, align 8
  %24 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %23
  %25 = load %struct.nlattr*, %struct.nlattr** %24, align 8
  store %struct.nlattr* %25, %struct.nlattr** %12, align 8
  %26 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %27 = call %struct.xfrm_user_acquire* @nlmsg_data(%struct.nlmsghdr* %26)
  store %struct.xfrm_user_acquire* %27, %struct.xfrm_user_acquire** %14, align 8
  %28 = load %struct.net*, %struct.net** %8, align 8
  %29 = call %struct.xfrm_state* @xfrm_state_alloc(%struct.net* %28)
  store %struct.xfrm_state* %29, %struct.xfrm_state** %15, align 8
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %16, align 4
  %32 = load %struct.xfrm_state*, %struct.xfrm_state** %15, align 8
  %33 = icmp ne %struct.xfrm_state* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %3
  br label %161

35:                                               ; preds = %3
  %36 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %37 = call i32 @xfrm_mark_get(%struct.nlattr** %36, %struct.xfrm_mark* %13)
  %38 = load %struct.xfrm_user_acquire*, %struct.xfrm_user_acquire** %14, align 8
  %39 = getelementptr inbounds %struct.xfrm_user_acquire, %struct.xfrm_user_acquire* %38, i32 0, i32 6
  %40 = call i32 @verify_newpolicy_info(i32* %39)
  store i32 %40, i32* %16, align 4
  %41 = load i32, i32* %16, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %156

44:                                               ; preds = %35
  %45 = load %struct.net*, %struct.net** %8, align 8
  %46 = load %struct.xfrm_user_acquire*, %struct.xfrm_user_acquire** %14, align 8
  %47 = getelementptr inbounds %struct.xfrm_user_acquire, %struct.xfrm_user_acquire* %46, i32 0, i32 6
  %48 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %49 = call %struct.xfrm_state* @xfrm_policy_construct(%struct.net* %45, i32* %47, %struct.nlattr** %48, i32* %16)
  %50 = bitcast %struct.xfrm_state* %49 to %struct.xfrm_policy*
  store %struct.xfrm_policy* %50, %struct.xfrm_policy** %9, align 8
  %51 = load %struct.xfrm_policy*, %struct.xfrm_policy** %9, align 8
  %52 = icmp ne %struct.xfrm_policy* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %44
  br label %158

54:                                               ; preds = %44
  %55 = load %struct.xfrm_state*, %struct.xfrm_state** %15, align 8
  %56 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %55, i32 0, i32 2
  %57 = load %struct.xfrm_user_acquire*, %struct.xfrm_user_acquire** %14, align 8
  %58 = getelementptr inbounds %struct.xfrm_user_acquire, %struct.xfrm_user_acquire* %57, i32 0, i32 5
  %59 = call i32 @memcpy(i32* %56, i32* %58, i32 4)
  %60 = load %struct.xfrm_state*, %struct.xfrm_state** %15, align 8
  %61 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 3
  %63 = load %struct.xfrm_user_acquire*, %struct.xfrm_user_acquire** %14, align 8
  %64 = getelementptr inbounds %struct.xfrm_user_acquire, %struct.xfrm_user_acquire* %63, i32 0, i32 4
  %65 = call i32 @memcpy(i32* %62, i32* %64, i32 4)
  %66 = load %struct.xfrm_state*, %struct.xfrm_state** %15, align 8
  %67 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %66, i32 0, i32 5
  %68 = load %struct.xfrm_user_acquire*, %struct.xfrm_user_acquire** %14, align 8
  %69 = getelementptr inbounds %struct.xfrm_user_acquire, %struct.xfrm_user_acquire* %68, i32 0, i32 3
  %70 = call i32 @memcpy(i32* %67, i32* %69, i32 4)
  %71 = getelementptr inbounds %struct.xfrm_mark, %struct.xfrm_mark* %13, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.xfrm_state*, %struct.xfrm_state** %15, align 8
  %74 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  store i32 %72, i32* %75, align 4
  %76 = load %struct.xfrm_policy*, %struct.xfrm_policy** %9, align 8
  %77 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  store i32 %72, i32* %78, align 4
  %79 = getelementptr inbounds %struct.xfrm_mark, %struct.xfrm_mark* %13, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.xfrm_state*, %struct.xfrm_state** %15, align 8
  %82 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 8
  %84 = load %struct.xfrm_policy*, %struct.xfrm_policy** %9, align 8
  %85 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  store i32 %80, i32* %86, align 8
  %87 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %88 = call %struct.xfrm_user_tmpl* @nla_data(%struct.nlattr* %87)
  store %struct.xfrm_user_tmpl* %88, %struct.xfrm_user_tmpl** %10, align 8
  store i32 0, i32* %11, align 4
  br label %89

89:                                               ; preds = %145, %54
  %90 = load i32, i32* %11, align 4
  %91 = load %struct.xfrm_policy*, %struct.xfrm_policy** %9, align 8
  %92 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %150

95:                                               ; preds = %89
  %96 = load %struct.xfrm_policy*, %struct.xfrm_policy** %9, align 8
  %97 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %96, i32 0, i32 3
  %98 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %97, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %98, i64 %100
  store %struct.xfrm_tmpl* %101, %struct.xfrm_tmpl** %17, align 8
  %102 = load %struct.xfrm_state*, %struct.xfrm_state** %15, align 8
  %103 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %102, i32 0, i32 2
  %104 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %17, align 8
  %105 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %104, i32 0, i32 5
  %106 = call i32 @memcpy(i32* %103, i32* %105, i32 4)
  %107 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %17, align 8
  %108 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.xfrm_state*, %struct.xfrm_state** %15, align 8
  %111 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 2
  store i32 %109, i32* %112, align 4
  %113 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %17, align 8
  %114 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.xfrm_state*, %struct.xfrm_state** %15, align 8
  %117 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  store i32 %115, i32* %118, align 4
  %119 = load %struct.xfrm_user_tmpl*, %struct.xfrm_user_tmpl** %10, align 8
  %120 = getelementptr inbounds %struct.xfrm_user_tmpl, %struct.xfrm_user_tmpl* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.xfrm_state*, %struct.xfrm_state** %15, align 8
  %123 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  store i32 %121, i32* %124, align 4
  %125 = load %struct.xfrm_user_acquire*, %struct.xfrm_user_acquire** %14, align 8
  %126 = getelementptr inbounds %struct.xfrm_user_acquire, %struct.xfrm_user_acquire* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %17, align 8
  %129 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 4
  %130 = load %struct.xfrm_user_acquire*, %struct.xfrm_user_acquire** %14, align 8
  %131 = getelementptr inbounds %struct.xfrm_user_acquire, %struct.xfrm_user_acquire* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %17, align 8
  %134 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  %135 = load %struct.xfrm_user_acquire*, %struct.xfrm_user_acquire** %14, align 8
  %136 = getelementptr inbounds %struct.xfrm_user_acquire, %struct.xfrm_user_acquire* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %17, align 8
  %139 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 4
  %140 = load %struct.xfrm_state*, %struct.xfrm_state** %15, align 8
  %141 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %17, align 8
  %142 = load %struct.xfrm_policy*, %struct.xfrm_policy** %9, align 8
  %143 = bitcast %struct.xfrm_policy* %142 to %struct.xfrm_state*
  %144 = call i32 @km_query(%struct.xfrm_state* %140, %struct.xfrm_tmpl* %141, %struct.xfrm_state* %143)
  store i32 %144, i32* %16, align 4
  br label %145

145:                                              ; preds = %95
  %146 = load i32, i32* %11, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %11, align 4
  %148 = load %struct.xfrm_user_tmpl*, %struct.xfrm_user_tmpl** %10, align 8
  %149 = getelementptr inbounds %struct.xfrm_user_tmpl, %struct.xfrm_user_tmpl* %148, i32 1
  store %struct.xfrm_user_tmpl* %149, %struct.xfrm_user_tmpl** %10, align 8
  br label %89

150:                                              ; preds = %89
  %151 = load %struct.xfrm_state*, %struct.xfrm_state** %15, align 8
  %152 = call i32 @kfree(%struct.xfrm_state* %151)
  %153 = load %struct.xfrm_policy*, %struct.xfrm_policy** %9, align 8
  %154 = bitcast %struct.xfrm_policy* %153 to %struct.xfrm_state*
  %155 = call i32 @kfree(%struct.xfrm_state* %154)
  store i32 0, i32* %4, align 4
  br label %163

156:                                              ; preds = %43
  %157 = call i32 @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %158

158:                                              ; preds = %156, %53
  %159 = load %struct.xfrm_state*, %struct.xfrm_state** %15, align 8
  %160 = call i32 @kfree(%struct.xfrm_state* %159)
  br label %161

161:                                              ; preds = %158, %34
  %162 = load i32, i32* %16, align 4
  store i32 %162, i32* %4, align 4
  br label %163

163:                                              ; preds = %161, %150
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local %struct.xfrm_user_acquire* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local %struct.xfrm_state* @xfrm_state_alloc(%struct.net*) #1

declare dso_local i32 @xfrm_mark_get(%struct.nlattr**, %struct.xfrm_mark*) #1

declare dso_local i32 @verify_newpolicy_info(i32*) #1

declare dso_local %struct.xfrm_state* @xfrm_policy_construct(%struct.net*, i32*, %struct.nlattr**, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local %struct.xfrm_user_tmpl* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @km_query(%struct.xfrm_state*, %struct.xfrm_tmpl*, %struct.xfrm_state*) #1

declare dso_local i32 @kfree(%struct.xfrm_state*) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
