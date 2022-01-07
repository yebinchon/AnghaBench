; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_send_readpages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_send_readpages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_req = type { i64, i32 (%struct.fuse_conn*, %struct.fuse_req*)*, i32, %struct.TYPE_6__, %struct.TYPE_4__, i32* }
%struct.fuse_conn = type opaque
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.file = type { %struct.fuse_file* }
%struct.fuse_file = type { %struct.fuse_conn.0* }
%struct.fuse_conn.0 = type { i64 }

@PAGE_CACHE_SHIFT = common dso_local global i64 0, align 8
@FUSE_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fuse_req*, %struct.file*)* @fuse_send_readpages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fuse_send_readpages(%struct.fuse_req* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.fuse_req*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.fuse_file*, align 8
  %6 = alloca %struct.fuse_conn.0*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.fuse_req* %0, %struct.fuse_req** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.fuse_file*, %struct.fuse_file** %10, align 8
  store %struct.fuse_file* %11, %struct.fuse_file** %5, align 8
  %12 = load %struct.fuse_file*, %struct.fuse_file** %5, align 8
  %13 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %12, i32 0, i32 0
  %14 = load %struct.fuse_conn.0*, %struct.fuse_conn.0** %13, align 8
  store %struct.fuse_conn.0* %14, %struct.fuse_conn.0** %6, align 8
  %15 = load %struct.fuse_req*, %struct.fuse_req** %3, align 8
  %16 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %15, i32 0, i32 5
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @page_offset(i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.fuse_req*, %struct.fuse_req** %3, align 8
  %22 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %25 = shl i64 %23, %24
  store i64 %25, i64* %8, align 8
  %26 = load %struct.fuse_req*, %struct.fuse_req** %3, align 8
  %27 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load %struct.fuse_req*, %struct.fuse_req** %3, align 8
  %30 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store i32 1, i32* %31, align 4
  %32 = load %struct.fuse_req*, %struct.fuse_req** %3, align 8
  %33 = load %struct.file*, %struct.file** %4, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i64, i64* %8, align 8
  %36 = load i32, i32* @FUSE_READ, align 4
  %37 = call i32 @fuse_read_fill(%struct.fuse_req* %32, %struct.file* %33, i32 %34, i64 %35, i32 %36)
  %38 = load %struct.fuse_conn.0*, %struct.fuse_conn.0** %6, align 8
  %39 = call i32 @fuse_get_attr_version(%struct.fuse_conn.0* %38)
  %40 = load %struct.fuse_req*, %struct.fuse_req** %3, align 8
  %41 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store i32 %39, i32* %43, align 4
  %44 = load %struct.fuse_conn.0*, %struct.fuse_conn.0** %6, align 8
  %45 = getelementptr inbounds %struct.fuse_conn.0, %struct.fuse_conn.0* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %2
  %49 = load %struct.fuse_file*, %struct.fuse_file** %5, align 8
  %50 = call i32 @fuse_file_get(%struct.fuse_file* %49)
  %51 = load %struct.fuse_req*, %struct.fuse_req** %3, align 8
  %52 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load %struct.fuse_req*, %struct.fuse_req** %3, align 8
  %54 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %53, i32 0, i32 1
  store i32 (%struct.fuse_conn*, %struct.fuse_req*)* bitcast (i32 (%struct.fuse_conn.0*, %struct.fuse_req*)* @fuse_readpages_end to i32 (%struct.fuse_conn*, %struct.fuse_req*)*), i32 (%struct.fuse_conn*, %struct.fuse_req*)** %54, align 8
  %55 = load %struct.fuse_conn.0*, %struct.fuse_conn.0** %6, align 8
  %56 = load %struct.fuse_req*, %struct.fuse_req** %3, align 8
  %57 = call i32 @fuse_request_send_background(%struct.fuse_conn.0* %55, %struct.fuse_req* %56)
  br label %68

58:                                               ; preds = %2
  %59 = load %struct.fuse_conn.0*, %struct.fuse_conn.0** %6, align 8
  %60 = load %struct.fuse_req*, %struct.fuse_req** %3, align 8
  %61 = call i32 @fuse_request_send(%struct.fuse_conn.0* %59, %struct.fuse_req* %60)
  %62 = load %struct.fuse_conn.0*, %struct.fuse_conn.0** %6, align 8
  %63 = load %struct.fuse_req*, %struct.fuse_req** %3, align 8
  %64 = call i32 @fuse_readpages_end(%struct.fuse_conn.0* %62, %struct.fuse_req* %63)
  %65 = load %struct.fuse_conn.0*, %struct.fuse_conn.0** %6, align 8
  %66 = load %struct.fuse_req*, %struct.fuse_req** %3, align 8
  %67 = call i32 @fuse_put_request(%struct.fuse_conn.0* %65, %struct.fuse_req* %66)
  br label %68

68:                                               ; preds = %58, %48
  ret void
}

declare dso_local i32 @page_offset(i32) #1

declare dso_local i32 @fuse_read_fill(%struct.fuse_req*, %struct.file*, i32, i64, i32) #1

declare dso_local i32 @fuse_get_attr_version(%struct.fuse_conn.0*) #1

declare dso_local i32 @fuse_file_get(%struct.fuse_file*) #1

declare dso_local i32 @fuse_readpages_end(%struct.fuse_conn.0*, %struct.fuse_req*) #1

declare dso_local i32 @fuse_request_send_background(%struct.fuse_conn.0*, %struct.fuse_req*) #1

declare dso_local i32 @fuse_request_send(%struct.fuse_conn.0*, %struct.fuse_req*) #1

declare dso_local i32 @fuse_put_request(%struct.fuse_conn.0*, %struct.fuse_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
