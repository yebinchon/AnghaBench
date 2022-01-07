; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_signaling.c_sigd_enq2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_signaling.c_sigd_enq2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { i32, i32, i32 }
%struct.sockaddr_atmpvc = type { i32 }
%struct.sockaddr_atmsvc = type { i32 }
%struct.atm_qos = type { i32 }
%struct.sk_buff = type { i32 }
%struct.atmsvc_msg = type { i32, i32, i32, %struct.sockaddr_atmpvc, i32, %struct.sockaddr_atmsvc, i32, %struct.atm_qos, i32, i32 }

@sigd_enq2.session = internal global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"sigd_enq %d (0x%p)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@as_connect = common dso_local global i32 0, align 4
@ATM_VF_SESSION = common dso_local global i32 0, align 4
@ATM_VF_REGIS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sigd_enq2(%struct.atm_vcc* %0, i32 %1, %struct.atm_vcc* %2, %struct.sockaddr_atmpvc* %3, %struct.sockaddr_atmsvc* %4, %struct.atm_qos* %5, i32 %6) #0 {
  %8 = alloca %struct.atm_vcc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.atm_vcc*, align 8
  %11 = alloca %struct.sockaddr_atmpvc*, align 8
  %12 = alloca %struct.sockaddr_atmsvc*, align 8
  %13 = alloca %struct.atm_qos*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca %struct.atmsvc_msg*, align 8
  store %struct.atm_vcc* %0, %struct.atm_vcc** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.atm_vcc* %2, %struct.atm_vcc** %10, align 8
  store %struct.sockaddr_atmpvc* %3, %struct.sockaddr_atmpvc** %11, align 8
  store %struct.sockaddr_atmsvc* %4, %struct.sockaddr_atmsvc** %12, align 8
  store %struct.atm_qos* %5, %struct.atm_qos** %13, align 8
  store i32 %6, i32* %14, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.atm_vcc*, %struct.atm_vcc** %8, align 8
  %19 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %17, %struct.atm_vcc* %18)
  br label %20

20:                                               ; preds = %25, %7
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.sk_buff* @alloc_skb(i32 40, i32 %21)
  store %struct.sk_buff* %22, %struct.sk_buff** %15, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  %24 = xor i1 %23, true
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = call i32 (...) @schedule()
  br label %20

27:                                               ; preds = %20
  %28 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %29 = call i64 @skb_put(%struct.sk_buff* %28, i32 40)
  %30 = inttoptr i64 %29 to %struct.atmsvc_msg*
  store %struct.atmsvc_msg* %30, %struct.atmsvc_msg** %16, align 8
  %31 = load %struct.atmsvc_msg*, %struct.atmsvc_msg** %16, align 8
  %32 = call i32 @memset(%struct.atmsvc_msg* %31, i32 0, i32 40)
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.atmsvc_msg*, %struct.atmsvc_msg** %16, align 8
  %35 = getelementptr inbounds %struct.atmsvc_msg, %struct.atmsvc_msg* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.atm_vcc*, %struct.atm_vcc** %8, align 8
  %37 = load %struct.atmsvc_msg*, %struct.atmsvc_msg** %16, align 8
  %38 = getelementptr inbounds %struct.atmsvc_msg, %struct.atmsvc_msg* %37, i32 0, i32 9
  %39 = bitcast i32* %38 to %struct.atm_vcc**
  store %struct.atm_vcc* %36, %struct.atm_vcc** %39, align 4
  %40 = load %struct.atm_vcc*, %struct.atm_vcc** %10, align 8
  %41 = load %struct.atmsvc_msg*, %struct.atmsvc_msg** %16, align 8
  %42 = getelementptr inbounds %struct.atmsvc_msg, %struct.atmsvc_msg* %41, i32 0, i32 8
  %43 = bitcast i32* %42 to %struct.atm_vcc**
  store %struct.atm_vcc* %40, %struct.atm_vcc** %43, align 4
  %44 = load i32, i32* %14, align 4
  %45 = load %struct.atmsvc_msg*, %struct.atmsvc_msg** %16, align 8
  %46 = getelementptr inbounds %struct.atmsvc_msg, %struct.atmsvc_msg* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.atm_qos*, %struct.atm_qos** %13, align 8
  %48 = icmp ne %struct.atm_qos* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %27
  %50 = load %struct.atmsvc_msg*, %struct.atmsvc_msg** %16, align 8
  %51 = getelementptr inbounds %struct.atmsvc_msg, %struct.atmsvc_msg* %50, i32 0, i32 7
  %52 = load %struct.atm_qos*, %struct.atm_qos** %13, align 8
  %53 = bitcast %struct.atm_qos* %51 to i8*
  %54 = bitcast %struct.atm_qos* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %53, i8* align 4 %54, i64 4, i1 false)
  br label %55

