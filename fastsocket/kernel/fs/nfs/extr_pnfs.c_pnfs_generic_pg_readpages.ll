; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pnfs.c_pnfs_generic_pg_readpages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pnfs.c_pnfs_generic_pg_readpages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_pageio_descriptor = type { i32*, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32*)* }
%struct.nfs_read_header = type { %struct.nfs_pgio_header }
%struct.nfs_pgio_header = type { %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.nfs_pgio_header*)* }

@ENOMEM = common dso_local global i32 0, align 4
@pnfs_readhdr_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pnfs_generic_pg_readpages(%struct.nfs_pageio_descriptor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfs_pageio_descriptor*, align 8
  %4 = alloca %struct.nfs_read_header*, align 8
  %5 = alloca %struct.nfs_pgio_header*, align 8
  %6 = alloca i32, align 4
  store %struct.nfs_pageio_descriptor* %0, %struct.nfs_pageio_descriptor** %3, align 8
  %7 = call %struct.nfs_read_header* (...) @nfs_readhdr_alloc()
  store %struct.nfs_read_header* %7, %struct.nfs_read_header** %4, align 8
  %8 = load %struct.nfs_read_header*, %struct.nfs_read_header** %4, align 8
  %9 = icmp ne %struct.nfs_read_header* %8, null
  br i1 %9, label %28, label %10

10:                                               ; preds = %1
  %11 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %12 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %11, i32 0, i32 2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32 (i32*)*, i32 (i32*)** %14, align 8
  %16 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %17 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %16, i32 0, i32 1
  %18 = call i32 %15(i32* %17)
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  %21 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %22 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @put_lseg(i32* %23)
  %25 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %26 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %2, align 4
  br label %76

28:                                               ; preds = %1
  %29 = load %struct.nfs_read_header*, %struct.nfs_read_header** %4, align 8
  %30 = getelementptr inbounds %struct.nfs_read_header, %struct.nfs_read_header* %29, i32 0, i32 0
  store %struct.nfs_pgio_header* %30, %struct.nfs_pgio_header** %5, align 8
  %31 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %32 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %33 = load i32, i32* @pnfs_readhdr_free, align 4
  %34 = call i32 @nfs_pgheader_init(%struct.nfs_pageio_descriptor* %31, %struct.nfs_pgio_header* %32, i32 %33)
  %35 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %36 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @get_lseg(i32* %37)
  %39 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %40 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  %41 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %42 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %41, i32 0, i32 1
  %43 = call i32 @atomic_inc(i32* %42)
  %44 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %45 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %46 = call i32 @nfs_generic_pagein(%struct.nfs_pageio_descriptor* %44, %struct.nfs_pgio_header* %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %28
  %50 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %51 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @put_lseg(i32* %52)
  %54 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %55 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %54, i32 0, i32 0
  store i32* null, i32** %55, align 8
  br label %61

56:                                               ; preds = %28
  %57 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %58 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %59 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %58, i32 0, i32 2
  %60 = call i32 @pnfs_do_multiple_reads(%struct.nfs_pageio_descriptor* %57, i32* %59)
  br label %61

61:                                               ; preds = %56, %49
  %62 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %63 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %62, i32 0, i32 1
  %64 = call i64 @atomic_dec_and_test(i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %61
  %67 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %68 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32 (%struct.nfs_pgio_header*)*, i32 (%struct.nfs_pgio_header*)** %70, align 8
  %72 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %73 = call i32 %71(%struct.nfs_pgio_header* %72)
  br label %74

74:                                               ; preds = %66, %61
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %74, %10
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.nfs_read_header* @nfs_readhdr_alloc(...) #1

declare dso_local i32 @put_lseg(i32*) #1

declare dso_local i32 @nfs_pgheader_init(%struct.nfs_pageio_descriptor*, %struct.nfs_pgio_header*, i32) #1

declare dso_local i32 @get_lseg(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @nfs_generic_pagein(%struct.nfs_pageio_descriptor*, %struct.nfs_pgio_header*) #1

declare dso_local i32 @pnfs_do_multiple_reads(%struct.nfs_pageio_descriptor*, i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
