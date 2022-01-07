; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_aops.c_ocfs2_clear_page_regions.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_aops.c_ocfs2_clear_page_regions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.ocfs2_super = type { i32 }

@KM_USER0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, %struct.ocfs2_super*, i32, i32, i32)* @ocfs2_clear_page_regions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_clear_page_regions(%struct.page* %0, %struct.ocfs2_super* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.ocfs2_super*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %6, align 8
  store %struct.ocfs2_super* %1, %struct.ocfs2_super** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @ocfs2_figure_cluster_boundaries(%struct.ocfs2_super* %14, i32 %15, i32* %12, i32* %13)
  %17 = load %struct.page*, %struct.page** %6, align 8
  %18 = load i32, i32* @KM_USER0, align 4
  %19 = call i8* @kmap_atomic(%struct.page* %17, i32 %18)
  store i8* %19, i8** %11, align 8
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %52

25:                                               ; preds = %22, %5
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp ugt i32 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = load i8*, i8** %11, align 8
  %31 = load i32, i32* %12, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr i8, i8* %30, i64 %32
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %12, align 4
  %36 = sub i32 %34, %35
  %37 = call i32 @memset(i8* %33, i32 0, i32 %36)
  br label %38

38:                                               ; preds = %29, %25
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = load i8*, i8** %11, align 8
  %44 = load i32, i32* %10, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr i8, i8* %43, i64 %45
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %10, align 4
  %49 = sub i32 %47, %48
  %50 = call i32 @memset(i8* %46, i32 0, i32 %49)
  br label %51

51:                                               ; preds = %42, %38
  br label %61

52:                                               ; preds = %22
  %53 = load i8*, i8** %11, align 8
  %54 = load i32, i32* %12, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr i8, i8* %53, i64 %55
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %12, align 4
  %59 = sub i32 %57, %58
  %60 = call i32 @memset(i8* %56, i32 0, i32 %59)
  br label %61

61:                                               ; preds = %52, %51
  %62 = load i8*, i8** %11, align 8
  %63 = load i32, i32* @KM_USER0, align 4
  %64 = call i32 @kunmap_atomic(i8* %62, i32 %63)
  ret void
}

declare dso_local i32 @ocfs2_figure_cluster_boundaries(%struct.ocfs2_super*, i32, i32*, i32*) #1

declare dso_local i8* @kmap_atomic(%struct.page*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
