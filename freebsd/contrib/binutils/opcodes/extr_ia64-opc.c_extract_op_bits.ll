; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ia64-opc.c_extract_op_bits.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ia64-opc.c_extract_op_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dis_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @extract_op_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extract_op_bits(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = sdiv i32 %14, 8
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, %15
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %5, align 4
  %19 = srem i32 %18, 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %61

21:                                               ; preds = %3
  %22 = load i32*, i32** @dis_table, align 8
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %5, align 4
  %29 = srem i32 %28, 8
  %30 = sub nsw i32 8, %29
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = shl i32 1, %31
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %21
  %38 = load i32, i32* %6, align 4
  br label %41

39:                                               ; preds = %21
  %40 = load i32, i32* %9, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %11, align 4
  %45 = sub nsw i32 %43, %44
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %11, align 4
  %48 = shl i32 %46, %47
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %10, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* %12, align 4
  %53 = lshr i32 %51, %52
  %54 = or i32 %48, %53
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %6, align 4
  %60 = sub nsw i32 %59, %58
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %41, %3
  br label %62

62:                                               ; preds = %65, %61
  %63 = load i32, i32* %6, align 4
  %64 = icmp sge i32 %63, 8
  br i1 %64, label %65, label %78

65:                                               ; preds = %62
  %66 = load i32, i32* %7, align 4
  %67 = shl i32 %66, 8
  %68 = load i32*, i32** @dis_table, align 8
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %4, align 4
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, 255
  %75 = or i32 %67, %74
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %6, align 4
  %77 = sub nsw i32 %76, 8
  store i32 %77, i32* %6, align 4
  br label %62

78:                                               ; preds = %62
  %79 = load i32, i32* %6, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %97

81:                                               ; preds = %78
  %82 = load i32*, i32** @dis_table, align 8
  %83 = load i32, i32* %4, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %4, align 4
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 255
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %6, align 4
  %91 = shl i32 %89, %90
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %6, align 4
  %94 = sub nsw i32 8, %93
  %95 = lshr i32 %92, %94
  %96 = or i32 %91, %95
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %81, %78
  %98 = load i32, i32* %7, align 4
  ret i32 %98
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
