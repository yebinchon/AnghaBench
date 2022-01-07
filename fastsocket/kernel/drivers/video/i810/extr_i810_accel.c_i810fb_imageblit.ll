; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/i810/extr_i810_accel.c_i810fb_imageblit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/i810/extr_i810_accel.c_i810fb_imageblit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_4__, i64, %struct.TYPE_3__, %struct.i810fb_par* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.i810fb_par = type { i32, i32, i32 }
%struct.fb_image = type { i32, i32, i32, i32, i32, i32, i32, i64 }

@LOCKUP = common dso_local global i32 0, align 4
@PAT_COPY_ROP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i810fb_imageblit(%struct.fb_info* %0, %struct.fb_image* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_image*, align 8
  %5 = alloca %struct.i810fb_par*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_image* %1, %struct.fb_image** %4, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 3
  %12 = load %struct.i810fb_par*, %struct.i810fb_par** %11, align 8
  store %struct.i810fb_par* %12, %struct.i810fb_par** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %2
  %19 = load %struct.i810fb_par*, %struct.i810fb_par** %5, align 8
  %20 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @LOCKUP, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %18
  %26 = load %struct.i810fb_par*, %struct.i810fb_par** %5, align 8
  %27 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 4
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %32 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 1
  br i1 %34, label %35, label %39

35:                                               ; preds = %30, %25, %18, %2
  %36 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %37 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %38 = call i32 @cfb_imageblit(%struct.fb_info* %36, %struct.fb_image* %37)
  br label %140

39:                                               ; preds = %30
  %40 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %41 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  switch i32 %43, label %72 [
    i32 8, label %44
    i32 16, label %51
    i32 24, label %51
  ]

44:                                               ; preds = %39
  %45 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %46 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %6, align 4
  %48 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %49 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %7, align 4
  br label %72

51:                                               ; preds = %39, %39
  %52 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %53 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to i32*
  %56 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %57 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %55, i64 %59
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %6, align 4
  %62 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %63 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to i32*
  %66 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %67 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %65, i64 %69
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %39, %51, %44
  %73 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %74 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %78 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %81 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 %79, %83
  %85 = add nsw i32 %76, %84
  %86 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %87 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.i810fb_par*, %struct.i810fb_par** %5, align 8
  %90 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = mul nsw i32 %88, %91
  %93 = add nsw i32 %85, %92
  store i32 %93, i32* %9, align 4
  %94 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %95 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 7
  %98 = sdiv i32 %97, 8
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = and i32 %100, -2
  store i32 %101, i32* %8, align 4
  %102 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %103 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = mul nsw i32 %105, %104
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, 7
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  %110 = and i32 %109, -8
  store i32 %110, i32* %8, align 4
  %111 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %112 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.i810fb_par*, %struct.i810fb_par** %5, align 8
  %115 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = mul nsw i32 %113, %116
  %118 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %119 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %122 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %8, align 4
  %126 = sdiv i32 %125, 4
  %127 = load %struct.i810fb_par*, %struct.i810fb_par** %5, align 8
  %128 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @PAT_COPY_ROP, align 4
  %131 = load i32, i32* %9, align 4
  %132 = load %struct.fb_image*, %struct.fb_image** %4, align 8
  %133 = getelementptr inbounds %struct.fb_image, %struct.fb_image* %132, i32 0, i32 7
  %134 = load i64, i64* %133, align 8
  %135 = inttoptr i64 %134 to i32*
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* %6, align 4
  %138 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %139 = call i32 @mono_src_copy_imm_blit(i32 %117, i32 %120, i32 %124, i32 %126, i32 %129, i32 %130, i32 %131, i32* %135, i32 %136, i32 %137, %struct.fb_info* %138)
  br label %140

140:                                              ; preds = %72, %35
  ret void
}

declare dso_local i32 @cfb_imageblit(%struct.fb_info*, %struct.fb_image*) #1

declare dso_local i32 @mono_src_copy_imm_blit(i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, %struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
