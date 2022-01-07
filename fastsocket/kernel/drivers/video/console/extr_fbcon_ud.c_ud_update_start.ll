; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon_ud.c_ud_update_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon_ud.c_ud_update_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_5__, %struct.fbcon_ops* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.fbcon_ops = type { %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @ud_update_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ud_update_start(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.fbcon_ops*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 1
  %11 = load %struct.fbcon_ops*, %struct.fbcon_ops** %10, align 8
  store %struct.fbcon_ops* %11, %struct.fbcon_ops** %3, align 8
  %12 = load %struct.fbcon_ops*, %struct.fbcon_ops** %3, align 8
  %13 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %18 = call i32 @GETVYRES(i32 %16, %struct.fb_info* %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.fbcon_ops*, %struct.fbcon_ops** %3, align 8
  %20 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %25 = call i32 @GETVXRES(i32 %23, %struct.fb_info* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %28 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %26, %30
  %32 = load %struct.fbcon_ops*, %struct.fbcon_ops** %3, align 8
  %33 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sub nsw i32 %31, %35
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %39 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %37, %41
  %43 = load %struct.fbcon_ops*, %struct.fbcon_ops** %3, align 8
  %44 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %42, %46
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %1
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %50, %1
  %55 = load i32, i32* %4, align 4
  %56 = load %struct.fbcon_ops*, %struct.fbcon_ops** %3, align 8
  %57 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 8
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.fbcon_ops*, %struct.fbcon_ops** %3, align 8
  %61 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 4
  %63 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %64 = load %struct.fbcon_ops*, %struct.fbcon_ops** %3, align 8
  %65 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %64, i32 0, i32 0
  %66 = call i32 @fb_pan_display(%struct.fb_info* %63, %struct.TYPE_6__* %65)
  store i32 %66, i32* %8, align 4
  %67 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %68 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.fbcon_ops*, %struct.fbcon_ops** %3, align 8
  %72 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 8
  %74 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %75 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.fbcon_ops*, %struct.fbcon_ops** %3, align 8
  %79 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  store i32 %77, i32* %80, align 4
  %81 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %82 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.fbcon_ops*, %struct.fbcon_ops** %3, align 8
  %86 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 2
  store i32 %84, i32* %87, align 8
  %88 = load i32, i32* %8, align 4
  ret i32 %88
}

declare dso_local i32 @GETVYRES(i32, %struct.fb_info*) #1

declare dso_local i32 @GETVXRES(i32, %struct.fb_info*) #1

declare dso_local i32 @fb_pan_display(%struct.fb_info*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
