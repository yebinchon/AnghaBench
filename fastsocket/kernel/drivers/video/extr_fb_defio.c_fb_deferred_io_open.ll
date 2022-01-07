; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_fb_defio.c_fb_deferred_io_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_fb_defio.c_fb_deferred_io_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%struct.inode = type { i32 }
%struct.file = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@fb_deferred_io_aops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fb_deferred_io_open(%struct.fb_info* %0, %struct.inode* %1, %struct.file* %2) #0 {
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.file*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store %struct.file* %2, %struct.file** %6, align 8
  %7 = load %struct.file*, %struct.file** %6, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i32* @fb_deferred_io_aops, i32** %10, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
