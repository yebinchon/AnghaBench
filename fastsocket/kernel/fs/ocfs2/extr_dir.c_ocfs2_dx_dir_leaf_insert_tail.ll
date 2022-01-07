; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_dx_dir_leaf_insert_tail.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_dx_dir_leaf_insert_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_dx_leaf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.ocfs2_dx_entry* }
%struct.ocfs2_dx_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_dx_leaf*, %struct.ocfs2_dx_entry*)* @ocfs2_dx_dir_leaf_insert_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_dx_dir_leaf_insert_tail(%struct.ocfs2_dx_leaf* %0, %struct.ocfs2_dx_entry* %1) #0 {
  %3 = alloca %struct.ocfs2_dx_leaf*, align 8
  %4 = alloca %struct.ocfs2_dx_entry*, align 8
  %5 = alloca i32, align 4
  store %struct.ocfs2_dx_leaf* %0, %struct.ocfs2_dx_leaf** %3, align 8
  store %struct.ocfs2_dx_entry* %1, %struct.ocfs2_dx_entry** %4, align 8
  %6 = load %struct.ocfs2_dx_leaf*, %struct.ocfs2_dx_leaf** %3, align 8
  %7 = getelementptr inbounds %struct.ocfs2_dx_leaf, %struct.ocfs2_dx_leaf* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @le16_to_cpu(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.ocfs2_dx_leaf*, %struct.ocfs2_dx_leaf** %3, align 8
  %12 = getelementptr inbounds %struct.ocfs2_dx_leaf, %struct.ocfs2_dx_leaf* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.ocfs2_dx_entry*, %struct.ocfs2_dx_entry** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.ocfs2_dx_entry, %struct.ocfs2_dx_entry* %14, i64 %16
  %18 = load %struct.ocfs2_dx_entry*, %struct.ocfs2_dx_entry** %4, align 8
  %19 = bitcast %struct.ocfs2_dx_entry* %17 to i8*
  %20 = bitcast %struct.ocfs2_dx_entry* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 %20, i64 4, i1 false)
  %21 = load %struct.ocfs2_dx_leaf*, %struct.ocfs2_dx_leaf** %3, align 8
  %22 = getelementptr inbounds %struct.ocfs2_dx_leaf, %struct.ocfs2_dx_leaf* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @le16_add_cpu(i32* %23, i32 1)
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
