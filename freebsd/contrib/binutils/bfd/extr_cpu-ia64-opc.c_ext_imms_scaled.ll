; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_cpu-ia64-opc.c_ext_imms_scaled.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_cpu-ia64-opc.c_ext_imms_scaled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ia64_operand = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ia64_operand*, i32, i32*, i32)* @ext_imms_scaled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ext_imms_scaled(%struct.ia64_operand* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ia64_operand*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ia64_operand* %0, %struct.ia64_operand** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %63, %4
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.ia64_operand*, %struct.ia64_operand** %5, align 8
  %17 = getelementptr inbounds %struct.ia64_operand, %struct.ia64_operand* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = call i32 @NELEMS(%struct.TYPE_2__* %18)
  %20 = icmp slt i32 %15, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %14
  %22 = load %struct.ia64_operand*, %struct.ia64_operand** %5, align 8
  %23 = getelementptr inbounds %struct.ia64_operand, %struct.ia64_operand* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br label %31

31:                                               ; preds = %21, %14
  %32 = phi i1 [ false, %14 ], [ %30, %21 ]
  br i1 %32, label %33, label %66

33:                                               ; preds = %31
  %34 = load %struct.ia64_operand*, %struct.ia64_operand** %5, align 8
  %35 = getelementptr inbounds %struct.ia64_operand, %struct.ia64_operand* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.ia64_operand*, %struct.ia64_operand** %5, align 8
  %44 = getelementptr inbounds %struct.ia64_operand, %struct.ia64_operand* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = ashr i32 %42, %50
  %52 = load i32, i32* %10, align 4
  %53 = shl i32 1, %52
  %54 = sub nsw i32 %53, 1
  %55 = and i32 %51, %54
  %56 = load i32, i32* %11, align 4
  %57 = shl i32 %55, %56
  %58 = load i32, i32* %12, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %11, align 4
  br label %63

63:                                               ; preds = %33
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %14

66:                                               ; preds = %31
  %67 = load i32, i32* %11, align 4
  %68 = sub nsw i32 %67, 1
  %69 = shl i32 1, %68
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %13, align 4
  %72 = xor i32 %70, %71
  %73 = load i32, i32* %13, align 4
  %74 = sub nsw i32 %72, %73
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %8, align 4
  %77 = shl i32 %75, %76
  %78 = load i32*, i32** %7, align 8
  store i32 %77, i32* %78, align 4
  ret i8* null
}

declare dso_local i32 @NELEMS(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
