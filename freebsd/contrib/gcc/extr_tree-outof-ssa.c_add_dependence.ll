; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-outof-ssa.c_add_dependence.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-outof-ssa.c_add_dependence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32*, %struct.TYPE_9__**, i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_9__* }

@NO_PARTITION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32, i32)* @add_dependence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_dependence(%struct.TYPE_10__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @SSA_NAME_VERSION(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i64 @bitmap_bit_p(i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %61

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %24, %18
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %9, align 8
  %23 = icmp ne %struct.TYPE_9__* %22, null
  br i1 %23, label %24, label %60

24:                                               ; preds = %19
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 4
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %29, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %39, i64 %41
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %44 = call i32 @add_info_to_list(%struct.TYPE_10__* %36, %struct.TYPE_9__** %42, %struct.TYPE_9__* %43)
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = bitcast i32* %51 to %struct.TYPE_9__**
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @add_value_to_list(%struct.TYPE_10__* %45, %struct.TYPE_9__** %52, i32 %53)
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @bitmap_set_bit(i32 %57, i32 %58)
  br label %19

60:                                               ; preds = %19
  br label %96

61:                                               ; preds = %3
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @var_to_partition(i32 %64, i32 %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @NO_PARTITION, align 4
  %69 = icmp ne i32 %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @gcc_assert(i32 %70)
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %75, i64 %77
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @add_value_to_list(%struct.TYPE_10__* %72, %struct.TYPE_9__** %78, i32 %79)
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = bitcast i32* %87 to %struct.TYPE_9__**
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @add_value_to_list(%struct.TYPE_10__* %81, %struct.TYPE_9__** %88, i32 %89)
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @bitmap_set_bit(i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %61, %60
  ret void
}

declare dso_local i32 @SSA_NAME_VERSION(i32) #1

declare dso_local i64 @bitmap_bit_p(i32, i32) #1

declare dso_local i32 @add_info_to_list(%struct.TYPE_10__*, %struct.TYPE_9__**, %struct.TYPE_9__*) #1

declare dso_local i32 @add_value_to_list(%struct.TYPE_10__*, %struct.TYPE_9__**, i32) #1

declare dso_local i32 @bitmap_set_bit(i32, i32) #1

declare dso_local i32 @var_to_partition(i32, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
