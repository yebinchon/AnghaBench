; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_archive.c_bfd_ar_hdr_from_filesystem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_archive.c_bfd_ar_hdr_from_filesystem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.areltdata = type { i32, i8* }
%struct.TYPE_5__ = type { i32, %struct.bfd_in_memory* }
%struct.bfd_in_memory = type { i32 }
%struct.stat = type { i32, i32, i32, i32, i32 }
%struct.ar_hdr = type { i32, i32, i32, i32, i32, i32 }

@BFD_IN_MEMORY = common dso_local global i32 0, align 4
@bfd_error_system_call = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%-12ld\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%-8lo\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%-10ld\00", align 1
@ARFMAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.areltdata* (%struct.TYPE_5__*, i8*, %struct.TYPE_5__*)* @bfd_ar_hdr_from_filesystem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.areltdata* @bfd_ar_hdr_from_filesystem(%struct.TYPE_5__* %0, i8* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca %struct.areltdata*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.stat, align 4
  %9 = alloca %struct.areltdata*, align 8
  %10 = alloca %struct.ar_hdr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.bfd_in_memory*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %14 = icmp ne %struct.TYPE_5__* %13, null
  br i1 %14, label %15, label %37

15:                                               ; preds = %3
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @BFD_IN_MEMORY, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %15
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load %struct.bfd_in_memory*, %struct.bfd_in_memory** %24, align 8
  store %struct.bfd_in_memory* %25, %struct.bfd_in_memory** %12, align 8
  %26 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %27 = call i32 @time(i32* %26)
  %28 = call i32 (...) @getuid()
  %29 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = call i32 (...) @getgid()
  %31 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 2
  store i32 %30, i32* %31, align 4
  %32 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 3
  store i32 420, i32* %32, align 4
  %33 = load %struct.bfd_in_memory*, %struct.bfd_in_memory** %12, align 8
  %34 = getelementptr inbounds %struct.bfd_in_memory, %struct.bfd_in_memory* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 4
  store i32 %35, i32* %36, align 4
  br label %45

37:                                               ; preds = %15, %3
  %38 = load i8*, i8** %6, align 8
  %39 = call i64 @stat(i8* %38, %struct.stat* %8)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* @bfd_error_system_call, align 4
  %43 = call i32 @bfd_set_error(i32 %42)
  store %struct.areltdata* null, %struct.areltdata** %4, align 8
  br label %103

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44, %22
  store i32 40, i32* %11, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call %struct.areltdata* @bfd_zalloc(%struct.TYPE_5__* %46, i32 %47)
  store %struct.areltdata* %48, %struct.areltdata** %9, align 8
  %49 = load %struct.areltdata*, %struct.areltdata** %9, align 8
  %50 = icmp eq %struct.areltdata* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store %struct.areltdata* null, %struct.areltdata** %4, align 8
  br label %103

52:                                               ; preds = %45
  %53 = load %struct.areltdata*, %struct.areltdata** %9, align 8
  %54 = bitcast %struct.areltdata* %53 to i8*
  %55 = getelementptr inbounds i8, i8* %54, i64 16
  %56 = bitcast i8* %55 to %struct.ar_hdr*
  store %struct.ar_hdr* %56, %struct.ar_hdr** %10, align 8
  %57 = load %struct.ar_hdr*, %struct.ar_hdr** %10, align 8
  %58 = call i32 @memset(%struct.ar_hdr* %57, i8 signext 32, i32 24)
  %59 = load %struct.ar_hdr*, %struct.ar_hdr** %10, align 8
  %60 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @_bfd_ar_spacepad(i32 %61, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load %struct.ar_hdr*, %struct.ar_hdr** %10, align 8
  %66 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @_bfd_ar_spacepad(i32 %67, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = load %struct.ar_hdr*, %struct.ar_hdr** %10, align 8
  %72 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @_bfd_ar_spacepad(i32 %73, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = load %struct.ar_hdr*, %struct.ar_hdr** %10, align 8
  %78 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @_bfd_ar_spacepad(i32 %79, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  %83 = load %struct.ar_hdr*, %struct.ar_hdr** %10, align 8
  %84 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @_bfd_ar_spacepad(i32 %85, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %87)
  %89 = load %struct.ar_hdr*, %struct.ar_hdr** %10, align 8
  %90 = getelementptr inbounds %struct.ar_hdr, %struct.ar_hdr* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @ARFMAG, align 4
  %93 = call i32 @memcpy(i32 %91, i32 %92, i32 2)
  %94 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.areltdata*, %struct.areltdata** %9, align 8
  %97 = getelementptr inbounds %struct.areltdata, %struct.areltdata* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load %struct.ar_hdr*, %struct.ar_hdr** %10, align 8
  %99 = bitcast %struct.ar_hdr* %98 to i8*
  %100 = load %struct.areltdata*, %struct.areltdata** %9, align 8
  %101 = getelementptr inbounds %struct.areltdata, %struct.areltdata* %100, i32 0, i32 1
  store i8* %99, i8** %101, align 8
  %102 = load %struct.areltdata*, %struct.areltdata** %9, align 8
  store %struct.areltdata* %102, %struct.areltdata** %4, align 8
  br label %103

103:                                              ; preds = %52, %51, %41
  %104 = load %struct.areltdata*, %struct.areltdata** %4, align 8
  ret %struct.areltdata* %104
}

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @getuid(...) #1

declare dso_local i32 @getgid(...) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local %struct.areltdata* @bfd_zalloc(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @memset(%struct.ar_hdr*, i8 signext, i32) #1

declare dso_local i32 @_bfd_ar_spacepad(i32, i32, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
