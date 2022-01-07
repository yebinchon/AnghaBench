; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_nodelist.c_jffs2_obsolete_node_frag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_nodelist.c_jffs2_obsolete_node_frag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_sb_info = type { i32 }
%struct.jffs2_node_frag = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i64, i64 }

@.str = private unnamed_addr constant [51 x i8] c"marking old node @0x%08x (0x%04x-0x%04x) obsolete\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"marking old node @0x%08x (0x%04x-0x%04x) REF_NORMAL. frags is %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jffs2_sb_info*, %struct.jffs2_node_frag*)* @jffs2_obsolete_node_frag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jffs2_obsolete_node_frag(%struct.jffs2_sb_info* %0, %struct.jffs2_node_frag* %1) #0 {
  %3 = alloca %struct.jffs2_sb_info*, align 8
  %4 = alloca %struct.jffs2_node_frag*, align 8
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %3, align 8
  store %struct.jffs2_node_frag* %1, %struct.jffs2_node_frag** %4, align 8
  %5 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %4, align 8
  %6 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %9, label %93

9:                                                ; preds = %2
  %10 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %4, align 8
  %11 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %13, align 4
  %16 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %4, align 8
  %17 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %57, label %22

22:                                               ; preds = %9
  %23 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %4, align 8
  %24 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ref_offset(i32 %27)
  %29 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %4, align 8
  %30 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %4, align 8
  %35 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %4, align 8
  %40 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %38, %43
  %45 = call i32 (i8*, i32, i64, i64, ...) @dbg_fragtree2(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %28, i64 %33, i64 %44)
  %46 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %47 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %4, align 8
  %48 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @jffs2_mark_node_obsolete(%struct.jffs2_sb_info* %46, i32 %51)
  %53 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %4, align 8
  %54 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = call i32 @jffs2_free_full_dnode(%struct.TYPE_2__* %55)
  br label %92

57:                                               ; preds = %9
  %58 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %4, align 8
  %59 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @ref_offset(i32 %62)
  %64 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %4, align 8
  %65 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %4, align 8
  %70 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %4, align 8
  %75 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %73, %78
  %80 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %4, align 8
  %81 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i8*, i32, i64, i64, ...) @dbg_fragtree2(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %63, i64 %68, i64 %79, i32 %84)
  %86 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %4, align 8
  %87 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @mark_ref_normal(i32 %90)
  br label %92

92:                                               ; preds = %57, %22
  br label %93

93:                                               ; preds = %92, %2
  %94 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %4, align 8
  %95 = call i32 @jffs2_free_node_frag(%struct.jffs2_node_frag* %94)
  ret void
}

declare dso_local i32 @dbg_fragtree2(i8*, i32, i64, i64, ...) #1

declare dso_local i32 @ref_offset(i32) #1

declare dso_local i32 @jffs2_mark_node_obsolete(%struct.jffs2_sb_info*, i32) #1

declare dso_local i32 @jffs2_free_full_dnode(%struct.TYPE_2__*) #1

declare dso_local i32 @mark_ref_normal(i32) #1

declare dso_local i32 @jffs2_free_node_frag(%struct.jffs2_node_frag*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
