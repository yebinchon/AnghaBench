; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-v4l2.c_go7007_mmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-v4l2.c_go7007_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.go7007_file* }
%struct.go7007_file = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.vm_area_struct = type { i32, i64, i64, i32, %struct.TYPE_4__*, i32* }

@STATUS_ONLINE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@VM_SHARED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GO7007_BUF_SIZE = common dso_local global i64 0, align 8
@GO7007_BUF_PAGES = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@go7007_vm_ops = common dso_local global i32 0, align 4
@VM_DONTEXPAND = common dso_local global i32 0, align 4
@VM_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @go7007_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @go7007_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.go7007_file*, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.go7007_file*, %struct.go7007_file** %9, align 8
  store %struct.go7007_file* %10, %struct.go7007_file** %6, align 8
  %11 = load %struct.go7007_file*, %struct.go7007_file** %6, align 8
  %12 = getelementptr inbounds %struct.go7007_file, %struct.go7007_file* %11, i32 0, i32 3
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @STATUS_ONLINE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %136

21:                                               ; preds = %2
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %23 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @VM_SHARED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %136

31:                                               ; preds = %21
  %32 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %33 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %36 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %34, %37
  %39 = load i64, i64* @GO7007_BUF_SIZE, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %31
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %136

44:                                               ; preds = %31
  %45 = load %struct.go7007_file*, %struct.go7007_file** %6, align 8
  %46 = getelementptr inbounds %struct.go7007_file, %struct.go7007_file* %45, i32 0, i32 1
  %47 = call i32 @mutex_lock(i32* %46)
  %48 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %49 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @GO7007_BUF_PAGES, align 4
  %52 = udiv i32 %50, %51
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.go7007_file*, %struct.go7007_file** %6, align 8
  %55 = getelementptr inbounds %struct.go7007_file, %struct.go7007_file* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp uge i32 %53, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %44
  %59 = load %struct.go7007_file*, %struct.go7007_file** %6, align 8
  %60 = getelementptr inbounds %struct.go7007_file, %struct.go7007_file* %59, i32 0, i32 1
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %136

64:                                               ; preds = %44
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @GO7007_BUF_PAGES, align 4
  %67 = mul i32 %65, %66
  %68 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %69 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %67, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %64
  %73 = load %struct.go7007_file*, %struct.go7007_file** %6, align 8
  %74 = getelementptr inbounds %struct.go7007_file, %struct.go7007_file* %73, i32 0, i32 1
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %136

78:                                               ; preds = %64
  %79 = load %struct.go7007_file*, %struct.go7007_file** %6, align 8
  %80 = getelementptr inbounds %struct.go7007_file, %struct.go7007_file* %79, i32 0, i32 2
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %78
  %89 = load %struct.go7007_file*, %struct.go7007_file** %6, align 8
  %90 = getelementptr inbounds %struct.go7007_file, %struct.go7007_file* %89, i32 0, i32 1
  %91 = call i32 @mutex_unlock(i32* %90)
  %92 = load i32, i32* @EBUSY, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %3, align 4
  br label %136

94:                                               ; preds = %78
  %95 = load %struct.go7007_file*, %struct.go7007_file** %6, align 8
  %96 = getelementptr inbounds %struct.go7007_file, %struct.go7007_file* %95, i32 0, i32 2
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  store i32 1, i32* %101, align 8
  %102 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %103 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.go7007_file*, %struct.go7007_file** %6, align 8
  %106 = getelementptr inbounds %struct.go7007_file, %struct.go7007_file* %105, i32 0, i32 2
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = load i32, i32* %7, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  store i64 %104, i64* %111, align 8
  %112 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %113 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %112, i32 0, i32 5
  store i32* @go7007_vm_ops, i32** %113, align 8
  %114 = load i32, i32* @VM_DONTEXPAND, align 4
  %115 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %116 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 8
  %119 = load i32, i32* @VM_IO, align 4
  %120 = xor i32 %119, -1
  %121 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %122 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = and i32 %123, %120
  store i32 %124, i32* %122, align 8
  %125 = load %struct.go7007_file*, %struct.go7007_file** %6, align 8
  %126 = getelementptr inbounds %struct.go7007_file, %struct.go7007_file* %125, i32 0, i32 2
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = load i32, i32* %7, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i64 %129
  %131 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %132 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %131, i32 0, i32 4
  store %struct.TYPE_4__* %130, %struct.TYPE_4__** %132, align 8
  %133 = load %struct.go7007_file*, %struct.go7007_file** %6, align 8
  %134 = getelementptr inbounds %struct.go7007_file, %struct.go7007_file* %133, i32 0, i32 1
  %135 = call i32 @mutex_unlock(i32* %134)
  store i32 0, i32* %3, align 4
  br label %136

136:                                              ; preds = %94, %88, %72, %58, %41, %28, %18
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
