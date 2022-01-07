; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_neofb.c_neo2200_fillrect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_neofb.c_neo2200_fillrect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_3__, i64, %struct.neofb_par* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.neofb_par = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.fb_fillrect = type { i32, i32, i32, i32, i32, i64 }

@NEO_BC3_FIFO_EN = common dso_local global i32 0, align 4
@NEO_BC0_SRC_IS_FG = common dso_local global i32 0, align 4
@NEO_BC3_SKIP_MAPPING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_fillrect*)* @neo2200_fillrect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @neo2200_fillrect(%struct.fb_info* %0, %struct.fb_fillrect* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_fillrect*, align 8
  %5 = alloca %struct.neofb_par*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_fillrect* %1, %struct.fb_fillrect** %4, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 2
  %10 = load %struct.neofb_par*, %struct.neofb_par** %9, align 8
  store %struct.neofb_par* %10, %struct.neofb_par** %5, align 8
  %11 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %12 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %15 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %18 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = mul nsw i32 %16, %20
  %22 = add nsw i32 %13, %21
  store i32 %22, i32* %6, align 4
  %23 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %24 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 393216, i32 786432
  store i32 %28, i32* %7, align 4
  %29 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %30 = call i32 @neo2200_wait_fifo(%struct.fb_info* %29, i32 4)
  %31 = load i32, i32* @NEO_BC3_FIFO_EN, align 4
  %32 = load i32, i32* @NEO_BC0_SRC_IS_FG, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @NEO_BC3_SKIP_MAPPING, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.neofb_par*, %struct.neofb_par** %5, align 8
  %39 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  %42 = call i32 @writel(i32 %37, i32* %41)
  %43 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %44 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %72 [
    i32 8, label %47
    i32 16, label %56
    i32 24, label %56
  ]

47:                                               ; preds = %2
  %48 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %49 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.neofb_par*, %struct.neofb_par** %5, align 8
  %52 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = call i32 @writel(i32 %50, i32* %54)
  br label %72

56:                                               ; preds = %2, %2
  %57 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %58 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i32*
  %61 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %62 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %60, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.neofb_par*, %struct.neofb_par** %5, align 8
  %68 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  %71 = call i32 @writel(i32 %66, i32* %70)
  br label %72

72:                                               ; preds = %2, %56, %47
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %75 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 7
  %79 = ashr i32 %78, 3
  %80 = mul nsw i32 %73, %79
  %81 = load %struct.neofb_par*, %struct.neofb_par** %5, align 8
  %82 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = call i32 @writel(i32 %80, i32* %84)
  %86 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %87 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = shl i32 %88, 16
  %90 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %91 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = and i32 %92, 65535
  %94 = or i32 %89, %93
  %95 = load %struct.neofb_par*, %struct.neofb_par** %5, align 8
  %96 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %95, i32 0, i32 0
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = call i32 @writel(i32 %94, i32* %98)
  ret void
}

declare dso_local i32 @neo2200_wait_fifo(%struct.fb_info*, i32) #1

declare dso_local i32 @writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
