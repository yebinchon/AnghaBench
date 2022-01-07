; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/ztest/extr_ztest.c_setup_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/ztest/extr_ztest.c_setup_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i64, i64 }

@PROT_READ = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@ztest_fd_data = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global %struct.TYPE_5__* null, align 8
@PROT_WRITE = common dso_local global i32 0, align 4
@ztest_shared_hdr = common dso_local global %struct.TYPE_5__* null, align 8
@ztest_shared_opts = common dso_local global i8* null, align 8
@ztest_shared = common dso_local global i8* null, align 8
@ztest_shared_callstate = common dso_local global i8* null, align 8
@ztest_shared_ds = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @setup_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_data() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = call i32 (...) @getpagesize()
  %6 = call i32 @P2ROUNDUP(i32 32, i32 %5)
  %7 = load i32, i32* @PROT_READ, align 4
  %8 = load i32, i32* @MAP_SHARED, align 4
  %9 = load i32, i32* @ztest_fd_data, align 4
  %10 = call i64 @mmap(i32 0, i32 %6, i32 %7, i32 %8, i32 %9, i32 0)
  %11 = inttoptr i64 %10 to i8*
  %12 = bitcast i8* %11 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %3, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** @MAP_FAILED, align 8
  %15 = icmp ne %struct.TYPE_5__* %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @ASSERT(i32 %16)
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = call i32 @shared_data_size(%struct.TYPE_5__* %18)
  store i32 %19, i32* %1, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = ptrtoint %struct.TYPE_5__* %20 to i32
  %22 = call i32 (...) @getpagesize()
  %23 = call i32 @P2ROUNDUP(i32 32, i32 %22)
  %24 = call i32 @munmap(i32 %21, i32 %23)
  %25 = load i32, i32* %1, align 4
  %26 = call i32 (...) @getpagesize()
  %27 = call i32 @P2ROUNDUP(i32 %25, i32 %26)
  %28 = load i32, i32* @PROT_READ, align 4
  %29 = load i32, i32* @PROT_WRITE, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @MAP_SHARED, align 4
  %32 = load i32, i32* @ztest_fd_data, align 4
  %33 = call i64 @mmap(i32 0, i32 %27, i32 %30, i32 %31, i32 %32, i32 0)
  %34 = inttoptr i64 %33 to i8*
  %35 = bitcast i8* %34 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %35, %struct.TYPE_5__** @ztest_shared_hdr, align 8
  store %struct.TYPE_5__* %35, %struct.TYPE_5__** %3, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** @MAP_FAILED, align 8
  %38 = icmp ne %struct.TYPE_5__* %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @ASSERT(i32 %39)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %42 = bitcast %struct.TYPE_5__* %41 to i32*
  store i32* %42, i32** %4, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %2, align 4
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* %2, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = bitcast i32* %49 to i8*
  store i8* %50, i8** @ztest_shared_opts, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* %2, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %2, align 4
  %58 = load i32*, i32** %4, align 8
  %59 = load i32, i32* %2, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = bitcast i32* %61 to i8*
  store i8* %62, i8** @ztest_shared, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* %2, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %67, %65
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %2, align 4
  %70 = load i32*, i32** %4, align 8
  %71 = load i32, i32* %2, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = bitcast i32* %73 to i8*
  store i8* %74, i8** @ztest_shared_callstate, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = mul nsw i32 %77, %80
  %82 = load i32, i32* %2, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %2, align 4
  %84 = load i32*, i32** %4, align 8
  %85 = load i32, i32* %2, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = bitcast i32* %87 to i8*
  store i8* %88, i8** @ztest_shared_ds, align 8
  ret void
}

declare dso_local i64 @mmap(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @P2ROUNDUP(i32, i32) #1

declare dso_local i32 @getpagesize(...) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @shared_data_size(%struct.TYPE_5__*) #1

declare dso_local i32 @munmap(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
