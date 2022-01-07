; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_gss_krb5_keys.c_krb5_nfold.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_gss_krb5_keys.c_krb5_nfold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32, i32*)* @krb5_nfold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @krb5_nfold(i32 %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %16 = load i32, i32* %5, align 4
  %17 = ashr i32 %16, 3
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %7, align 4
  %19 = ashr i32 %18, 3
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %10, align 4
  br label %22

22:                                               ; preds = %25, %4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = srem i32 %27, %28
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %9, align 4
  br label %22

31:                                               ; preds = %22
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %5, align 4
  %34 = mul nsw i32 %32, %33
  %35 = load i32, i32* %9, align 4
  %36 = sdiv i32 %34, %35
  store i32 %36, i32* %12, align 4
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @memset(i32* %37, i32 0, i32 %38)
  store i32 0, i32* %13, align 4
  %40 = load i32, i32* %12, align 4
  %41 = sub nsw i32 %40, 1
  store i32 %41, i32* %14, align 4
  br label %42

42:                                               ; preds = %116, %31
  %43 = load i32, i32* %14, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %119

45:                                               ; preds = %42
  %46 = load i32, i32* %5, align 4
  %47 = shl i32 %46, 3
  %48 = sub nsw i32 %47, 1
  %49 = load i32, i32* %5, align 4
  %50 = shl i32 %49, 3
  %51 = add nsw i32 %50, 13
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %5, align 4
  %54 = sdiv i32 %52, %53
  %55 = mul nsw i32 %51, %54
  %56 = add nsw i32 %48, %55
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %5, align 4
  %60 = srem i32 %58, %59
  %61 = sub nsw i32 %57, %60
  %62 = shl i32 %61, 3
  %63 = add nsw i32 %56, %62
  %64 = load i32, i32* %5, align 4
  %65 = shl i32 %64, 3
  %66 = srem i32 %63, %65
  store i32 %66, i32* %15, align 4
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sub nsw i32 %68, 1
  %70 = load i32, i32* %15, align 4
  %71 = ashr i32 %70, 3
  %72 = sub nsw i32 %69, %71
  %73 = load i32, i32* %5, align 4
  %74 = srem i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %67, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = shl i32 %77, 8
  %79 = load i32*, i32** %6, align 8
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %15, align 4
  %82 = ashr i32 %81, 3
  %83 = sub nsw i32 %80, %82
  %84 = load i32, i32* %5, align 4
  %85 = srem i32 %83, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %79, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %78, %88
  %90 = load i32, i32* %15, align 4
  %91 = and i32 %90, 7
  %92 = add nsw i32 %91, 1
  %93 = ashr i32 %89, %92
  %94 = and i32 %93, 255
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %13, align 4
  %97 = load i32*, i32** %8, align 8
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* %7, align 4
  %100 = srem i32 %98, %99
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %97, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %13, align 4
  %105 = add nsw i32 %104, %103
  store i32 %105, i32* %13, align 4
  %106 = load i32, i32* %13, align 4
  %107 = and i32 %106, 255
  %108 = load i32*, i32** %8, align 8
  %109 = load i32, i32* %14, align 4
  %110 = load i32, i32* %7, align 4
  %111 = srem i32 %109, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %108, i64 %112
  store i32 %107, i32* %113, align 4
  %114 = load i32, i32* %13, align 4
  %115 = ashr i32 %114, 8
  store i32 %115, i32* %13, align 4
  br label %116

116:                                              ; preds = %45
  %117 = load i32, i32* %14, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %14, align 4
  br label %42

119:                                              ; preds = %42
  %120 = load i32, i32* %13, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %148

122:                                              ; preds = %119
  %123 = load i32, i32* %7, align 4
  %124 = sub nsw i32 %123, 1
  store i32 %124, i32* %14, align 4
  br label %125

125:                                              ; preds = %144, %122
  %126 = load i32, i32* %14, align 4
  %127 = icmp sge i32 %126, 0
  br i1 %127, label %128, label %147

128:                                              ; preds = %125
  %129 = load i32*, i32** %8, align 8
  %130 = load i32, i32* %14, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %13, align 4
  %135 = add nsw i32 %134, %133
  store i32 %135, i32* %13, align 4
  %136 = load i32, i32* %13, align 4
  %137 = and i32 %136, 255
  %138 = load i32*, i32** %8, align 8
  %139 = load i32, i32* %14, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  store i32 %137, i32* %141, align 4
  %142 = load i32, i32* %13, align 4
  %143 = ashr i32 %142, 8
  store i32 %143, i32* %13, align 4
  br label %144

144:                                              ; preds = %128
  %145 = load i32, i32* %14, align 4
  %146 = add nsw i32 %145, -1
  store i32 %146, i32* %14, align 4
  br label %125

147:                                              ; preds = %125
  br label %148

148:                                              ; preds = %147, %119
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
