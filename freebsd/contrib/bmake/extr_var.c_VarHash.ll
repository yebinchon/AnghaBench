; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_var.c_VarHash.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_var.c_VarHash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VarHash.hexdigits = internal constant [16 x i8] c"0123456789abcdef", align 16
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @VarHash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @VarHash(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  store i8* %11, i8** %6, align 8
  store i32 -1759636613, i32* %7, align 4
  store i32 -1789642873, i32* %9, align 4
  store i32 718793509, i32* %10, align 4
  %12 = load i8*, i8** %2, align 8
  %13 = call i64 @strlen(i8* %12)
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  store i64 %14, i64* %4, align 8
  br label %15

15:                                               ; preds = %70, %1
  %16 = load i64, i64* %4, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %99

18:                                               ; preds = %15
  store i32 0, i32* %8, align 4
  %19 = load i64, i64* %4, align 8
  switch i64 %19, label %20 [
    i64 3, label %47
    i64 2, label %55
    i64 1, label %63
  ]

20:                                               ; preds = %18
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 3
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = shl i32 %24, 24
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 2
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = shl i32 %29, 16
  %31 = or i32 %25, %30
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = shl i32 %35, 8
  %37 = or i32 %31, %36
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = or i32 %37, %41
  store i32 %42, i32* %8, align 4
  %43 = load i64, i64* %4, align 8
  %44 = sub i64 %43, 4
  store i64 %44, i64* %4, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 4
  store i8* %46, i8** %6, align 8
  br label %70

47:                                               ; preds = %18
  %48 = load i8*, i8** %6, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 2
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = shl i32 %51, 16
  %53 = load i32, i32* %8, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %18, %47
  %56 = load i8*, i8** %6, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = shl i32 %59, 8
  %61 = load i32, i32* %8, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %18, %55
  %64 = load i8*, i8** %6, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = load i32, i32* %8, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %8, align 4
  store i64 0, i64* %4, align 8
  br label %70

70:                                               ; preds = %63, %20
  %71 = load i32, i32* %9, align 4
  %72 = mul i32 %71, 5
  %73 = add i32 %72, 2071795100
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %10, align 4
  %75 = mul i32 %74, 5
  %76 = add i32 %75, 1808688022
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %8, align 4
  %79 = mul i32 %78, %77
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = shl i32 %80, 11
  %82 = load i32, i32* %8, align 4
  %83 = lshr i32 %82, 21
  %84 = xor i32 %81, %83
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %8, align 4
  %87 = mul i32 %86, %85
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %7, align 4
  %89 = shl i32 %88, 13
  %90 = load i32, i32* %7, align 4
  %91 = lshr i32 %90, 19
  %92 = xor i32 %89, %91
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = mul i32 %93, 5
  %95 = add i32 %94, 1390208809
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %7, align 4
  %98 = xor i32 %97, %96
  store i32 %98, i32* %7, align 4
  br label %15

99:                                               ; preds = %15
  %100 = load i64, i64* %5, align 8
  %101 = load i32, i32* %7, align 4
  %102 = zext i32 %101 to i64
  %103 = xor i64 %102, %100
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = mul i32 %105, -2048144789
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  %108 = lshr i32 %107, 13
  %109 = load i32, i32* %7, align 4
  %110 = xor i32 %109, %108
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %7, align 4
  %112 = mul i32 %111, -1028477387
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* %7, align 4
  %114 = lshr i32 %113, 16
  %115 = load i32, i32* %7, align 4
  %116 = xor i32 %115, %114
  store i32 %116, i32* %7, align 4
  %117 = call i32 @Buf_Init(i32* %3, i32 0)
  store i64 0, i64* %4, align 8
  br label %118

118:                                              ; preds = %130, %99
  %119 = load i64, i64* %4, align 8
  %120 = icmp ult i64 %119, 8
  br i1 %120, label %121, label %133

121:                                              ; preds = %118
  %122 = load i32, i32* %7, align 4
  %123 = and i32 %122, 15
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds [16 x i8], [16 x i8]* @VarHash.hexdigits, i64 0, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = call i32 @Buf_AddByte(i32* %3, i8 signext %126)
  %128 = load i32, i32* %7, align 4
  %129 = lshr i32 %128, 4
  store i32 %129, i32* %7, align 4
  br label %130

130:                                              ; preds = %121
  %131 = load i64, i64* %4, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %4, align 8
  br label %118

133:                                              ; preds = %118
  %134 = load i32, i32* @FALSE, align 4
  %135 = call i8* @Buf_Destroy(i32* %3, i32 %134)
  ret i8* %135
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @Buf_Init(i32*, i32) #1

declare dso_local i32 @Buf_AddByte(i32*, i8 signext) #1

declare dso_local i8* @Buf_Destroy(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
