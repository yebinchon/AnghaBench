; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon_ud.c_ud_bmove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon_ud.c_ud_bmove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.fb_info = type { %struct.TYPE_6__*, %struct.fbcon_ops* }
%struct.TYPE_6__ = type { i32 (%struct.fb_info*, %struct.fb_copyarea*)* }
%struct.fb_copyarea = type { i32, i32, i8*, i8*, i8*, i8* }
%struct.fbcon_ops = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, %struct.fb_info*, i32, i32, i32, i32, i32, i32)* @ud_bmove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ud_bmove(%struct.vc_data* %0, %struct.fb_info* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
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
  %20 = alloca i8*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %9, align 8
  store %struct.fb_info* %1, %struct.fb_info** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %21 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %22 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %21, i32 0, i32 1
  %23 = load %struct.fbcon_ops*, %struct.fbcon_ops** %22, align 8
  store %struct.fbcon_ops* %23, %struct.fbcon_ops** %17, align 8
  %24 = load %struct.fbcon_ops*, %struct.fbcon_ops** %17, align 8
  %25 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %30 = call i8* @GETVYRES(i32 %28, %struct.fb_info* %29)
  store i8* %30, i8** %19, align 8
  %31 = load %struct.fbcon_ops*, %struct.fbcon_ops** %17, align 8
  %32 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %37 = call i8* @GETVXRES(i32 %35, %struct.fb_info* %36)
  store i8* %37, i8** %20, align 8
  %38 = load i8*, i8** %19, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %15, align 4
  %41 = add nsw i32 %39, %40
  %42 = load %struct.vc_data*, %struct.vc_data** %9, align 8
  %43 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %41, %45
  %47 = sext i32 %46 to i64
  %48 = sub i64 0, %47
  %49 = getelementptr i8, i8* %38, i64 %48
  %50 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %18, i32 0, i32 5
  store i8* %49, i8** %50, align 8
  %51 = load i8*, i8** %20, align 8
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %16, align 4
  %54 = add nsw i32 %52, %53
  %55 = load %struct.vc_data*, %struct.vc_data** %9, align 8
  %56 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 %54, %58
  %60 = sext i32 %59 to i64
  %61 = sub i64 0, %60
  %62 = getelementptr i8, i8* %51, i64 %61
  %63 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %18, i32 0, i32 4
  store i8* %62, i8** %63, align 8
  %64 = load i8*, i8** %19, align 8
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %15, align 4
  %67 = add nsw i32 %65, %66
  %68 = load %struct.vc_data*, %struct.vc_data** %9, align 8
  %69 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = mul nsw i32 %67, %71
  %73 = sext i32 %72 to i64
  %74 = sub i64 0, %73
  %75 = getelementptr i8, i8* %64, i64 %74
  %76 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %18, i32 0, i32 3
  store i8* %75, i8** %76, align 8
  %77 = load i8*, i8** %20, align 8
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %16, align 4
  %80 = add nsw i32 %78, %79
  %81 = load %struct.vc_data*, %struct.vc_data** %9, align 8
  %82 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 %80, %84
  %86 = sext i32 %85 to i64
  %87 = sub i64 0, %86
  %88 = getelementptr i8, i8* %77, i64 %87
  %89 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %18, i32 0, i32 2
  store i8* %88, i8** %89, align 8
  %90 = load i32, i32* %15, align 4
  %91 = load %struct.vc_data*, %struct.vc_data** %9, align 8
  %92 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = mul nsw i32 %90, %94
  %96 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %18, i32 0, i32 0
  store i32 %95, i32* %96, align 8
  %97 = load i32, i32* %16, align 4
  %98 = load %struct.vc_data*, %struct.vc_data** %9, align 8
  %99 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = mul nsw i32 %97, %101
  %103 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %18, i32 0, i32 1
  store i32 %102, i32* %103, align 4
  %104 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %105 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %104, i32 0, i32 0
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32 (%struct.fb_info*, %struct.fb_copyarea*)*, i32 (%struct.fb_info*, %struct.fb_copyarea*)** %107, align 8
  %109 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %110 = call i32 %108(%struct.fb_info* %109, %struct.fb_copyarea* %18)
  ret void
}

declare dso_local i8* @GETVYRES(i32, %struct.fb_info*) #1

declare dso_local i8* @GETVXRES(i32, %struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
