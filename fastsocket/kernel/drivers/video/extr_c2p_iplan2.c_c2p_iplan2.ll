; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_c2p_iplan2.c_c2p_iplan2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_c2p_iplan2.c_c2p_iplan2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { [16 x i32] }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c2p_iplan2(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %union.anon, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i8*, align 8
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* %16, align 4
  %28 = mul nsw i32 %26, %27
  %29 = load i32, i32* %12, align 4
  %30 = and i32 %29, -16
  %31 = load i32, i32* %18, align 4
  %32 = mul nsw i32 %30, %31
  %33 = add nsw i32 %28, %32
  %34 = load i8*, i8** %10, align 8
  %35 = sext i32 %33 to i64
  %36 = getelementptr i8, i8* %34, i64 %35
  store i8* %36, i8** %10, align 8
  %37 = load i32, i32* %12, align 4
  %38 = srem i32 %37, 16
  store i32 %38, i32* %20, align 4
  %39 = load i32, i32* %20, align 4
  %40 = lshr i32 65535, %39
  store i32 %40, i32* %21, align 4
  %41 = load i32, i32* %21, align 4
  %42 = shl i32 %41, 16
  %43 = load i32, i32* %21, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %21, align 4
  %45 = load i32, i32* %20, align 4
  %46 = load i32, i32* %14, align 4
  %47 = add nsw i32 %45, %46
  %48 = srem i32 %47, 16
  %49 = lshr i32 65535, %48
  %50 = xor i32 65535, %49
  store i32 %50, i32* %22, align 4
  %51 = load i32, i32* %22, align 4
  %52 = shl i32 %51, 16
  %53 = load i32, i32* %22, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %22, align 4
  br label %55

55:                                               ; preds = %196, %9
  %56 = load i32, i32* %15, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %15, align 4
  %58 = icmp ne i32 %56, 0
  br i1 %58, label %59, label %205

59:                                               ; preds = %55
  %60 = load i8*, i8** %11, align 8
  %61 = bitcast i8* %60 to i32*
  store i32* %61, i32** %24, align 8
  %62 = load i8*, i8** %10, align 8
  store i8* %62, i8** %25, align 8
  %63 = load i32, i32* %14, align 4
  store i32 %63, i32* %23, align 4
  %64 = load i32, i32* %20, align 4
  %65 = load i32, i32* %14, align 4
  %66 = add nsw i32 %64, %65
  %67 = icmp sle i32 %66, 16
  br i1 %67, label %68, label %101

68:                                               ; preds = %59
  %69 = load i32, i32* %22, align 4
  %70 = load i32, i32* %21, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %21, align 4
  %72 = bitcast %union.anon* %19 to [16 x i32]*
  %73 = getelementptr inbounds [16 x i32], [16 x i32]* %72, i64 0, i64 0
  %74 = call i32 @memset(i32* %73, i32 0, i32 64)
  %75 = bitcast %union.anon* %19 to [16 x i32]*
  %76 = getelementptr inbounds [16 x i32], [16 x i32]* %75, i64 0, i64 0
  %77 = load i32, i32* %20, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32*, i32** %24, align 8
  %81 = load i32, i32* %14, align 4
  %82 = call i32 @memcpy(i32* %79, i32* %80, i32 %81)
  %83 = load i32, i32* %14, align 4
  %84 = load i32*, i32** %24, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  store i32* %86, i32** %24, align 8
  %87 = bitcast %union.anon* %19 to [4 x i32]*
  %88 = getelementptr inbounds [4 x i32], [4 x i32]* %87, i64 0, i64 0
  %89 = call i32 @c2p_16x8(i32* %88)
  %90 = load i8*, i8** %25, align 8
  %91 = load i32, i32* %18, align 4
  %92 = bitcast %union.anon* %19 to [4 x i32]*
  %93 = getelementptr inbounds [4 x i32], [4 x i32]* %92, i64 0, i64 0
  %94 = load i32, i32* %21, align 4
  %95 = call i32 @store_iplan2_masked(i8* %90, i32 %91, i32* %93, i32 %94)
  %96 = load i32, i32* %18, align 4
  %97 = mul nsw i32 %96, 2
  %98 = load i8*, i8** %25, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr i8, i8* %98, i64 %99
  store i8* %100, i8** %25, align 8
  br label %196

101:                                              ; preds = %59
  %102 = load i32, i32* %14, align 4
  store i32 %102, i32* %23, align 4
  %103 = load i32, i32* %20, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %141

105:                                              ; preds = %101
  %106 = load i32, i32* %20, align 4
  %107 = sub nsw i32 16, %106
  store i32 %107, i32* %23, align 4
  %108 = bitcast %union.anon* %19 to [16 x i32]*
  %109 = getelementptr inbounds [16 x i32], [16 x i32]* %108, i64 0, i64 0
  %110 = load i32, i32* %20, align 4
  %111 = call i32 @memset(i32* %109, i32 0, i32 %110)
  %112 = bitcast %union.anon* %19 to [16 x i32]*
  %113 = getelementptr inbounds [16 x i32], [16 x i32]* %112, i64 0, i64 0
  %114 = load i32, i32* %20, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32*, i32** %24, align 8
  %118 = load i32, i32* %23, align 4
  %119 = call i32 @memcpy(i32* %116, i32* %117, i32 %118)
  %120 = load i32, i32* %23, align 4
  %121 = load i32*, i32** %24, align 8
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  store i32* %123, i32** %24, align 8
  %124 = bitcast %union.anon* %19 to [4 x i32]*
  %125 = getelementptr inbounds [4 x i32], [4 x i32]* %124, i64 0, i64 0
  %126 = call i32 @c2p_16x8(i32* %125)
  %127 = load i8*, i8** %25, align 8
  %128 = load i32, i32* %18, align 4
  %129 = bitcast %union.anon* %19 to [4 x i32]*
  %130 = getelementptr inbounds [4 x i32], [4 x i32]* %129, i64 0, i64 0
  %131 = load i32, i32* %21, align 4
  %132 = call i32 @store_iplan2_masked(i8* %127, i32 %128, i32* %130, i32 %131)
  %133 = load i32, i32* %18, align 4
  %134 = mul nsw i32 %133, 2
  %135 = load i8*, i8** %25, align 8
  %136 = sext i32 %134 to i64
  %137 = getelementptr i8, i8* %135, i64 %136
  store i8* %137, i8** %25, align 8
  %138 = load i32, i32* %14, align 4
  %139 = load i32, i32* %23, align 4
  %140 = sub nsw i32 %138, %139
  store i32 %140, i32* %23, align 4
  br label %141

141:                                              ; preds = %105, %101
  br label %142

142:                                              ; preds = %145, %141
  %143 = load i32, i32* %23, align 4
  %144 = icmp sge i32 %143, 16
  br i1 %144, label %145, label %167

145:                                              ; preds = %142
  %146 = bitcast %union.anon* %19 to [16 x i32]*
  %147 = getelementptr inbounds [16 x i32], [16 x i32]* %146, i64 0, i64 0
  %148 = load i32*, i32** %24, align 8
  %149 = call i32 @memcpy(i32* %147, i32* %148, i32 16)
  %150 = load i32*, i32** %24, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 16
  store i32* %151, i32** %24, align 8
  %152 = bitcast %union.anon* %19 to [4 x i32]*
  %153 = getelementptr inbounds [4 x i32], [4 x i32]* %152, i64 0, i64 0
  %154 = call i32 @c2p_16x8(i32* %153)
  %155 = load i8*, i8** %25, align 8
  %156 = load i32, i32* %18, align 4
  %157 = bitcast %union.anon* %19 to [4 x i32]*
  %158 = getelementptr inbounds [4 x i32], [4 x i32]* %157, i64 0, i64 0
  %159 = call i32 @store_iplan2(i8* %155, i32 %156, i32* %158)
  %160 = load i32, i32* %18, align 4
  %161 = mul nsw i32 %160, 2
  %162 = load i8*, i8** %25, align 8
  %163 = sext i32 %161 to i64
  %164 = getelementptr i8, i8* %162, i64 %163
  store i8* %164, i8** %25, align 8
  %165 = load i32, i32* %23, align 4
  %166 = sub nsw i32 %165, 16
  store i32 %166, i32* %23, align 4
  br label %142

167:                                              ; preds = %142
  %168 = load i32, i32* %23, align 4
  %169 = srem i32 %168, 16
  store i32 %169, i32* %23, align 4
  %170 = load i32, i32* %23, align 4
  %171 = icmp sgt i32 %170, 0
  br i1 %171, label %172, label %195

172:                                              ; preds = %167
  %173 = bitcast %union.anon* %19 to [16 x i32]*
  %174 = getelementptr inbounds [16 x i32], [16 x i32]* %173, i64 0, i64 0
  %175 = load i32*, i32** %24, align 8
  %176 = load i32, i32* %23, align 4
  %177 = call i32 @memcpy(i32* %174, i32* %175, i32 %176)
  %178 = bitcast %union.anon* %19 to [16 x i32]*
  %179 = getelementptr inbounds [16 x i32], [16 x i32]* %178, i64 0, i64 0
  %180 = load i32, i32* %23, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %23, align 4
  %184 = sub nsw i32 16, %183
  %185 = call i32 @memset(i32* %182, i32 0, i32 %184)
  %186 = bitcast %union.anon* %19 to [4 x i32]*
  %187 = getelementptr inbounds [4 x i32], [4 x i32]* %186, i64 0, i64 0
  %188 = call i32 @c2p_16x8(i32* %187)
  %189 = load i8*, i8** %25, align 8
  %190 = load i32, i32* %18, align 4
  %191 = bitcast %union.anon* %19 to [4 x i32]*
  %192 = getelementptr inbounds [4 x i32], [4 x i32]* %191, i64 0, i64 0
  %193 = load i32, i32* %22, align 4
  %194 = call i32 @store_iplan2_masked(i8* %189, i32 %190, i32* %192, i32 %193)
  br label %195

195:                                              ; preds = %172, %167
  br label %196

196:                                              ; preds = %195, %68
  %197 = load i32, i32* %17, align 4
  %198 = load i8*, i8** %11, align 8
  %199 = sext i32 %197 to i64
  %200 = getelementptr i8, i8* %198, i64 %199
  store i8* %200, i8** %11, align 8
  %201 = load i32, i32* %16, align 4
  %202 = load i8*, i8** %10, align 8
  %203 = sext i32 %201 to i64
  %204 = getelementptr i8, i8* %202, i64 %203
  store i8* %204, i8** %10, align 8
  br label %55

205:                                              ; preds = %55
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @c2p_16x8(i32*) #1

declare dso_local i32 @store_iplan2_masked(i8*, i32, i32*, i32) #1

declare dso_local i32 @store_iplan2(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
