; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bzip2/extr_huffman.c_BZ2_hbMakeCodeLengths.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bzip2/extr_huffman.c_BZ2_hbMakeCodeLengths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BZ_MAX_ALPHA_SIZE = common dso_local global i32 0, align 4
@True = common dso_local global i64 0, align 8
@False = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BZ2_hbMakeCodeLengths(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %21 = load i32, i32* @BZ_MAX_ALPHA_SIZE, align 4
  %22 = add nsw i32 %21, 2
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %17, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %18, align 8
  %26 = load i32, i32* @BZ_MAX_ALPHA_SIZE, align 4
  %27 = mul nsw i32 %26, 2
  %28 = zext i32 %27 to i64
  %29 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %19, align 8
  %30 = load i32, i32* @BZ_MAX_ALPHA_SIZE, align 4
  %31 = mul nsw i32 %30, 2
  %32 = zext i32 %31 to i64
  %33 = alloca i32, i64 %32, align 16
  store i64 %32, i64* %20, align 8
  store i32 0, i32* %13, align 4
  br label %34

34:                                               ; preds = %59, %4
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %62

38:                                               ; preds = %34
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %13, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %52

46:                                               ; preds = %38
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  br label %52

52:                                               ; preds = %46, %45
  %53 = phi i32 [ 1, %45 ], [ %51, %46 ]
  %54 = shl i32 %53, 8
  %55 = load i32, i32* %13, align 4
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %29, i64 %57
  store i32 %54, i32* %58, align 4
  br label %59

59:                                               ; preds = %52
  %60 = load i32, i32* %13, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %13, align 4
  br label %34

62:                                               ; preds = %34
  br label %63

63:                                               ; preds = %222, %62
  %64 = load i64, i64* @True, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %223

66:                                               ; preds = %63
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %68 = getelementptr inbounds i32, i32* %25, i64 0
  store i32 0, i32* %68, align 16
  %69 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 0, i32* %69, align 16
  %70 = getelementptr inbounds i32, i32* %33, i64 0
  store i32 -2, i32* %70, align 16
  store i32 1, i32* %13, align 4
  br label %71

71:                                               ; preds = %87, %66
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp sle i32 %72, %73
  br i1 %74, label %75, label %90

75:                                               ; preds = %71
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %33, i64 %77
  store i32 -1, i32* %78, align 4
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %25, i64 %83
  store i32 %81, i32* %84, align 4
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @UPHEAP(i32 %85)
  br label %87

87:                                               ; preds = %75
  %88 = load i32, i32* %13, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %13, align 4
  br label %71

90:                                               ; preds = %71
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* @BZ_MAX_ALPHA_SIZE, align 4
  %93 = add nsw i32 %92, 2
  %94 = icmp slt i32 %91, %93
  %95 = zext i1 %94 to i32
  %96 = call i32 @AssertH(i32 %95, i32 2001)
  br label %97

97:                                               ; preds = %100, %90
  %98 = load i32, i32* %10, align 4
  %99 = icmp sgt i32 %98, 1
  br i1 %99, label %100, label %153

100:                                              ; preds = %97
  %101 = getelementptr inbounds i32, i32* %25, i64 1
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %25, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds i32, i32* %25, i64 1
  store i32 %106, i32* %107, align 4
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %10, align 4
  %110 = call i32 @DOWNHEAP(i32 1)
  %111 = getelementptr inbounds i32, i32* %25, i64 1
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %12, align 4
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %25, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds i32, i32* %25, i64 1
  store i32 %116, i32* %117, align 4
  %118 = load i32, i32* %10, align 4
  %119 = add nsw i32 %118, -1
  store i32 %119, i32* %10, align 4
  %120 = call i32 @DOWNHEAP(i32 1)
  %121 = load i32, i32* %9, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %9, align 4
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %12, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %33, i64 %125
  store i32 %123, i32* %126, align 4
  %127 = load i32, i32* %11, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %33, i64 %128
  store i32 %123, i32* %129, align 4
  %130 = load i32, i32* %11, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %29, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %12, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %29, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @ADDWEIGHTS(i32 %133, i32 %137)
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %29, i64 %140
  store i32 %138, i32* %141, align 4
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %33, i64 %143
  store i32 -1, i32* %144, align 4
  %145 = load i32, i32* %10, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %10, align 4
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* %10, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %25, i64 %149
  store i32 %147, i32* %150, align 4
  %151 = load i32, i32* %10, align 4
  %152 = call i32 @UPHEAP(i32 %151)
  br label %97

153:                                              ; preds = %97
  %154 = load i32, i32* %9, align 4
  %155 = load i32, i32* @BZ_MAX_ALPHA_SIZE, align 4
  %156 = mul nsw i32 %155, 2
  %157 = icmp slt i32 %154, %156
  %158 = zext i1 %157 to i32
  %159 = call i32 @AssertH(i32 %158, i32 2002)
  %160 = load i64, i64* @False, align 8
  store i64 %160, i64* %16, align 8
  store i32 1, i32* %13, align 4
  br label %161

161:                                              ; preds = %193, %153
  %162 = load i32, i32* %13, align 4
  %163 = load i32, i32* %7, align 4
  %164 = icmp sle i32 %162, %163
  br i1 %164, label %165, label %196

165:                                              ; preds = %161
  store i32 0, i32* %14, align 4
  %166 = load i32, i32* %13, align 4
  store i32 %166, i32* %15, align 4
  br label %167

167:                                              ; preds = %173, %165
  %168 = load i32, i32* %15, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %33, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = icmp sge i32 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %167
  %174 = load i32, i32* %15, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %33, i64 %175
  %177 = load i32, i32* %176, align 4
  store i32 %177, i32* %15, align 4
  %178 = load i32, i32* %14, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %14, align 4
  br label %167

180:                                              ; preds = %167
  %181 = load i32, i32* %14, align 4
  %182 = load i32*, i32** %5, align 8
  %183 = load i32, i32* %13, align 4
  %184 = sub nsw i32 %183, 1
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %182, i64 %185
  store i32 %181, i32* %186, align 4
  %187 = load i32, i32* %14, align 4
  %188 = load i32, i32* %8, align 4
  %189 = icmp sgt i32 %187, %188
  br i1 %189, label %190, label %192

190:                                              ; preds = %180
  %191 = load i64, i64* @True, align 8
  store i64 %191, i64* %16, align 8
  br label %192

192:                                              ; preds = %190, %180
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* %13, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %13, align 4
  br label %161

196:                                              ; preds = %161
  %197 = load i64, i64* %16, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %200, label %199

199:                                              ; preds = %196
  br label %223

200:                                              ; preds = %196
  store i32 1, i32* %13, align 4
  br label %201

201:                                              ; preds = %219, %200
  %202 = load i32, i32* %13, align 4
  %203 = load i32, i32* %7, align 4
  %204 = icmp sle i32 %202, %203
  br i1 %204, label %205, label %222

205:                                              ; preds = %201
  %206 = load i32, i32* %13, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %29, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = ashr i32 %209, 8
  store i32 %210, i32* %14, align 4
  %211 = load i32, i32* %14, align 4
  %212 = sdiv i32 %211, 2
  %213 = add nsw i32 1, %212
  store i32 %213, i32* %14, align 4
  %214 = load i32, i32* %14, align 4
  %215 = shl i32 %214, 8
  %216 = load i32, i32* %13, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %29, i64 %217
  store i32 %215, i32* %218, align 4
  br label %219

219:                                              ; preds = %205
  %220 = load i32, i32* %13, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %13, align 4
  br label %201

222:                                              ; preds = %201
  br label %63

223:                                              ; preds = %199, %63
  %224 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %224)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @UPHEAP(i32) #2

declare dso_local i32 @AssertH(i32, i32) #2

declare dso_local i32 @DOWNHEAP(i32) #2

declare dso_local i32 @ADDWEIGHTS(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
