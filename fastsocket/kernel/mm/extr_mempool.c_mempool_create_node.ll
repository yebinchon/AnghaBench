; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mempool.c_mempool_create_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mempool.c_mempool_create_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i8*, i8* (i32, i8*)*, i32*, i32, i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @mempool_create_node(i32 %0, i8* (i32, i8*)** %1, i32* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8* (i32, i8*)**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store i8* (i32, i8*)** %1, i8* (i32, i8*)*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = load i32, i32* @__GFP_ZERO, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* %11, align 4
  %18 = call i8* @kmalloc_node(i32 48, i32 %16, i32 %17)
  %19 = bitcast i8* %18 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %12, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %21 = icmp ne %struct.TYPE_6__* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %5
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %6, align 8
  br label %92

23:                                               ; preds = %5
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 8
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call i8* @kmalloc_node(i32 %27, i32 %28, i32 %29)
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 7
  store i8* %30, i8** %32, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 7
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %23
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %39 = call i32 @kfree(%struct.TYPE_6__* %38)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %6, align 8
  br label %92

40:                                               ; preds = %23
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 6
  %43 = call i32 @spin_lock_init(i32* %42)
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 5
  %52 = call i32 @init_waitqueue_head(i32* %51)
  %53 = load i8* (i32, i8*)**, i8* (i32, i8*)*** %8, align 8
  %54 = bitcast i8* (i32, i8*)** %53 to i8* (i32, i8*)*
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 3
  store i8* (i32, i8*)* %54, i8* (i32, i8*)** %56, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 4
  store i32* %57, i32** %59, align 8
  br label %60

60:                                               ; preds = %86, %40
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %90

68:                                               ; preds = %60
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 3
  %71 = load i8* (i32, i8*)*, i8* (i32, i8*)** %70, align 8
  %72 = load i32, i32* @GFP_KERNEL, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = load i8*, i8** %74, align 8
  %76 = call i8* %71(i32 %72, i8* %75)
  store i8* %76, i8** %13, align 8
  %77 = load i8*, i8** %13, align 8
  %78 = icmp ne i8* %77, null
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %68
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %85 = call i32 @free_pool(%struct.TYPE_6__* %84)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %6, align 8
  br label %92

86:                                               ; preds = %68
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %88 = load i8*, i8** %13, align 8
  %89 = call i32 @add_element(%struct.TYPE_6__* %87, i8* %88)
  br label %60

90:                                               ; preds = %60
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  store %struct.TYPE_6__* %91, %struct.TYPE_6__** %6, align 8
  br label %92

92:                                               ; preds = %90, %83, %37, %22
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  ret %struct.TYPE_6__* %93
}

declare dso_local i8* @kmalloc_node(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_6__*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @free_pool(%struct.TYPE_6__*) #1

declare dso_local i32 @add_element(%struct.TYPE_6__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
