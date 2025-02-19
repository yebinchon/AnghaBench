; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_mep-desc.c_build_operand_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_mep-desc.c_build_operand_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_10__**, %struct.TYPE_10__* }

@mep_cgen_operand_table = common dso_local global %struct.TYPE_10__* null, align 8
@MAX_OPERANDS = common dso_local global i32 0, align 4
@CGEN_OPERAND_MACH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @build_operand_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_operand_table(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_10__**, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %4, align 4
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** @mep_cgen_operand_table, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i64 0
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %5, align 8
  %12 = load i32, i32* @MAX_OPERANDS, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 8
  %15 = trunc i64 %14 to i32
  %16 = call %struct.TYPE_10__** @xmalloc(i32 %15)
  store %struct.TYPE_10__** %16, %struct.TYPE_10__*** %6, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 3
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %20, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  store i32 16, i32* %23, align 8
  %24 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  %25 = load i32, i32* @MAX_OPERANDS, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 8
  %28 = trunc i64 %27 to i32
  %29 = call i32 @memset(%struct.TYPE_10__** %24, i32 0, i32 %28)
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %62, %1
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %65

38:                                               ; preds = %30
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i64 %41
  %43 = load i32, i32* @CGEN_OPERAND_MACH, align 4
  %44 = call i32 @CGEN_OPERAND_ATTR_VALUE(%struct.TYPE_10__* %42, i32 %43)
  %45 = load i32, i32* %4, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %38
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i64 %51
  %53 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %53, i64 %59
  store %struct.TYPE_10__* %52, %struct.TYPE_10__** %60, align 8
  br label %61

61:                                               ; preds = %48, %38
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %3, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %3, align 4
  br label %30

65:                                               ; preds = %30
  %66 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 2
  store %struct.TYPE_10__** %66, %struct.TYPE_10__*** %69, align 8
  %70 = load i32, i32* @MAX_OPERANDS, align 4
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  store i32 %70, i32* %73, align 4
  ret void
}

declare dso_local %struct.TYPE_10__** @xmalloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_10__**, i32, i32) #1

declare dso_local i32 @CGEN_OPERAND_ATTR_VALUE(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
