; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_valkyriefb.c_valkyrie_vram_reqd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_valkyriefb.c_valkyrie_vram_reqd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.valkyrie_regvals = type { i32*, i32 }

@valkyrie_reg_init = common dso_local global %struct.valkyrie_regvals** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @valkyrie_vram_reqd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @valkyrie_vram_reqd(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.valkyrie_regvals*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load %struct.valkyrie_regvals**, %struct.valkyrie_regvals*** @valkyrie_reg_init, align 8
  %8 = load i32, i32* %3, align 4
  %9 = sub nsw i32 %8, 1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.valkyrie_regvals*, %struct.valkyrie_regvals** %7, i64 %10
  %12 = load %struct.valkyrie_regvals*, %struct.valkyrie_regvals** %11, align 8
  store %struct.valkyrie_regvals* %12, %struct.valkyrie_regvals** %6, align 8
  %13 = load %struct.valkyrie_regvals*, %struct.valkyrie_regvals** %6, align 8
  %14 = getelementptr inbounds %struct.valkyrie_regvals, %struct.valkyrie_regvals* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load %struct.valkyrie_regvals*, %struct.valkyrie_regvals** %6, align 8
  %23 = getelementptr inbounds %struct.valkyrie_regvals, %struct.valkyrie_regvals* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 2, %26
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %21, %2
  %29 = load %struct.valkyrie_regvals*, %struct.valkyrie_regvals** %6, align 8
  %30 = getelementptr inbounds %struct.valkyrie_regvals, %struct.valkyrie_regvals* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = mul nsw i32 %31, %32
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
