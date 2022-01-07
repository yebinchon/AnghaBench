; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_asiliantfb.c_asiliant_calc_dclk2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_asiliantfb.c_asiliant_calc_dclk2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Fref = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*, i8*)* @asiliant_calc_dclk2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asiliant_calc_dclk2(i32* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = udiv i32 1000000, %23
  %25 = mul i32 1000000, %24
  store i32 %25, i32* %10, align 4
  store i32 -1, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  store i32 -1, i32* %14, align 4
  store i8 0, i8* %17, align 1
  %26 = load i32, i32* %9, align 4
  %27 = udiv i32 1000000, %26
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %9, align 4
  %29 = urem i32 1000000, %28
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* %15, align 4
  %31 = mul i32 1000000, %30
  %32 = load i32, i32* %16, align 4
  %33 = mul i32 1000000, %32
  %34 = load i32, i32* %9, align 4
  %35 = udiv i32 %33, %34
  %36 = add i32 %31, %35
  store i32 %36, i32* %10, align 4
  br label %37

37:                                               ; preds = %40, %4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ult i32 %38, 100000000
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i8, i8* %17, align 1
  %42 = zext i8 %41 to i32
  %43 = add nsw i32 %42, 16
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %17, align 1
  %45 = load i32, i32* %10, align 4
  %46 = shl i32 %45, 1
  store i32 %46, i32* %10, align 4
  br label %37

47:                                               ; preds = %37
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @Fref, align 4
  %50 = udiv i32 %48, %49
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @Fref, align 4
  %53 = urem i32 %51, %52
  store i32 %53, i32* %16, align 4
  store i32 3, i32* %11, align 4
  br label %54

54:                                               ; preds = %150, %47
  %55 = load i32, i32* %11, align 4
  %56 = icmp ule i32 %55, 257
  br i1 %56, label %57, label %153

57:                                               ; preds = %54
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %15, align 4
  %60 = mul i32 %58, %59
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %16, align 4
  %63 = mul i32 %61, %62
  %64 = load i32, i32* @Fref, align 4
  %65 = udiv i32 %63, %64
  %66 = add i32 %60, %65
  store i32 %66, i32* %18, align 4
  %67 = load i32, i32* %18, align 4
  %68 = icmp uge i32 %67, 3
  br i1 %68, label %69, label %107

69:                                               ; preds = %57
  %70 = load i32, i32* %18, align 4
  %71 = icmp ule i32 %70, 257
  br i1 %71, label %72, label %107

72:                                               ; preds = %69
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %11, align 4
  %75 = mul i32 %73, %74
  %76 = load i32, i32* @Fref, align 4
  %77 = load i32, i32* %18, align 4
  %78 = mul i32 %76, %77
  %79 = sub i32 %75, %78
  %80 = icmp uge i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %72
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %11, align 4
  %84 = mul i32 %82, %83
  %85 = load i32, i32* @Fref, align 4
  %86 = load i32, i32* %18, align 4
  %87 = mul i32 %85, %86
  %88 = sub i32 %84, %87
  br label %97

89:                                               ; preds = %72
  %90 = load i32, i32* @Fref, align 4
  %91 = load i32, i32* %18, align 4
  %92 = mul i32 %90, %91
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %11, align 4
  %95 = mul i32 %93, %94
  %96 = sub i32 %92, %95
  br label %97

97:                                               ; preds = %89, %81
  %98 = phi i32 [ %88, %81 ], [ %96, %89 ]
  store i32 %98, i32* %19, align 4
  %99 = load i32, i32* %19, align 4
  %100 = load i32, i32* %12, align 4
  %101 = icmp ult i32 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load i32, i32* %11, align 4
  store i32 %103, i32* %14, align 4
  %104 = load i32, i32* %18, align 4
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* %19, align 4
  store i32 %105, i32* %12, align 4
  br label %106

106:                                              ; preds = %102, %97
  br label %149

107:                                              ; preds = %69, %57
  %108 = load i32, i32* %18, align 4
  %109 = icmp ule i32 %108, 1028
  br i1 %109, label %110, label %148

110:                                              ; preds = %107
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %11, align 4
  %113 = mul i32 %111, %112
  %114 = load i32, i32* @Fref, align 4
  %115 = load i32, i32* %18, align 4
  %116 = and i32 %115, -4
  %117 = mul i32 %114, %116
  %118 = sub i32 %113, %117
  %119 = icmp uge i32 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %110
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* %11, align 4
  %123 = mul i32 %121, %122
  %124 = load i32, i32* @Fref, align 4
  %125 = load i32, i32* %18, align 4
  %126 = and i32 %125, -4
  %127 = mul i32 %124, %126
  %128 = sub i32 %123, %127
  br label %138

129:                                              ; preds = %110
  %130 = load i32, i32* @Fref, align 4
  %131 = load i32, i32* %18, align 4
  %132 = and i32 %131, -4
  %133 = mul i32 %130, %132
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* %11, align 4
  %136 = mul i32 %134, %135
  %137 = sub i32 %133, %136
  br label %138

138:                                              ; preds = %129, %120
  %139 = phi i32 [ %128, %120 ], [ %137, %129 ]
  store i32 %139, i32* %20, align 4
  %140 = load i32, i32* %20, align 4
  %141 = load i32, i32* %12, align 4
  %142 = icmp ult i32 %140, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %138
  %144 = load i32, i32* %11, align 4
  store i32 %144, i32* %14, align 4
  %145 = load i32, i32* %18, align 4
  store i32 %145, i32* %13, align 4
  %146 = load i32, i32* %20, align 4
  store i32 %146, i32* %12, align 4
  br label %147

147:                                              ; preds = %143, %138
  br label %148

148:                                              ; preds = %147, %107
  br label %149

149:                                              ; preds = %148, %106
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %11, align 4
  %152 = add i32 %151, 1
  store i32 %152, i32* %11, align 4
  br label %54

153:                                              ; preds = %54
  %154 = load i32, i32* %13, align 4
  %155 = icmp ugt i32 %154, 257
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load i32, i32* %13, align 4
  %158 = lshr i32 %157, 2
  store i32 %158, i32* %13, align 4
  br label %164

159:                                              ; preds = %153
  %160 = load i8, i8* %17, align 1
  %161 = zext i8 %160 to i32
  %162 = or i32 %161, 4
  %163 = trunc i32 %162 to i8
  store i8 %163, i8* %17, align 1
  br label %164

164:                                              ; preds = %159, %156
  %165 = load i32, i32* %13, align 4
  %166 = sub i32 %165, 2
  %167 = trunc i32 %166 to i8
  %168 = load i8*, i8** %6, align 8
  store i8 %167, i8* %168, align 1
  %169 = load i32, i32* %14, align 4
  %170 = sub i32 %169, 2
  %171 = trunc i32 %170 to i8
  %172 = load i8*, i8** %7, align 8
  store i8 %171, i8* %172, align 1
  %173 = load i8, i8* %17, align 1
  %174 = load i8*, i8** %8, align 8
  store i8 %173, i8* %174, align 1
  %175 = load i32, i32* %9, align 4
  %176 = load i32*, i32** %5, align 8
  store i32 %175, i32* %176, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
