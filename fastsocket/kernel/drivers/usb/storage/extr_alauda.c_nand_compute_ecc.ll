; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_alauda.c_nand_compute_ecc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_alauda.c_nand_compute_ecc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@parity = common dso_local global i8* null, align 8
@ecc2 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @nand_compute_ecc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nand_compute_ecc(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca [8 x i8], align 1
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8 0, i8* %8, align 1
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %18, %2
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 8
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 %16
  store i8 0, i8* %17, align 1
  br label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %6, align 4
  br label %11

21:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %69, %21
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 256
  br i1 %24, label %25, label %72

25:                                               ; preds = %22
  %26 = load i8*, i8** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = load i8, i8* %8, align 1
  %33 = zext i8 %32 to i32
  %34 = xor i32 %33, %31
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %8, align 1
  %36 = load i8*, i8** @parity, align 8
  %37 = load i8*, i8** %3, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i64
  %43 = getelementptr inbounds i8, i8* %36, i64 %42
  %44 = load i8, i8* %43, align 1
  store i8 %44, i8* %9, align 1
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %65, %25
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %46, 8
  br i1 %47, label %48, label %68

48:                                               ; preds = %45
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %6, align 4
  %51 = shl i32 1, %50
  %52 = and i32 %49, %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %48
  %55 = load i8, i8* %9, align 1
  %56 = zext i8 %55 to i32
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = xor i32 %61, %56
  %63 = trunc i32 %62 to i8
  store i8 %63, i8* %59, align 1
  br label %64

64:                                               ; preds = %54, %48
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %45

68:                                               ; preds = %45
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %22

72:                                               ; preds = %22
  %73 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 3
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = shl i32 %75, 6
  %77 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 2
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = shl i32 %79, 4
  %81 = add nsw i32 %76, %80
  %82 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 1
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = shl i32 %84, 2
  %86 = add nsw i32 %81, %85
  %87 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = add nsw i32 %86, %89
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = shl i32 %92, 1
  %94 = xor i32 %91, %93
  %95 = load i8*, i8** @parity, align 8
  %96 = load i8, i8* %8, align 1
  %97 = zext i8 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp ne i32 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i32 170, i32 0
  %104 = xor i32 %94, %103
  %105 = xor i32 %104, -1
  %106 = trunc i32 %105 to i8
  %107 = load i8*, i8** %4, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 0
  store i8 %106, i8* %108, align 1
  %109 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 7
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = shl i32 %111, 6
  %113 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 6
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = shl i32 %115, 4
  %117 = add nsw i32 %112, %116
  %118 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 5
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = shl i32 %120, 2
  %122 = add nsw i32 %117, %121
  %123 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 4
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i32
  %126 = add nsw i32 %122, %125
  store i32 %126, i32* %7, align 4
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* %7, align 4
  %129 = shl i32 %128, 1
  %130 = xor i32 %127, %129
  %131 = load i8*, i8** @parity, align 8
  %132 = load i8, i8* %8, align 1
  %133 = zext i8 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp ne i32 %136, 0
  %138 = zext i1 %137 to i64
  %139 = select i1 %137, i32 170, i32 0
  %140 = xor i32 %130, %139
  %141 = xor i32 %140, -1
  %142 = trunc i32 %141 to i8
  %143 = load i8*, i8** %4, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 1
  store i8 %142, i8* %144, align 1
  %145 = load i8*, i8** @ecc2, align 8
  %146 = load i8, i8* %8, align 1
  %147 = zext i8 %146 to i64
  %148 = getelementptr inbounds i8, i8* %145, i64 %147
  %149 = load i8, i8* %148, align 1
  %150 = load i8*, i8** %4, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 2
  store i8 %149, i8* %151, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
