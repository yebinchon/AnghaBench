; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pmag-aa-fb.c_aafb_set_cmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pmag-aa-fb.c_aafb_set_cmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_cmap = type { i64, i32, i32*, i32, i32, i32 }
%struct.fb_info = type { i32 }

@__const.aafb_set_cmap.color = private unnamed_addr constant [2 x i32] [i32 0, i32 15], align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_cmap*, i32, i32, %struct.fb_info*)* @aafb_set_cmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aafb_set_cmap(%struct.fb_cmap* %0, i32 %1, i32 %2, %struct.fb_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fb_cmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.fb_info*, align 8
  %10 = alloca [2 x i32], align 4
  store %struct.fb_cmap* %0, %struct.fb_cmap** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.fb_info* %3, %struct.fb_info** %9, align 8
  %11 = bitcast [2 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast ([2 x i32]* @__const.aafb_set_cmap.color to i8*), i64 8, i1 false)
  %12 = load %struct.fb_cmap*, %struct.fb_cmap** %6, align 8
  %13 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %48

16:                                               ; preds = %4
  %17 = load %struct.fb_cmap*, %struct.fb_cmap** %6, align 8
  %18 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %48

21:                                               ; preds = %16
  %22 = load %struct.fb_cmap*, %struct.fb_cmap** %6, align 8
  %23 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %26 = call i64 @memcmp(i32 %24, i32* %25, i32 8)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %21
  %29 = load %struct.fb_cmap*, %struct.fb_cmap** %6, align 8
  %30 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %33 = call i64 @memcmp(i32 %31, i32* %32, i32 8)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %28
  %36 = load %struct.fb_cmap*, %struct.fb_cmap** %6, align 8
  %37 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %40 = call i64 @memcmp(i32 %38, i32* %39, i32 8)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = load %struct.fb_cmap*, %struct.fb_cmap** %6, align 8
  %44 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %51

48:                                               ; preds = %42, %35, %28, %21, %16, %4
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %48, %47
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @memcmp(i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
