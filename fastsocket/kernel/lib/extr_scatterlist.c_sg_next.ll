; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_scatterlist.c_sg_next.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_scatterlist.c_sg_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i64 }

@SG_MAGIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.scatterlist* @sg_next(%struct.scatterlist* %0) #0 {
  %2 = alloca %struct.scatterlist*, align 8
  %3 = alloca %struct.scatterlist*, align 8
  store %struct.scatterlist* %0, %struct.scatterlist** %3, align 8
  %4 = load %struct.scatterlist*, %struct.scatterlist** %3, align 8
  %5 = call i64 @sg_is_last(%struct.scatterlist* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store %struct.scatterlist* null, %struct.scatterlist** %2, align 8
  br label %20

8:                                                ; preds = %1
  %9 = load %struct.scatterlist*, %struct.scatterlist** %3, align 8
  %10 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %9, i32 1
  store %struct.scatterlist* %10, %struct.scatterlist** %3, align 8
  %11 = load %struct.scatterlist*, %struct.scatterlist** %3, align 8
  %12 = call i32 @sg_is_chain(%struct.scatterlist* %11)
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %8
  %16 = load %struct.scatterlist*, %struct.scatterlist** %3, align 8
  %17 = call %struct.scatterlist* @sg_chain_ptr(%struct.scatterlist* %16)
  store %struct.scatterlist* %17, %struct.scatterlist** %3, align 8
  br label %18

18:                                               ; preds = %15, %8
  %19 = load %struct.scatterlist*, %struct.scatterlist** %3, align 8
  store %struct.scatterlist* %19, %struct.scatterlist** %2, align 8
  br label %20

20:                                               ; preds = %18, %7
  %21 = load %struct.scatterlist*, %struct.scatterlist** %2, align 8
  ret %struct.scatterlist* %21
}

declare dso_local i64 @sg_is_last(%struct.scatterlist*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sg_is_chain(%struct.scatterlist*) #1

declare dso_local %struct.scatterlist* @sg_chain_ptr(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
