; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr-util/crypto/extr_crypt_blowfish.c_BF_set_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr-util/crypto/extr_crypt_blowfish.c_BF_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@BF_N = common dso_local global i32 0, align 4
@BF_init_state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32*, i8)* @BF_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @BF_set_key(i8* %0, i32* %1, i32* %2, i8 zeroext %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [2 x i32], align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8 %3, i8* %8, align 1
  %17 = load i8*, i8** %5, align 8
  store i8* %17, i8** %9, align 8
  %18 = load i8, i8* %8, align 1
  %19 = zext i8 %18 to i32
  %20 = and i32 %19, 1
  store i32 %20, i32* %10, align 4
  %21 = load i8, i8* %8, align 1
  %22 = zext i8 %21 to i32
  %23 = and i32 %22, 2
  %24 = shl i32 %23, 15
  store i32 %24, i32* %13, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %11, align 4
  br label %25

25:                                               ; preds = %106, %4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @BF_N, align 4
  %28 = add nsw i32 %27, 2
  %29 = icmp ult i32 %26, %28
  br i1 %29, label %30, label %109

30:                                               ; preds = %25
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  store i32 0, i32* %31, align 4
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  store i32 0, i32* %32, align 4
  store i32 0, i32* %12, align 4
  br label %33

33:                                               ; preds = %73, %30
  %34 = load i32, i32* %12, align 4
  %35 = icmp ult i32 %34, 4
  br i1 %35, label %36, label %76

36:                                               ; preds = %33
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 8
  store i32 %39, i32* %37, align 4
  %40 = load i8*, i8** %9, align 8
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %42
  store i32 %45, i32* %43, align 4
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 8
  store i32 %48, i32* %46, align 4
  %49 = load i8*, i8** %9, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %51
  store i32 %54, i32* %52, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %36
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 128
  %61 = load i32, i32* %14, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %14, align 4
  br label %63

63:                                               ; preds = %57, %36
  %64 = load i8*, i8** %9, align 8
  %65 = load i8, i8* %64, align 1
  %66 = icmp ne i8 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = load i8*, i8** %5, align 8
  store i8* %68, i8** %9, align 8
  br label %72

69:                                               ; preds = %63
  %70 = load i8*, i8** %9, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %9, align 8
  br label %72

72:                                               ; preds = %69, %67
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %12, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %12, align 4
  br label %33

76:                                               ; preds = %33
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = xor i32 %78, %80
  %82 = load i32, i32* %15, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %15, align 4
  %84 = load i32, i32* %10, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %6, align 8
  %89 = load i32, i32* %11, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 %87, i32* %91, align 4
  %92 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @BF_init_state, i32 0, i32 0), align 8
  %93 = load i32, i32* %11, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %10, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = xor i32 %96, %100
  %102 = load i32*, i32** %7, align 8
  %103 = load i32, i32* %11, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32 %101, i32* %105, align 4
  br label %106

106:                                              ; preds = %76
  %107 = load i32, i32* %11, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %11, align 4
  br label %25

109:                                              ; preds = %25
  %110 = load i32, i32* %15, align 4
  %111 = ashr i32 %110, 16
  %112 = load i32, i32* %15, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %15, align 4
  %114 = load i32, i32* %15, align 4
  %115 = and i32 %114, 65535
  store i32 %115, i32* %15, align 4
  %116 = load i32, i32* %15, align 4
  %117 = add nsw i32 %116, 65535
  store i32 %117, i32* %15, align 4
  %118 = load i32, i32* %14, align 4
  %119 = shl i32 %118, 9
  store i32 %119, i32* %14, align 4
  %120 = load i32, i32* %15, align 4
  %121 = xor i32 %120, -1
  %122 = load i32, i32* %13, align 4
  %123 = and i32 %121, %122
  %124 = load i32, i32* %14, align 4
  %125 = and i32 %124, %123
  store i32 %125, i32* %14, align 4
  %126 = load i32, i32* %14, align 4
  %127 = load i32*, i32** %7, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  %129 = load i32, i32* %128, align 4
  %130 = xor i32 %129, %126
  store i32 %130, i32* %128, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
