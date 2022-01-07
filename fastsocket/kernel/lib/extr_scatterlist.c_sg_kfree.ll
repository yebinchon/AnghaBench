; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_scatterlist.c_sg_kfree.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_scatterlist.c_sg_kfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32 }

@SG_MAX_SINGLE_ALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scatterlist*, i32)* @sg_kfree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sg_kfree(%struct.scatterlist* %0, i32 %1) #0 {
  %3 = alloca %struct.scatterlist*, align 8
  %4 = alloca i32, align 4
  store %struct.scatterlist* %0, %struct.scatterlist** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @SG_MAX_SINGLE_ALLOC, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load %struct.scatterlist*, %struct.scatterlist** %3, align 8
  %10 = ptrtoint %struct.scatterlist* %9 to i64
  %11 = call i32 @free_page(i64 %10)
  br label %15

12:                                               ; preds = %2
  %13 = load %struct.scatterlist*, %struct.scatterlist** %3, align 8
  %14 = call i32 @kfree(%struct.scatterlist* %13)
  br label %15

15:                                               ; preds = %12, %8
  ret void
}

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @kfree(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
