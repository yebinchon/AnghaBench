; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_newport_con.c_newport_clear.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_newport_con.c_newport_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32 }

@topscan = common dso_local global i32 0, align 4
@logo_active = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i32, i32, i32, i32)* @newport_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @newport_clear(%struct.vc_data* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.vc_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %10, align 4
  %16 = add nsw i32 %14, %15
  %17 = shl i32 %16, 3
  %18 = sub nsw i32 %17, 1
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %7, align 4
  %20 = shl i32 %19, 4
  %21 = load i32, i32* @topscan, align 4
  %22 = add nsw i32 %20, %21
  %23 = and i32 %22, 1023
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %9, align 4
  %26 = add nsw i32 %24, %25
  %27 = shl i32 %26, 4
  %28 = load i32, i32* @topscan, align 4
  %29 = add nsw i32 %27, %28
  %30 = sub nsw i32 %29, 1
  %31 = and i32 %30, 1023
  store i32 %31, i32* %13, align 4
  %32 = load i64, i64* @logo_active, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %5
  br label %72

35:                                               ; preds = %5
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %35
  %40 = load i32, i32* %8, align 4
  %41 = shl i32 %40, 3
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %13, align 4
  %45 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %46 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 240
  %49 = ashr i32 %48, 4
  %50 = call i32 @newport_clear_screen(i32 %41, i32 %42, i32 %43, i32 %44, i32 %49)
  br label %72

51:                                               ; preds = %35
  %52 = load i32, i32* %8, align 4
  %53 = shl i32 %52, 3
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %57 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 240
  %60 = ashr i32 %59, 4
  %61 = call i32 @newport_clear_screen(i32 %53, i32 %54, i32 %55, i32 1023, i32 %60)
  %62 = load i32, i32* %8, align 4
  %63 = shl i32 %62, 3
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %13, align 4
  %66 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %67 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 240
  %70 = ashr i32 %69, 4
  %71 = call i32 @newport_clear_screen(i32 %63, i32 0, i32 %64, i32 %65, i32 %70)
  br label %72

72:                                               ; preds = %34, %51, %39
  ret void
}

declare dso_local i32 @newport_clear_screen(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
