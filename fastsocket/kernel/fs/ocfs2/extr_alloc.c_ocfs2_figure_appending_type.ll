; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_figure_appending_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_figure_appending_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_insert_type = type { i32 }
%struct.ocfs2_extent_list = type { %struct.ocfs2_extent_rec*, i32, i32 }
%struct.ocfs2_extent_rec = type { i32, i32 }

@APPEND_NONE = common dso_local global i32 0, align 4
@APPEND_TAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_insert_type*, %struct.ocfs2_extent_list*, %struct.ocfs2_extent_rec*)* @ocfs2_figure_appending_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_figure_appending_type(%struct.ocfs2_insert_type* %0, %struct.ocfs2_extent_list* %1, %struct.ocfs2_extent_rec* %2) #0 {
  %4 = alloca %struct.ocfs2_insert_type*, align 8
  %5 = alloca %struct.ocfs2_extent_list*, align 8
  %6 = alloca %struct.ocfs2_extent_rec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.ocfs2_extent_rec*, align 8
  store %struct.ocfs2_insert_type* %0, %struct.ocfs2_insert_type** %4, align 8
  store %struct.ocfs2_extent_list* %1, %struct.ocfs2_extent_list** %5, align 8
  store %struct.ocfs2_extent_rec* %2, %struct.ocfs2_extent_rec** %6, align 8
  %10 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %6, align 8
  %11 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @le32_to_cpu(i32 %12)
  store i64 %13, i64* %8, align 8
  %14 = load i32, i32* @APPEND_NONE, align 4
  %15 = load %struct.ocfs2_insert_type*, %struct.ocfs2_insert_type** %4, align 8
  %16 = getelementptr inbounds %struct.ocfs2_insert_type, %struct.ocfs2_insert_type* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %5, align 8
  %18 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @le16_to_cpu(i32 %19)
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %5, align 8
  %25 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %3
  br label %70

29:                                               ; preds = %3
  %30 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %5, align 8
  %31 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %30, i32 0, i32 0
  %32 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %31, align 8
  %33 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %32, i64 0
  %34 = call i64 @ocfs2_is_empty_extent(%struct.ocfs2_extent_rec* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %29
  %37 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %5, align 8
  %38 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @le16_to_cpu(i32 %39)
  %41 = icmp eq i64 %40, 1
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %70

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43, %29
  %45 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %5, align 8
  %46 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @le16_to_cpu(i32 %47)
  %49 = sub nsw i64 %48, 1
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %7, align 4
  %51 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %5, align 8
  %52 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %51, i32 0, i32 0
  %53 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %53, i64 %55
  store %struct.ocfs2_extent_rec* %56, %struct.ocfs2_extent_rec** %9, align 8
  %57 = load i64, i64* %8, align 8
  %58 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %9, align 8
  %59 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @le32_to_cpu(i32 %60)
  %62 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %9, align 8
  %63 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @le16_to_cpu(i32 %64)
  %66 = add nsw i64 %61, %65
  %67 = icmp sge i64 %57, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %44
  br label %70

69:                                               ; preds = %44
  br label %74

70:                                               ; preds = %68, %42, %28
  %71 = load i32, i32* @APPEND_TAIL, align 4
  %72 = load %struct.ocfs2_insert_type*, %struct.ocfs2_insert_type** %4, align 8
  %73 = getelementptr inbounds %struct.ocfs2_insert_type, %struct.ocfs2_insert_type* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %70, %69
  ret void
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @ocfs2_is_empty_extent(%struct.ocfs2_extent_rec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
