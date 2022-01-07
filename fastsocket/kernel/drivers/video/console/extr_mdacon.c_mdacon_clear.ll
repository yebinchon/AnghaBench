; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_mdacon.c_mdacon_clear.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_mdacon.c_mdacon_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32 }

@mda_num_columns = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i32, i32, i32, i32)* @mdacon_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdacon_clear(%struct.vc_data* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.vc_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32* @MDA_ADDR(i32 %13, i32 %14)
  store i32* %15, i32** %11, align 8
  %16 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %17 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @mda_convert_attr(i32 %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* %9, align 4
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %5
  br label %59

26:                                               ; preds = %22
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %26
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @mda_num_columns, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = load i32*, i32** %11, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = mul nsw i32 %36, %37
  %39 = mul nsw i32 %38, 2
  %40 = call i32 @scr_memsetw(i32* %34, i32 %35, i32 %39)
  br label %59

41:                                               ; preds = %29, %26
  br label %42

42:                                               ; preds = %51, %41
  %43 = load i32, i32* %9, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %42
  %46 = load i32*, i32** %11, align 8
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %10, align 4
  %49 = mul nsw i32 %48, 2
  %50 = call i32 @scr_memsetw(i32* %46, i32 %47, i32 %49)
  br label %51

51:                                               ; preds = %45
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* @mda_num_columns, align 4
  %55 = load i32*, i32** %11, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32* %57, i32** %11, align 8
  br label %42

58:                                               ; preds = %42
  br label %59

59:                                               ; preds = %25, %58, %33
  ret void
}

declare dso_local i32* @MDA_ADDR(i32, i32) #1

declare dso_local i32 @mda_convert_attr(i32) #1

declare dso_local i32 @scr_memsetw(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
