; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_pfkey_compile_policy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_pfkey_compile_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_policy = type { i32, %struct.TYPE_4__, i32, i64, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i8*, i8*, i8*, i8* }
%struct.sock = type { i32 }
%struct.net = type { i32 }
%struct.sadb_x_policy = type { i32, i64, i32 }
%struct.sadb_x_sec_ctx = type { i32 }
%struct.xfrm_user_sec_ctx = type { i32 }

@IP_IPSEC_POLICY = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IPSEC_POLICY_BYPASS = common dso_local global i64 0, align 8
@IPSEC_DIR_OUTBOUND = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@IPSEC_POLICY_DISCARD = common dso_local global i64 0, align 8
@XFRM_POLICY_BLOCK = common dso_local global i32 0, align 4
@XFRM_POLICY_ALLOW = common dso_local global i32 0, align 4
@XFRM_INF = common dso_local global i8* null, align 8
@IPSEC_POLICY_IPSEC = common dso_local global i64 0, align 8
@IPV6_IPSEC_POLICY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xfrm_policy* (%struct.sock*, i32, i32*, i32, i32*)* @pfkey_compile_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xfrm_policy* @pfkey_compile_policy(%struct.sock* %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.xfrm_policy*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.net*, align 8
  %13 = alloca %struct.xfrm_policy*, align 8
  %14 = alloca %struct.sadb_x_policy*, align 8
  %15 = alloca %struct.sadb_x_sec_ctx*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.xfrm_user_sec_ctx*, align 8
  store %struct.sock* %0, %struct.sock** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %18 = load %struct.sock*, %struct.sock** %7, align 8
  %19 = call %struct.net* @sock_net(%struct.sock* %18)
  store %struct.net* %19, %struct.net** %12, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = bitcast i32* %20 to %struct.sadb_x_policy*
  store %struct.sadb_x_policy* %21, %struct.sadb_x_policy** %14, align 8
  %22 = load %struct.sock*, %struct.sock** %7, align 8
  %23 = getelementptr inbounds %struct.sock, %struct.sock* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %34 [
    i32 129, label %25
  ]

25:                                               ; preds = %5
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @IP_IPSEC_POLICY, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32, i32* @EOPNOTSUPP, align 4
  %31 = sub nsw i32 0, %30
  %32 = load i32*, i32** %11, align 8
  store i32 %31, i32* %32, align 4
  store %struct.xfrm_policy* null, %struct.xfrm_policy** %6, align 8
  br label %199

33:                                               ; preds = %25
  br label %38

34:                                               ; preds = %5
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  %37 = load i32*, i32** %11, align 8
  store i32 %36, i32* %37, align 4
  store %struct.xfrm_policy* null, %struct.xfrm_policy** %6, align 8
  br label %199

38:                                               ; preds = %33
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  %41 = load i32*, i32** %11, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp ult i64 %43, 24
  br i1 %44, label %69, label %45

45:                                               ; preds = %38
  %46 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %14, align 8
  %47 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = mul nsw i32 %48, 8
  %50 = load i32, i32* %10, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %69, label %52

52:                                               ; preds = %45
  %53 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %14, align 8
  %54 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @IPSEC_POLICY_BYPASS, align 8
  %57 = icmp sgt i64 %55, %56
  br i1 %57, label %69, label %58

58:                                               ; preds = %52
  %59 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %14, align 8
  %60 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %14, align 8
  %65 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @IPSEC_DIR_OUTBOUND, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %63, %58, %52, %45, %38
  store %struct.xfrm_policy* null, %struct.xfrm_policy** %6, align 8
  br label %199

70:                                               ; preds = %63
  %71 = load %struct.net*, %struct.net** %12, align 8
  %72 = load i32, i32* @GFP_ATOMIC, align 4
  %73 = call %struct.xfrm_policy* @xfrm_policy_alloc(%struct.net* %71, i32 %72)
  store %struct.xfrm_policy* %73, %struct.xfrm_policy** %13, align 8
  %74 = load %struct.xfrm_policy*, %struct.xfrm_policy** %13, align 8
  %75 = icmp eq %struct.xfrm_policy* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load i32, i32* @ENOBUFS, align 4
  %78 = sub nsw i32 0, %77
  %79 = load i32*, i32** %11, align 8
  store i32 %78, i32* %79, align 4
  store %struct.xfrm_policy* null, %struct.xfrm_policy** %6, align 8
  br label %199

80:                                               ; preds = %70
  %81 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %14, align 8
  %82 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @IPSEC_POLICY_DISCARD, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = load i32, i32* @XFRM_POLICY_BLOCK, align 4
  br label %90

88:                                               ; preds = %80
  %89 = load i32, i32* @XFRM_POLICY_ALLOW, align 4
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi i32 [ %87, %86 ], [ %89, %88 ]
  %92 = load %struct.xfrm_policy*, %struct.xfrm_policy** %13, align 8
  %93 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %92, i32 0, i32 5
  store i32 %91, i32* %93, align 8
  %94 = load i8*, i8** @XFRM_INF, align 8
  %95 = load %struct.xfrm_policy*, %struct.xfrm_policy** %13, align 8
  %96 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 3
  store i8* %94, i8** %97, align 8
  %98 = load i8*, i8** @XFRM_INF, align 8
  %99 = load %struct.xfrm_policy*, %struct.xfrm_policy** %13, align 8
  %100 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %99, i32 0, i32 4
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 2
  store i8* %98, i8** %101, align 8
  %102 = load i8*, i8** @XFRM_INF, align 8
  %103 = load %struct.xfrm_policy*, %struct.xfrm_policy** %13, align 8
  %104 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  store i8* %102, i8** %105, align 8
  %106 = load i8*, i8** @XFRM_INF, align 8
  %107 = load %struct.xfrm_policy*, %struct.xfrm_policy** %13, align 8
  %108 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %107, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  store i8* %106, i8** %109, align 8
  %110 = load %struct.sock*, %struct.sock** %7, align 8
  %111 = getelementptr inbounds %struct.sock, %struct.sock* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.xfrm_policy*, %struct.xfrm_policy** %13, align 8
  %114 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  %115 = load %struct.xfrm_policy*, %struct.xfrm_policy** %13, align 8
  %116 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %115, i32 0, i32 3
  store i64 0, i64* %116, align 8
  %117 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %14, align 8
  %118 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @IPSEC_POLICY_IPSEC, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %129

122:                                              ; preds = %90
  %123 = load %struct.xfrm_policy*, %struct.xfrm_policy** %13, align 8
  %124 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %14, align 8
  %125 = call i32 @parse_ipsecrequests(%struct.xfrm_policy* %123, %struct.sadb_x_policy* %124)
  %126 = load i32*, i32** %11, align 8
  store i32 %125, i32* %126, align 4
  %127 = icmp slt i32 %125, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %122
  br label %193

129:                                              ; preds = %122, %90
  %130 = load i32, i32* %10, align 4
  %131 = sext i32 %130 to i64
  %132 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %14, align 8
  %133 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = mul nsw i32 %134, 8
  %136 = sext i32 %135 to i64
  %137 = add i64 %136, 4
  %138 = icmp uge i64 %131, %137
  br i1 %138, label %139, label %186

139:                                              ; preds = %129
  %140 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %14, align 8
  %141 = bitcast %struct.sadb_x_policy* %140 to i8*
  store i8* %141, i8** %16, align 8
  %142 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %14, align 8
  %143 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = mul nsw i32 %144, 8
  %146 = load i8*, i8** %16, align 8
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds i8, i8* %146, i64 %147
  store i8* %148, i8** %16, align 8
  %149 = load i8*, i8** %16, align 8
  %150 = bitcast i8* %149 to %struct.sadb_x_sec_ctx*
  store %struct.sadb_x_sec_ctx* %150, %struct.sadb_x_sec_ctx** %15, align 8
  %151 = load i32, i32* %10, align 4
  %152 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %14, align 8
  %153 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = mul nsw i32 %154, 8
  %156 = load %struct.sadb_x_sec_ctx*, %struct.sadb_x_sec_ctx** %15, align 8
  %157 = getelementptr inbounds %struct.sadb_x_sec_ctx, %struct.sadb_x_sec_ctx* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %155, %158
  %160 = icmp slt i32 %151, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %139
  %162 = load i32, i32* @EINVAL, align 4
  %163 = sub nsw i32 0, %162
  %164 = load i32*, i32** %11, align 8
  store i32 %163, i32* %164, align 4
  br label %193

165:                                              ; preds = %139
  %166 = load i8*, i8** %16, align 8
  %167 = call i32 @verify_sec_ctx_len(i8* %166)
  %168 = load i32*, i32** %11, align 8
  store i32 %167, i32* %168, align 4
  %169 = icmp ne i32 %167, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %165
  br label %193

171:                                              ; preds = %165
  %172 = load %struct.sadb_x_sec_ctx*, %struct.sadb_x_sec_ctx** %15, align 8
  %173 = call %struct.xfrm_user_sec_ctx* @pfkey_sadb2xfrm_user_sec_ctx(%struct.sadb_x_sec_ctx* %172)
  store %struct.xfrm_user_sec_ctx* %173, %struct.xfrm_user_sec_ctx** %17, align 8
  %174 = load %struct.xfrm_policy*, %struct.xfrm_policy** %13, align 8
  %175 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %174, i32 0, i32 2
  %176 = load %struct.xfrm_user_sec_ctx*, %struct.xfrm_user_sec_ctx** %17, align 8
  %177 = call i32 @security_xfrm_policy_alloc(i32* %175, %struct.xfrm_user_sec_ctx* %176)
  %178 = load i32*, i32** %11, align 8
  store i32 %177, i32* %178, align 4
  %179 = load %struct.xfrm_user_sec_ctx*, %struct.xfrm_user_sec_ctx** %17, align 8
  %180 = call i32 @kfree(%struct.xfrm_user_sec_ctx* %179)
  %181 = load i32*, i32** %11, align 8
  %182 = load i32, i32* %181, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %171
  br label %193

185:                                              ; preds = %171
  br label %186

186:                                              ; preds = %185, %129
  %187 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %14, align 8
  %188 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = sub nsw i32 %189, 1
  %191 = load i32*, i32** %11, align 8
  store i32 %190, i32* %191, align 4
  %192 = load %struct.xfrm_policy*, %struct.xfrm_policy** %13, align 8
  store %struct.xfrm_policy* %192, %struct.xfrm_policy** %6, align 8
  br label %199

193:                                              ; preds = %184, %170, %161, %128
  %194 = load %struct.xfrm_policy*, %struct.xfrm_policy** %13, align 8
  %195 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  store i32 1, i32* %196, align 4
  %197 = load %struct.xfrm_policy*, %struct.xfrm_policy** %13, align 8
  %198 = call i32 @xfrm_policy_destroy(%struct.xfrm_policy* %197)
  store %struct.xfrm_policy* null, %struct.xfrm_policy** %6, align 8
  br label %199

199:                                              ; preds = %193, %186, %76, %69, %34, %29
  %200 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  ret %struct.xfrm_policy* %200
}

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local %struct.xfrm_policy* @xfrm_policy_alloc(%struct.net*, i32) #1

declare dso_local i32 @parse_ipsecrequests(%struct.xfrm_policy*, %struct.sadb_x_policy*) #1

declare dso_local i32 @verify_sec_ctx_len(i8*) #1

declare dso_local %struct.xfrm_user_sec_ctx* @pfkey_sadb2xfrm_user_sec_ctx(%struct.sadb_x_sec_ctx*) #1

declare dso_local i32 @security_xfrm_policy_alloc(i32*, %struct.xfrm_user_sec_ctx*) #1

declare dso_local i32 @kfree(%struct.xfrm_user_sec_ctx*) #1

declare dso_local i32 @xfrm_policy_destroy(%struct.xfrm_policy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
