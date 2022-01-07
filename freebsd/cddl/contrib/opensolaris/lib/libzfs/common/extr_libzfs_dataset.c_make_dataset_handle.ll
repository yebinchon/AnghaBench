; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_make_dataset_handle.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_make_dataset_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32* }
%struct.TYPE_13__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @make_dataset_handle(i32* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_13__, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = bitcast %struct.TYPE_13__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 4, i1 false)
  %9 = call %struct.TYPE_12__* @calloc(i32 16, i32 1)
  store %struct.TYPE_12__* %9, %struct.TYPE_12__** %7, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %11 = icmp eq %struct.TYPE_12__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %46

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  store i32* %14, i32** %16, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @strlcpy(i32 %19, i8* %20, i32 4)
  %22 = load i32*, i32** %4, align 8
  %23 = call i64 @zcmd_alloc_dst_nvlist(i32* %22, %struct.TYPE_13__* %6, i32 0)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %13
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %27 = call i32 @free(%struct.TYPE_12__* %26)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %46

28:                                               ; preds = %13
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %30 = call i32 @get_stats_ioctl(%struct.TYPE_12__* %29, %struct.TYPE_13__* %6)
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = call i32 @zcmd_free_nvlists(%struct.TYPE_13__* %6)
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %35 = call i32 @free(%struct.TYPE_12__* %34)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %46

36:                                               ; preds = %28
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %38 = call i32 @make_dataset_handle_common(%struct.TYPE_12__* %37, %struct.TYPE_13__* %6)
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %42 = call i32 @free(%struct.TYPE_12__* %41)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %7, align 8
  br label %43

43:                                               ; preds = %40, %36
  %44 = call i32 @zcmd_free_nvlists(%struct.TYPE_13__* %6)
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_12__* %45, %struct.TYPE_12__** %3, align 8
  br label %46

46:                                               ; preds = %43, %32, %25, %12
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  ret %struct.TYPE_12__* %47
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_12__* @calloc(i32, i32) #2

declare dso_local i32 @strlcpy(i32, i8*, i32) #2

declare dso_local i64 @zcmd_alloc_dst_nvlist(i32*, %struct.TYPE_13__*, i32) #2

declare dso_local i32 @free(%struct.TYPE_12__*) #2

declare dso_local i32 @get_stats_ioctl(%struct.TYPE_12__*, %struct.TYPE_13__*) #2

declare dso_local i32 @zcmd_free_nvlists(%struct.TYPE_13__*) #2

declare dso_local i32 @make_dataset_handle_common(%struct.TYPE_12__*, %struct.TYPE_13__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
