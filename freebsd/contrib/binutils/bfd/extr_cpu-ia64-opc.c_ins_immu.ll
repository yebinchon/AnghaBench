; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_cpu-ia64-opc.c_ins_immu.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_cpu-ia64-opc.c_ins_immu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ia64_operand = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"integer operand out of range\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ia64_operand*, i32, i32*)* @ins_immu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ins_immu(%struct.ia64_operand* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ia64_operand*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ia64_operand* %0, %struct.ia64_operand** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %63, %3
  %11 = load i32, i32* %9, align 4
  %12 = load %struct.ia64_operand*, %struct.ia64_operand** %5, align 8
  %13 = getelementptr inbounds %struct.ia64_operand, %struct.ia64_operand* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = call i32 @NELEMS(%struct.TYPE_2__* %14)
  %16 = icmp slt i32 %11, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %10
  %18 = load %struct.ia64_operand*, %struct.ia64_operand** %5, align 8
  %19 = getelementptr inbounds %struct.ia64_operand, %struct.ia64_operand* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br label %27

27:                                               ; preds = %17, %10
  %28 = phi i1 [ false, %10 ], [ %26, %17 ]
  br i1 %28, label %29, label %66

29:                                               ; preds = %27
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.ia64_operand*, %struct.ia64_operand** %5, align 8
  %32 = getelementptr inbounds %struct.ia64_operand, %struct.ia64_operand* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 1, %38
  %40 = sub nsw i32 %39, 1
  %41 = and i32 %30, %40
  %42 = load %struct.ia64_operand*, %struct.ia64_operand** %5, align 8
  %43 = getelementptr inbounds %struct.ia64_operand, %struct.ia64_operand* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %41, %49
  %51 = load i32, i32* %8, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %8, align 4
  %53 = load %struct.ia64_operand*, %struct.ia64_operand** %5, align 8
  %54 = getelementptr inbounds %struct.ia64_operand, %struct.ia64_operand* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %6, align 4
  %62 = ashr i32 %61, %60
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %29
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %10

66:                                               ; preds = %27
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %75

70:                                               ; preds = %66
  %71 = load i32, i32* %8, align 4
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %71
  store i32 %74, i32* %72, align 4
  store i8* null, i8** %4, align 8
  br label %75

75:                                               ; preds = %70, %69
  %76 = load i8*, i8** %4, align 8
  ret i8* %76
}

declare dso_local i32 @NELEMS(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
