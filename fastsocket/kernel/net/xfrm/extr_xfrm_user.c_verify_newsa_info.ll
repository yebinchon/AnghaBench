; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_verify_newsa_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_verify_newsa_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_usersa_info = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nlattr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@XFRMA_ALG_AUTH = common dso_local global i64 0, align 8
@XFRMA_ALG_AUTH_TRUNC = common dso_local global i64 0, align 8
@XFRMA_ALG_AEAD = common dso_local global i64 0, align 8
@XFRMA_ALG_CRYPT = common dso_local global i64 0, align 8
@XFRMA_ALG_COMP = common dso_local global i64 0, align 8
@XFRMA_COADDR = common dso_local global i64 0, align 8
@XFRMA_ENCAP = common dso_local global i64 0, align 8
@XFRMA_SEC_CTX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_usersa_info*, %struct.nlattr**)* @verify_newsa_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_newsa_info(%struct.xfrm_usersa_info* %0, %struct.nlattr** %1) #0 {
  %3 = alloca %struct.xfrm_usersa_info*, align 8
  %4 = alloca %struct.nlattr**, align 8
  %5 = alloca i32, align 4
  store %struct.xfrm_usersa_info* %0, %struct.xfrm_usersa_info** %3, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %4, align 8
  %6 = load i32, i32* @EINVAL, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %3, align 8
  %9 = getelementptr inbounds %struct.xfrm_usersa_info, %struct.xfrm_usersa_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %15 [
    i32 138, label %11
    i32 137, label %12
  ]

11:                                               ; preds = %2
  br label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @EAFNOSUPPORT, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %5, align 4
  br label %188

15:                                               ; preds = %2
  br label %188

16:                                               ; preds = %11
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  %19 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %3, align 8
  %20 = getelementptr inbounds %struct.xfrm_usersa_info, %struct.xfrm_usersa_info* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %145 [
    i32 136, label %23
    i32 133, label %55
    i32 135, label %113
  ]

23:                                               ; preds = %16
  %24 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %25 = load i64, i64* @XFRMA_ALG_AUTH, align 8
  %26 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %25
  %27 = load %struct.nlattr*, %struct.nlattr** %26, align 8
  %28 = icmp ne %struct.nlattr* %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %31 = load i64, i64* @XFRMA_ALG_AUTH_TRUNC, align 8
  %32 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %31
  %33 = load %struct.nlattr*, %struct.nlattr** %32, align 8
  %34 = icmp ne %struct.nlattr* %33, null
  br i1 %34, label %35, label %53

35:                                               ; preds = %29, %23
  %36 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %37 = load i64, i64* @XFRMA_ALG_AEAD, align 8
  %38 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %36, i64 %37
  %39 = load %struct.nlattr*, %struct.nlattr** %38, align 8
  %40 = icmp ne %struct.nlattr* %39, null
  br i1 %40, label %53, label %41

41:                                               ; preds = %35
  %42 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %43 = load i64, i64* @XFRMA_ALG_CRYPT, align 8
  %44 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %42, i64 %43
  %45 = load %struct.nlattr*, %struct.nlattr** %44, align 8
  %46 = icmp ne %struct.nlattr* %45, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %49 = load i64, i64* @XFRMA_ALG_COMP, align 8
  %50 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %48, i64 %49
  %51 = load %struct.nlattr*, %struct.nlattr** %50, align 8
  %52 = icmp ne %struct.nlattr* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %47, %41, %35, %29
  br label %188

54:                                               ; preds = %47
  br label %146

55:                                               ; preds = %16
  %56 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %57 = load i64, i64* @XFRMA_ALG_COMP, align 8
  %58 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %56, i64 %57
  %59 = load %struct.nlattr*, %struct.nlattr** %58, align 8
  %60 = icmp ne %struct.nlattr* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %188

62:                                               ; preds = %55
  %63 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %64 = load i64, i64* @XFRMA_ALG_AUTH, align 8
  %65 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %63, i64 %64
  %66 = load %struct.nlattr*, %struct.nlattr** %65, align 8
  %67 = icmp ne %struct.nlattr* %66, null
  br i1 %67, label %87, label %68

68:                                               ; preds = %62
  %69 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %70 = load i64, i64* @XFRMA_ALG_AUTH_TRUNC, align 8
  %71 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %69, i64 %70
  %72 = load %struct.nlattr*, %struct.nlattr** %71, align 8
  %73 = icmp ne %struct.nlattr* %72, null
  br i1 %73, label %87, label %74

74:                                               ; preds = %68
  %75 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %76 = load i64, i64* @XFRMA_ALG_CRYPT, align 8
  %77 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %75, i64 %76
  %78 = load %struct.nlattr*, %struct.nlattr** %77, align 8
  %79 = icmp ne %struct.nlattr* %78, null
  br i1 %79, label %87, label %80

80:                                               ; preds = %74
  %81 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %82 = load i64, i64* @XFRMA_ALG_AEAD, align 8
  %83 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %81, i64 %82
  %84 = load %struct.nlattr*, %struct.nlattr** %83, align 8
  %85 = icmp ne %struct.nlattr* %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %80
  br label %188

87:                                               ; preds = %80, %74, %68, %62
  %88 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %89 = load i64, i64* @XFRMA_ALG_AUTH, align 8
  %90 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %88, i64 %89
  %91 = load %struct.nlattr*, %struct.nlattr** %90, align 8
  %92 = icmp ne %struct.nlattr* %91, null
  br i1 %92, label %105, label %93

