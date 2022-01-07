; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmm.c_zfRemoveElement.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmm.c_zfRemoveElement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.zfRemoveElement.oui = private unnamed_addr constant [4 x i32] [i32 0, i32 80, i32 242, i32 1], align 16
@__const.zfRemoveElement.oui11n = private unnamed_addr constant [3 x i32] [i32 0, i32 144, i32 76], align 4
@ZM_WLAN_EID_HT_CAPABILITY = common dso_local global i32 0, align 4
@ZM_WLAN_EID_EXTENDED_HT_CAPABILITY = common dso_local global i32 0, align 4
@ZM_WLAN_EID_WPA_IE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @zfRemoveElement(i32* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca [4 x i32], align 16
  %14 = alloca [3 x i32], align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %10, align 8
  store i32 0, i32* %12, align 4
  %16 = bitcast [4 x i32]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 16 bitcast ([4 x i32]* @__const.zfRemoveElement.oui to i8*), i64 16, i1 false)
  %17 = bitcast [3 x i32]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 bitcast ([3 x i32]* @__const.zfRemoveElement.oui11n to i8*), i64 12, i1 false)
  store i32 0, i32* %15, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @ZM_WLAN_EID_HT_CAPABILITY, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @ZM_WLAN_EID_EXTENDED_HT_CAPABILITY, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21, %4
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* @ZM_WLAN_EID_WPA_IE, align 4
  store i32 %27, i32* %9, align 4
  store i32 1, i32* %15, align 4
  br label %28

28:                                               ; preds = %25, %21
  br label %29

29:                                               ; preds = %192, %28
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* %8, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %197

33:                                               ; preds = %29
  %34 = load i32*, i32** %7, align 8
  %35 = load i64, i64* %10, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %11, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load i64, i64* %10, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %192

46:                                               ; preds = %33
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @ZM_WLAN_EID_WPA_IE, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %170

50:                                               ; preds = %46
  %51 = load i32, i32* %15, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %110

53:                                               ; preds = %50
  %54 = load i32*, i32** %7, align 8
  %55 = load i64, i64* %10, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %60 = load i32, i32* %59, align 16
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %110

62:                                               ; preds = %53
  %63 = load i32*, i32** %7, align 8
  %64 = load i64, i64* %10, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = getelementptr inbounds i32, i32* %65, i64 3
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %71, label %110

71:                                               ; preds = %62
  %72 = load i32*, i32** %7, align 8
  %73 = load i64, i64* %10, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = getelementptr inbounds i32, i32* %74, i64 4
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 2
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %76, %78
  br i1 %79, label %80, label %110

80:                                               ; preds = %71
  %81 = load i32*, i32** %7, align 8
  %82 = load i64, i64* %10, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = getelementptr inbounds i32, i32* %83, i64 5
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 3
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %85, %87
  br i1 %88, label %89, label %110

89:                                               ; preds = %80
  %90 = load i32*, i32** %7, align 8
  %91 = load i64, i64* %10, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = load i32*, i32** %7, align 8
  %94 = load i64, i64* %10, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = load i64, i64* %11, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = getelementptr inbounds i32, i32* %97, i64 2
  %99 = load i64, i64* %8, align 8
  %100 = load i64, i64* %10, align 8
  %101 = sub nsw i64 %99, %100
  %102 = load i64, i64* %11, align 8
  %103 = sub nsw i64 %101, %102
  %104 = sub nsw i64 %103, 2
  %105 = call i32 @zfMemoryMove(i32* %92, i32* %98, i64 %104)
  %106 = load i64, i64* %8, align 8
  %107 = load i64, i64* %11, align 8
  %108 = sub nsw i64 %106, %107
  %109 = sub nsw i64 %108, 2
  store i64 %109, i64* %5, align 8
  br label %199

110:                                              ; preds = %80, %71, %62, %53, %50
  %111 = load i32, i32* %15, align 4
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %113, label %169

