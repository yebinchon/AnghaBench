; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_sha1.c_sha_transform.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_sha1.c_sha_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@K1 = common dso_local global i32 0, align 4
@K2 = common dso_local global i32 0, align 4
@K3 = common dso_local global i32 0, align 4
@K4 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sha_transform(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %13, align 4
  br label %14

14:                                               ; preds = %29, %3
  %15 = load i32, i32* %13, align 4
  %16 = icmp slt i32 %15, 16
  br i1 %16, label %17, label %32

17:                                               ; preds = %14
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to i32*
  %20 = load i32, i32* %13, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @be32_to_cpu(i32 %23)
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %13, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32 %24, i32* %28, align 4
  br label %29

29:                                               ; preds = %17
  %30 = load i32, i32* %13, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %13, align 4
  br label %14

32:                                               ; preds = %14
  store i32 0, i32* %13, align 4
  br label %33

33:                                               ; preds = %69, %32
  %34 = load i32, i32* %13, align 4
  %35 = icmp slt i32 %34, 64
  br i1 %35, label %36, label %72

36:                                               ; preds = %33
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %13, align 4
  %39 = add nsw i32 %38, 13
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %13, align 4
  %45 = add nsw i32 %44, 8
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = xor i32 %42, %48
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %13, align 4
  %52 = add nsw i32 %51, 2
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = xor i32 %49, %55
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = xor i32 %56, %61
  %63 = call i32 @rol32(i32 %62, i32 1)
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 %65, 16
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  store i32 %63, i32* %68, align 4
  br label %69

69:                                               ; preds = %36
  %70 = load i32, i32* %13, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %13, align 4
  br label %33

72:                                               ; preds = %33
  %73 = load i32*, i32** %4, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %7, align 4
  %76 = load i32*, i32** %4, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %8, align 4
  %79 = load i32*, i32** %4, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %9, align 4
  %82 = load i32*, i32** %4, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 3
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %10, align 4
  %85 = load i32*, i32** %4, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 4
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %88

88:                                               ; preds = %115, %72
  %89 = load i32, i32* %13, align 4
  %90 = icmp slt i32 %89, 20
  br i1 %90, label %91, label %118

91:                                               ; preds = %88
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @f1(i32 %92, i32 %93, i32 %94)
  %96 = load i32, i32* @K1, align 4
  %97 = add nsw i32 %95, %96
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @rol32(i32 %98, i32 5)
  %100 = add nsw i32 %97, %99
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %100, %101
  %103 = load i32*, i32** %6, align 8
  %104 = load i32, i32* %13, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %102, %107
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* %10, align 4
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %9, align 4
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @rol32(i32 %111, i32 30)
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %7, align 4
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %12, align 4
  store i32 %114, i32* %7, align 4
  br label %115

115:                                              ; preds = %91
  %116 = load i32, i32* %13, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %13, align 4
  br label %88

118:                                              ; preds = %88
  br label %119

119:                                              ; preds = %146, %118
  %120 = load i32, i32* %13, align 4
  %121 = icmp slt i32 %120, 40
  br i1 %121, label %122, label %149

122:                                              ; preds = %119
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* %10, align 4
  %126 = call i32 @f2(i32 %123, i32 %124, i32 %125)
  %127 = load i32, i32* @K2, align 4
  %128 = add nsw i32 %126, %127
  %129 = load i32, i32* %7, align 4
  %130 = call i32 @rol32(i32 %129, i32 5)
  %131 = add nsw i32 %128, %130
  %132 = load i32, i32* %11, align 4
  %133 = add nsw i32 %131, %132
  %134 = load i32*, i32** %6, align 8
  %135 = load i32, i32* %13, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %133, %138
  store i32 %139, i32* %12, align 4
  %140 = load i32, i32* %10, align 4
  store i32 %140, i32* %11, align 4
  %141 = load i32, i32* %9, align 4
  store i32 %141, i32* %10, align 4
  %142 = load i32, i32* %8, align 4
  %143 = call i32 @rol32(i32 %142, i32 30)
  store i32 %143, i32* %9, align 4
  %144 = load i32, i32* %7, align 4
  store i32 %144, i32* %8, align 4
  %145 = load i32, i32* %12, align 4
  store i32 %145, i32* %7, align 4
  br label %146

146:                                              ; preds = %122
  %147 = load i32, i32* %13, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %13, align 4
  br label %119

149:                                              ; preds = %119
  br label %150

150:                                              ; preds = %177, %149
  %151 = load i32, i32* %13, align 4
  %152 = icmp slt i32 %151, 60
  br i1 %152, label %153, label %180

153:                                              ; preds = %150
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* %9, align 4
  %156 = load i32, i32* %10, align 4
  %157 = call i32 @f3(i32 %154, i32 %155, i32 %156)
  %158 = load i32, i32* @K3, align 4
  %159 = add nsw i32 %157, %158
  %160 = load i32, i32* %7, align 4
  %161 = call i32 @rol32(i32 %160, i32 5)
  %162 = add nsw i32 %159, %161
  %163 = load i32, i32* %11, align 4
  %164 = add nsw i32 %162, %163
  %165 = load i32*, i32** %6, align 8
  %166 = load i32, i32* %13, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %164, %169
  store i32 %170, i32* %12, align 4
  %171 = load i32, i32* %10, align 4
  store i32 %171, i32* %11, align 4
  %172 = load i32, i32* %9, align 4
  store i32 %172, i32* %10, align 4
  %173 = load i32, i32* %8, align 4
  %174 = call i32 @rol32(i32 %173, i32 30)
  store i32 %174, i32* %9, align 4
  %175 = load i32, i32* %7, align 4
  store i32 %175, i32* %8, align 4
  %176 = load i32, i32* %12, align 4
  store i32 %176, i32* %7, align 4
  br label %177

177:                                              ; preds = %153
  %178 = load i32, i32* %13, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %13, align 4
  br label %150

180:                                              ; preds = %150
  br label %181

181:                                              ; preds = %208, %180
  %182 = load i32, i32* %13, align 4
  %183 = icmp slt i32 %182, 80
  br i1 %183, label %184, label %211

184:                                              ; preds = %181
  %185 = load i32, i32* %8, align 4
  %186 = load i32, i32* %9, align 4
  %187 = load i32, i32* %10, align 4
  %188 = call i32 @f2(i32 %185, i32 %186, i32 %187)
  %189 = load i32, i32* @K4, align 4
  %190 = add nsw i32 %188, %189
  %191 = load i32, i32* %7, align 4
  %192 = call i32 @rol32(i32 %191, i32 5)
  %193 = add nsw i32 %190, %192
  %194 = load i32, i32* %11, align 4
  %195 = add nsw i32 %193, %194
  %196 = load i32*, i32** %6, align 8
  %197 = load i32, i32* %13, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = add nsw i32 %195, %200
  store i32 %201, i32* %12, align 4
  %202 = load i32, i32* %10, align 4
  store i32 %202, i32* %11, align 4
  %203 = load i32, i32* %9, align 4
  store i32 %203, i32* %10, align 4
  %204 = load i32, i32* %8, align 4
  %205 = call i32 @rol32(i32 %204, i32 30)
  store i32 %205, i32* %9, align 4
  %206 = load i32, i32* %7, align 4
  store i32 %206, i32* %8, align 4
  %207 = load i32, i32* %12, align 4
  store i32 %207, i32* %7, align 4
  br label %208

208:                                              ; preds = %184
  %209 = load i32, i32* %13, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %13, align 4
  br label %181

211:                                              ; preds = %181
  %212 = load i32, i32* %7, align 4
  %213 = load i32*, i32** %4, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 0
  %215 = load i32, i32* %214, align 4
  %216 = add nsw i32 %215, %212
  store i32 %216, i32* %214, align 4
  %217 = load i32, i32* %8, align 4
  %218 = load i32*, i32** %4, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 1
  %220 = load i32, i32* %219, align 4
  %221 = add nsw i32 %220, %217
  store i32 %221, i32* %219, align 4
  %222 = load i32, i32* %9, align 4
  %223 = load i32*, i32** %4, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 2
  %225 = load i32, i32* %224, align 4
  %226 = add nsw i32 %225, %222
  store i32 %226, i32* %224, align 4
  %227 = load i32, i32* %10, align 4
  %228 = load i32*, i32** %4, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 3
  %230 = load i32, i32* %229, align 4
  %231 = add nsw i32 %230, %227
  store i32 %231, i32* %229, align 4
  %232 = load i32, i32* %11, align 4
  %233 = load i32*, i32** %4, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 4
  %235 = load i32, i32* %234, align 4
  %236 = add nsw i32 %235, %232
  store i32 %236, i32* %234, align 4
  ret void
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @rol32(i32, i32) #1

declare dso_local i32 @f1(i32, i32, i32) #1

declare dso_local i32 @f2(i32, i32, i32) #1

declare dso_local i32 @f3(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
