; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_xfrm_add_pol_expire.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_xfrm_add_pol_expire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }
%struct.net = type { i32 }
%struct.xfrm_policy = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.xfrm_user_polexpire = type { i64, %struct.xfrm_userpolicy_info }
%struct.xfrm_userpolicy_info = type { i32, i32, i64 }
%struct.xfrm_mark = type { i32 }
%struct.xfrm_sec_ctx = type { i32 }
%struct.xfrm_user_sec_ctx = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@XFRM_POLICY_TYPE_MAIN = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@XFRMA_SEC_CTX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Dont know what to do with soft policy expire\0A\00", align 1
@current = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**)* @xfrm_add_pol_expire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_add_pol_expire(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.xfrm_policy*, align 8
  %10 = alloca %struct.xfrm_user_polexpire*, align 8
  %11 = alloca %struct.xfrm_userpolicy_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.xfrm_mark, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.nlattr*, align 8
  %17 = alloca %struct.xfrm_sec_ctx*, align 8
  %18 = alloca %struct.xfrm_user_sec_ctx*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_6__, align 4
  %21 = alloca { i64, i32 }, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_6__, align 4
  %24 = alloca { i64, i32 }, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_6__, align 4
  %27 = alloca { i64, i32 }, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.net* @sock_net(i32 %30)
  store %struct.net* %31, %struct.net** %8, align 8
  %32 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %33 = call %struct.xfrm_user_polexpire* @nlmsg_data(%struct.nlmsghdr* %32)
  store %struct.xfrm_user_polexpire* %33, %struct.xfrm_user_polexpire** %10, align 8
  %34 = load %struct.xfrm_user_polexpire*, %struct.xfrm_user_polexpire** %10, align 8
  %35 = getelementptr inbounds %struct.xfrm_user_polexpire, %struct.xfrm_user_polexpire* %34, i32 0, i32 1
  store %struct.xfrm_userpolicy_info* %35, %struct.xfrm_userpolicy_info** %11, align 8
  %36 = load i32, i32* @XFRM_POLICY_TYPE_MAIN, align 4
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* @ENOENT, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %13, align 4
  %39 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %40 = call i32 @xfrm_mark_get(%struct.nlattr** %39, %struct.xfrm_mark* %14)
  store i32 %40, i32* %15, align 4
  %41 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %42 = call i32 @copy_from_user_policy_type(i32* %12, %struct.nlattr** %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %3
  %46 = load i32, i32* %13, align 4
  store i32 %46, i32* %4, align 4
  br label %175

47:                                               ; preds = %3
  %48 = load %struct.xfrm_userpolicy_info*, %struct.xfrm_userpolicy_info** %11, align 8
  %49 = getelementptr inbounds %struct.xfrm_userpolicy_info, %struct.xfrm_userpolicy_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @verify_policy_dir(i32 %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* %13, align 4
  store i32 %55, i32* %4, align 4
  br label %175

56:                                               ; preds = %47
  %57 = load %struct.xfrm_userpolicy_info*, %struct.xfrm_userpolicy_info** %11, align 8
  %58 = getelementptr inbounds %struct.xfrm_userpolicy_info, %struct.xfrm_userpolicy_info* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %56
  %62 = load %struct.net*, %struct.net** %8, align 8
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.xfrm_userpolicy_info*, %struct.xfrm_userpolicy_info** %11, align 8
  %66 = getelementptr inbounds %struct.xfrm_userpolicy_info, %struct.xfrm_userpolicy_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.xfrm_userpolicy_info*, %struct.xfrm_userpolicy_info** %11, align 8
  %69 = getelementptr inbounds %struct.xfrm_userpolicy_info, %struct.xfrm_userpolicy_info* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = call %struct.xfrm_policy* @xfrm_policy_byid(%struct.net* %62, i32 %63, i32 %64, i32 %67, i64 %70, i32 0, i32* %13)
  store %struct.xfrm_policy* %71, %struct.xfrm_policy** %9, align 8
  br label %109

72:                                               ; preds = %56
  %73 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %74 = load i64, i64* @XFRMA_SEC_CTX, align 8
  %75 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %73, i64 %74
  %76 = load %struct.nlattr*, %struct.nlattr** %75, align 8
  store %struct.nlattr* %76, %struct.nlattr** %16, align 8
  %77 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %78 = call i32 @verify_sec_ctx_len(%struct.nlattr** %77)
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %72
  %82 = load i32, i32* %13, align 4
  store i32 %82, i32* %4, align 4
  br label %175

83:                                               ; preds = %72
  store %struct.xfrm_sec_ctx* null, %struct.xfrm_sec_ctx** %17, align 8
  %84 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %85 = icmp ne %struct.nlattr* %84, null
  br i1 %85, label %86, label %96

86:                                               ; preds = %83
  %87 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %88 = call %struct.xfrm_user_sec_ctx* @nla_data(%struct.nlattr* %87)
  store %struct.xfrm_user_sec_ctx* %88, %struct.xfrm_user_sec_ctx** %18, align 8
  %89 = load %struct.xfrm_user_sec_ctx*, %struct.xfrm_user_sec_ctx** %18, align 8
  %90 = call i32 @security_xfrm_policy_alloc(%struct.xfrm_sec_ctx** %17, %struct.xfrm_user_sec_ctx* %89)
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %13, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = load i32, i32* %13, align 4
  store i32 %94, i32* %4, align 4
  br label %175

95:                                               ; preds = %86
  br label %96

96:                                               ; preds = %95, %83
  %97 = load %struct.net*, %struct.net** %8, align 8
  %98 = load i32, i32* %15, align 4
  %99 = load i32, i32* %12, align 4
  %100 = load %struct.xfrm_userpolicy_info*, %struct.xfrm_userpolicy_info** %11, align 8
  %101 = getelementptr inbounds %struct.xfrm_userpolicy_info, %struct.xfrm_userpolicy_info* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.xfrm_userpolicy_info*, %struct.xfrm_userpolicy_info** %11, align 8
  %104 = getelementptr inbounds %struct.xfrm_userpolicy_info, %struct.xfrm_userpolicy_info* %103, i32 0, i32 1
  %105 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %17, align 8
  %106 = call %struct.xfrm_policy* @xfrm_policy_bysel_ctx(%struct.net* %97, i32 %98, i32 %99, i32 %102, i32* %104, %struct.xfrm_sec_ctx* %105, i32 0, i32* %13)
  store %struct.xfrm_policy* %106, %struct.xfrm_policy** %9, align 8
  %107 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %17, align 8
  %108 = call i32 @security_xfrm_policy_free(%struct.xfrm_sec_ctx* %107)
  br label %109

109:                                              ; preds = %96, %61
  %110 = load %struct.xfrm_policy*, %struct.xfrm_policy** %9, align 8
  %111 = icmp eq %struct.xfrm_policy* %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load i32, i32* @ENOENT, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %4, align 4
  br label %175

115:                                              ; preds = %109
  %116 = load %struct.xfrm_policy*, %struct.xfrm_policy** %9, align 8
  %117 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i64 @unlikely(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %115
  br label %171

123:                                              ; preds = %115
  store i32 0, i32* %13, align 4
  %124 = load %struct.xfrm_user_polexpire*, %struct.xfrm_user_polexpire** %10, align 8
  %125 = getelementptr inbounds %struct.xfrm_user_polexpire, %struct.xfrm_user_polexpire* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %157

128:                                              ; preds = %123
  %129 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %130 = call { i64, i32 } @NETLINK_CB(%struct.sk_buff* %129)
  store { i64, i32 } %130, { i64, i32 }* %21, align 8
  %131 = bitcast { i64, i32 }* %21 to i8*
  %132 = bitcast %struct.TYPE_6__* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %132, i8* align 8 %131, i64 12, i1 false)
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %19, align 4
  %135 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %136 = call { i64, i32 } @NETLINK_CB(%struct.sk_buff* %135)
  store { i64, i32 } %136, { i64, i32 }* %24, align 8
  %137 = bitcast { i64, i32 }* %24 to i8*
  %138 = bitcast %struct.TYPE_6__* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %138, i8* align 8 %137, i64 12, i1 false)
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %22, align 4
  %141 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %142 = call { i64, i32 } @NETLINK_CB(%struct.sk_buff* %141)
  store { i64, i32 } %142, { i64, i32 }* %27, align 8
  %143 = bitcast { i64, i32 }* %27 to i8*
  %144 = bitcast %struct.TYPE_6__* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %144, i8* align 8 %143, i64 12, i1 false)
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  store i32 %146, i32* %25, align 4
  %147 = load %struct.xfrm_policy*, %struct.xfrm_policy** %9, align 8
  %148 = load %struct.xfrm_userpolicy_info*, %struct.xfrm_userpolicy_info** %11, align 8
  %149 = getelementptr inbounds %struct.xfrm_userpolicy_info, %struct.xfrm_userpolicy_info* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @xfrm_policy_delete(%struct.xfrm_policy* %147, i32 %150)
  %152 = load %struct.xfrm_policy*, %struct.xfrm_policy** %9, align 8
  %153 = load i32, i32* %19, align 4
  %154 = load i32, i32* %22, align 4
  %155 = load i32, i32* %25, align 4
  %156 = call i32 @xfrm_audit_policy_delete(%struct.xfrm_policy* %152, i32 1, i32 %153, i32 %154, i32 %155)
  br label %159

157:                                              ; preds = %123
  %158 = call i32 @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %159

159:                                              ; preds = %157, %128
  %160 = load %struct.xfrm_policy*, %struct.xfrm_policy** %9, align 8
  %161 = load %struct.xfrm_userpolicy_info*, %struct.xfrm_userpolicy_info** %11, align 8
  %162 = getelementptr inbounds %struct.xfrm_userpolicy_info, %struct.xfrm_userpolicy_info* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.xfrm_user_polexpire*, %struct.xfrm_user_polexpire** %10, align 8
  %165 = getelementptr inbounds %struct.xfrm_user_polexpire, %struct.xfrm_user_polexpire* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @km_policy_expired(%struct.xfrm_policy* %160, i32 %163, i64 %166, i32 %169)
  br label %171

171:                                              ; preds = %159, %122
  %172 = load %struct.xfrm_policy*, %struct.xfrm_policy** %9, align 8
  %173 = call i32 @xfrm_pol_put(%struct.xfrm_policy* %172)
  %174 = load i32, i32* %13, align 4
  store i32 %174, i32* %4, align 4
  br label %175

175:                                              ; preds = %171, %112, %93, %81, %54, %45
  %176 = load i32, i32* %4, align 4
  ret i32 %176
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local %struct.xfrm_user_polexpire* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @xfrm_mark_get(%struct.nlattr**, %struct.xfrm_mark*) #1

declare dso_local i32 @copy_from_user_policy_type(i32*, %struct.nlattr**) #1

declare dso_local i32 @verify_policy_dir(i32) #1

declare dso_local %struct.xfrm_policy* @xfrm_policy_byid(%struct.net*, i32, i32, i32, i64, i32, i32*) #1

declare dso_local i32 @verify_sec_ctx_len(%struct.nlattr**) #1

declare dso_local %struct.xfrm_user_sec_ctx* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @security_xfrm_policy_alloc(%struct.xfrm_sec_ctx**, %struct.xfrm_user_sec_ctx*) #1

declare dso_local %struct.xfrm_policy* @xfrm_policy_bysel_ctx(%struct.net*, i32, i32, i32, i32*, %struct.xfrm_sec_ctx*, i32, i32*) #1

declare dso_local i32 @security_xfrm_policy_free(%struct.xfrm_sec_ctx*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local { i64, i32 } @NETLINK_CB(%struct.sk_buff*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @xfrm_policy_delete(%struct.xfrm_policy*, i32) #1

declare dso_local i32 @xfrm_audit_policy_delete(%struct.xfrm_policy*, i32, i32, i32, i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @km_policy_expired(%struct.xfrm_policy*, i32, i64, i32) #1

declare dso_local i32 @xfrm_pol_put(%struct.xfrm_policy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
