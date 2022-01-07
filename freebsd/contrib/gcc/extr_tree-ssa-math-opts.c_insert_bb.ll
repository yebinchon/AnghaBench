; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-math-opts.c_insert_bb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-math-opts.c_insert_bb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.occurrence = type { %struct.occurrence*, %struct.occurrence*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@CDI_DOMINATORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.occurrence*, %struct.TYPE_7__*, %struct.occurrence**)* @insert_bb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_bb(%struct.occurrence* %0, %struct.TYPE_7__* %1, %struct.occurrence** %2) #0 {
  %4 = alloca %struct.occurrence*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.occurrence**, align 8
  %7 = alloca %struct.occurrence*, align 8
  %8 = alloca %struct.occurrence**, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  store %struct.occurrence* %0, %struct.occurrence** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store %struct.occurrence** %2, %struct.occurrence*** %6, align 8
  %12 = load %struct.occurrence**, %struct.occurrence*** %6, align 8
  store %struct.occurrence** %12, %struct.occurrence*** %8, align 8
  br label %13

13:                                               ; preds = %82, %3
  %14 = load %struct.occurrence**, %struct.occurrence*** %8, align 8
  %15 = load %struct.occurrence*, %struct.occurrence** %14, align 8
  store %struct.occurrence* %15, %struct.occurrence** %7, align 8
  %16 = icmp ne %struct.occurrence* %15, null
  br i1 %16, label %17, label %83

17:                                               ; preds = %13
  %18 = load %struct.occurrence*, %struct.occurrence** %4, align 8
  %19 = getelementptr inbounds %struct.occurrence, %struct.occurrence* %18, i32 0, i32 2
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %9, align 8
  %21 = load %struct.occurrence*, %struct.occurrence** %7, align 8
  %22 = getelementptr inbounds %struct.occurrence, %struct.occurrence* %21, i32 0, i32 2
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %10, align 8
  %24 = load i32, i32* @CDI_DOMINATORS, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %27 = call %struct.TYPE_7__* @nearest_common_dominator(i32 %24, %struct.TYPE_7__* %25, %struct.TYPE_7__* %26)
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %11, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %30 = icmp eq %struct.TYPE_7__* %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %17
  %32 = load %struct.occurrence*, %struct.occurrence** %7, align 8
  %33 = getelementptr inbounds %struct.occurrence, %struct.occurrence* %32, i32 0, i32 0
  %34 = load %struct.occurrence*, %struct.occurrence** %33, align 8
  %35 = load %struct.occurrence**, %struct.occurrence*** %8, align 8
  store %struct.occurrence* %34, %struct.occurrence** %35, align 8
  %36 = load %struct.occurrence*, %struct.occurrence** %4, align 8
  %37 = getelementptr inbounds %struct.occurrence, %struct.occurrence* %36, i32 0, i32 1
  %38 = load %struct.occurrence*, %struct.occurrence** %37, align 8
  %39 = load %struct.occurrence*, %struct.occurrence** %7, align 8
  %40 = getelementptr inbounds %struct.occurrence, %struct.occurrence* %39, i32 0, i32 0
  store %struct.occurrence* %38, %struct.occurrence** %40, align 8
  %41 = load %struct.occurrence*, %struct.occurrence** %7, align 8
  %42 = load %struct.occurrence*, %struct.occurrence** %4, align 8
  %43 = getelementptr inbounds %struct.occurrence, %struct.occurrence* %42, i32 0, i32 1
  store %struct.occurrence* %41, %struct.occurrence** %43, align 8
  br label %82

44:                                               ; preds = %17
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %47 = icmp eq %struct.TYPE_7__* %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load %struct.occurrence*, %struct.occurrence** %4, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %51 = load %struct.occurrence*, %struct.occurrence** %7, align 8
  %52 = getelementptr inbounds %struct.occurrence, %struct.occurrence* %51, i32 0, i32 1
  call void @insert_bb(%struct.occurrence* %49, %struct.TYPE_7__* %50, %struct.occurrence** %52)
  br label %90

53:                                               ; preds = %44
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %56 = icmp ne %struct.TYPE_7__* %54, %55
  br i1 %56, label %57, label %77

57:                                               ; preds = %53
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i32 @gcc_assert(i32 %63)
  %65 = load %struct.occurrence*, %struct.occurrence** %7, align 8
  %66 = getelementptr inbounds %struct.occurrence, %struct.occurrence* %65, i32 0, i32 0
  %67 = load %struct.occurrence*, %struct.occurrence** %66, align 8
  %68 = load %struct.occurrence**, %struct.occurrence*** %8, align 8
  store %struct.occurrence* %67, %struct.occurrence** %68, align 8
  %69 = load %struct.occurrence*, %struct.occurrence** %7, align 8
  %70 = load %struct.occurrence*, %struct.occurrence** %4, align 8
  %71 = getelementptr inbounds %struct.occurrence, %struct.occurrence* %70, i32 0, i32 0
  store %struct.occurrence* %69, %struct.occurrence** %71, align 8
  %72 = load %struct.occurrence*, %struct.occurrence** %7, align 8
  %73 = getelementptr inbounds %struct.occurrence, %struct.occurrence* %72, i32 0, i32 0
  store %struct.occurrence* null, %struct.occurrence** %73, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %75 = load %struct.occurrence*, %struct.occurrence** %4, align 8
  %76 = call %struct.occurrence* @occ_new(%struct.TYPE_7__* %74, %struct.occurrence* %75)
  store %struct.occurrence* %76, %struct.occurrence** %4, align 8
  br label %80

77:                                               ; preds = %53
  %78 = load %struct.occurrence*, %struct.occurrence** %7, align 8
  %79 = getelementptr inbounds %struct.occurrence, %struct.occurrence* %78, i32 0, i32 0
  store %struct.occurrence** %79, %struct.occurrence*** %8, align 8
  br label %80

80:                                               ; preds = %77, %57
  br label %81

81:                                               ; preds = %80
  br label %82

82:                                               ; preds = %81, %31
  br label %13

83:                                               ; preds = %13
  %84 = load %struct.occurrence**, %struct.occurrence*** %6, align 8
  %85 = load %struct.occurrence*, %struct.occurrence** %84, align 8
  %86 = load %struct.occurrence*, %struct.occurrence** %4, align 8
  %87 = getelementptr inbounds %struct.occurrence, %struct.occurrence* %86, i32 0, i32 0
  store %struct.occurrence* %85, %struct.occurrence** %87, align 8
  %88 = load %struct.occurrence*, %struct.occurrence** %4, align 8
  %89 = load %struct.occurrence**, %struct.occurrence*** %6, align 8
  store %struct.occurrence* %88, %struct.occurrence** %89, align 8
  br label %90

90:                                               ; preds = %83, %48
  ret void
}

declare dso_local %struct.TYPE_7__* @nearest_common_dominator(i32, %struct.TYPE_7__*, %struct.TYPE_7__*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local %struct.occurrence* @occ_new(%struct.TYPE_7__*, %struct.occurrence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
