; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_balloc.c_rsv_window_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_balloc.c_rsv_window_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext2_reserve_window_node = type { i32, i64, i8*, i8* }
%struct.TYPE_2__ = type { i32 }

@EXT2_RESERVE_WINDOW_NOT_ALLOCATED = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, %struct.ext2_reserve_window_node*)* @rsv_window_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsv_window_remove(%struct.super_block* %0, %struct.ext2_reserve_window_node* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.ext2_reserve_window_node*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.ext2_reserve_window_node* %1, %struct.ext2_reserve_window_node** %4, align 8
  %5 = load i8*, i8** @EXT2_RESERVE_WINDOW_NOT_ALLOCATED, align 8
  %6 = load %struct.ext2_reserve_window_node*, %struct.ext2_reserve_window_node** %4, align 8
  %7 = getelementptr inbounds %struct.ext2_reserve_window_node, %struct.ext2_reserve_window_node* %6, i32 0, i32 3
  store i8* %5, i8** %7, align 8
  %8 = load i8*, i8** @EXT2_RESERVE_WINDOW_NOT_ALLOCATED, align 8
  %9 = load %struct.ext2_reserve_window_node*, %struct.ext2_reserve_window_node** %4, align 8
  %10 = getelementptr inbounds %struct.ext2_reserve_window_node, %struct.ext2_reserve_window_node* %9, i32 0, i32 2
  store i8* %8, i8** %10, align 8
  %11 = load %struct.ext2_reserve_window_node*, %struct.ext2_reserve_window_node** %4, align 8
  %12 = getelementptr inbounds %struct.ext2_reserve_window_node, %struct.ext2_reserve_window_node* %11, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = load %struct.ext2_reserve_window_node*, %struct.ext2_reserve_window_node** %4, align 8
  %14 = getelementptr inbounds %struct.ext2_reserve_window_node, %struct.ext2_reserve_window_node* %13, i32 0, i32 0
  %15 = load %struct.super_block*, %struct.super_block** %3, align 8
  %16 = call %struct.TYPE_2__* @EXT2_SB(%struct.super_block* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @rb_erase(i32* %14, i32* %17)
  ret void
}

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local %struct.TYPE_2__* @EXT2_SB(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
