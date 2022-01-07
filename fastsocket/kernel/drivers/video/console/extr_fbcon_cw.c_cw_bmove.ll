; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon_cw.c_cw_bmove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon_cw.c_cw_bmove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.fb_info = type { %struct.TYPE_6__*, %struct.fbcon_ops* }
%struct.TYPE_6__ = type { i32 (%struct.fb_info*, %struct.fb_copyarea*)* }
%struct.fb_copyarea = type { i32, i32, i32, i32, i8*, i8* }
%struct.fbcon_ops = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, %struct.fb_info*, i32, i32, i32, i32, i32, i32)* @cw_bmove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cw_bmove(%struct.vc_data* %0, %struct.fb_info* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.vc_data*, align 8
  %10 = alloca %struct.fb_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.fbcon_ops*, align 8
  %18 = alloca %struct.fb_copyarea, align 8
  %19 = alloca i8*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %9, align 8
  store %struct.fb_info* %1, %struct.fb_info** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %20 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %21 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %20, i32 0, i32 1
  %22 = load %struct.fbcon_ops*, %struct.fbcon_ops** %21, align 8
  store %struct.fbcon_ops* %22, %struct.fbcon_ops** %17, align 8
  %23 = load %struct.fbcon_ops*, %struct.fbcon_ops** %17, align 8
  %24 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %29 = call i8* @GETVXRES(i32 %27, %struct.fb_info* %28)
  store i8* %29, i8** %19, align 8
  %30 = load i8*, i8** %19, align 8
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %15, align 4
  %33 = add nsw i32 %31, %32
  %34 = load %struct.vc_data*, %struct.vc_data** %9, align 8
  %35 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %33, %37
  %39 = sext i32 %38 to i64
  %40 = sub i64 0, %39
  %41 = getelementptr i8, i8* %30, i64 %40
  %42 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %18, i32 0, i32 5
  store i8* %41, i8** %42, align 8
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.vc_data*, %struct.vc_data** %9, align 8
  %45 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %43, %47
  %49 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %18, i32 0, i32 0
  store i32 %48, i32* %49, align 8
  %50 = load i8*, i8** %19, align 8
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %15, align 4
  %53 = add nsw i32 %51, %52
  %54 = load %struct.vc_data*, %struct.vc_data** %9, align 8
  %55 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %53, %57
  %59 = sext i32 %58 to i64
  %60 = sub i64 0, %59
  %61 = getelementptr i8, i8* %50, i64 %60
  %62 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %18, i32 0, i32 4
  store i8* %61, i8** %62, align 8
  %63 = load i32, i32* %14, align 4
  %64 = load %struct.vc_data*, %struct.vc_data** %9, align 8
  %65 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = mul nsw i32 %63, %67
  %69 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %18, i32 0, i32 1
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* %15, align 4
  %71 = load %struct.vc_data*, %struct.vc_data** %9, align 8
  %72 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = mul nsw i32 %70, %74
  %76 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %18, i32 0, i32 2
  store i32 %75, i32* %76, align 8
  %77 = load i32, i32* %16, align 4
  %78 = load %struct.vc_data*, %struct.vc_data** %9, align 8
  %79 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = mul nsw i32 %77, %81
  %83 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %18, i32 0, i32 3
  store i32 %82, i32* %83, align 4
  %84 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %85 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %84, i32 0, i32 0
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32 (%struct.fb_info*, %struct.fb_copyarea*)*, i32 (%struct.fb_info*, %struct.fb_copyarea*)** %87, align 8
  %89 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %90 = call i32 %88(%struct.fb_info* %89, %struct.fb_copyarea* %18)
  ret void
}

declare dso_local i8* @GETVXRES(i32, %struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
