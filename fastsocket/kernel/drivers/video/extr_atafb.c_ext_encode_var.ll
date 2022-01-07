; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_atafb.c_ext_encode_var.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_atafb.c_ext_encode_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, %struct.TYPE_3__, %struct.TYPE_3__, i32, i32, i64, i64 }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.TYPE_3__ = type { i32, i64, i64 }
%struct.atafb_par = type { i32 }

@external_pmode = common dso_local global i32 0, align 4
@external_depth = common dso_local global i32 0, align 4
@external_vgaiobase = common dso_local global i64 0, align 8
@external_bitspercol = common dso_local global i32 0, align 4
@external_xres = common dso_local global i32 0, align 4
@external_yres = common dso_local global i32 0, align 4
@external_xres_virtual = common dso_local global i32 0, align 4
@FB_VMODE_NONINTERLACED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.atafb_par*)* @ext_encode_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext_encode_var(%struct.fb_var_screeninfo* %0, %struct.atafb_par* %1) #0 {
  %3 = alloca %struct.fb_var_screeninfo*, align 8
  %4 = alloca %struct.atafb_par*, align 8
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %3, align 8
  store %struct.atafb_par* %1, %struct.atafb_par** %4, align 8
  %5 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %6 = call i32 @memset(%struct.fb_var_screeninfo* %5, i32 0, i32 208)
  %7 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %8 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %7, i32 0, i32 18
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  store i64 0, i64* %9, align 8
  %10 = load i32, i32* @external_pmode, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @external_depth, align 4
  %14 = sdiv i32 %13, 3
  br label %23

15:                                               ; preds = %2
  %16 = load i64, i64* @external_vgaiobase, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i32, i32* @external_bitspercol, align 4
  br label %21

20:                                               ; preds = %15
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i32 [ %19, %18 ], [ 0, %20 ]
  br label %23

23:                                               ; preds = %21, %12
  %24 = phi i32 [ %14, %12 ], [ %22, %21 ]
  %25 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %26 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %25, i32 0, i32 18
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  %28 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %29 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %28, i32 0, i32 18
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %32 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %31, i32 0, i32 24
  store i64 0, i64* %32, align 8
  %33 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %34 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %33, i32 0, i32 0
  store i32 31041, i32* %34, align 8
  %35 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %36 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %35, i32 0, i32 1
  store i32 120, i32* %36, align 4
  %37 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %38 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %37, i32 0, i32 2
  store i32 100, i32* %38, align 8
  %39 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %40 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %39, i32 0, i32 3
  store i32 8, i32* %40, align 4
  %41 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %42 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %41, i32 0, i32 4
  store i32 16, i32* %42, align 8
  %43 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %44 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %43, i32 0, i32 5
  store i32 140, i32* %44, align 4
  %45 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %46 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %45, i32 0, i32 6
  store i32 30, i32* %46, align 8
  %47 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %48 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %47, i32 0, i32 7
  store i32 -1, i32* %48, align 4
  %49 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %50 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %49, i32 0, i32 8
  store i32 -1, i32* %50, align 8
  %51 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %52 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %51, i32 0, i32 23
  store i64 0, i64* %52, align 8
  %53 = load i32, i32* @external_xres, align 4
  %54 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %55 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %54, i32 0, i32 22
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @external_yres, align 4
  %57 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %58 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %57, i32 0, i32 15
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* @external_xres_virtual, align 4
  %60 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %61 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %60, i32 0, i32 21
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* @external_depth, align 4
  %63 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %64 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %63, i32 0, i32 9
  store i32 %62, i32* %64, align 4
  %65 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %66 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %65, i32 0, i32 20
  %67 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %68 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %67, i32 0, i32 19
  %69 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %70 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %69, i32 0, i32 18
  %71 = bitcast %struct.TYPE_3__* %68 to i8*
  %72 = bitcast %struct.TYPE_3__* %70 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %71, i8* align 8 %72, i64 24, i1 false)
  %73 = bitcast %struct.TYPE_3__* %66 to i8*
  %74 = bitcast %struct.TYPE_3__* %68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %73, i8* align 8 %74, i64 24, i1 false)
  %75 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %76 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %75, i32 0, i32 17
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  store i64 0, i64* %77, align 8
  %78 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %79 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %78, i32 0, i32 17
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  store i64 0, i64* %80, align 8
  %81 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %82 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %81, i32 0, i32 17
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i64 0, i64* %83, align 8
  %84 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %85 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %84, i32 0, i32 15
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %88 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %87, i32 0, i32 16
  store i32 %86, i32* %88, align 4
  %89 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %90 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %89, i32 0, i32 14
  store i64 0, i64* %90, align 8
  %91 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %92 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %91, i32 0, i32 13
  store i64 0, i64* %92, align 8
  %93 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %94 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %93, i32 0, i32 12
  store i64 0, i64* %94, align 8
  %95 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %96 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %95, i32 0, i32 11
  store i64 0, i64* %96, align 8
  %97 = load i32, i32* @FB_VMODE_NONINTERLACED, align 4
  %98 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %99 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %98, i32 0, i32 10
  store i32 %97, i32* %99, align 8
  ret i32 0
}

declare dso_local i32 @memset(%struct.fb_var_screeninfo*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
