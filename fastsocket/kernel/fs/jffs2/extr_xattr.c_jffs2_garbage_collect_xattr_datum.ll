; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_xattr.c_jffs2_garbage_collect_xattr_datum.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_xattr.c_jffs2_garbage_collect_xattr_datum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_sb_info = type { i32 }
%struct.jffs2_xattr_datum = type { i32, %struct.jffs2_raw_node_ref*, i32, i32, i64, i64 }
%struct.jffs2_raw_node_ref = type { i32 }

@JFFS2_XFLAGS_DEAD = common dso_local global i32 0, align 4
@JFFS2_XFLAGS_INVALID = common dso_local global i32 0, align 4
@JFFS2_SUMMARY_XATTR_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"jffs2_reserve_space_gc()=%d, request=%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"xdatum (xid=%u, version=%u) GC'ed from %#08x to %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jffs2_garbage_collect_xattr_datum(%struct.jffs2_sb_info* %0, %struct.jffs2_xattr_datum* %1, %struct.jffs2_raw_node_ref* %2) #0 {
  %4 = alloca %struct.jffs2_sb_info*, align 8
  %5 = alloca %struct.jffs2_xattr_datum*, align 8
  %6 = alloca %struct.jffs2_raw_node_ref*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %4, align 8
  store %struct.jffs2_xattr_datum* %1, %struct.jffs2_xattr_datum** %5, align 8
  store %struct.jffs2_raw_node_ref* %2, %struct.jffs2_raw_node_ref** %6, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %12 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %11, i32 0, i32 0
  %13 = call i32 @down_write(i32* %12)
  %14 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %5, align 8
  %15 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %14, i32 0, i32 1
  %16 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %15, align 8
  %17 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %6, align 8
  %18 = icmp ne %struct.jffs2_raw_node_ref* %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %90

20:                                               ; preds = %3
  %21 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %5, align 8
  %22 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @JFFS2_XFLAGS_DEAD, align 4
  %25 = load i32, i32* @JFFS2_XFLAGS_INVALID, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %23, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %90

30:                                               ; preds = %20
  %31 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %32 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %5, align 8
  %33 = call i32 @load_xattr_datum(%struct.jffs2_sb_info* %31, %struct.jffs2_xattr_datum* %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %30
  %38 = load i32, i32* %10, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %43

41:                                               ; preds = %37
  %42 = load i32, i32* %10, align 4
  br label %43

43:                                               ; preds = %41, %40
  %44 = phi i32 [ 0, %40 ], [ %42, %41 ]
  store i32 %44, i32* %10, align 4
  br label %90

45:                                               ; preds = %30
  %46 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %5, align 8
  %47 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %46, i32 0, i32 1
  %48 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %47, align 8
  %49 = call i32 @ref_offset(%struct.jffs2_raw_node_ref* %48)
  store i32 %49, i32* %9, align 4
  %50 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %5, align 8
  %51 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %50, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  %53 = add i64 4, %52
  %54 = add i64 %53, 1
  %55 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %5, align 8
  %56 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = add i64 %54, %57
  %59 = call i32 @PAD(i64 %58)
  store i32 %59, i32* %7, align 4
  %60 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @JFFS2_SUMMARY_XATTR_SIZE, align 4
  %63 = call i32 @jffs2_reserve_space_gc(%struct.jffs2_sb_info* %60, i32 %61, i32* %8, i32 %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %45
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @JFFS2_WARNING(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %68)
  br label %90

70:                                               ; preds = %45
  %71 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %72 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %5, align 8
  %73 = call i32 @save_xattr_datum(%struct.jffs2_sb_info* %71, %struct.jffs2_xattr_datum* %72)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %89, label %76

76:                                               ; preds = %70
  %77 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %5, align 8
  %78 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %5, align 8
  %81 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.jffs2_xattr_datum*, %struct.jffs2_xattr_datum** %5, align 8
  %85 = getelementptr inbounds %struct.jffs2_xattr_datum, %struct.jffs2_xattr_datum* %84, i32 0, i32 1
  %86 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %85, align 8
  %87 = call i32 @ref_offset(%struct.jffs2_raw_node_ref* %86)
  %88 = call i32 @dbg_xattr(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %82, i32 %83, i32 %87)
  br label %89

89:                                               ; preds = %76, %70
  br label %90

90:                                               ; preds = %89, %66, %43, %29, %19
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %90
  %94 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %95 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %6, align 8
  %96 = call i32 @jffs2_mark_node_obsolete(%struct.jffs2_sb_info* %94, %struct.jffs2_raw_node_ref* %95)
  br label %97

97:                                               ; preds = %93, %90
  %98 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %99 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %98, i32 0, i32 0
  %100 = call i32 @up_write(i32* %99)
  %101 = load i32, i32* %10, align 4
  ret i32 %101
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @load_xattr_datum(%struct.jffs2_sb_info*, %struct.jffs2_xattr_datum*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ref_offset(%struct.jffs2_raw_node_ref*) #1

declare dso_local i32 @PAD(i64) #1

declare dso_local i32 @jffs2_reserve_space_gc(%struct.jffs2_sb_info*, i32, i32*, i32) #1

declare dso_local i32 @JFFS2_WARNING(i8*, i32, i32) #1

declare dso_local i32 @save_xattr_datum(%struct.jffs2_sb_info*, %struct.jffs2_xattr_datum*) #1

declare dso_local i32 @dbg_xattr(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @jffs2_mark_node_obsolete(%struct.jffs2_sb_info*, %struct.jffs2_raw_node_ref*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
