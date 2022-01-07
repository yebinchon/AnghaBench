; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hfs/extr_extent.c___hfs_ext_read_extent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hfs/extr_extent.c___hfs_ext_read_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfs_find_data = type { i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.hfs_extent = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfs_find_data*, %struct.hfs_extent*, i32, i32, i32)* @__hfs_ext_read_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__hfs_ext_read_extent(%struct.hfs_find_data* %0, %struct.hfs_extent* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hfs_find_data*, align 8
  %8 = alloca %struct.hfs_extent*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hfs_find_data* %0, %struct.hfs_find_data** %7, align 8
  store %struct.hfs_extent* %1, %struct.hfs_extent** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.hfs_find_data*, %struct.hfs_find_data** %7, align 8
  %14 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %13, i32 0, i32 3
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %11, align 4
  %19 = call i32 @hfs_ext_build_key(%struct.TYPE_8__* %15, i32 %16, i32 %17, i32 %18)
  %20 = load %struct.hfs_find_data*, %struct.hfs_find_data** %7, align 8
  %21 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %20, i32 0, i32 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load %struct.hfs_find_data*, %struct.hfs_find_data** %7, align 8
  %26 = call i32 @hfs_brec_find(%struct.hfs_find_data* %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %5
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @ENOENT, align 4
  %32 = sub nsw i32 0, %31
  %33 = icmp ne i32 %30, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %6, align 4
  br label %85

36:                                               ; preds = %29, %5
  %37 = load %struct.hfs_find_data*, %struct.hfs_find_data** %7, align 8
  %38 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %37, i32 0, i32 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.hfs_find_data*, %struct.hfs_find_data** %7, align 8
  %44 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %43, i32 0, i32 3
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %42, %48
  br i1 %49, label %64, label %50

50:                                               ; preds = %36
  %51 = load %struct.hfs_find_data*, %struct.hfs_find_data** %7, align 8
  %52 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %51, i32 0, i32 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.hfs_find_data*, %struct.hfs_find_data** %7, align 8
  %58 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %57, i32 0, i32 3
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %56, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %50, %36
  %65 = load i32, i32* @ENOENT, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %6, align 4
  br label %85

67:                                               ; preds = %50
  %68 = load %struct.hfs_find_data*, %struct.hfs_find_data** %7, align 8
  %69 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = icmp ne i64 %71, 4
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load i32, i32* @EIO, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %6, align 4
  br label %85

76:                                               ; preds = %67
  %77 = load %struct.hfs_find_data*, %struct.hfs_find_data** %7, align 8
  %78 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.hfs_extent*, %struct.hfs_extent** %8, align 8
  %81 = load %struct.hfs_find_data*, %struct.hfs_find_data** %7, align 8
  %82 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @hfs_bnode_read(i32 %79, %struct.hfs_extent* %80, i32 %83, i32 4)
  store i32 0, i32* %6, align 4
  br label %85

85:                                               ; preds = %76, %73, %64, %34
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local i32 @hfs_ext_build_key(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @hfs_brec_find(%struct.hfs_find_data*) #1

declare dso_local i32 @hfs_bnode_read(i32, %struct.hfs_extent*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
