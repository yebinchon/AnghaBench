; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_scan.c_file_dirty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_scan.c_file_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_sb_info = type { i32, i32, i32, i32 }
%struct.jffs2_eraseblock = type { i32, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jffs2_sb_info*, %struct.jffs2_eraseblock*)* @file_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_dirty(%struct.jffs2_sb_info* %0, %struct.jffs2_eraseblock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.jffs2_sb_info*, align 8
  %5 = alloca %struct.jffs2_eraseblock*, align 8
  %6 = alloca i32, align 4
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %4, align 8
  store %struct.jffs2_eraseblock* %1, %struct.jffs2_eraseblock** %5, align 8
  %7 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %8 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %9 = call i32 @jffs2_prealloc_raw_node_refs(%struct.jffs2_sb_info* %7, %struct.jffs2_eraseblock* %8, i32 1)
  store i32 %9, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %3, align 4
  br label %72

13:                                               ; preds = %2
  %14 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %15 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %16 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %17 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @jffs2_scan_dirty_space(%struct.jffs2_sb_info* %14, %struct.jffs2_eraseblock* %15, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %72

23:                                               ; preds = %13
  %24 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %25 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %28 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %26
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %28, align 4
  %33 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %34 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %37 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %35
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %37, align 4
  %42 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %43 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %46 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = sub nsw i64 %48, %44
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %46, align 4
  %51 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %52 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %51, i32 0, i32 2
  store i64 0, i64* %52, align 8
  %53 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %54 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %55 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @VERYDIRTY(%struct.jffs2_sb_info* %53, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %23
  %60 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %61 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %60, i32 0, i32 0
  %62 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %63 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %62, i32 0, i32 1
  %64 = call i32 @list_add(i32* %61, i32* %63)
  br label %71

65:                                               ; preds = %23
  %66 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %67 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %66, i32 0, i32 0
  %68 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %69 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %68, i32 0, i32 0
  %70 = call i32 @list_add(i32* %67, i32* %69)
  br label %71

71:                                               ; preds = %65, %59
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %21, %11
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @jffs2_prealloc_raw_node_refs(%struct.jffs2_sb_info*, %struct.jffs2_eraseblock*, i32) #1

declare dso_local i32 @jffs2_scan_dirty_space(%struct.jffs2_sb_info*, %struct.jffs2_eraseblock*, i32) #1

declare dso_local i64 @VERYDIRTY(%struct.jffs2_sb_info*, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
