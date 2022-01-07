; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_phy_calibration.c__sqrt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_phy_calibration.c__sqrt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_sqrt(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = sdiv i32 %12, 100000000
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* %8, align 4
  %16 = mul nsw i32 %15, 100000000
  %17 = sub nsw i32 %14, %16
  %18 = sdiv i32 %17, 1000000
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* %8, align 4
  %21 = mul nsw i32 %20, 100000000
  %22 = sub nsw i32 %19, %21
  %23 = load i32, i32* %7, align 4
  %24 = mul nsw i32 %23, 1000000
  %25 = sub nsw i32 %22, %24
  %26 = sdiv i32 %25, 10000
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* %8, align 4
  %29 = mul nsw i32 %28, 100000000
  %30 = sub nsw i32 %27, %29
  %31 = load i32, i32* %7, align 4
  %32 = mul nsw i32 %31, 1000000
  %33 = sub nsw i32 %30, %32
  %34 = load i32, i32* %6, align 4
  %35 = mul nsw i32 %34, 10000
  %36 = sub nsw i32 %33, %35
  %37 = sdiv i32 %36, 100
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* %8, align 4
  %40 = mul nsw i32 %39, 100000000
  %41 = sub nsw i32 %38, %40
  %42 = load i32, i32* %7, align 4
  %43 = mul nsw i32 %42, 1000000
  %44 = sub nsw i32 %41, %43
  %45 = load i32, i32* %6, align 4
  %46 = mul nsw i32 %45, 10000
  %47 = sub nsw i32 %44, %46
  %48 = load i32, i32* %5, align 4
  %49 = mul nsw i32 %48, 100
  %50 = sub nsw i32 %47, %49
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %52

52:                                               ; preds = %60, %1
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, 1
  %57 = mul nsw i32 %54, %56
  %58 = load i32, i32* %10, align 4
  %59 = icmp sle i32 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %52
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %52

65:                                               ; preds = %52
  %66 = load i32, i32* %9, align 4
  %67 = mul nsw i32 %66, 10000
  store i32 %67, i32* %3, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %11, align 4
  %71 = mul nsw i32 %69, %70
  %72 = sub nsw i32 %68, %71
  %73 = mul nsw i32 %72, 100
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %73, %74
  store i32 %75, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %76 = load i32, i32* %9, align 4
  %77 = mul nsw i32 2, %76
  %78 = mul nsw i32 %77, 10
  store i32 %78, i32* %9, align 4
  br label %79

79:                                               ; preds = %87, %65
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, 1
  %84 = mul nsw i32 %81, %83
  %85 = load i32, i32* %10, align 4
  %86 = icmp sle i32 %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %79
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  br label %79

92:                                               ; preds = %79
  %93 = load i32, i32* %3, align 4
  %94 = load i32, i32* %11, align 4
  %95 = mul nsw i32 %94, 1000
  %96 = add nsw i32 %93, %95
  store i32 %96, i32* %3, align 4
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %11, align 4
  %100 = mul nsw i32 %98, %99
  %101 = sub nsw i32 %97, %100
  %102 = mul nsw i32 %101, 100
  %103 = load i32, i32* %6, align 4
  %104 = add nsw i32 %102, %103
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %105, %106
  %108 = mul nsw i32 %107, 10
  store i32 %108, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %109

109:                                              ; preds = %117, %92
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 1
  %112 = load i32, i32* %11, align 4
  %113 = add nsw i32 %112, 1
  %114 = mul nsw i32 %111, %113
  %115 = load i32, i32* %10, align 4
  %116 = icmp sle i32 %114, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %109
  %118 = load i32, i32* %11, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %11, align 4
  %120 = load i32, i32* %9, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %9, align 4
  br label %109

122:                                              ; preds = %109
  %123 = load i32, i32* %3, align 4
  %124 = load i32, i32* %11, align 4
  %125 = mul nsw i32 %124, 100
  %126 = add nsw i32 %123, %125
  store i32 %126, i32* %3, align 4
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* %11, align 4
  %130 = mul nsw i32 %128, %129
  %131 = sub nsw i32 %127, %130
  %132 = mul nsw i32 %131, 100
  %133 = load i32, i32* %5, align 4
  %134 = add nsw i32 %132, %133
  store i32 %134, i32* %10, align 4
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* %11, align 4
  %137 = add nsw i32 %135, %136
  %138 = mul nsw i32 %137, 10
  store i32 %138, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %139

139:                                              ; preds = %147, %122
  %140 = load i32, i32* %9, align 4
  %141 = add nsw i32 %140, 1
  %142 = load i32, i32* %11, align 4
  %143 = add nsw i32 %142, 1
  %144 = mul nsw i32 %141, %143
  %145 = load i32, i32* %10, align 4
  %146 = icmp sle i32 %144, %145
  br i1 %146, label %147, label %152

147:                                              ; preds = %139
  %148 = load i32, i32* %11, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %11, align 4
  %150 = load i32, i32* %9, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %9, align 4
  br label %139

152:                                              ; preds = %139
  %153 = load i32, i32* %3, align 4
  %154 = load i32, i32* %11, align 4
  %155 = mul nsw i32 %154, 10
  %156 = add nsw i32 %153, %155
  store i32 %156, i32* %3, align 4
  %157 = load i32, i32* %10, align 4
  %158 = load i32, i32* %9, align 4
  %159 = load i32, i32* %11, align 4
  %160 = mul nsw i32 %158, %159
  %161 = sub nsw i32 %157, %160
  %162 = mul nsw i32 %161, 100
  %163 = load i32, i32* %4, align 4
  %164 = add nsw i32 %162, %163
  store i32 %164, i32* %10, align 4
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* %11, align 4
  %167 = add nsw i32 %165, %166
  %168 = mul nsw i32 %167, 10
  store i32 %168, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %169

169:                                              ; preds = %177, %152
  %170 = load i32, i32* %9, align 4
  %171 = add nsw i32 %170, 1
  %172 = load i32, i32* %11, align 4
  %173 = add nsw i32 %172, 1
  %174 = mul nsw i32 %171, %173
  %175 = load i32, i32* %10, align 4
  %176 = icmp sle i32 %174, %175
  br i1 %176, label %177, label %182

177:                                              ; preds = %169
  %178 = load i32, i32* %11, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %11, align 4
  %180 = load i32, i32* %9, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %9, align 4
  br label %169

182:                                              ; preds = %169
  %183 = load i32, i32* %3, align 4
  %184 = load i32, i32* %11, align 4
  %185 = add nsw i32 %183, %184
  store i32 %185, i32* %3, align 4
  %186 = load i32, i32* %3, align 4
  ret i32 %186
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
