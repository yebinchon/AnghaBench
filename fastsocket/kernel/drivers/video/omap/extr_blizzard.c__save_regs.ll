; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_blizzard.c__save_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_blizzard.c__save_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blizzard_reg_list = type { i32, i32 }

@blizzard_reg_cache = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blizzard_reg_list*, i32)* @_save_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_save_regs(%struct.blizzard_reg_list* %0, i32 %1) #0 {
  %3 = alloca %struct.blizzard_reg_list*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.blizzard_reg_list* %0, %struct.blizzard_reg_list** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %33, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %38

11:                                               ; preds = %7
  %12 = load %struct.blizzard_reg_list*, %struct.blizzard_reg_list** %3, align 8
  %13 = getelementptr inbounds %struct.blizzard_reg_list, %struct.blizzard_reg_list* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  br label %15

15:                                               ; preds = %29, %11
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.blizzard_reg_list*, %struct.blizzard_reg_list** %3, align 8
  %18 = getelementptr inbounds %struct.blizzard_reg_list, %struct.blizzard_reg_list* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp sle i32 %16, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %15
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @blizzard_read_reg(i32 %22)
  %24 = load i32*, i32** @blizzard_reg_cache, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sdiv i32 %25, 2
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  store i32 %23, i32* %28, align 4
  br label %29

29:                                               ; preds = %21
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 2
  store i32 %31, i32* %6, align 4
  br label %15

32:                                               ; preds = %15
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  %36 = load %struct.blizzard_reg_list*, %struct.blizzard_reg_list** %3, align 8
  %37 = getelementptr inbounds %struct.blizzard_reg_list, %struct.blizzard_reg_list* %36, i32 1
  store %struct.blizzard_reg_list* %37, %struct.blizzard_reg_list** %3, align 8
  br label %7

38:                                               ; preds = %7
  ret void
}

declare dso_local i32 @blizzard_read_reg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
