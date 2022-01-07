; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-key.c_rxrpc_krb5_decode_principal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-key.c_rxrpc_krb5_decode_principal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krb5_principal = type { i32, i64*, i64** }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c",{%x,%x,%x},%u\00", align 1
@AFSTOKEN_K5_COMPONENTS_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AFSTOKEN_STRING_MAX = common dso_local global i32 0, align 4
@AFSTOKEN_K5_REALM_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"%s/...@%s\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c" = 0 [toklen=%u]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.krb5_principal*, i32**, i32*)* @rxrpc_krb5_decode_principal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxrpc_krb5_decode_principal(%struct.krb5_principal* %0, i32** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.krb5_principal*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.krb5_principal* %0, %struct.krb5_principal** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32**, i32*** %6, align 8
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ule i32 %17, 12
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %252

22:                                               ; preds = %3
  %23 = load i32*, i32** %8, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ntohl(i32 %25)
  %27 = load i32*, i32** %8, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ntohl(i32 %29)
  %31 = load i32*, i32** %8, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ntohl(i32 %33)
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @_enter(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %30, i32 %34, i32 %35)
  %37 = load i32*, i32** %8, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %8, align 8
  %39 = load i32, i32* %37, align 4
  %40 = call i32 @ntohl(i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %9, align 4
  %42 = sub i32 %41, 4
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ule i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %22
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @AFSTOKEN_K5_COMPONENTS_MAX, align 4
  %48 = icmp ugt i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45, %22
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %252

52:                                               ; preds = %45
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.krb5_principal*, %struct.krb5_principal** %5, align 8
  %55 = getelementptr inbounds %struct.krb5_principal, %struct.krb5_principal* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = add i32 %57, 1
  %59 = mul i32 %58, 4
  %60 = icmp ule i32 %56, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %52
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %252

64:                                               ; preds = %52
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call i64** @kcalloc(i32 8, i32 %65, i32 %66)
  %68 = load %struct.krb5_principal*, %struct.krb5_principal** %5, align 8
  %69 = getelementptr inbounds %struct.krb5_principal, %struct.krb5_principal* %68, i32 0, i32 2
  store i64** %67, i64*** %69, align 8
  %70 = load %struct.krb5_principal*, %struct.krb5_principal** %5, align 8
  %71 = getelementptr inbounds %struct.krb5_principal, %struct.krb5_principal* %70, i32 0, i32 2
  %72 = load i64**, i64*** %71, align 8
  %73 = icmp ne i64** %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %64
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %252

77:                                               ; preds = %64
  store i32 0, i32* %11, align 4
  br label %78

78:                                               ; preds = %166, %77
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp ult i32 %79, %80
  br i1 %81, label %82, label %169

82:                                               ; preds = %78
  %83 = load i32, i32* %9, align 4
  %84 = icmp ult i32 %83, 4
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %252

88:                                               ; preds = %82
  %89 = load i32*, i32** %8, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %8, align 8
  %91 = load i32, i32* %89, align 4
  %92 = call i32 @ntohl(i32 %91)
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %9, align 4
  %94 = sub i32 %93, 4
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %12, align 4
  %96 = icmp ule i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %88
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* @AFSTOKEN_STRING_MAX, align 4
  %100 = icmp ugt i32 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %97, %88
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %4, align 4
  br label %252

104:                                              ; preds = %97
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %9, align 4
  %107 = icmp ugt i32 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %4, align 4
  br label %252

111:                                              ; preds = %104
  %112 = load i32, i32* %12, align 4
  %113 = add i32 %112, 1
  %114 = load i32, i32* @GFP_KERNEL, align 4
  %115 = call i8* @kmalloc(i32 %113, i32 %114)
  %116 = bitcast i8* %115 to i64*
  %117 = load %struct.krb5_principal*, %struct.krb5_principal** %5, align 8
  %118 = getelementptr inbounds %struct.krb5_principal, %struct.krb5_principal* %117, i32 0, i32 2
  %119 = load i64**, i64*** %118, align 8
  %120 = load i32, i32* %11, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds i64*, i64** %119, i64 %121
  store i64* %116, i64** %122, align 8
  %123 = load %struct.krb5_principal*, %struct.krb5_principal** %5, align 8
  %124 = getelementptr inbounds %struct.krb5_principal, %struct.krb5_principal* %123, i32 0, i32 2
  %125 = load i64**, i64*** %124, align 8
  %126 = load i32, i32* %11, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds i64*, i64** %125, i64 %127
  %129 = load i64*, i64** %128, align 8
  %130 = icmp ne i64* %129, null
  br i1 %130, label %134, label %131

131:                                              ; preds = %111
  %132 = load i32, i32* @ENOMEM, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %4, align 4
  br label %252

134:                                              ; preds = %111
  %135 = load %struct.krb5_principal*, %struct.krb5_principal** %5, align 8
  %136 = getelementptr inbounds %struct.krb5_principal, %struct.krb5_principal* %135, i32 0, i32 2
  %137 = load i64**, i64*** %136, align 8
  %138 = load i32, i32* %11, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i64*, i64** %137, i64 %139
  %141 = load i64*, i64** %140, align 8
  %142 = load i32*, i32** %8, align 8
  %143 = load i32, i32* %12, align 4
  %144 = call i32 @memcpy(i64* %141, i32* %142, i32 %143)
  %145 = load %struct.krb5_principal*, %struct.krb5_principal** %5, align 8
  %146 = getelementptr inbounds %struct.krb5_principal, %struct.krb5_principal* %145, i32 0, i32 2
  %147 = load i64**, i64*** %146, align 8
  %148 = load i32, i32* %11, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds i64*, i64** %147, i64 %149
  %151 = load i64*, i64** %150, align 8
  %152 = load i32, i32* %12, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds i64, i64* %151, i64 %153
  store i64 0, i64* %154, align 8
  %155 = load i32, i32* %12, align 4
  %156 = add i32 %155, 3
  %157 = and i32 %156, -4
  store i32 %157, i32* %12, align 4
  %158 = load i32, i32* %12, align 4
  %159 = load i32, i32* %9, align 4
  %160 = sub i32 %159, %158
  store i32 %160, i32* %9, align 4
  %161 = load i32, i32* %12, align 4
  %162 = lshr i32 %161, 2
  %163 = load i32*, i32** %8, align 8
  %164 = zext i32 %162 to i64
  %165 = getelementptr inbounds i32, i32* %163, i64 %164
  store i32* %165, i32** %8, align 8
  br label %166

166:                                              ; preds = %134
  %167 = load i32, i32* %11, align 4
  %168 = add i32 %167, 1
  store i32 %168, i32* %11, align 4
  br label %78

169:                                              ; preds = %78
  %170 = load i32, i32* %9, align 4
  %171 = icmp ult i32 %170, 4
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  %173 = load i32, i32* @EINVAL, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %4, align 4
  br label %252

175:                                              ; preds = %169
  %176 = load i32*, i32** %8, align 8
  %177 = getelementptr inbounds i32, i32* %176, i32 1
  store i32* %177, i32** %8, align 8
  %178 = load i32, i32* %176, align 4
  %179 = call i32 @ntohl(i32 %178)
  store i32 %179, i32* %12, align 4
  %180 = load i32, i32* %9, align 4
  %181 = sub i32 %180, 4
  store i32 %181, i32* %9, align 4
  %182 = load i32, i32* %12, align 4
  %183 = icmp ule i32 %182, 0
  br i1 %183, label %188, label %184

184:                                              ; preds = %175
  %185 = load i32, i32* %12, align 4
  %186 = load i32, i32* @AFSTOKEN_K5_REALM_MAX, align 4
  %187 = icmp ugt i32 %185, %186
  br i1 %187, label %188, label %191

188:                                              ; preds = %184, %175
  %189 = load i32, i32* @EINVAL, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %4, align 4
  br label %252

191:                                              ; preds = %184
  %192 = load i32, i32* %12, align 4
  %193 = load i32, i32* %9, align 4
  %194 = icmp ugt i32 %192, %193
  br i1 %194, label %195, label %198

195:                                              ; preds = %191
  %196 = load i32, i32* @EINVAL, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %4, align 4
  br label %252

198:                                              ; preds = %191
  %199 = load i32, i32* %12, align 4
  %200 = add i32 %199, 1
  %201 = load i32, i32* @GFP_KERNEL, align 4
  %202 = call i8* @kmalloc(i32 %200, i32 %201)
  %203 = bitcast i8* %202 to i64*
  %204 = load %struct.krb5_principal*, %struct.krb5_principal** %5, align 8
  %205 = getelementptr inbounds %struct.krb5_principal, %struct.krb5_principal* %204, i32 0, i32 1
  store i64* %203, i64** %205, align 8
  %206 = load %struct.krb5_principal*, %struct.krb5_principal** %5, align 8
  %207 = getelementptr inbounds %struct.krb5_principal, %struct.krb5_principal* %206, i32 0, i32 1
  %208 = load i64*, i64** %207, align 8
  %209 = icmp ne i64* %208, null
  br i1 %209, label %213, label %210

210:                                              ; preds = %198
  %211 = load i32, i32* @ENOMEM, align 4
  %212 = sub nsw i32 0, %211
  store i32 %212, i32* %4, align 4
  br label %252

213:                                              ; preds = %198
  %214 = load %struct.krb5_principal*, %struct.krb5_principal** %5, align 8
  %215 = getelementptr inbounds %struct.krb5_principal, %struct.krb5_principal* %214, i32 0, i32 1
  %216 = load i64*, i64** %215, align 8
  %217 = load i32*, i32** %8, align 8
  %218 = load i32, i32* %12, align 4
  %219 = call i32 @memcpy(i64* %216, i32* %217, i32 %218)
  %220 = load %struct.krb5_principal*, %struct.krb5_principal** %5, align 8
  %221 = getelementptr inbounds %struct.krb5_principal, %struct.krb5_principal* %220, i32 0, i32 1
  %222 = load i64*, i64** %221, align 8
  %223 = load i32, i32* %12, align 4
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds i64, i64* %222, i64 %224
  store i64 0, i64* %225, align 8
  %226 = load i32, i32* %12, align 4
  %227 = add i32 %226, 3
  %228 = and i32 %227, -4
  store i32 %228, i32* %12, align 4
  %229 = load i32, i32* %12, align 4
  %230 = load i32, i32* %9, align 4
  %231 = sub i32 %230, %229
  store i32 %231, i32* %9, align 4
  %232 = load i32, i32* %12, align 4
  %233 = lshr i32 %232, 2
  %234 = load i32*, i32** %8, align 8
  %235 = zext i32 %233 to i64
  %236 = getelementptr inbounds i32, i32* %234, i64 %235
  store i32* %236, i32** %8, align 8
  %237 = load %struct.krb5_principal*, %struct.krb5_principal** %5, align 8
  %238 = getelementptr inbounds %struct.krb5_principal, %struct.krb5_principal* %237, i32 0, i32 2
  %239 = load i64**, i64*** %238, align 8
  %240 = getelementptr inbounds i64*, i64** %239, i64 0
  %241 = load i64*, i64** %240, align 8
  %242 = load %struct.krb5_principal*, %struct.krb5_principal** %5, align 8
  %243 = getelementptr inbounds %struct.krb5_principal, %struct.krb5_principal* %242, i32 0, i32 1
  %244 = load i64*, i64** %243, align 8
  %245 = call i32 @_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64* %241, i64* %244)
  %246 = load i32*, i32** %8, align 8
  %247 = load i32**, i32*** %6, align 8
  store i32* %246, i32** %247, align 8
  %248 = load i32, i32* %9, align 4
  %249 = load i32*, i32** %7, align 8
  store i32 %248, i32* %249, align 4
  %250 = load i32, i32* %9, align 4
  %251 = call i32 @_leave(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %250)
  store i32 0, i32* %4, align 4
  br label %252

252:                                              ; preds = %213, %210, %195, %188, %172, %131, %108, %101, %85, %74, %61, %49, %19
  %253 = load i32, i32* %4, align 4
  ret i32 %253
}

declare dso_local i32 @_enter(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i64** @kcalloc(i32, i32, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i64*, i32*, i32) #1

declare dso_local i32 @_debug(i8*, i64*, i64*) #1

declare dso_local i32 @_leave(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
