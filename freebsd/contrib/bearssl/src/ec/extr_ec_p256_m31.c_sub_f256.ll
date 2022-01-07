; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ec_p256_m31.c_sub_f256.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ec_p256_m31.c_sub_f256.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*)* @sub_f256 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sub_f256(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %12, %15
  %17 = sub nsw i32 %16, 2
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = and i32 %18, 1073741823
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 %19, i32* %21, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %24, %27
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @ARSH(i32 %29, i32 30)
  %31 = add nsw i32 %28, %30
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %32, 1073741823
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  store i32 %33, i32* %35, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %38, %41
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @ARSH(i32 %43, i32 30)
  %45 = add nsw i32 %42, %44
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = and i32 %46, 1073741823
  %48 = load i32*, i32** %4, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 2
  store i32 %47, i32* %49, align 4
  %50 = load i32*, i32** %5, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 3
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %6, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 3
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %52, %55
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @ARSH(i32 %57, i32 30)
  %59 = add nsw i32 %56, %58
  %60 = add nsw i32 %59, 128
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = and i32 %61, 1073741823
  %63 = load i32*, i32** %4, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 3
  store i32 %62, i32* %64, align 4
  %65 = load i32*, i32** %5, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 4
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %6, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 4
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %67, %70
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @ARSH(i32 %72, i32 30)
  %74 = add nsw i32 %71, %73
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = and i32 %75, 1073741823
  %77 = load i32*, i32** %4, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 4
  store i32 %76, i32* %78, align 4
  %79 = load i32*, i32** %5, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 5
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %6, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 5
  %84 = load i32, i32* %83, align 4
  %85 = sub nsw i32 %81, %84
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @ARSH(i32 %86, i32 30)
  %88 = add nsw i32 %85, %87
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = and i32 %89, 1073741823
  %91 = load i32*, i32** %4, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 5
  store i32 %90, i32* %92, align 4
  %93 = load i32*, i32** %5, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 6
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %6, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 6
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %95, %98
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @ARSH(i32 %100, i32 30)
  %102 = add nsw i32 %99, %101
  %103 = add nsw i32 %102, 8192
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %7, align 4
  %105 = and i32 %104, 1073741823
  %106 = load i32*, i32** %4, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 6
  store i32 %105, i32* %107, align 4
  %108 = load i32*, i32** %5, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 7
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %6, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 7
  %113 = load i32, i32* %112, align 4
  %114 = sub nsw i32 %110, %113
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @ARSH(i32 %115, i32 30)
  %117 = add nsw i32 %114, %116
  %118 = sub nsw i32 %117, 32768
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %7, align 4
  %120 = and i32 %119, 1073741823
  %121 = load i32*, i32** %4, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 7
  store i32 %120, i32* %122, align 4
  %123 = load i32*, i32** %5, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 8
  %125 = load i32, i32* %124, align 4
  %126 = load i32*, i32** %6, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 8
  %128 = load i32, i32* %127, align 4
  %129 = sub nsw i32 %125, %128
  %130 = load i32, i32* %7, align 4
  %131 = call i32 @ARSH(i32 %130, i32 30)
  %132 = add nsw i32 %129, %131
  %133 = add nsw i32 %132, 131072
  store i32 %133, i32* %7, align 4
  %134 = load i32, i32* %7, align 4
  %135 = and i32 %134, 65535
  %136 = load i32*, i32** %4, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 8
  store i32 %135, i32* %137, align 4
  %138 = load i32, i32* %7, align 4
  %139 = ashr i32 %138, 16
  store i32 %139, i32* %7, align 4
  %140 = load i32*, i32** %4, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 8
  %142 = load i32, i32* %141, align 4
  %143 = and i32 %142, 65535
  store i32 %143, i32* %141, align 4
  %144 = load i32, i32* %7, align 4
  %145 = shl i32 %144, 6
  %146 = load i32*, i32** %4, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 3
  %148 = load i32, i32* %147, align 4
  %149 = sub nsw i32 %148, %145
  store i32 %149, i32* %147, align 4
  %150 = load i32, i32* %7, align 4
  %151 = shl i32 %150, 12
  %152 = load i32*, i32** %4, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 6
  %154 = load i32, i32* %153, align 4
  %155 = sub nsw i32 %154, %151
  store i32 %155, i32* %153, align 4
  %156 = load i32, i32* %7, align 4
  %157 = shl i32 %156, 14
  %158 = load i32*, i32** %4, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 7
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %160, %157
  store i32 %161, i32* %159, align 4
  %162 = load i32, i32* %7, align 4
  store i32 %162, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %163

163:                                              ; preds = %182, %3
  %164 = load i32, i32* %9, align 4
  %165 = icmp slt i32 %164, 9
  br i1 %165, label %166, label %185

166:                                              ; preds = %163
  %167 = load i32*, i32** %4, align 8
  %168 = load i32, i32* %9, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %8, align 4
  %173 = add nsw i32 %171, %172
  store i32 %173, i32* %7, align 4
  %174 = load i32, i32* %7, align 4
  %175 = and i32 %174, 1073741823
  %176 = load i32*, i32** %4, align 8
  %177 = load i32, i32* %9, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  store i32 %175, i32* %179, align 4
  %180 = load i32, i32* %7, align 4
  %181 = call i32 @ARSH(i32 %180, i32 30)
  store i32 %181, i32* %8, align 4
  br label %182

182:                                              ; preds = %166
  %183 = load i32, i32* %9, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %9, align 4
  br label %163

185:                                              ; preds = %163
  ret void
}

declare dso_local i32 @ARSH(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
