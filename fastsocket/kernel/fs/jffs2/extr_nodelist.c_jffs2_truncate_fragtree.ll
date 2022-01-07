; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_nodelist.c_jffs2_truncate_fragtree.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_nodelist.c_jffs2_truncate_fragtree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_sb_info = type { i32 }
%struct.rb_root = type { i32 }
%struct.jffs2_node_frag = type { i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"truncating fragtree to 0x%08x bytes\0A\00", align 1
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"marking the last fragment 0x%08x-0x%08x REF_PRISTINE.\0A\00", align 1
@REF_PRISTINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @jffs2_truncate_fragtree(%struct.jffs2_sb_info* %0, %struct.rb_root* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.jffs2_sb_info*, align 8
  %6 = alloca %struct.rb_root*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.jffs2_node_frag*, align 8
  %9 = alloca %struct.jffs2_node_frag*, align 8
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %5, align 8
  store %struct.rb_root* %1, %struct.rb_root** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.rb_root*, %struct.rb_root** %6, align 8
  %11 = load i64, i64* %7, align 8
  %12 = call %struct.jffs2_node_frag* @jffs2_lookup_node_frag(%struct.rb_root* %10, i64 %11)
  store %struct.jffs2_node_frag* %12, %struct.jffs2_node_frag** %8, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @dbg_fragtree(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %8, align 8
  %16 = icmp ne %struct.jffs2_node_frag* %15, null
  br i1 %16, label %17, label %44

17:                                               ; preds = %3
  %18 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %8, align 8
  %19 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %44

23:                                               ; preds = %17
  %24 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %8, align 8
  %25 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %8, align 8
  %28 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %26, %29
  %31 = load i64, i64* %7, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %23
  %34 = load i64, i64* %7, align 8
  %35 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %8, align 8
  %36 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %34, %37
  %39 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %8, align 8
  %40 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %33, %23
  %42 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %8, align 8
  %43 = call %struct.jffs2_node_frag* @frag_next(%struct.jffs2_node_frag* %42)
  store %struct.jffs2_node_frag* %43, %struct.jffs2_node_frag** %8, align 8
  br label %44

44:                                               ; preds = %41, %17, %3
  br label %45

45:                                               ; preds = %56, %44
  %46 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %8, align 8
  %47 = icmp ne %struct.jffs2_node_frag* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %8, align 8
  %50 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %7, align 8
  %53 = icmp sge i64 %51, %52
  br label %54

54:                                               ; preds = %48, %45
  %55 = phi i1 [ false, %45 ], [ %53, %48 ]
  br i1 %55, label %56, label %66

56:                                               ; preds = %54
  %57 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %8, align 8
  %58 = call %struct.jffs2_node_frag* @frag_next(%struct.jffs2_node_frag* %57)
  store %struct.jffs2_node_frag* %58, %struct.jffs2_node_frag** %9, align 8
  %59 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %8, align 8
  %60 = load %struct.rb_root*, %struct.rb_root** %6, align 8
  %61 = call i32 @frag_erase(%struct.jffs2_node_frag* %59, %struct.rb_root* %60)
  %62 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %63 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %8, align 8
  %64 = call i32 @jffs2_obsolete_node_frag(%struct.jffs2_sb_info* %62, %struct.jffs2_node_frag* %63)
  %65 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %9, align 8
  store %struct.jffs2_node_frag* %65, %struct.jffs2_node_frag** %8, align 8
  br label %45

66:                                               ; preds = %54
  %67 = load i64, i64* %7, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i64 0, i64* %4, align 8
  br label %137

70:                                               ; preds = %66
  %71 = load %struct.rb_root*, %struct.rb_root** %6, align 8
  %72 = call %struct.jffs2_node_frag* @frag_last(%struct.rb_root* %71)
  store %struct.jffs2_node_frag* %72, %struct.jffs2_node_frag** %8, align 8
  %73 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %8, align 8
  %74 = icmp ne %struct.jffs2_node_frag* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %70
  store i64 0, i64* %4, align 8
  br label %137

76:                                               ; preds = %70
  %77 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %8, align 8
  %78 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %8, align 8
  %81 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %79, %82
  %84 = load i64, i64* %7, align 8
  %85 = icmp slt i64 %83, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %76
  %87 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %8, align 8
  %88 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %8, align 8
  %91 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %89, %92
  store i64 %93, i64* %4, align 8
  br label %137

94:                                               ; preds = %76
  %95 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %8, align 8
  %96 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %95, i32 0, i32 2
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = icmp ne %struct.TYPE_3__* %97, null
  br i1 %98, label %99, label %135

99:                                               ; preds = %94
  %100 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %8, align 8
  %101 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %104 = sub nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = and i64 %102, %105
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %135

108:                                              ; preds = %99
  %109 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %8, align 8
  %110 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = trunc i64 %111 to i32
  %113 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %8, align 8
  %114 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %8, align 8
  %117 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %115, %118
  %120 = call i32 @dbg_fragtree2(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %112, i64 %119)
  %121 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %8, align 8
  %122 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %121, i32 0, i32 2
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = call i32 @ref_offset(%struct.TYPE_4__* %125)
  %127 = load i32, i32* @REF_PRISTINE, align 4
  %128 = or i32 %126, %127
  %129 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %8, align 8
  %130 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %129, i32 0, i32 2
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  store i32 %128, i32* %134, align 4
  br label %135

135:                                              ; preds = %108, %99, %94
  %136 = load i64, i64* %7, align 8
  store i64 %136, i64* %4, align 8
  br label %137

137:                                              ; preds = %135, %86, %75, %69
  %138 = load i64, i64* %4, align 8
  ret i64 %138
}

declare dso_local %struct.jffs2_node_frag* @jffs2_lookup_node_frag(%struct.rb_root*, i64) #1

declare dso_local i32 @dbg_fragtree(i8*, i64) #1

declare dso_local %struct.jffs2_node_frag* @frag_next(%struct.jffs2_node_frag*) #1

declare dso_local i32 @frag_erase(%struct.jffs2_node_frag*, %struct.rb_root*) #1

declare dso_local i32 @jffs2_obsolete_node_frag(%struct.jffs2_sb_info*, %struct.jffs2_node_frag*) #1

declare dso_local %struct.jffs2_node_frag* @frag_last(%struct.rb_root*) #1

declare dso_local i32 @dbg_fragtree2(i8*, i32, i64) #1

declare dso_local i32 @ref_offset(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
