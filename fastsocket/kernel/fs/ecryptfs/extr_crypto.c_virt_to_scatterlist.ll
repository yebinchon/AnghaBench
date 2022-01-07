; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_crypto.c_virt_to_scatterlist.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_crypto.c_virt_to_scatterlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32 }
%struct.page = type { i32 }

@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @virt_to_scatterlist(i8* %0, i32 %1, %struct.scatterlist* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.page*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.scatterlist* %2, %struct.scatterlist** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @sg_init_table(%struct.scatterlist* %14, i32 %15)
  br label %17

17:                                               ; preds = %81, %4
  %18 = load i32, i32* %7, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %21, %22
  br label %24

24:                                               ; preds = %20, %17
  %25 = phi i1 [ false, %17 ], [ %23, %20 ]
  br i1 %25, label %26, label %84

26:                                               ; preds = %24
  %27 = load i8*, i8** %6, align 8
  %28 = call %struct.page* @virt_to_page(i8* %27)
  store %struct.page* %28, %struct.page** %11, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @offset_in_page(i8* %29)
  store i32 %30, i32* %12, align 4
  %31 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %32 = icmp ne %struct.scatterlist* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %26
  %34 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %34, i64 %36
  %38 = load %struct.page*, %struct.page** %11, align 8
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @sg_set_page(%struct.scatterlist* %37, %struct.page* %38, i32 0, i32 %39)
  br label %41

41:                                               ; preds = %33, %26
  %42 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %43 = load i32, i32* %12, align 4
  %44 = sub nsw i32 %42, %43
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp sge i32 %45, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %41
  %49 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %50 = icmp ne %struct.scatterlist* %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load i32, i32* %13, align 4
  %53 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %53, i64 %55
  %57 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %56, i32 0, i32 0
  store i32 %52, i32* %57, align 4
  br label %58

58:                                               ; preds = %51, %48
  %59 = load i32, i32* %13, align 4
  %60 = load i8*, i8** %6, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr i8, i8* %60, i64 %61
  store i8* %62, i8** %6, align 8
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %7, align 4
  %65 = sub nsw i32 %64, %63
  store i32 %65, i32* %7, align 4
  br label %81

66:                                               ; preds = %41
  %67 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %68 = icmp ne %struct.scatterlist* %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %71, i64 %73
  %75 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %74, i32 0, i32 0
  store i32 %70, i32* %75, align 4
  br label %76

76:                                               ; preds = %69, %66
  %77 = load i32, i32* %7, align 4
  %78 = load i8*, i8** %6, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr i8, i8* %78, i64 %79
  store i8* %80, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %81

81:                                               ; preds = %76, %58
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %10, align 4
  br label %17

84:                                               ; preds = %24
  %85 = load i32, i32* %7, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %5, align 4
  br label %92

90:                                               ; preds = %84
  %91 = load i32, i32* %10, align 4
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %90, %87
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local %struct.page* @virt_to_page(i8*) #1

declare dso_local i32 @offset_in_page(i8*) #1

declare dso_local i32 @sg_set_page(%struct.scatterlist*, %struct.page*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
