; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_complete_edge_insert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_complete_edge_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_path = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.buffer_head*, %struct.ocfs2_extent_list* }
%struct.buffer_head = type { i32 }
%struct.ocfs2_extent_list = type { %struct.ocfs2_extent_rec*, i32 }
%struct.ocfs2_extent_rec = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Adjust records at index %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.ocfs2_path*, %struct.ocfs2_path*, i32)* @ocfs2_complete_edge_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_complete_edge_insert(i32* %0, %struct.ocfs2_path* %1, %struct.ocfs2_path* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ocfs2_path*, align 8
  %7 = alloca %struct.ocfs2_path*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ocfs2_extent_list*, align 8
  %13 = alloca %struct.ocfs2_extent_list*, align 8
  %14 = alloca %struct.ocfs2_extent_list*, align 8
  %15 = alloca %struct.ocfs2_extent_rec*, align 8
  %16 = alloca %struct.ocfs2_extent_rec*, align 8
  %17 = alloca %struct.buffer_head*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.ocfs2_path* %1, %struct.ocfs2_path** %6, align 8
  store %struct.ocfs2_path* %2, %struct.ocfs2_path** %7, align 8
  store i32 %3, i32* %8, align 4
  %18 = load %struct.ocfs2_path*, %struct.ocfs2_path** %6, align 8
  %19 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.buffer_head*, %struct.buffer_head** %24, align 8
  store %struct.buffer_head* %25, %struct.buffer_head** %17, align 8
  %26 = load %struct.ocfs2_path*, %struct.ocfs2_path** %6, align 8
  %27 = call %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path* %26)
  store %struct.ocfs2_extent_list* %27, %struct.ocfs2_extent_list** %13, align 8
  %28 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %29 = call %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path* %28)
  store %struct.ocfs2_extent_list* %29, %struct.ocfs2_extent_list** %14, align 8
  %30 = load %struct.ocfs2_path*, %struct.ocfs2_path** %6, align 8
  %31 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %125, %4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %128

38:                                               ; preds = %34
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load %struct.ocfs2_path*, %struct.ocfs2_path** %6, align 8
  %42 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %47, align 8
  store %struct.ocfs2_extent_list* %48, %struct.ocfs2_extent_list** %12, align 8
  %49 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %13, align 8
  %50 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @le16_to_cpu(i32 %51)
  %53 = sub nsw i32 %52, 1
  store i32 %53, i32* %11, align 4
  %54 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %12, align 8
  %55 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %54, i32 0, i32 0
  %56 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %55, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %56, i64 %58
  store %struct.ocfs2_extent_rec* %59, %struct.ocfs2_extent_rec** %15, align 8
  %60 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %61 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %66, align 8
  store %struct.ocfs2_extent_list* %67, %struct.ocfs2_extent_list** %12, align 8
  %68 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %12, align 8
  %69 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %68, i32 0, i32 0
  %70 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %69, align 8
  %71 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %70, i64 0
  store %struct.ocfs2_extent_rec* %71, %struct.ocfs2_extent_rec** %16, align 8
  %72 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %15, align 8
  %73 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %13, align 8
  %74 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %16, align 8
  %75 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %14, align 8
  %76 = call i32 @ocfs2_adjust_adjacent_records(%struct.ocfs2_extent_rec* %72, %struct.ocfs2_extent_list* %73, %struct.ocfs2_extent_rec* %74, %struct.ocfs2_extent_list* %75)
  %77 = load i32*, i32** %5, align 8
  %78 = load %struct.ocfs2_path*, %struct.ocfs2_path** %6, align 8
  %79 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %78, i32 0, i32 1
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load %struct.buffer_head*, %struct.buffer_head** %84, align 8
  %86 = call i32 @ocfs2_journal_dirty(i32* %77, %struct.buffer_head* %85)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %38
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @mlog_errno(i32 %90)
  br label %92

