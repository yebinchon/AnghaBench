; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_mep-desc.c_build_hw_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_mep-desc.c_build_hw_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_9__**, %struct.TYPE_9__* }

@mep_cgen_hw_table = common dso_local global %struct.TYPE_9__* null, align 8
@MAX_HW = common dso_local global i32 0, align 4
@CGEN_HW_MACH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @build_hw_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_hw_table(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__**, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %4, align 4
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** @mep_cgen_hw_table, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i64 0
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %5, align 8
  %12 = load i32, i32* @MAX_HW, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 8
  %15 = trunc i64 %14 to i32
  %16 = call i64 @xmalloc(i32 %15)
  %17 = inttoptr i64 %16 to %struct.TYPE_9__**
  store %struct.TYPE_9__** %17, %struct.TYPE_9__*** %6, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 3
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %21, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  store i32 16, i32* %24, align 8
  %25 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %26 = load i32, i32* @MAX_HW, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 8
  %29 = trunc i64 %28 to i32
  %30 = call i32 @memset(%struct.TYPE_9__** %25, i32 0, i32 %29)
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %63, %1
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %66

39:                                               ; preds = %31
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i64 %42
  %44 = load i32, i32* @CGEN_HW_MACH, align 4
  %45 = call i32 @CGEN_HW_ATTR_VALUE(%struct.TYPE_9__* %43, i32 %44)
  %46 = load i32, i32* %4, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %39
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i64 %52
  %54 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %54, i64 %60
  store %struct.TYPE_9__* %53, %struct.TYPE_9__** %61, align 8
  br label %62

62:                                               ; preds = %49, %39
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %3, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %3, align 4
  br label %31

66:                                               ; preds = %31
  %67 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 2
  store %struct.TYPE_9__** %67, %struct.TYPE_9__*** %70, align 8
  %71 = load i32, i32* @MAX_HW, align 4
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  store i32 %71, i32* %74, align 4
  ret void
}

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_9__**, i32, i32) #1

declare dso_local i32 @CGEN_HW_ATTR_VALUE(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
