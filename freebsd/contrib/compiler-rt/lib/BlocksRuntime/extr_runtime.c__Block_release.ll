; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/BlocksRuntime/extr_runtime.c__Block_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/BlocksRuntime/extr_runtime.c__Block_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Block_layout = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.Block_layout*)* }

@BLOCK_REFCOUNT_MASK = common dso_local global i32 0, align 4
@BLOCK_IS_GC = common dso_local global i32 0, align 4
@BLOCK_NEEDS_FREE = common dso_local global i32 0, align 4
@BLOCK_HAS_COPY_DISPOSE = common dso_local global i32 0, align 4
@BLOCK_IS_GLOBAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Block_release called upon a stack Block: %p, ignored\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_Block_release(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.Block_layout*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.Block_layout*
  store %struct.Block_layout* %6, %struct.Block_layout** %3, align 8
  %7 = load %struct.Block_layout*, %struct.Block_layout** %3, align 8
  %8 = icmp ne %struct.Block_layout* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %68

10:                                               ; preds = %1
  %11 = load %struct.Block_layout*, %struct.Block_layout** %3, align 8
  %12 = getelementptr inbounds %struct.Block_layout, %struct.Block_layout* %11, i32 0, i32 0
  %13 = call i32 @latching_decr_int(i32* %12)
  %14 = load i32, i32* @BLOCK_REFCOUNT_MASK, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  br label %68

19:                                               ; preds = %10
  %20 = load %struct.Block_layout*, %struct.Block_layout** %3, align 8
  %21 = getelementptr inbounds %struct.Block_layout, %struct.Block_layout* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @BLOCK_IS_GC, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load %struct.Block_layout*, %struct.Block_layout** %3, align 8
  %28 = call i32 @_Block_setHasRefcount(%struct.Block_layout* %27, i32 0)
  br label %68

29:                                               ; preds = %19
  %30 = load %struct.Block_layout*, %struct.Block_layout** %3, align 8
  %31 = getelementptr inbounds %struct.Block_layout, %struct.Block_layout* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @BLOCK_NEEDS_FREE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %29
  %37 = load %struct.Block_layout*, %struct.Block_layout** %3, align 8
  %38 = getelementptr inbounds %struct.Block_layout, %struct.Block_layout* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @BLOCK_HAS_COPY_DISPOSE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %36
  %44 = load %struct.Block_layout*, %struct.Block_layout** %3, align 8
  %45 = getelementptr inbounds %struct.Block_layout, %struct.Block_layout* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32 (%struct.Block_layout*)*, i32 (%struct.Block_layout*)** %47, align 8
  %49 = load %struct.Block_layout*, %struct.Block_layout** %3, align 8
  %50 = call i32 %48(%struct.Block_layout* %49)
  br label %51

51:                                               ; preds = %43, %36
  %52 = load %struct.Block_layout*, %struct.Block_layout** %3, align 8
  %53 = call i32 @_Block_deallocator(%struct.Block_layout* %52)
  br label %67

54:                                               ; preds = %29
  %55 = load %struct.Block_layout*, %struct.Block_layout** %3, align 8
  %56 = getelementptr inbounds %struct.Block_layout, %struct.Block_layout* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @BLOCK_IS_GLOBAL, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %66

62:                                               ; preds = %54
  %63 = load %struct.Block_layout*, %struct.Block_layout** %3, align 8
  %64 = bitcast %struct.Block_layout* %63 to i8*
  %65 = call i32 @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* %64)
  br label %66

66:                                               ; preds = %62, %61
  br label %67

67:                                               ; preds = %66, %51
  br label %68

68:                                               ; preds = %9, %18, %67, %26
  ret void
}

declare dso_local i32 @latching_decr_int(i32*) #1

declare dso_local i32 @_Block_setHasRefcount(%struct.Block_layout*, i32) #1

declare dso_local i32 @_Block_deallocator(%struct.Block_layout*) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
