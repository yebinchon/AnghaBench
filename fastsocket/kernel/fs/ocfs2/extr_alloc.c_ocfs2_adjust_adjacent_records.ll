; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_adjust_adjacent_records.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_adjust_adjacent_records.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_rec = type { i8*, i8* }
%struct.ocfs2_extent_list = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_extent_rec*, %struct.ocfs2_extent_list*, %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_list*)* @ocfs2_adjust_adjacent_records to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_adjust_adjacent_records(%struct.ocfs2_extent_rec* %0, %struct.ocfs2_extent_list* %1, %struct.ocfs2_extent_rec* %2, %struct.ocfs2_extent_list* %3) #0 {
  %5 = alloca %struct.ocfs2_extent_rec*, align 8
  %6 = alloca %struct.ocfs2_extent_list*, align 8
  %7 = alloca %struct.ocfs2_extent_rec*, align 8
  %8 = alloca %struct.ocfs2_extent_list*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.ocfs2_extent_rec* %0, %struct.ocfs2_extent_rec** %5, align 8
  store %struct.ocfs2_extent_list* %1, %struct.ocfs2_extent_list** %6, align 8
  store %struct.ocfs2_extent_rec* %2, %struct.ocfs2_extent_rec** %7, align 8
  store %struct.ocfs2_extent_list* %3, %struct.ocfs2_extent_list** %8, align 8
  %11 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %8, align 8
  %12 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i64 @le32_to_cpu(i8* %16)
  store i64 %17, i64* %9, align 8
  %18 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %8, align 8
  %19 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %8, align 8
  %20 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 0
  %23 = call i32 @ocfs2_rec_clusters(%struct.ocfs2_extent_list* %18, %struct.TYPE_2__* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %44, label %25

25:                                               ; preds = %4
  %26 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %8, align 8
  %27 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %8, align 8
  %31 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @le16_to_cpu(i32 %32)
  %34 = icmp sle i32 %33, 1
  %35 = zext i1 %34 to i32
  %36 = call i32 @BUG_ON(i32 %35)
  %37 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %8, align 8
  %38 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @le32_to_cpu(i8* %42)
  store i64 %43, i64* %9, align 8
  br label %44

44:                                               ; preds = %25, %4
  %45 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %5, align 8
  %46 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = call i64 @le32_to_cpu(i8* %47)
  %49 = load i64, i64* %9, align 8
  %50 = sub nsw i64 %49, %48
  store i64 %50, i64* %9, align 8
  %51 = load i64, i64* %9, align 8
  %52 = call i8* @cpu_to_le32(i64 %51)
  %53 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %5, align 8
  %54 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  %55 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %7, align 8
  %56 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @le32_to_cpu(i8* %57)
  store i64 %58, i64* %10, align 8
  %59 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %7, align 8
  %60 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @le32_to_cpu(i8* %61)
  %63 = load i64, i64* %10, align 8
  %64 = add nsw i64 %63, %62
  store i64 %64, i64* %10, align 8
  %65 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %5, align 8
  %66 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %7, align 8
  %69 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  %70 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %7, align 8
  %71 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %70, i32 0, i32 1
  %72 = load i64, i64* %9, align 8
  %73 = call i32 @le32_add_cpu(i8** %71, i64 %72)
  %74 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %7, align 8
  %75 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = call i64 @le32_to_cpu(i8* %76)
  %78 = load i64, i64* %10, align 8
  %79 = sub nsw i64 %78, %77
  store i64 %79, i64* %10, align 8
  %80 = load i64, i64* %10, align 8
  %81 = call i8* @cpu_to_le32(i64 %80)
  %82 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %7, align 8
  %83 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %82, i32 0, i32 0
  store i8* %81, i8** %83, align 8
  ret void
}

declare dso_local i64 @le32_to_cpu(i8*) #1

declare dso_local i32 @ocfs2_rec_clusters(%struct.ocfs2_extent_list*, %struct.TYPE_2__*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i32 @le32_add_cpu(i8**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
