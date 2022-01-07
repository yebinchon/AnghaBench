; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_figure_contig_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_figure_contig_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_tree = type { i32 }
%struct.ocfs2_insert_type = type { i32, i32 }
%struct.ocfs2_extent_list = type { %struct.ocfs2_extent_rec*, i32, i32 }
%struct.ocfs2_extent_rec = type { i32 }

@CONTIG_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_extent_tree*, %struct.ocfs2_insert_type*, %struct.ocfs2_extent_list*, %struct.ocfs2_extent_rec*)* @ocfs2_figure_contig_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_figure_contig_type(%struct.ocfs2_extent_tree* %0, %struct.ocfs2_insert_type* %1, %struct.ocfs2_extent_list* %2, %struct.ocfs2_extent_rec* %3) #0 {
  %5 = alloca %struct.ocfs2_extent_tree*, align 8
  %6 = alloca %struct.ocfs2_insert_type*, align 8
  %7 = alloca %struct.ocfs2_extent_list*, align 8
  %8 = alloca %struct.ocfs2_extent_rec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ocfs2_extent_rec*, align 8
  %12 = alloca i32, align 4
  store %struct.ocfs2_extent_tree* %0, %struct.ocfs2_extent_tree** %5, align 8
  store %struct.ocfs2_insert_type* %1, %struct.ocfs2_insert_type** %6, align 8
  store %struct.ocfs2_extent_list* %2, %struct.ocfs2_extent_list** %7, align 8
  store %struct.ocfs2_extent_rec* %3, %struct.ocfs2_extent_rec** %8, align 8
  %13 = load i32, i32* @CONTIG_NONE, align 4
  store i32 %13, i32* %10, align 4
  %14 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %7, align 8
  %15 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @le16_to_cpu(i32 %16)
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %46, %4
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %7, align 8
  %24 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @le16_to_cpu(i32 %25)
  %27 = icmp slt i32 %22, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %21
  %29 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %5, align 8
  %30 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %7, align 8
  %31 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %30, i32 0, i32 0
  %32 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %32, i64 %34
  %36 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %8, align 8
  %37 = call i32 @ocfs2_et_extent_contig(%struct.ocfs2_extent_tree* %29, %struct.ocfs2_extent_rec* %35, %struct.ocfs2_extent_rec* %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @CONTIG_NONE, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %28
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.ocfs2_insert_type*, %struct.ocfs2_insert_type** %6, align 8
  %44 = getelementptr inbounds %struct.ocfs2_insert_type, %struct.ocfs2_insert_type* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  br label %49

45:                                               ; preds = %28
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %21

49:                                               ; preds = %41, %21
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.ocfs2_insert_type*, %struct.ocfs2_insert_type** %6, align 8
  %52 = getelementptr inbounds %struct.ocfs2_insert_type, %struct.ocfs2_insert_type* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.ocfs2_insert_type*, %struct.ocfs2_insert_type** %6, align 8
  %54 = getelementptr inbounds %struct.ocfs2_insert_type, %struct.ocfs2_insert_type* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @CONTIG_NONE, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %91

58:                                               ; preds = %49
  %59 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %7, align 8
  %60 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %59, i32 0, i32 0
  %61 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %60, align 8
  %62 = load %struct.ocfs2_insert_type*, %struct.ocfs2_insert_type** %6, align 8
  %63 = getelementptr inbounds %struct.ocfs2_insert_type, %struct.ocfs2_insert_type* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %61, i64 %65
  store %struct.ocfs2_extent_rec* %66, %struct.ocfs2_extent_rec** %11, align 8
  %67 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %11, align 8
  %68 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @le16_to_cpu(i32 %69)
  %71 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %8, align 8
  %72 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @le16_to_cpu(i32 %73)
  %75 = add nsw i32 %70, %74
  store i32 %75, i32* %12, align 4
  %76 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %5, align 8
  %77 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %58
  %81 = load i32, i32* %12, align 4
  %82 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %5, align 8
  %83 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp ugt i32 %81, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load i32, i32* @CONTIG_NONE, align 4
  %88 = load %struct.ocfs2_insert_type*, %struct.ocfs2_insert_type** %6, align 8
  %89 = getelementptr inbounds %struct.ocfs2_insert_type, %struct.ocfs2_insert_type* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %86, %80, %58
  br label %91

91:                                               ; preds = %90, %49
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_et_extent_contig(%struct.ocfs2_extent_tree*, %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
