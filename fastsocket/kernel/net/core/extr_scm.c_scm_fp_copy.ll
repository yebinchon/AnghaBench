; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_scm.c_scm_fp_copy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_scm.c_scm_fp_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmsghdr = type { i32 }
%struct.scm_fp_list = type { i64, i32, %struct.file** }
%struct.file = type { i32 }

@SCM_MAX_FD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmsghdr*, %struct.scm_fp_list**)* @scm_fp_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scm_fp_copy(%struct.cmsghdr* %0, %struct.scm_fp_list** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmsghdr*, align 8
  %5 = alloca %struct.scm_fp_list**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.scm_fp_list*, align 8
  %8 = alloca %struct.file**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.file*, align 8
  store %struct.cmsghdr* %0, %struct.cmsghdr** %4, align 8
  store %struct.scm_fp_list** %1, %struct.scm_fp_list*** %5, align 8
  %13 = load %struct.cmsghdr*, %struct.cmsghdr** %4, align 8
  %14 = call i64 @CMSG_DATA(%struct.cmsghdr* %13)
  %15 = inttoptr i64 %14 to i32*
  store i32* %15, i32** %6, align 8
  %16 = load %struct.scm_fp_list**, %struct.scm_fp_list*** %5, align 8
  %17 = load %struct.scm_fp_list*, %struct.scm_fp_list** %16, align 8
  store %struct.scm_fp_list* %17, %struct.scm_fp_list** %7, align 8
  %18 = load %struct.cmsghdr*, %struct.cmsghdr** %4, align 8
  %19 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @CMSG_ALIGN(i32 4)
  %22 = sub nsw i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = udiv i64 %23, 4
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp sle i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %110

29:                                               ; preds = %2
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @SCM_MAX_FD, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %110

36:                                               ; preds = %29
  %37 = load %struct.scm_fp_list*, %struct.scm_fp_list** %7, align 8
  %38 = icmp ne %struct.scm_fp_list* %37, null
  br i1 %38, label %55, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.scm_fp_list* @kmalloc(i32 24, i32 %40)
  store %struct.scm_fp_list* %41, %struct.scm_fp_list** %7, align 8
  %42 = load %struct.scm_fp_list*, %struct.scm_fp_list** %7, align 8
  %43 = icmp ne %struct.scm_fp_list* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %110

47:                                               ; preds = %39
  %48 = load %struct.scm_fp_list*, %struct.scm_fp_list** %7, align 8
  %49 = load %struct.scm_fp_list**, %struct.scm_fp_list*** %5, align 8
  store %struct.scm_fp_list* %48, %struct.scm_fp_list** %49, align 8
  %50 = load %struct.scm_fp_list*, %struct.scm_fp_list** %7, align 8
  %51 = getelementptr inbounds %struct.scm_fp_list, %struct.scm_fp_list* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  %52 = load i32, i32* @SCM_MAX_FD, align 4
  %53 = load %struct.scm_fp_list*, %struct.scm_fp_list** %7, align 8
  %54 = getelementptr inbounds %struct.scm_fp_list, %struct.scm_fp_list* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  br label %55

55:                                               ; preds = %47, %36
  %56 = load %struct.scm_fp_list*, %struct.scm_fp_list** %7, align 8
  %57 = getelementptr inbounds %struct.scm_fp_list, %struct.scm_fp_list* %56, i32 0, i32 2
  %58 = load %struct.file**, %struct.file*** %57, align 8
  %59 = load %struct.scm_fp_list*, %struct.scm_fp_list** %7, align 8
  %60 = getelementptr inbounds %struct.scm_fp_list, %struct.scm_fp_list* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.file*, %struct.file** %58, i64 %61
  store %struct.file** %62, %struct.file*** %8, align 8
  %63 = load %struct.scm_fp_list*, %struct.scm_fp_list** %7, align 8
  %64 = getelementptr inbounds %struct.scm_fp_list, %struct.scm_fp_list* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = add i64 %65, %67
  %69 = load %struct.scm_fp_list*, %struct.scm_fp_list** %7, align 8
  %70 = getelementptr inbounds %struct.scm_fp_list, %struct.scm_fp_list* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = icmp ugt i64 %68, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %55
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %110

77:                                               ; preds = %55
  store i32 0, i32* %9, align 4
  br label %78

78:                                               ; preds = %105, %77
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %108

82:                                               ; preds = %78
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %82
  %91 = load i32, i32* %11, align 4
  %92 = call %struct.file* @fget(i32 %91)
  store %struct.file* %92, %struct.file** %12, align 8
  %93 = icmp ne %struct.file* %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %90, %82
  %95 = load i32, i32* @EBADF, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %3, align 4
  br label %110

97:                                               ; preds = %90
  %98 = load %struct.file*, %struct.file** %12, align 8
  %99 = load %struct.file**, %struct.file*** %8, align 8
  %100 = getelementptr inbounds %struct.file*, %struct.file** %99, i32 1
  store %struct.file** %100, %struct.file*** %8, align 8
  store %struct.file* %98, %struct.file** %99, align 8
  %101 = load %struct.scm_fp_list*, %struct.scm_fp_list** %7, align 8
  %102 = getelementptr inbounds %struct.scm_fp_list, %struct.scm_fp_list* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %102, align 8
  br label %105

105:                                              ; preds = %97
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %9, align 4
  br label %78

108:                                              ; preds = %78
  %109 = load i32, i32* %10, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %108, %94, %74, %44, %33, %28
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i64 @CMSG_DATA(%struct.cmsghdr*) #1

declare dso_local i32 @CMSG_ALIGN(i32) #1

declare dso_local %struct.scm_fp_list* @kmalloc(i32, i32) #1

declare dso_local %struct.file* @fget(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
