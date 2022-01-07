; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_diff3.c_reverse_diff3_blocklist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_diff3.c_reverse_diff3_blocklist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff3_block = type { %struct.diff3_block* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.diff3_block* (%struct.diff3_block*)* @reverse_diff3_blocklist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.diff3_block* @reverse_diff3_blocklist(%struct.diff3_block* %0) #0 {
  %2 = alloca %struct.diff3_block*, align 8
  %3 = alloca %struct.diff3_block*, align 8
  %4 = alloca %struct.diff3_block*, align 8
  %5 = alloca %struct.diff3_block*, align 8
  store %struct.diff3_block* %0, %struct.diff3_block** %2, align 8
  %6 = load %struct.diff3_block*, %struct.diff3_block** %2, align 8
  store %struct.diff3_block* %6, %struct.diff3_block** %3, align 8
  store %struct.diff3_block* null, %struct.diff3_block** %5, align 8
  br label %7

7:                                                ; preds = %18, %1
  %8 = load %struct.diff3_block*, %struct.diff3_block** %3, align 8
  %9 = icmp ne %struct.diff3_block* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %7
  %11 = load %struct.diff3_block*, %struct.diff3_block** %3, align 8
  %12 = getelementptr inbounds %struct.diff3_block, %struct.diff3_block* %11, i32 0, i32 0
  %13 = load %struct.diff3_block*, %struct.diff3_block** %12, align 8
  store %struct.diff3_block* %13, %struct.diff3_block** %4, align 8
  %14 = load %struct.diff3_block*, %struct.diff3_block** %5, align 8
  %15 = load %struct.diff3_block*, %struct.diff3_block** %3, align 8
  %16 = getelementptr inbounds %struct.diff3_block, %struct.diff3_block* %15, i32 0, i32 0
  store %struct.diff3_block* %14, %struct.diff3_block** %16, align 8
  %17 = load %struct.diff3_block*, %struct.diff3_block** %3, align 8
  store %struct.diff3_block* %17, %struct.diff3_block** %5, align 8
  br label %18

18:                                               ; preds = %10
  %19 = load %struct.diff3_block*, %struct.diff3_block** %4, align 8
  store %struct.diff3_block* %19, %struct.diff3_block** %3, align 8
  br label %7

20:                                               ; preds = %7
  %21 = load %struct.diff3_block*, %struct.diff3_block** %5, align 8
  ret %struct.diff3_block* %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
