; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon_cw.c_cw_update_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon_cw.c_cw_update_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_5__, %struct.fbcon_ops* }
%struct.TYPE_5__ = type { i32, i64, i64, i64 }
%struct.fbcon_ops = type { %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i64, i64 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @cw_update_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cw_update_start(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.fbcon_ops*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 1
  %9 = load %struct.fbcon_ops*, %struct.fbcon_ops** %8, align 8
  store %struct.fbcon_ops* %9, %struct.fbcon_ops** %3, align 8
  %10 = load %struct.fbcon_ops*, %struct.fbcon_ops** %3, align 8
  %11 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %16 = call i64 @GETVXRES(i32 %14, %struct.fb_info* %15)
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %19 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.fbcon_ops*, %struct.fbcon_ops** %3, align 8
  %23 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %21, %25
  %27 = sub nsw i64 %17, %26
  store i64 %27, i64* %5, align 8
  %28 = load %struct.fbcon_ops*, %struct.fbcon_ops** %3, align 8
  %29 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.fbcon_ops*, %struct.fbcon_ops** %3, align 8
  %33 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  store i64 %31, i64* %34, align 8
  %35 = load i64, i64* %5, align 8
  %36 = load %struct.fbcon_ops*, %struct.fbcon_ops** %3, align 8
  %37 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  store i64 %35, i64* %38, align 8
  %39 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %40 = load %struct.fbcon_ops*, %struct.fbcon_ops** %3, align 8
  %41 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %40, i32 0, i32 0
  %42 = call i32 @fb_pan_display(%struct.fb_info* %39, %struct.TYPE_6__* %41)
  store i32 %42, i32* %6, align 4
  %43 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %44 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.fbcon_ops*, %struct.fbcon_ops** %3, align 8
  %48 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  store i64 %46, i64* %49, align 8
  %50 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %51 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.fbcon_ops*, %struct.fbcon_ops** %3, align 8
  %55 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  store i64 %53, i64* %56, align 8
  %57 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %58 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.fbcon_ops*, %struct.fbcon_ops** %3, align 8
  %62 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 8
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local i64 @GETVXRES(i32, %struct.fb_info*) #1

declare dso_local i32 @fb_pan_display(%struct.fb_info*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