92:                                               ; preds = %89, %38
  %93 = load i32*, i32** %5, align 8
  %94 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %95 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %94, i32 0, i32 1
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load %struct.buffer_head*, %struct.buffer_head** %100, align 8
  %102 = call i32 @ocfs2_journal_dirty(i32* %93, %struct.buffer_head* %101)
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %92
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @mlog_errno(i32 %106)
  br label %108

108:                                              ; preds = %105, %92
  %109 = load %struct.ocfs2_path*, %struct.ocfs2_path** %6, align 8
  %110 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %109, i32 0, i32 1
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  %116 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %115, align 8
  store %struct.ocfs2_extent_list* %116, %struct.ocfs2_extent_list** %13, align 8
  %117 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %118 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %117, i32 0, i32 1
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 1
  %124 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %123, align 8
  store %struct.ocfs2_extent_list* %124, %struct.ocfs2_extent_list** %14, align 8
  br label %125

125:                                              ; preds = %108
  %126 = load i32, i32* %10, align 4
  %127 = add nsw i32 %126, -1
  store i32 %127, i32* %10, align 4
  br label %34

128:                                              ; preds = %34
  %129 = load %struct.ocfs2_path*, %struct.ocfs2_path** %6, align 8
  %130 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %129, i32 0, i32 1
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 1
  %136 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %135, align 8
  store %struct.ocfs2_extent_list* %136, %struct.ocfs2_extent_list** %12, align 8
  %137 = load %struct.ocfs2_path*, %struct.ocfs2_path** %6, align 8
  %138 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %137, i32 0, i32 1
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = load i32, i32* %8, align 4
  %141 = add nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 1
  %145 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %144, align 8
  store %struct.ocfs2_extent_list* %145, %struct.ocfs2_extent_list** %13, align 8
  %146 = load %struct.ocfs2_path*, %struct.ocfs2_path** %7, align 8
  %147 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %146, i32 0, i32 1
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = load i32, i32* %8, align 4
  %150 = add nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 1
  %154 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %153, align 8
  store %struct.ocfs2_extent_list* %154, %struct.ocfs2_extent_list** %14, align 8
  %155 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %12, align 8
  %156 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %13, align 8
  %157 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %14, align 8
  %158 = load %struct.ocfs2_path*, %struct.ocfs2_path** %6, align 8
  %159 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %158, i32 0, i32 1
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** %159, align 8
  %161 = load i32, i32* %8, align 4
  %162 = add nsw i32 %161, 1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 0
  %166 = load %struct.buffer_head*, %struct.buffer_head** %165, align 8
  %167 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @ocfs2_adjust_root_records(%struct.ocfs2_extent_list* %155, %struct.ocfs2_extent_list* %156, %struct.ocfs2_extent_list* %157, i32 %168)
  %170 = load %struct.ocfs2_path*, %struct.ocfs2_path** %6, align 8
  %171 = getelementptr inbounds %struct.ocfs2_path, %struct.ocfs2_path* %170, i32 0, i32 1
  %172 = load %struct.TYPE_2__*, %struct.TYPE_2__** %171, align 8
  %173 = load i32, i32* %8, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 0
  %177 = load %struct.buffer_head*, %struct.buffer_head** %176, align 8
  store %struct.buffer_head* %177, %struct.buffer_head** %17, align 8
  %178 = load i32*, i32** %5, align 8
  %179 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %180 = call i32 @ocfs2_journal_dirty(i32* %178, %struct.buffer_head* %179)
  store i32 %180, i32* %9, align 4
  %181 = load i32, i32* %9, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %128
  %184 = load i32, i32* %9, align 4
  %185 = call i32 @mlog_errno(i32 %184)
  br label %186

186:                                              ; preds = %183, %128
  ret void
}

declare dso_local %struct.ocfs2_extent_list* @path_leaf_el(%struct.ocfs2_path*) #1

declare dso_local i32 @mlog(i32, i8*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_adjust_adjacent_records(%struct.ocfs2_extent_rec*, %struct.ocfs2_extent_list*, %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_list*) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_adjust_root_records(%struct.ocfs2_extent_list*, %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
