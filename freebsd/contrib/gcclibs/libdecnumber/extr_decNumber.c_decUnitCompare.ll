; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libdecnumber/extr_decNumber.c_decUnitCompare.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libdecnumber/extr_decNumber.c_decUnitCompare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DECBUFFER = common dso_local global i32 0, align 4
@BADINT = common dso_local global i64 0, align 8
@DECDPUN = common dso_local global i64 0, align 8
@powers = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i64, i64*, i64, i64)* @decUnitCompare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @decUnitCompare(i64* %0, i64 %1, i64* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store i64* %0, i64** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %25 = load i32, i32* @DECBUFFER, align 4
  %26 = add nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = call i64 @D2U(i64 %27)
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %13, align 8
  %30 = alloca i64, i64 %28, align 16
  store i64 %28, i64* %14, align 8
  store i64* null, i64** %15, align 8
  %31 = load i64, i64* %11, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %77

33:                                               ; preds = %5
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* %10, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i64 1, i64* %6, align 8
  store i32 1, i32* %24, align 4
  br label %177

38:                                               ; preds = %33
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %10, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i64 -1, i64* %6, align 8
  store i32 1, i32* %24, align 4
  br label %177

43:                                               ; preds = %38
  %44 = load i64*, i64** %7, align 8
  %45 = load i64, i64* %8, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = getelementptr inbounds i64, i64* %46, i64 -1
  store i64* %47, i64** %18, align 8
  %48 = load i64*, i64** %9, align 8
  %49 = load i64, i64* %8, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = getelementptr inbounds i64, i64* %50, i64 -1
  store i64* %51, i64** %19, align 8
  br label %52

52:                                               ; preds = %71, %43
  %53 = load i64*, i64** %18, align 8
  %54 = load i64*, i64** %7, align 8
  %55 = icmp uge i64* %53, %54
  br i1 %55, label %56, label %76

56:                                               ; preds = %52
  %57 = load i64*, i64** %18, align 8
  %58 = load i64, i64* %57, align 8
  %59 = load i64*, i64** %19, align 8
  %60 = load i64, i64* %59, align 8
  %61 = icmp sgt i64 %58, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i64 1, i64* %6, align 8
  store i32 1, i32* %24, align 4
  br label %177

63:                                               ; preds = %56
  %64 = load i64*, i64** %18, align 8
  %65 = load i64, i64* %64, align 8
  %66 = load i64*, i64** %19, align 8
  %67 = load i64, i64* %66, align 8
  %68 = icmp slt i64 %65, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  store i64 -1, i64* %6, align 8
  store i32 1, i32* %24, align 4
  br label %177

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %70
  %72 = load i64*, i64** %18, align 8
  %73 = getelementptr inbounds i64, i64* %72, i32 -1
  store i64* %73, i64** %18, align 8
  %74 = load i64*, i64** %19, align 8
  %75 = getelementptr inbounds i64, i64* %74, i32 -1
  store i64* %75, i64** %19, align 8
  br label %52

76:                                               ; preds = %52
  store i64 0, i64* %6, align 8
  store i32 1, i32* %24, align 4
  br label %177

77:                                               ; preds = %5
  %78 = load i64, i64* %8, align 8
  %79 = load i64, i64* %10, align 8
  %80 = load i64, i64* %11, align 8
  %81 = call i64 @D2U(i64 %80)
  %82 = add nsw i64 %79, %81
  %83 = icmp sgt i64 %78, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  store i64 1, i64* %6, align 8
  store i32 1, i32* %24, align 4
  br label %177

85:                                               ; preds = %77
  %86 = load i64, i64* %8, align 8
  %87 = add nsw i64 %86, 1
  %88 = load i64, i64* %10, align 8
  %89 = load i64, i64* %11, align 8
  %90 = call i64 @D2U(i64 %89)
  %91 = add nsw i64 %88, %90
  %92 = icmp slt i64 %87, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  store i64 -1, i64* %6, align 8
  store i32 1, i32* %24, align 4
  br label %177

94:                                               ; preds = %85
  %95 = load i64, i64* %10, align 8
  %96 = load i64, i64* %11, align 8
  %97 = call i64 @D2U(i64 %96)
  %98 = add nsw i64 %95, %97
  store i64 %98, i64* %17, align 8
  %99 = load i64, i64* %17, align 8
  %100 = load i64, i64* %8, align 8
  %101 = icmp slt i64 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %94
  %103 = load i64, i64* %8, align 8
  store i64 %103, i64* %17, align 8
  br label %104

104:                                              ; preds = %102, %94
  %105 = load i64, i64* %17, align 8
  %106 = add nsw i64 %105, 2
  store i64 %106, i64* %17, align 8
  store i64* %30, i64** %12, align 8
  %107 = load i64, i64* %17, align 8
  %108 = mul i64 %107, 8
  %109 = mul nuw i64 8, %28
  %110 = icmp ugt i64 %108, %109
  br i1 %110, label %111, label %122

111:                                              ; preds = %104
  %112 = load i64, i64* %17, align 8
  %113 = mul i64 %112, 8
  %114 = call i64 @malloc(i64 %113)
  %115 = inttoptr i64 %114 to i64*
  store i64* %115, i64** %15, align 8
  %116 = load i64*, i64** %15, align 8
  %117 = icmp eq i64* %116, null
  br i1 %117, label %118, label %120

118:                                              ; preds = %111
  %119 = load i64, i64* @BADINT, align 8
  store i64 %119, i64* %6, align 8
  store i32 1, i32* %24, align 4
  br label %177

120:                                              ; preds = %111
  %121 = load i64*, i64** %15, align 8
  store i64* %121, i64** %12, align 8
  br label %122

122:                                              ; preds = %120, %104
  %123 = load i64, i64* %11, align 8
  %124 = load i64, i64* @DECDPUN, align 8
  %125 = sdiv i64 %123, %124
  store i64 %125, i64* %21, align 8
  %126 = load i64, i64* %11, align 8
  %127 = load i64, i64* @DECDPUN, align 8
  %128 = srem i64 %126, %127
  store i64 %128, i64* %22, align 8
  %129 = load i64*, i64** %7, align 8
  %130 = load i64, i64* %8, align 8
  %131 = load i64*, i64** %9, align 8
  %132 = load i64, i64* %10, align 8
  %133 = load i64, i64* %21, align 8
  %134 = load i64*, i64** %12, align 8
  %135 = load i64*, i64** @powers, align 8
  %136 = load i64, i64* %22, align 8
  %137 = getelementptr inbounds i64, i64* %135, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = sub nsw i64 0, %138
  %140 = call i64 @decUnitAddSub(i64* %129, i64 %130, i64* %131, i64 %132, i64 %133, i64* %134, i64 %139)
  store i64 %140, i64* %16, align 8
  %141 = load i64, i64* %16, align 8
  %142 = icmp slt i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %122
  store i64 -1, i64* %23, align 8
  br label %169

144:                                              ; preds = %122
  %145 = load i64*, i64** %12, align 8
  store i64* %145, i64** %20, align 8
  br label %146

146:                                              ; preds = %159, %144
  %147 = load i64*, i64** %20, align 8
  %148 = load i64*, i64** %12, align 8
  %149 = load i64, i64* %16, align 8
  %150 = getelementptr inbounds i64, i64* %148, i64 %149
  %151 = getelementptr inbounds i64, i64* %150, i64 -1
  %152 = icmp ult i64* %147, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %146
  %154 = load i64*, i64** %20, align 8
  %155 = load i64, i64* %154, align 8
  %156 = icmp eq i64 %155, 0
  br label %157

157:                                              ; preds = %153, %146
  %158 = phi i1 [ false, %146 ], [ %156, %153 ]
  br i1 %158, label %159, label %162

159:                                              ; preds = %157
  %160 = load i64*, i64** %20, align 8
  %161 = getelementptr inbounds i64, i64* %160, i32 1
  store i64* %161, i64** %20, align 8
  br label %146

162:                                              ; preds = %157
  %163 = load i64*, i64** %20, align 8
  %164 = load i64, i64* %163, align 8
  %165 = icmp eq i64 %164, 0
  %166 = zext i1 %165 to i64
  %167 = select i1 %165, i32 0, i32 1
  %168 = sext i32 %167 to i64
  store i64 %168, i64* %23, align 8
  br label %169

169:                                              ; preds = %162, %143
  %170 = load i64*, i64** %15, align 8
  %171 = icmp ne i64* %170, null
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  %173 = load i64*, i64** %15, align 8
  %174 = call i32 @free(i64* %173)
  br label %175

175:                                              ; preds = %172, %169
  %176 = load i64, i64* %23, align 8
  store i64 %176, i64* %6, align 8
  store i32 1, i32* %24, align 4
  br label %177

177:                                              ; preds = %175, %118, %93, %84, %76, %69, %62, %42, %37
  %178 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %178)
  %179 = load i64, i64* %6, align 8
  ret i64 %179
}

declare dso_local i64 @D2U(i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @malloc(i64) #1

declare dso_local i64 @decUnitAddSub(i64*, i64, i64*, i64, i64, i64*, i64) #1

declare dso_local i32 @free(i64*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
