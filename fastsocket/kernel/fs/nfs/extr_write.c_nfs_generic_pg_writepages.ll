; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_write.c_nfs_generic_pg_writepages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_write.c_nfs_generic_pg_writepages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_pageio_descriptor = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32*)* }
%struct.nfs_write_header = type { %struct.nfs_pgio_header }
%struct.nfs_pgio_header = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 (%struct.nfs_pgio_header*)* }

@ENOMEM = common dso_local global i32 0, align 4
@nfs_writehdr_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_pageio_descriptor*)* @nfs_generic_pg_writepages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_generic_pg_writepages(%struct.nfs_pageio_descriptor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfs_pageio_descriptor*, align 8
  %4 = alloca %struct.nfs_write_header*, align 8
  %5 = alloca %struct.nfs_pgio_header*, align 8
  %6 = alloca i32, align 4
  store %struct.nfs_pageio_descriptor* %0, %struct.nfs_pageio_descriptor** %3, align 8
  %7 = call %struct.nfs_write_header* (...) @nfs_writehdr_alloc()
  store %struct.nfs_write_header* %7, %struct.nfs_write_header** %4, align 8
  %8 = load %struct.nfs_write_header*, %struct.nfs_write_header** %4, align 8
  %9 = icmp ne %struct.nfs_write_header* %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %1
  %11 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %12 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %11, i32 0, i32 3
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32 (i32*)*, i32 (i32*)** %14, align 8
  %16 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %17 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %16, i32 0, i32 2
  %18 = call i32 %15(i32* %17)
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %61

21:                                               ; preds = %1
  %22 = load %struct.nfs_write_header*, %struct.nfs_write_header** %4, align 8
  %23 = getelementptr inbounds %struct.nfs_write_header, %struct.nfs_write_header* %22, i32 0, i32 0
  store %struct.nfs_pgio_header* %23, %struct.nfs_pgio_header** %5, align 8
  %24 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %25 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %26 = load i32, i32* @nfs_writehdr_free, align 4
  %27 = call i32 @nfs_pgheader_init(%struct.nfs_pageio_descriptor* %24, %struct.nfs_pgio_header* %25, i32 %26)
  %28 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %29 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %28, i32 0, i32 1
  %30 = call i32 @atomic_inc(i32* %29)
  %31 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %32 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %33 = call i32 @nfs_generic_flush(%struct.nfs_pageio_descriptor* %31, %struct.nfs_pgio_header* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %21
  %37 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %38 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %37, i32 0, i32 2
  %39 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %40 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %43 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @nfs_do_multiple_writes(i32* %38, i32 %41, i32 %44)
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %36, %21
  %47 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %48 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %47, i32 0, i32 1
  %49 = call i64 @atomic_dec_and_test(i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %53 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32 (%struct.nfs_pgio_header*)*, i32 (%struct.nfs_pgio_header*)** %55, align 8
  %57 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %58 = call i32 %56(%struct.nfs_pgio_header* %57)
  br label %59

59:                                               ; preds = %51, %46
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %59, %10
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.nfs_write_header* @nfs_writehdr_alloc(...) #1

declare dso_local i32 @nfs_pgheader_init(%struct.nfs_pageio_descriptor*, %struct.nfs_pgio_header*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @nfs_generic_flush(%struct.nfs_pageio_descriptor*, %struct.nfs_pgio_header*) #1

declare dso_local i32 @nfs_do_multiple_writes(i32*, i32, i32) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
