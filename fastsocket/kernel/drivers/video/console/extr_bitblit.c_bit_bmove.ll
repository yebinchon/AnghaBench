; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_bitblit.c_bit_bmove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_bitblit.c_bit_bmove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.fb_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.fb_info*, %struct.fb_copyarea*)* }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, %struct.fb_info*, i32, i32, i32, i32, i32, i32)* @bit_bmove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bit_bmove(%struct.vc_data* %0, %struct.fb_info* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.vc_data*, align 8
  %10 = alloca %struct.fb_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.fb_copyarea, align 4
  store %struct.vc_data* %0, %struct.vc_data** %9, align 8
  store %struct.fb_info* %1, %struct.fb_info** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %18 = load i32, i32* %12, align 4
  %19 = load %struct.vc_data*, %struct.vc_data** %9, align 8
  %20 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %18, %22
  %24 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %17, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load %struct.vc_data*, %struct.vc_data** %9, align 8
  %27 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %25, %29
  %31 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %17, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %14, align 4
  %33 = load %struct.vc_data*, %struct.vc_data** %9, align 8
  %34 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %32, %36
  %38 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %17, i32 0, i32 2
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %13, align 4
  %40 = load %struct.vc_data*, %struct.vc_data** %9, align 8
  %41 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %39, %43
  %45 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %17, i32 0, i32 3
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* %15, align 4
  %47 = load %struct.vc_data*, %struct.vc_data** %9, align 8
  %48 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 %46, %50
  %52 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %17, i32 0, i32 4
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* %16, align 4
  %54 = load %struct.vc_data*, %struct.vc_data** %9, align 8
  %55 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %53, %57
  %59 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %17, i32 0, i32 5
  store i32 %58, i32* %59, align 4
  %60 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %61 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32 (%struct.fb_info*, %struct.fb_copyarea*)*, i32 (%struct.fb_info*, %struct.fb_copyarea*)** %63, align 8
  %65 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %66 = call i32 %64(%struct.fb_info* %65, %struct.fb_copyarea* %17)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
