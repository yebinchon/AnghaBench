; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_c2p_planar.c_c2p_planar.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_c2p_planar.c_c2p_planar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { [32 x i32] }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c2p_planar(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %union.anon, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca i8*, align 8
  store i8* %0, i8** %11, align 8
  store i8* %1, i8** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* %17, align 4
  %30 = mul nsw i32 %28, %29
  %31 = load i32, i32* %13, align 4
  %32 = and i32 %31, -32
  %33 = add nsw i32 %30, %32
  %34 = load i8*, i8** %11, align 8
  %35 = sext i32 %33 to i64
  %36 = getelementptr i8, i8* %34, i64 %35
  store i8* %36, i8** %11, align 8
  %37 = load i32, i32* %13, align 4
  %38 = srem i32 %37, 32
  store i32 %38, i32* %22, align 4
  %39 = load i32, i32* %22, align 4
  %40 = lshr i32 -1, %39
  store i32 %40, i32* %23, align 4
  %41 = load i32, i32* %22, align 4
  %42 = load i32, i32* %15, align 4
  %43 = add nsw i32 %41, %42
  %44 = srem i32 %43, 32
  %45 = lshr i32 -1, %44
  %46 = xor i32 %45, -1
  store i32 %46, i32* %24, align 4
  br label %47

47:                                               ; preds = %183, %10
  %48 = load i32, i32* %16, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %16, align 4
  %50 = icmp ne i32 %48, 0
  br i1 %50, label %51, label %192

51:                                               ; preds = %47
  %52 = load i8*, i8** %12, align 8
  %53 = bitcast i8* %52 to i32*
  store i32* %53, i32** %26, align 8
  %54 = load i8*, i8** %11, align 8
  store i8* %54, i8** %27, align 8
  %55 = load i32, i32* %15, align 4
  store i32 %55, i32* %25, align 4
  %56 = load i32, i32* %22, align 4
  %57 = load i32, i32* %15, align 4
  %58 = add nsw i32 %56, %57
  %59 = icmp sle i32 %58, 32
  br i1 %59, label %60, label %91

60:                                               ; preds = %51
  %61 = load i32, i32* %24, align 4
  %62 = load i32, i32* %23, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %23, align 4
  %64 = bitcast %union.anon* %21 to [32 x i32]*
  %65 = getelementptr inbounds [32 x i32], [32 x i32]* %64, i64 0, i64 0
  %66 = call i32 @memset(i32* %65, i32 0, i32 128)
  %67 = bitcast %union.anon* %21 to [32 x i32]*
  %68 = getelementptr inbounds [32 x i32], [32 x i32]* %67, i64 0, i64 0
  %69 = load i32, i32* %22, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32*, i32** %26, align 8
  %73 = load i32, i32* %15, align 4
  %74 = call i32 @memcpy(i32* %71, i32* %72, i32 %73)
  %75 = load i32, i32* %15, align 4
  %76 = load i32*, i32** %26, align 8
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  store i32* %78, i32** %26, align 8
  %79 = bitcast %union.anon* %21 to [8 x i32]*
  %80 = getelementptr inbounds [8 x i32], [8 x i32]* %79, i64 0, i64 0
  %81 = call i32 @c2p_32x8(i32* %80)
  %82 = load i8*, i8** %27, align 8
  %83 = load i32, i32* %18, align 4
  %84 = load i32, i32* %20, align 4
  %85 = bitcast %union.anon* %21 to [8 x i32]*
  %86 = getelementptr inbounds [8 x i32], [8 x i32]* %85, i64 0, i64 0
  %87 = load i32, i32* %23, align 4
  %88 = call i32 @store_planar_masked(i8* %82, i32 %83, i32 %84, i32* %86, i32 %87)
  %89 = load i8*, i8** %27, align 8
  %90 = getelementptr i8, i8* %89, i64 4
  store i8* %90, i8** %27, align 8
  br label %183

91:                                               ; preds = %51
  %92 = load i32, i32* %15, align 4
  store i32 %92, i32* %25, align 4
  %93 = load i32, i32* %22, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %129

95:                                               ; preds = %91
  %96 = load i32, i32* %22, align 4
  %97 = sub nsw i32 32, %96
  store i32 %97, i32* %25, align 4
  %98 = bitcast %union.anon* %21 to [32 x i32]*
  %99 = getelementptr inbounds [32 x i32], [32 x i32]* %98, i64 0, i64 0
  %100 = load i32, i32* %22, align 4
  %101 = call i32 @memset(i32* %99, i32 0, i32 %100)
  %102 = bitcast %union.anon* %21 to [32 x i32]*
  %103 = getelementptr inbounds [32 x i32], [32 x i32]* %102, i64 0, i64 0
  %104 = load i32, i32* %22, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32*, i32** %26, align 8
  %108 = load i32, i32* %25, align 4
  %109 = call i32 @memcpy(i32* %106, i32* %107, i32 %108)
  %110 = load i32, i32* %25, align 4
  %111 = load i32*, i32** %26, align 8
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  store i32* %113, i32** %26, align 8
  %114 = bitcast %union.anon* %21 to [8 x i32]*
  %115 = getelementptr inbounds [8 x i32], [8 x i32]* %114, i64 0, i64 0
  %116 = call i32 @c2p_32x8(i32* %115)
  %117 = load i8*, i8** %27, align 8
  %118 = load i32, i32* %18, align 4
  %119 = load i32, i32* %20, align 4
  %120 = bitcast %union.anon* %21 to [8 x i32]*
  %121 = getelementptr inbounds [8 x i32], [8 x i32]* %120, i64 0, i64 0
  %122 = load i32, i32* %23, align 4
  %123 = call i32 @store_planar_masked(i8* %117, i32 %118, i32 %119, i32* %121, i32 %122)
  %124 = load i8*, i8** %27, align 8
  %125 = getelementptr i8, i8* %124, i64 4
  store i8* %125, i8** %27, align 8
  %126 = load i32, i32* %15, align 4
  %127 = load i32, i32* %25, align 4
  %128 = sub nsw i32 %126, %127
  store i32 %128, i32* %25, align 4
  br label %129

129:                                              ; preds = %95, %91
  br label %130

130:                                              ; preds = %133, %129
  %131 = load i32, i32* %25, align 4
  %132 = icmp sge i32 %131, 32
  br i1 %132, label %133, label %153

133:                                              ; preds = %130
  %134 = bitcast %union.anon* %21 to [32 x i32]*
  %135 = getelementptr inbounds [32 x i32], [32 x i32]* %134, i64 0, i64 0
  %136 = load i32*, i32** %26, align 8
  %137 = call i32 @memcpy(i32* %135, i32* %136, i32 32)
  %138 = load i32*, i32** %26, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 32
  store i32* %139, i32** %26, align 8
  %140 = bitcast %union.anon* %21 to [8 x i32]*
  %141 = getelementptr inbounds [8 x i32], [8 x i32]* %140, i64 0, i64 0
  %142 = call i32 @c2p_32x8(i32* %141)
  %143 = load i8*, i8** %27, align 8
  %144 = load i32, i32* %18, align 4
  %145 = load i32, i32* %20, align 4
  %146 = bitcast %union.anon* %21 to [8 x i32]*
  %147 = getelementptr inbounds [8 x i32], [8 x i32]* %146, i64 0, i64 0
  %148 = call i32 @store_planar(i8* %143, i32 %144, i32 %145, i32* %147)
  %149 = load i8*, i8** %27, align 8
  %150 = getelementptr i8, i8* %149, i64 4
  store i8* %150, i8** %27, align 8
  %151 = load i32, i32* %25, align 4
  %152 = sub nsw i32 %151, 32
  store i32 %152, i32* %25, align 4
  br label %130

153:                                              ; preds = %130
  %154 = load i32, i32* %25, align 4
  %155 = srem i32 %154, 32
  store i32 %155, i32* %25, align 4
  %156 = load i32, i32* %25, align 4
  %157 = icmp sgt i32 %156, 0
  br i1 %157, label %158, label %182

158:                                              ; preds = %153
  %159 = bitcast %union.anon* %21 to [32 x i32]*
  %160 = getelementptr inbounds [32 x i32], [32 x i32]* %159, i64 0, i64 0
  %161 = load i32*, i32** %26, align 8
  %162 = load i32, i32* %25, align 4
  %163 = call i32 @memcpy(i32* %160, i32* %161, i32 %162)
  %164 = bitcast %union.anon* %21 to [32 x i32]*
  %165 = getelementptr inbounds [32 x i32], [32 x i32]* %164, i64 0, i64 0
  %166 = load i32, i32* %25, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %25, align 4
  %170 = sub nsw i32 32, %169
  %171 = call i32 @memset(i32* %168, i32 0, i32 %170)
  %172 = bitcast %union.anon* %21 to [8 x i32]*
  %173 = getelementptr inbounds [8 x i32], [8 x i32]* %172, i64 0, i64 0
  %174 = call i32 @c2p_32x8(i32* %173)
  %175 = load i8*, i8** %27, align 8
  %176 = load i32, i32* %18, align 4
  %177 = load i32, i32* %20, align 4
  %178 = bitcast %union.anon* %21 to [8 x i32]*
  %179 = getelementptr inbounds [8 x i32], [8 x i32]* %178, i64 0, i64 0
  %180 = load i32, i32* %24, align 4
  %181 = call i32 @store_planar_masked(i8* %175, i32 %176, i32 %177, i32* %179, i32 %180)
  br label %182

182:                                              ; preds = %158, %153
  br label %183

183:                                              ; preds = %182, %60
  %184 = load i32, i32* %19, align 4
  %185 = load i8*, i8** %12, align 8
  %186 = sext i32 %184 to i64
  %187 = getelementptr i8, i8* %185, i64 %186
  store i8* %187, i8** %12, align 8
  %188 = load i32, i32* %17, align 4
  %189 = load i8*, i8** %11, align 8
  %190 = sext i32 %188 to i64
  %191 = getelementptr i8, i8* %189, i64 %190
  store i8* %191, i8** %11, align 8
  br label %47

192:                                              ; preds = %47
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @c2p_32x8(i32*) #1

declare dso_local i32 @store_planar_masked(i8*, i32, i32, i32*, i32) #1

declare dso_local i32 @store_planar(i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
