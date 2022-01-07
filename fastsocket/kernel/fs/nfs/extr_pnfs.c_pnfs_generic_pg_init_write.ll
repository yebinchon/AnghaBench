; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pnfs.c_pnfs_generic_pg_init_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pnfs.c_pnfs_generic_pg_init_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_pageio_descriptor = type { i32*, i32 }
%struct.nfs_page = type { i64, i64, i32, i32 }

@IOMODE_RW = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pnfs_generic_pg_init_write(%struct.nfs_pageio_descriptor* %0, %struct.nfs_page* %1) #0 {
  %3 = alloca %struct.nfs_pageio_descriptor*, align 8
  %4 = alloca %struct.nfs_page*, align 8
  store %struct.nfs_pageio_descriptor* %0, %struct.nfs_pageio_descriptor** %3, align 8
  store %struct.nfs_page* %1, %struct.nfs_page** %4, align 8
  %5 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %6 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  %12 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  %15 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %20 = call i32 @nfs_pageio_reset_write_mds(%struct.nfs_pageio_descriptor* %19)
  br label %45

21:                                               ; preds = %2
  %22 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %23 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  %26 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  %29 = call i32 @req_offset(%struct.nfs_page* %28)
  %30 = load %struct.nfs_page*, %struct.nfs_page** %4, align 8
  %31 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @IOMODE_RW, align 4
  %34 = load i32, i32* @GFP_NOFS, align 4
  %35 = call i32* @pnfs_update_layout(i32 %24, i32 %27, i32 %29, i32 %32, i32 %33, i32 %34)
  %36 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %37 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %36, i32 0, i32 0
  store i32* %35, i32** %37, align 8
  %38 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %39 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %21
  %43 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %44 = call i32 @nfs_pageio_reset_write_mds(%struct.nfs_pageio_descriptor* %43)
  br label %45

45:                                               ; preds = %18, %42, %21
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @nfs_pageio_reset_write_mds(%struct.nfs_pageio_descriptor*) #1

declare dso_local i32* @pnfs_update_layout(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @req_offset(%struct.nfs_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
