; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dev.c_fuse_copy_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dev.c_fuse_copy_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_copy_state = type { %struct.fuse_req* }
%struct.fuse_req = type { i32, %struct.page**, %struct.TYPE_2__* }
%struct.page = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fuse_copy_state*, i32, i32)* @fuse_copy_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_copy_pages(%struct.fuse_copy_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fuse_copy_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.fuse_req*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.page*, align 8
  %13 = alloca i32, align 4
  store %struct.fuse_copy_state* %0, %struct.fuse_copy_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %5, align 8
  %15 = getelementptr inbounds %struct.fuse_copy_state, %struct.fuse_copy_state* %14, i32 0, i32 0
  %16 = load %struct.fuse_req*, %struct.fuse_req** %15, align 8
  store %struct.fuse_req* %16, %struct.fuse_req** %9, align 8
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %73, %3
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.fuse_req*, %struct.fuse_req** %9, align 8
  %20 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi i1 [ true, %23 ], [ %28, %26 ]
  br label %31

31:                                               ; preds = %29, %17
  %32 = phi i1 [ false, %17 ], [ %30, %29 ]
  br i1 %32, label %33, label %76

33:                                               ; preds = %31
  %34 = load %struct.fuse_req*, %struct.fuse_req** %9, align 8
  %35 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.fuse_req*, %struct.fuse_req** %9, align 8
  %44 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @min(i32 %42, i32 %50)
  store i32 %51, i32* %11, align 4
  %52 = load %struct.fuse_req*, %struct.fuse_req** %9, align 8
  %53 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %52, i32 0, i32 1
  %54 = load %struct.page**, %struct.page*** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.page*, %struct.page** %54, i64 %56
  %58 = load %struct.page*, %struct.page** %57, align 8
  store %struct.page* %58, %struct.page** %12, align 8
  %59 = load %struct.fuse_copy_state*, %struct.fuse_copy_state** %5, align 8
  %60 = load %struct.page*, %struct.page** %12, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @fuse_copy_page(%struct.fuse_copy_state* %59, %struct.page* %60, i32 %61, i32 %62, i32 %63)
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %33
  %68 = load i32, i32* %13, align 4
  store i32 %68, i32* %4, align 4
  br label %77

69:                                               ; preds = %33
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %6, align 4
  %72 = sub i32 %71, %70
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %69
  %74 = load i32, i32* %8, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %17

76:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %76, %67
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @fuse_copy_page(%struct.fuse_copy_state*, %struct.page*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
