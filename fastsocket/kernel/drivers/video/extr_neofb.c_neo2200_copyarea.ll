; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_neofb.c_neo2200_copyarea.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_neofb.c_neo2200_copyarea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_5__, %struct.TYPE_4__, %struct.neofb_par* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.neofb_par = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }

@NEO_BC3_FIFO_EN = common dso_local global i32 0, align 4
@NEO_BC3_SKIP_MAPPING = common dso_local global i32 0, align 4
@NEO_BC0_X_DEC = common dso_local global i32 0, align 4
@NEO_BC0_DST_Y_DEC = common dso_local global i32 0, align 4
@NEO_BC0_SRC_Y_DEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_copyarea*)* @neo2200_copyarea to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @neo2200_copyarea(%struct.fb_info* %0, %struct.fb_copyarea* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_copyarea*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.neofb_par*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_copyarea* %1, %struct.fb_copyarea** %4, align 8
  %13 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %14 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %17 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %20 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %23 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  %25 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %26 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %25, i32 0, i32 2
  %27 = load %struct.neofb_par*, %struct.neofb_par** %26, align 8
  store %struct.neofb_par* %27, %struct.neofb_par** %9, align 8
  %28 = load i32, i32* @NEO_BC3_FIFO_EN, align 4
  %29 = load i32, i32* @NEO_BC3_SKIP_MAPPING, align 4
  %30 = or i32 %28, %29
  %31 = or i32 %30, 786432
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %43, label %35

35:                                               ; preds = %2
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %75

39:                                               ; preds = %35
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %75

43:                                               ; preds = %39, %2
  %44 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %45 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %46, 1
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %6, align 4
  %50 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %51 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %52, 1
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %8, align 4
  %56 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %57 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %58, 1
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %5, align 4
  %62 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %63 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %64, 1
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* @NEO_BC0_X_DEC, align 4
  %69 = load i32, i32* @NEO_BC0_DST_Y_DEC, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @NEO_BC0_SRC_Y_DEC, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* %12, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %12, align 4
  br label %75

75:                                               ; preds = %43, %39, %35
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %78 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = ashr i32 %80, 3
  %82 = mul nsw i32 %76, %81
  %83 = load i32, i32* %6, align 4
  %84 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %85 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = mul nsw i32 %83, %87
  %89 = add nsw i32 %82, %88
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %92 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = ashr i32 %94, 3
  %96 = mul nsw i32 %90, %95
  %97 = load i32, i32* %8, align 4
  %98 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %99 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = mul nsw i32 %97, %101
  %103 = add nsw i32 %96, %102
  store i32 %103, i32* %11, align 4
  %104 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %105 = call i32 @neo2200_wait_fifo(%struct.fb_info* %104, i32 4)
  %106 = load i32, i32* %12, align 4
  %107 = load %struct.neofb_par*, %struct.neofb_par** %9, align 8
  %108 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %107, i32 0, i32 0
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 3
  %111 = call i32 @writel(i32 %106, i32* %110)
  %112 = load i32, i32* %10, align 4
  %113 = load %struct.neofb_par*, %struct.neofb_par** %9, align 8
  %114 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %113, i32 0, i32 0
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 2
  %117 = call i32 @writel(i32 %112, i32* %116)
  %118 = load i32, i32* %11, align 4
  %119 = load %struct.neofb_par*, %struct.neofb_par** %9, align 8
  %120 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %119, i32 0, i32 0
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = call i32 @writel(i32 %118, i32* %122)
  %124 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %125 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = shl i32 %126, 16
  %128 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %129 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 4
  %131 = and i32 %130, 65535
  %132 = or i32 %127, %131
  %133 = load %struct.neofb_par*, %struct.neofb_par** %9, align 8
  %134 = getelementptr inbounds %struct.neofb_par, %struct.neofb_par* %133, i32 0, i32 0
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = call i32 @writel(i32 %132, i32* %136)
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
