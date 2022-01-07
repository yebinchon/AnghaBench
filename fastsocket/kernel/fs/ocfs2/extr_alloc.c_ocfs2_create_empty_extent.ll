; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_create_empty_extent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_create_empty_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_extent_list = type { i64, i64, i64, i32* }

@.str = private unnamed_addr constant [76 x i8] c"Asked to create an empty extent in a full list:\0Acount = %u, tree depth = %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_extent_list*)* @ocfs2_create_empty_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_create_empty_extent(%struct.ocfs2_extent_list* %0) #0 {
  %2 = alloca %struct.ocfs2_extent_list*, align 8
  %3 = alloca i32, align 4
  store %struct.ocfs2_extent_list* %0, %struct.ocfs2_extent_list** %2, align 8
  %4 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %2, align 8
  %5 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = call i32 @le16_to_cpu(i64 %6)
  store i32 %7, i32* %3, align 4
  %8 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %2, align 8
  %9 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @le16_to_cpu(i64 %10)
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %46

18:                                               ; preds = %1
  %19 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %2, align 8
  %20 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = call i64 @ocfs2_is_empty_extent(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %55

26:                                               ; preds = %18
  %27 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %2, align 8
  %28 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %2, align 8
  %31 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  %34 = zext i1 %33 to i32
  %35 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %2, align 8
  %36 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @le16_to_cpu(i64 %37)
  %39 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %2, align 8
  %40 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @le16_to_cpu(i64 %41)
  %43 = call i32 @mlog_bug_on_msg(i32 %34, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %42)
  %44 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %2, align 8
  %45 = call i32 @ocfs2_shift_records_right(%struct.ocfs2_extent_list* %44)
  br label %46

46:                                               ; preds = %26, %17
  %47 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %2, align 8
  %48 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %47, i32 0, i32 0
  %49 = call i32 @le16_add_cpu(i64* %48, i32 1)
  %50 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %2, align 8
  %51 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = call i32 @memset(i32* %53, i32 0, i32 4)
  br label %55

55:                                               ; preds = %46, %25
  ret void
}

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @ocfs2_is_empty_extent(i32*) #1

declare dso_local i32 @mlog_bug_on_msg(i32, i8*, i32, i32) #1

declare dso_local i32 @ocfs2_shift_records_right(%struct.ocfs2_extent_list*) #1

declare dso_local i32 @le16_add_cpu(i64*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