55:                                               ; preds = %49, %27
  %56 = load %struct.atm_vcc*, %struct.atm_vcc** %8, align 8
  %57 = icmp ne %struct.atm_vcc* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load %struct.atm_vcc*, %struct.atm_vcc** %8, align 8
  %60 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.atmsvc_msg*, %struct.atmsvc_msg** %16, align 8
  %63 = getelementptr inbounds %struct.atmsvc_msg, %struct.atmsvc_msg* %62, i32 0, i32 6
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %58, %55
  %65 = load %struct.sockaddr_atmsvc*, %struct.sockaddr_atmsvc** %12, align 8
  %66 = icmp ne %struct.sockaddr_atmsvc* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load %struct.atmsvc_msg*, %struct.atmsvc_msg** %16, align 8
  %69 = getelementptr inbounds %struct.atmsvc_msg, %struct.atmsvc_msg* %68, i32 0, i32 5
  %70 = load %struct.sockaddr_atmsvc*, %struct.sockaddr_atmsvc** %12, align 8
  %71 = bitcast %struct.sockaddr_atmsvc* %69 to i8*
  %72 = bitcast %struct.sockaddr_atmsvc* %70 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %71, i8* align 4 %72, i64 4, i1 false)
  br label %73

73:                                               ; preds = %67, %64
  %74 = load %struct.atm_vcc*, %struct.atm_vcc** %8, align 8
  %75 = icmp ne %struct.atm_vcc* %74, null
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = load %struct.atm_vcc*, %struct.atm_vcc** %8, align 8
  %78 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.atmsvc_msg*, %struct.atmsvc_msg** %16, align 8
  %81 = getelementptr inbounds %struct.atmsvc_msg, %struct.atmsvc_msg* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %76, %73
  %83 = load %struct.sockaddr_atmpvc*, %struct.sockaddr_atmpvc** %11, align 8
  %84 = icmp ne %struct.sockaddr_atmpvc* %83, null
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = load %struct.atmsvc_msg*, %struct.atmsvc_msg** %16, align 8
  %87 = getelementptr inbounds %struct.atmsvc_msg, %struct.atmsvc_msg* %86, i32 0, i32 3
  %88 = load %struct.sockaddr_atmpvc*, %struct.sockaddr_atmpvc** %11, align 8
  %89 = bitcast %struct.sockaddr_atmpvc* %87 to i8*
  %90 = bitcast %struct.sockaddr_atmpvc* %88 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %89, i8* align 4 %90, i64 4, i1 false)
  br label %91

91:                                               ; preds = %85, %82
  %92 = load %struct.atm_vcc*, %struct.atm_vcc** %8, align 8
  %93 = icmp ne %struct.atm_vcc* %92, null
  br i1 %93, label %94, label %110

94:                                               ; preds = %91
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @as_connect, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %109

98:                                               ; preds = %94
  %99 = load i32, i32* @ATM_VF_SESSION, align 4
  %100 = load %struct.atm_vcc*, %struct.atm_vcc** %8, align 8
  %101 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %100, i32 0, i32 0
  %102 = call i64 @test_bit(i32 %99, i32* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %98
  %105 = load i32, i32* @sigd_enq2.session, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* @sigd_enq2.session, align 4
  %107 = load %struct.atmsvc_msg*, %struct.atmsvc_msg** %16, align 8
  %108 = getelementptr inbounds %struct.atmsvc_msg, %struct.atmsvc_msg* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 4
  br label %109

109:                                              ; preds = %104, %98, %94
  br label %110

110:                                              ; preds = %109, %91
  %111 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %112 = call i32 @sigd_put_skb(%struct.sk_buff* %111)
  %113 = load %struct.atm_vcc*, %struct.atm_vcc** %8, align 8
  %114 = icmp ne %struct.atm_vcc* %113, null
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load i32, i32* @ATM_VF_REGIS, align 4
  %117 = load %struct.atm_vcc*, %struct.atm_vcc** %8, align 8
  %118 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %117, i32 0, i32 0
  %119 = call i32 @set_bit(i32 %116, i32* %118)
  br label %120

120:                                              ; preds = %115, %110
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32, %struct.atm_vcc*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(%struct.atmsvc_msg*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @sigd_put_skb(%struct.sk_buff*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
