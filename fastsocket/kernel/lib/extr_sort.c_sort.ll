; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_sort.c_sort.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_sort.c_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sort(i8* %0, i64 %1, i64 %2, i32 (i8*, i8*)* %3, void (i8*, i8*, i32)* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32 (i8*, i8*)*, align 8
  %10 = alloca void (i8*, i8*, i32)*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 (i8*, i8*)* %3, i32 (i8*, i8*)** %9, align 8
  store void (i8*, i8*, i32)* %4, void (i8*, i8*, i32)** %10, align 8
  %15 = load i64, i64* %7, align 8
  %16 = udiv i64 %15, 2
  %17 = sub i64 %16, 1
  %18 = load i64, i64* %8, align 8
  %19 = mul i64 %17, %18
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %11, align 4
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = mul i64 %21, %22
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %12, align 4
  %25 = load void (i8*, i8*, i32)*, void (i8*, i8*, i32)** %10, align 8
  %26 = icmp ne void (i8*, i8*, i32)* %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %5
  %28 = load i64, i64* %8, align 8
  %29 = icmp eq i64 %28, 4
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, void (i8*, i8*, i32)* @u32_swap, void (i8*, i8*, i32)* @generic_swap
  store void (i8*, i8*, i32)* %31, void (i8*, i8*, i32)** %10, align 8
  br label %32

32:                                               ; preds = %27, %5
  br label %33

33:                                               ; preds = %109, %32
  %34 = load i32, i32* %11, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %115

36:                                               ; preds = %33
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %14, align 4
  br label %38

38:                                               ; preds = %106, %36
  %39 = load i32, i32* %14, align 4
  %40 = mul nsw i32 %39, 2
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* %8, align 8
  %43 = add i64 %41, %42
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = icmp ult i64 %43, %45
  br i1 %46, label %47, label %108

47:                                               ; preds = %38
  %48 = load i32, i32* %14, align 4
  %49 = mul nsw i32 %48, 2
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* %8, align 8
  %52 = add i64 %50, %51
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* %8, align 8
  %59 = sub i64 %57, %58
  %60 = icmp ult i64 %55, %59
  br i1 %60, label %61, label %81

61:                                               ; preds = %47
  %62 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %9, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr i8, i8* %63, i64 %65
  %67 = load i8*, i8** %6, align 8
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr i8, i8* %67, i64 %69
  %71 = load i64, i64* %8, align 8
  %72 = getelementptr i8, i8* %70, i64 %71
  %73 = call i32 %62(i8* %66, i8* %72)
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %61
  %76 = load i64, i64* %8, align 8
  %77 = load i32, i32* %13, align 4
  %78 = sext i32 %77 to i64
  %79 = add i64 %78, %76
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %13, align 4
  br label %81

81:                                               ; preds = %75, %61, %47
  %82 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %9, align 8
  %83 = load i8*, i8** %6, align 8
  %84 = load i32, i32* %14, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr i8, i8* %83, i64 %85
  %87 = load i8*, i8** %6, align 8
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr i8, i8* %87, i64 %89
  %91 = call i32 %82(i8* %86, i8* %90)
  %92 = icmp sge i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %81
  br label %108

94:                                               ; preds = %81
  %95 = load void (i8*, i8*, i32)*, void (i8*, i8*, i32)** %10, align 8
  %96 = load i8*, i8** %6, align 8
  %97 = load i32, i32* %14, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr i8, i8* %96, i64 %98
  %100 = load i8*, i8** %6, align 8
  %101 = load i32, i32* %13, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr i8, i8* %100, i64 %102
  %104 = load i64, i64* %8, align 8
  %105 = trunc i64 %104 to i32
  call void %95(i8* %99, i8* %103, i32 %105)
  br label %106

106:                                              ; preds = %94
  %107 = load i32, i32* %13, align 4
  store i32 %107, i32* %14, align 4
  br label %38

108:                                              ; preds = %93, %38
  br label %109

109:                                              ; preds = %108
  %110 = load i64, i64* %8, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = sub i64 %112, %110
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %11, align 4
  br label %33

115:                                              ; preds = %33
  %116 = load i32, i32* %12, align 4
  %117 = sext i32 %116 to i64
  %118 = load i64, i64* %8, align 8
  %119 = sub i64 %117, %118
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %11, align 4
  br label %121

121:                                              ; preds = %204, %115
  %122 = load i32, i32* %11, align 4
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %210

124:                                              ; preds = %121
  %125 = load void (i8*, i8*, i32)*, void (i8*, i8*, i32)** %10, align 8
  %126 = load i8*, i8** %6, align 8
  %127 = load i8*, i8** %6, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr i8, i8* %127, i64 %129
  %131 = load i64, i64* %8, align 8
  %132 = trunc i64 %131 to i32
  call void %125(i8* %126, i8* %130, i32 %132)
  store i32 0, i32* %14, align 4
  br label %133

133:                                              ; preds = %201, %124
  %134 = load i32, i32* %14, align 4
  %135 = mul nsw i32 %134, 2
  %136 = sext i32 %135 to i64
  %137 = load i64, i64* %8, align 8
  %138 = add i64 %136, %137
  %139 = load i32, i32* %11, align 4
  %140 = sext i32 %139 to i64
  %141 = icmp ult i64 %138, %140
  br i1 %141, label %142, label %203

142:                                              ; preds = %133
  %143 = load i32, i32* %14, align 4
  %144 = mul nsw i32 %143, 2
  %145 = sext i32 %144 to i64
  %146 = load i64, i64* %8, align 8
  %147 = add i64 %145, %146
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %13, align 4
  %149 = load i32, i32* %13, align 4
  %150 = sext i32 %149 to i64
  %151 = load i32, i32* %11, align 4
  %152 = sext i32 %151 to i64
  %153 = load i64, i64* %8, align 8
  %154 = sub i64 %152, %153
  %155 = icmp ult i64 %150, %154
  br i1 %155, label %156, label %176

156:                                              ; preds = %142
  %157 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %9, align 8
  %158 = load i8*, i8** %6, align 8
  %159 = load i32, i32* %13, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr i8, i8* %158, i64 %160
  %162 = load i8*, i8** %6, align 8
  %163 = load i32, i32* %13, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr i8, i8* %162, i64 %164
  %166 = load i64, i64* %8, align 8
  %167 = getelementptr i8, i8* %165, i64 %166
  %168 = call i32 %157(i8* %161, i8* %167)
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %156
  %171 = load i64, i64* %8, align 8
  %172 = load i32, i32* %13, align 4
  %173 = sext i32 %172 to i64
  %174 = add i64 %173, %171
  %175 = trunc i64 %174 to i32
  store i32 %175, i32* %13, align 4
  br label %176

176:                                              ; preds = %170, %156, %142
  %177 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %9, align 8
  %178 = load i8*, i8** %6, align 8
  %179 = load i32, i32* %14, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr i8, i8* %178, i64 %180
  %182 = load i8*, i8** %6, align 8
  %183 = load i32, i32* %13, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr i8, i8* %182, i64 %184
  %186 = call i32 %177(i8* %181, i8* %185)
  %187 = icmp sge i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %176
  br label %203

189:                                              ; preds = %176
  %190 = load void (i8*, i8*, i32)*, void (i8*, i8*, i32)** %10, align 8
  %191 = load i8*, i8** %6, align 8
  %192 = load i32, i32* %14, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr i8, i8* %191, i64 %193
  %195 = load i8*, i8** %6, align 8
  %196 = load i32, i32* %13, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr i8, i8* %195, i64 %197
  %199 = load i64, i64* %8, align 8
  %200 = trunc i64 %199 to i32
  call void %190(i8* %194, i8* %198, i32 %200)
  br label %201

201:                                              ; preds = %189
  %202 = load i32, i32* %13, align 4
  store i32 %202, i32* %14, align 4
  br label %133

203:                                              ; preds = %188, %133
  br label %204

204:                                              ; preds = %203
  %205 = load i64, i64* %8, align 8
  %206 = load i32, i32* %11, align 4
  %207 = sext i32 %206 to i64
  %208 = sub i64 %207, %205
  %209 = trunc i64 %208 to i32
  store i32 %209, i32* %11, align 4
  br label %121

210:                                              ; preds = %121
  ret void
}

declare dso_local void @u32_swap(i8*, i8*, i32) #1

declare dso_local void @generic_swap(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
