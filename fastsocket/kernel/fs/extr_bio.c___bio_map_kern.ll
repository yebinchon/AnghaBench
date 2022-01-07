; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_bio.c___bio_map_kern.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_bio.c___bio_map_kern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32 }
%struct.request_queue = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@bio_map_kern_endio = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bio* (%struct.request_queue*, i8*, i32, i32)* @__bio_map_kern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bio* @__bio_map_kern(%struct.request_queue* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.bio*, align 8
  %17 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = ptrtoint i8* %18 to i64
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load i32, i32* %8, align 4
  %22 = zext i32 %21 to i64
  %23 = add i64 %20, %22
  %24 = load i64, i64* @PAGE_SIZE, align 8
  %25 = add i64 %23, %24
  %26 = sub i64 %25, 1
  %27 = load i64, i64* @PAGE_SHIFT, align 8
  %28 = lshr i64 %26, %27
  store i64 %28, i64* %11, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* @PAGE_SHIFT, align 8
  %31 = lshr i64 %29, %30
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* %12, align 8
  %34 = sub i64 %32, %33
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %13, align 4
  %38 = call %struct.bio* @bio_kmalloc(i32 %36, i32 %37)
  store %struct.bio* %38, %struct.bio** %16, align 8
  %39 = load %struct.bio*, %struct.bio** %16, align 8
  %40 = icmp ne %struct.bio* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %4
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  %44 = call %struct.bio* @ERR_PTR(i32 %43)
  store %struct.bio* %44, %struct.bio** %5, align 8
  br label %94

45:                                               ; preds = %4
  %46 = load i64, i64* %10, align 8
  %47 = call i32 @offset_in_page(i64 %46)
  store i32 %47, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %48

48:                                               ; preds = %86, %45
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %89

52:                                               ; preds = %48
  %53 = load i64, i64* @PAGE_SIZE, align 8
  %54 = load i32, i32* %14, align 4
  %55 = sext i32 %54 to i64
  %56 = sub i64 %53, %55
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %17, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ule i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %89

61:                                               ; preds = %52
  %62 = load i32, i32* %17, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ugt i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %17, align 4
  br label %67

67:                                               ; preds = %65, %61
  %68 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %69 = load %struct.bio*, %struct.bio** %16, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 @virt_to_page(i8* %70)
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* %14, align 4
  %74 = call i32 @bio_add_pc_page(%struct.request_queue* %68, %struct.bio* %69, i32 %71, i32 %72, i32 %73)
  %75 = load i32, i32* %17, align 4
  %76 = icmp ult i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  br label %89

78:                                               ; preds = %67
  %79 = load i32, i32* %17, align 4
  %80 = load i8*, i8** %7, align 8
  %81 = zext i32 %79 to i64
  %82 = getelementptr i8, i8* %80, i64 %81
  store i8* %82, i8** %7, align 8
  %83 = load i32, i32* %17, align 4
  %84 = load i32, i32* %8, align 4
  %85 = sub i32 %84, %83
  store i32 %85, i32* %8, align 4
  store i32 0, i32* %14, align 4
  br label %86

86:                                               ; preds = %78
  %87 = load i32, i32* %15, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %15, align 4
  br label %48

89:                                               ; preds = %77, %60, %48
  %90 = load i32, i32* @bio_map_kern_endio, align 4
  %91 = load %struct.bio*, %struct.bio** %16, align 8
  %92 = getelementptr inbounds %struct.bio, %struct.bio* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  %93 = load %struct.bio*, %struct.bio** %16, align 8
  store %struct.bio* %93, %struct.bio** %5, align 8
  br label %94

94:                                               ; preds = %89, %41
  %95 = load %struct.bio*, %struct.bio** %5, align 8
  ret %struct.bio* %95
}

declare dso_local %struct.bio* @bio_kmalloc(i32, i32) #1

declare dso_local %struct.bio* @ERR_PTR(i32) #1

declare dso_local i32 @offset_in_page(i64) #1

declare dso_local i32 @bio_add_pc_page(%struct.request_queue*, %struct.bio*, i32, i32, i32) #1

declare dso_local i32 @virt_to_page(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
