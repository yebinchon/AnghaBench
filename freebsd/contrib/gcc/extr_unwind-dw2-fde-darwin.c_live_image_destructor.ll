; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind-dw2-fde-darwin.c_live_image_destructor.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind-dw2-fde-darwin.c_live_image_destructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.live_images = type { i32, i32*, i32*, i32* }
%struct.km_object_info = type { i32, i32 }

@KEYMGR_GCC3_DW2_OBJ_LIST = common dso_local global i32 0, align 4
@seen_objects = common dso_local global i32 0, align 4
@unseen_objects = common dso_local global i32 0, align 4
@ALLOCED_IMAGE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.live_images*)* @live_image_destructor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @live_image_destructor(%struct.live_images* %0) #0 {
  %2 = alloca %struct.live_images*, align 8
  %3 = alloca %struct.km_object_info*, align 8
  store %struct.live_images* %0, %struct.live_images** %2, align 8
  %4 = load %struct.live_images*, %struct.live_images** %2, align 8
  %5 = getelementptr inbounds %struct.live_images, %struct.live_images* %4, i32 0, i32 3
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %54

8:                                                ; preds = %1
  %9 = load i32, i32* @KEYMGR_GCC3_DW2_OBJ_LIST, align 4
  %10 = call %struct.km_object_info* @_keymgr_get_and_lock_processwide_ptr(i32 %9)
  store %struct.km_object_info* %10, %struct.km_object_info** %3, align 8
  %11 = load %struct.km_object_info*, %struct.km_object_info** %3, align 8
  %12 = icmp ne %struct.km_object_info* %11, null
  br i1 %12, label %13, label %30

13:                                               ; preds = %8
  %14 = load %struct.km_object_info*, %struct.km_object_info** %3, align 8
  %15 = getelementptr inbounds %struct.km_object_info, %struct.km_object_info* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* @seen_objects, align 4
  %17 = load %struct.km_object_info*, %struct.km_object_info** %3, align 8
  %18 = getelementptr inbounds %struct.km_object_info, %struct.km_object_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* @unseen_objects, align 4
  %20 = load %struct.live_images*, %struct.live_images** %2, align 8
  %21 = getelementptr inbounds %struct.live_images, %struct.live_images* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @__deregister_frame_info_bases(i32* %22)
  %24 = load i32, i32* @seen_objects, align 4
  %25 = load %struct.km_object_info*, %struct.km_object_info** %3, align 8
  %26 = getelementptr inbounds %struct.km_object_info, %struct.km_object_info* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @unseen_objects, align 4
  %28 = load %struct.km_object_info*, %struct.km_object_info** %3, align 8
  %29 = getelementptr inbounds %struct.km_object_info, %struct.km_object_info* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %13, %8
  %31 = load i32, i32* @KEYMGR_GCC3_DW2_OBJ_LIST, align 4
  %32 = load %struct.km_object_info*, %struct.km_object_info** %3, align 8
  %33 = call i32 @_keymgr_set_and_unlock_processwide_ptr(i32 %31, %struct.km_object_info* %32)
  %34 = load %struct.live_images*, %struct.live_images** %2, align 8
  %35 = getelementptr inbounds %struct.live_images, %struct.live_images* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @free(i32* %36)
  %38 = load %struct.live_images*, %struct.live_images** %2, align 8
  %39 = getelementptr inbounds %struct.live_images, %struct.live_images* %38, i32 0, i32 3
  store i32* null, i32** %39, align 8
  %40 = load %struct.live_images*, %struct.live_images** %2, align 8
  %41 = getelementptr inbounds %struct.live_images, %struct.live_images* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @ALLOCED_IMAGE_MASK, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %30
  %47 = load %struct.live_images*, %struct.live_images** %2, align 8
  %48 = getelementptr inbounds %struct.live_images, %struct.live_images* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @free(i32* %49)
  br label %51

51:                                               ; preds = %46, %30
  %52 = load %struct.live_images*, %struct.live_images** %2, align 8
  %53 = getelementptr inbounds %struct.live_images, %struct.live_images* %52, i32 0, i32 2
  store i32* null, i32** %53, align 8
  br label %54

54:                                               ; preds = %51, %1
  %55 = load %struct.live_images*, %struct.live_images** %2, align 8
  %56 = getelementptr inbounds %struct.live_images, %struct.live_images* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  %57 = load %struct.live_images*, %struct.live_images** %2, align 8
  %58 = getelementptr inbounds %struct.live_images, %struct.live_images* %57, i32 0, i32 1
  store i32* null, i32** %58, align 8
  ret void
}

declare dso_local %struct.km_object_info* @_keymgr_get_and_lock_processwide_ptr(i32) #1

declare dso_local i32 @__deregister_frame_info_bases(i32*) #1

declare dso_local i32 @_keymgr_set_and_unlock_processwide_ptr(i32, %struct.km_object_info*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
