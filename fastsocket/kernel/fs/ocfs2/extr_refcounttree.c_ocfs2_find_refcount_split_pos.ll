; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_find_refcount_split_pos.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_find_refcount_split_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_refcount_list = type { i32*, i32 }

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_refcount_list*, i32*, i32*)* @ocfs2_find_refcount_split_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_find_refcount_split_pos(%struct.ocfs2_refcount_list* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ocfs2_refcount_list*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ocfs2_refcount_list* %0, %struct.ocfs2_refcount_list** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %5, align 8
  %12 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @le16_to_cpu(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = sdiv i32 %15, 2
  store i32 %16, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %81, %3
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %84

21:                                               ; preds = %17
  %22 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %5, align 8
  %23 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %9, align 4
  %27 = sub nsw i32 %25, %26
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %24, i64 %29
  %31 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %5, align 8
  %32 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %9, align 4
  %36 = sub nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %33, i64 %37
  %39 = call i64 @ocfs2_refcount_rec_no_intersect(i32* %30, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %21
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %9, align 4
  %44 = sub nsw i32 %42, %43
  %45 = load i32*, i32** %7, align 8
  store i32 %44, i32* %45, align 4
  br label %84

46:                                               ; preds = %21
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %47, %48
  %50 = add nsw i32 %49, 1
  %51 = load i32, i32* %8, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %81

54:                                               ; preds = %46
  %55 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %5, align 8
  %56 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %58, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %57, i64 %61
  %63 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %5, align 8
  %64 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %66, %67
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %65, i64 %70
  %72 = call i64 @ocfs2_refcount_rec_no_intersect(i32* %62, i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %54
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %75, %76
  %78 = add nsw i32 %77, 1
  %79 = load i32*, i32** %7, align 8
  store i32 %78, i32* %79, align 4
  br label %84

80:                                               ; preds = %54
  br label %81

81:                                               ; preds = %80, %53
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %9, align 4
  br label %17

84:                                               ; preds = %74, %41, %17
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp sge i32 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load i32, i32* @ENOSPC, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %4, align 4
  br label %101

91:                                               ; preds = %84
  %92 = load %struct.ocfs2_refcount_list*, %struct.ocfs2_refcount_list** %5, align 8
  %93 = getelementptr inbounds %struct.ocfs2_refcount_list, %struct.ocfs2_refcount_list* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i32*, i32** %7, align 8
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  %99 = call i32 @ocfs2_get_ref_rec_low_cpos(i32* %98)
  %100 = load i32*, i32** %6, align 8
  store i32 %99, i32* %100, align 4
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %91, %88
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @ocfs2_refcount_rec_no_intersect(i32*, i32*) #1

declare dso_local i32 @ocfs2_get_ref_rec_low_cpos(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