93:                                               ; preds = %87
  %94 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %95 = load i64, i64* @XFRMA_ALG_AUTH_TRUNC, align 8
  %96 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %94, i64 %95
  %97 = load %struct.nlattr*, %struct.nlattr** %96, align 8
  %98 = icmp ne %struct.nlattr* %97, null
  br i1 %98, label %105, label %99

99:                                               ; preds = %93
  %100 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %101 = load i64, i64* @XFRMA_ALG_CRYPT, align 8
  %102 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %100, i64 %101
  %103 = load %struct.nlattr*, %struct.nlattr** %102, align 8
  %104 = icmp ne %struct.nlattr* %103, null
  br i1 %104, label %105, label %112

105:                                              ; preds = %99, %93, %87
  %106 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %107 = load i64, i64* @XFRMA_ALG_AEAD, align 8
  %108 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %106, i64 %107
  %109 = load %struct.nlattr*, %struct.nlattr** %108, align 8
  %110 = icmp ne %struct.nlattr* %109, null
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  br label %188

112:                                              ; preds = %105, %99
  br label %146

113:                                              ; preds = %16
  %114 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %115 = load i64, i64* @XFRMA_ALG_COMP, align 8
  %116 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %114, i64 %115
  %117 = load %struct.nlattr*, %struct.nlattr** %116, align 8
  %118 = icmp ne %struct.nlattr* %117, null
  br i1 %118, label %119, label %143

119:                                              ; preds = %113
  %120 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %121 = load i64, i64* @XFRMA_ALG_AEAD, align 8
  %122 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %120, i64 %121
  %123 = load %struct.nlattr*, %struct.nlattr** %122, align 8
  %124 = icmp ne %struct.nlattr* %123, null
  br i1 %124, label %143, label %125

125:                                              ; preds = %119
  %126 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %127 = load i64, i64* @XFRMA_ALG_AUTH, align 8
  %128 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %126, i64 %127
  %129 = load %struct.nlattr*, %struct.nlattr** %128, align 8
  %130 = icmp ne %struct.nlattr* %129, null
  br i1 %130, label %143, label %131

131:                                              ; preds = %125
  %132 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %133 = load i64, i64* @XFRMA_ALG_AUTH_TRUNC, align 8
  %134 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %132, i64 %133
  %135 = load %struct.nlattr*, %struct.nlattr** %134, align 8
  %136 = icmp ne %struct.nlattr* %135, null
  br i1 %136, label %143, label %137

137:                                              ; preds = %131
  %138 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %139 = load i64, i64* @XFRMA_ALG_CRYPT, align 8
  %140 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %138, i64 %139
  %141 = load %struct.nlattr*, %struct.nlattr** %140, align 8
  %142 = icmp ne %struct.nlattr* %141, null
  br i1 %142, label %143, label %144

143:                                              ; preds = %137, %131, %125, %119, %113
  br label %188

144:                                              ; preds = %137
  br label %146

145:                                              ; preds = %16
  br label %188

146:                                              ; preds = %144, %112, %54
  %147 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %148 = call i32 @verify_aead(%struct.nlattr** %147)
  store i32 %148, i32* %5, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %146
  br label %188

151:                                              ; preds = %146
  %152 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %153 = call i32 @verify_auth_trunc(%struct.nlattr** %152)
  store i32 %153, i32* %5, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %151
  br label %188

156:                                              ; preds = %151
  %157 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %158 = load i64, i64* @XFRMA_ALG_AUTH, align 8
  %159 = call i32 @verify_one_alg(%struct.nlattr** %157, i64 %158)
  store i32 %159, i32* %5, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %156
  br label %188

162:                                              ; preds = %156
  %163 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %164 = load i64, i64* @XFRMA_ALG_CRYPT, align 8
  %165 = call i32 @verify_one_alg(%struct.nlattr** %163, i64 %164)
  store i32 %165, i32* %5, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %162
  br label %188

168:                                              ; preds = %162
  %169 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %170 = load i64, i64* @XFRMA_ALG_COMP, align 8
  %171 = call i32 @verify_one_alg(%struct.nlattr** %169, i64 %170)
  store i32 %171, i32* %5, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %168
  br label %188

174:                                              ; preds = %168
  %175 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %176 = call i32 @verify_sec_ctx_len(%struct.nlattr** %175)
  store i32 %176, i32* %5, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %174
  br label %188

179:                                              ; preds = %174
  %180 = load i32, i32* @EINVAL, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %5, align 4
  %182 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %3, align 8
  %183 = getelementptr inbounds %struct.xfrm_usersa_info, %struct.xfrm_usersa_info* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  switch i32 %184, label %186 [
    i32 129, label %185
    i32 128, label %185
    i32 130, label %185
    i32 131, label %185
  ]

185:                                              ; preds = %179, %179, %179, %179
  br label %187

186:                                              ; preds = %179
  br label %188

187:                                              ; preds = %185
  store i32 0, i32* %5, align 4
  br label %188

188:                                              ; preds = %187, %186, %178, %173, %167, %161, %155, %150, %145, %143, %111, %86, %61, %53, %15, %12
  %189 = load i32, i32* %5, align 4
  ret i32 %189
}

declare dso_local i32 @verify_aead(%struct.nlattr**) #1

declare dso_local i32 @verify_auth_trunc(%struct.nlattr**) #1

declare dso_local i32 @verify_one_alg(%struct.nlattr**, i64) #1

declare dso_local i32 @verify_sec_ctx_len(%struct.nlattr**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
