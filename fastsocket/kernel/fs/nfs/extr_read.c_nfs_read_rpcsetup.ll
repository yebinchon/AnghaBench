; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_read.c_nfs_read_rpcsetup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_read.c_nfs_read_rpcsetup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_read_data = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32, i64, i32* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i64, i64, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.nfs_page* }
%struct.nfs_page = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_read_data*, i32, i32)* @nfs_read_rpcsetup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_read_rpcsetup(%struct.nfs_read_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nfs_read_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfs_page*, align 8
  store %struct.nfs_read_data* %0, %struct.nfs_read_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.nfs_read_data*, %struct.nfs_read_data** %4, align 8
  %9 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %8, i32 0, i32 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load %struct.nfs_page*, %struct.nfs_page** %11, align 8
  store %struct.nfs_page* %12, %struct.nfs_page** %7, align 8
  %13 = load %struct.nfs_read_data*, %struct.nfs_read_data** %4, align 8
  %14 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %13, i32 0, i32 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @NFS_FH(i32 %17)
  %19 = load %struct.nfs_read_data*, %struct.nfs_read_data** %4, align 8
  %20 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 6
  store i32 %18, i32* %21, align 8
  %22 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %23 = call i64 @req_offset(%struct.nfs_page* %22)
  %24 = load i32, i32* %6, align 4
  %25 = zext i32 %24 to i64
  %26 = add nsw i64 %23, %25
  %27 = load %struct.nfs_read_data*, %struct.nfs_read_data** %4, align 8
  %28 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 5
  store i64 %26, i64* %29, align 8
  %30 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %31 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = zext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = load %struct.nfs_read_data*, %struct.nfs_read_data** %4, align 8
  %37 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 4
  store i64 %35, i64* %38, align 8
  %39 = load %struct.nfs_read_data*, %struct.nfs_read_data** %4, align 8
  %40 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.nfs_read_data*, %struct.nfs_read_data** %4, align 8
  %44 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 3
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.nfs_read_data*, %struct.nfs_read_data** %4, align 8
  %48 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  %50 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %51 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @get_nfs_open_context(i32 %52)
  %54 = load %struct.nfs_read_data*, %struct.nfs_read_data** %4, align 8
  %55 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  store i32 %53, i32* %56, align 8
  %57 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %58 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.nfs_read_data*, %struct.nfs_read_data** %4, align 8
  %61 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 4
  %63 = load %struct.nfs_read_data*, %struct.nfs_read_data** %4, align 8
  %64 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %63, i32 0, i32 0
  %65 = load %struct.nfs_read_data*, %struct.nfs_read_data** %4, align 8
  %66 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 2
  store i32* %64, i32** %67, align 8
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.nfs_read_data*, %struct.nfs_read_data** %4, align 8
  %70 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 8
  %72 = load %struct.nfs_read_data*, %struct.nfs_read_data** %4, align 8
  %73 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  store i64 0, i64* %74, align 8
  %75 = load %struct.nfs_read_data*, %struct.nfs_read_data** %4, align 8
  %76 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %75, i32 0, i32 0
  %77 = call i32 @nfs_fattr_init(i32* %76)
  ret void
}

declare dso_local i32 @NFS_FH(i32) #1

declare dso_local i64 @req_offset(%struct.nfs_page*) #1

declare dso_local i32 @get_nfs_open_context(i32) #1

declare dso_local i32 @nfs_fattr_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
