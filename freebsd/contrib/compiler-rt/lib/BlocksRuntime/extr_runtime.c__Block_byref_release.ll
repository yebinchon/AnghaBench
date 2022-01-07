; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/BlocksRuntime/extr_runtime.c__Block_byref_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/BlocksRuntime/extr_runtime.c__Block_byref_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Block_byref = type { i32, i32 (%struct.Block_byref*)*, %struct.Block_byref* }
%struct.Block_layout = type { i32 }

@BLOCK_NEEDS_FREE = common dso_local global i32 0, align 4
@BLOCK_REFCOUNT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"_Block_byref_release: Block byref data structure at %p underflowed\0A\00", align 1
@BLOCK_HAS_COPY_DISPOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @_Block_byref_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_Block_byref_release(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.Block_byref*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.Block_byref*
  store %struct.Block_byref* %6, %struct.Block_byref** %3, align 8
  %7 = load %struct.Block_byref*, %struct.Block_byref** %3, align 8
  %8 = getelementptr inbounds %struct.Block_byref, %struct.Block_byref* %7, i32 0, i32 2
  %9 = load %struct.Block_byref*, %struct.Block_byref** %8, align 8
  store %struct.Block_byref* %9, %struct.Block_byref** %3, align 8
  %10 = load %struct.Block_byref*, %struct.Block_byref** %3, align 8
  %11 = getelementptr inbounds %struct.Block_byref, %struct.Block_byref* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @BLOCK_NEEDS_FREE, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %53

17:                                               ; preds = %1
  %18 = load %struct.Block_byref*, %struct.Block_byref** %3, align 8
  %19 = getelementptr inbounds %struct.Block_byref, %struct.Block_byref* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @BLOCK_REFCOUNT_MASK, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load i8*, i8** %2, align 8
  %27 = call i32 @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i8* %26)
  br label %53

28:                                               ; preds = %17
  %29 = load %struct.Block_byref*, %struct.Block_byref** %3, align 8
  %30 = getelementptr inbounds %struct.Block_byref, %struct.Block_byref* %29, i32 0, i32 0
  %31 = call i32 @latching_decr_int(i32* %30)
  %32 = load i32, i32* @BLOCK_REFCOUNT_MASK, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %28
  %36 = load %struct.Block_byref*, %struct.Block_byref** %3, align 8
  %37 = getelementptr inbounds %struct.Block_byref, %struct.Block_byref* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @BLOCK_HAS_COPY_DISPOSE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = load %struct.Block_byref*, %struct.Block_byref** %3, align 8
  %44 = getelementptr inbounds %struct.Block_byref, %struct.Block_byref* %43, i32 0, i32 1
  %45 = load i32 (%struct.Block_byref*)*, i32 (%struct.Block_byref*)** %44, align 8
  %46 = load %struct.Block_byref*, %struct.Block_byref** %3, align 8
  %47 = call i32 %45(%struct.Block_byref* %46)
  br label %48

48:                                               ; preds = %42, %35
  %49 = load %struct.Block_byref*, %struct.Block_byref** %3, align 8
  %50 = bitcast %struct.Block_byref* %49 to %struct.Block_layout*
  %51 = call i32 @_Block_deallocator(%struct.Block_layout* %50)
  br label %52

52:                                               ; preds = %48, %28
  br label %53

53:                                               ; preds = %16, %52, %25
  ret void
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @latching_decr_int(i32*) #1

declare dso_local i32 @_Block_deallocator(%struct.Block_layout*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
