; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/BlocksRuntime/extr_runtime.c__Block_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/compiler-rt/lib/BlocksRuntime/extr_runtime.c__Block_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Block_layout = type { i32 }

@BLOCK_IS_GC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @_Block_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_Block_destroy(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.Block_layout*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %20

7:                                                ; preds = %1
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.Block_layout*
  store %struct.Block_layout* %9, %struct.Block_layout** %3, align 8
  %10 = load %struct.Block_layout*, %struct.Block_layout** %3, align 8
  %11 = getelementptr inbounds %struct.Block_layout, %struct.Block_layout* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @BLOCK_IS_GC, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %7
  br label %20

17:                                               ; preds = %7
  %18 = load %struct.Block_layout*, %struct.Block_layout** %3, align 8
  %19 = call i32 @_Block_release(%struct.Block_layout* %18)
  br label %20

20:                                               ; preds = %17, %16, %6
  ret void
}

declare dso_local i32 @_Block_release(%struct.Block_layout*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
