; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pnfs.c_pnfs_generic_pg_writepages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pnfs.c_pnfs_generic_pg_writepages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_pageio_descriptor = type { i32, i32*, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32*)* }
%struct.nfs_write_header = type { %struct.nfs_pgio_header }
%struct.nfs_pgio_header = type { %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.nfs_pgio_header*)* }

@ENOMEM = common dso_local global i32 0, align 4
@pnfs_writehdr_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pnfs_generic_pg_writepages(%struct.nfs_pageio_descriptor* %0) #0 {
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
  br i1 %9, label %27, label %10

10:                                               ; preds = %1
  %11 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %12 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %11, i32 0, i32 3
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32 (i32*)*, i32 (i32*)** %14, align 8
  %16 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %17 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %16, i32 0, i32 2
  %18 = call i32 %15(i32* %17)
  %19 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %20 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @put_lseg(i32* %21)
  %23 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %24 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %23, i32 0, i32 1
  store i32* null, i32** %24, align 8
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %78

27:                                               ; preds = %1
  %28 = load %struct.nfs_write_header*, %struct.nfs_write_header** %4, align 8
  %29 = getelementptr inbounds %struct.nfs_write_header, %struct.nfs_write_header* %28, i32 0, i32 0
  store %struct.nfs_pgio_header* %29, %struct.nfs_pgio_header** %5, align 8
  %30 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %31 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %32 = load i32, i32* @pnfs_writehdr_free, align 4
  %33 = call i32 @nfs_pgheader_init(%struct.nfs_pageio_descriptor* %30, %struct.nfs_pgio_header* %31, i32 %32)
  %34 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %35 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @get_lseg(i32* %36)
  %38 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %39 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %41 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %40, i32 0, i32 1
  %42 = call i32 @atomic_inc(i32* %41)
  %43 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %44 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %45 = call i32 @nfs_generic_flush(%struct.nfs_pageio_descriptor* %43, %struct.nfs_pgio_header* %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %27
  %49 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %50 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @put_lseg(i32* %51)
  %53 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %54 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %53, i32 0, i32 1
  store i32* null, i32** %54, align 8
  br label %63

55:                                               ; preds = %27
  %56 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %57 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %58 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %57, i32 0, i32 2
  %59 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %3, align 8
  %60 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @pnfs_do_multiple_writes(%struct.nfs_pageio_descriptor* %56, i32* %58, i32 %61)
  br label %63

63:                                               ; preds = %55, %48
  %64 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %65 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %64, i32 0, i32 1
  %66 = call i64 @atomic_dec_and_test(i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %63
  %69 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %70 = getelementptr inbounds %struct.nfs_pgio_header, %struct.nfs_pgio_header* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32 (%struct.nfs_pgio_header*)*, i32 (%struct.nfs_pgio_header*)** %72, align 8
  %74 = load %struct.nfs_pgio_header*, %struct.nfs_pgio_header** %5, align 8
  %75 = call i32 %73(%struct.nfs_pgio_header* %74)
  br label %76

76:                                               ; preds = %68, %63
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %76, %10
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.nfs_write_header* @nfs_writehdr_alloc(...) #1

declare dso_local i32 @put_lseg(i32*) #1

declare dso_local i32 @nfs_pgheader_init(%struct.nfs_pageio_descriptor*, %struct.nfs_pgio_header*, i32) #1

declare dso_local i32 @get_lseg(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @nfs_generic_flush(%struct.nfs_pageio_descriptor*, %struct.nfs_pgio_header*) #1

declare dso_local i32 @pnfs_do_multiple_writes(%struct.nfs_pageio_descriptor*, i32*, i32) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