113:                                              ; preds = %110
  %114 = load i32*, i32** %7, align 8
  %115 = load i64, i64* %10, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  %117 = getelementptr inbounds i32, i32* %116, i64 2
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %118, %120
  br i1 %121, label %122, label %169

122:                                              ; preds = %113
  %123 = load i32*, i32** %7, align 8
  %124 = load i64, i64* %10, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  %126 = getelementptr inbounds i32, i32* %125, i64 3
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp eq i32 %127, %129
  br i1 %130, label %131, label %169

131:                                              ; preds = %122
  %132 = load i32*, i32** %7, align 8
  %133 = load i64, i64* %10, align 8
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  %135 = getelementptr inbounds i32, i32* %134, i64 4
  %136 = load i32, i32* %135, align 4
  %137 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 2
  %138 = load i32, i32* %137, align 4
  %139 = icmp eq i32 %136, %138
  br i1 %139, label %140, label %169

140:                                              ; preds = %131
  %141 = load i32*, i32** %7, align 8
  %142 = load i64, i64* %10, align 8
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  %144 = getelementptr inbounds i32, i32* %143, i64 5
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %12, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %169

148:                                              ; preds = %140
  %149 = load i32*, i32** %7, align 8
  %150 = load i64, i64* %10, align 8
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  %152 = load i32*, i32** %7, align 8
  %153 = load i64, i64* %10, align 8
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  %155 = load i64, i64* %11, align 8
  %156 = getelementptr inbounds i32, i32* %154, i64 %155
  %157 = getelementptr inbounds i32, i32* %156, i64 2
  %158 = load i64, i64* %8, align 8
  %159 = load i64, i64* %10, align 8
  %160 = sub nsw i64 %158, %159
  %161 = load i64, i64* %11, align 8
  %162 = sub nsw i64 %160, %161
  %163 = sub nsw i64 %162, 2
  %164 = call i32 @zfMemoryMove(i32* %151, i32* %157, i64 %163)
  %165 = load i64, i64* %8, align 8
  %166 = load i64, i64* %11, align 8
  %167 = sub nsw i64 %165, %166
  %168 = sub nsw i64 %167, 2
  store i64 %168, i64* %5, align 8
  br label %199

169:                                              ; preds = %140, %131, %122, %113, %110
  br label %191

170:                                              ; preds = %46
  %171 = load i32*, i32** %7, align 8
  %172 = load i64, i64* %10, align 8
  %173 = getelementptr inbounds i32, i32* %171, i64 %172
  %174 = load i32*, i32** %7, align 8
  %175 = load i64, i64* %10, align 8
  %176 = getelementptr inbounds i32, i32* %174, i64 %175
  %177 = load i64, i64* %11, align 8
  %178 = getelementptr inbounds i32, i32* %176, i64 %177
  %179 = getelementptr inbounds i32, i32* %178, i64 2
  %180 = load i64, i64* %8, align 8
  %181 = load i64, i64* %10, align 8
  %182 = sub nsw i64 %180, %181
  %183 = load i64, i64* %11, align 8
  %184 = sub nsw i64 %182, %183
  %185 = sub nsw i64 %184, 2
  %186 = call i32 @zfMemoryMove(i32* %173, i32* %179, i64 %185)
  %187 = load i64, i64* %8, align 8
  %188 = load i64, i64* %11, align 8
  %189 = sub nsw i64 %187, %188
  %190 = sub nsw i64 %189, 2
  store i64 %190, i64* %5, align 8
  br label %199

191:                                              ; preds = %169
  br label %192

192:                                              ; preds = %191, %33
  %193 = load i64, i64* %11, align 8
  %194 = add nsw i64 %193, 2
  %195 = load i64, i64* %10, align 8
  %196 = add nsw i64 %195, %194
  store i64 %196, i64* %10, align 8
  br label %29

197:                                              ; preds = %29
  %198 = load i64, i64* %8, align 8
  store i64 %198, i64* %5, align 8
  br label %199

199:                                              ; preds = %197, %170, %148, %89
  %200 = load i64, i64* %5, align 8
  ret i64 %200
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @zfMemoryMove(i32*, i32*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
