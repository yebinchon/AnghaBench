; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pnfs.c_pnfs_ld_write_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pnfs.c_pnfs_ld_write_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_write_data = type { i32, %struct.nfs_pgio_header* }
%struct.nfs_pgio_header = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.nfs_write_data*)*, i32 (i32*, %struct.nfs_write_data*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pnfs_ld_write_done(%struct.nfs_write_data* %0) #0 {
  %2 = alloca %struct.nfs_write_data*, align 8
  %3 = alloca %struct.nfs_pgio_header*, align 8
  store %struct.nfs_write_data* %0, %struct.nfs_write_data** %2, align 8
  %4 = load %struct.nfs_write_data*, %struct.nfs_write_data** %2, align 8
  %5 = getelementptr inbounds %struct.nfs_write_data, %struct.nfs_write_data* %4, i32 0, i32 1
  %6 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  store %struct.nfs_pgio_header* %6, %struct.nfs_pgio_header** %3, align 8
  %7 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %3, align 8
  %8 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %1
  %12 = load %struct.nfs_write_data*, %struct.nfs_write_data** %2, align 8
  %13 = call i32 @pnfs_set_layoutcommit(%struct.nfs_write_data* %12)
  %14 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %3, align 8
  %15 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32 (i32*, %struct.nfs_write_data*)*, i32 (i32*, %struct.nfs_write_data*)** %17, align 8
  %19 = load %struct.nfs_write_data*, %struct.nfs_write_data** %2, align 8
  %20 = getelementptr inbounds %struct.nfs_write_data, %struct.nfs_write_data* %19, i32 0, i32 0
  %21 = load %struct.nfs_write_data*, %struct.nfs_write_data** %2, align 8
  %22 = call i32 %18(i32* %20, %struct.nfs_write_data* %21)
  br label %26

23:                                               ; preds = %1
  %24 = load %struct.nfs_write_data*, %struct.nfs_write_data** %2, align 8
  %25 = call i32 @pnfs_ld_handle_write_error(%struct.nfs_write_data* %24)
  br label %26

26:                                               ; preds = %23, %11
  %27 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %3, align 8
  %28 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.nfs_write_data*)*, i32 (%struct.nfs_write_data*)** %30, align 8
  %32 = load %struct.nfs_write_data*, %struct.nfs_write_data** %2, align 8
  %33 = call i32 %31(%struct.nfs_write_data* %32)
  ret void
}

declare dso_local i32 @pnfs_set_layoutcommit(%struct.nfs_write_data*) #1

declare dso_local i32 @pnfs_ld_handle_write_error(%struct.nfs_write_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
