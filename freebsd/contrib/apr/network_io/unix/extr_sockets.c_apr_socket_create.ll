; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr/network_io/unix/extr_sockets.c_apr_socket_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr/network_io/unix/extr_sockets.c_apr_socket_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i64 }

@APR_UNSPEC = common dso_local global i32 0, align 4
@APR_INET = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@F_GETFD = common dso_local global i32 0, align 4
@FD_CLOEXEC = common dso_local global i32 0, align 4
@F_SETFD = common dso_local global i32 0, align 4
@socket_cleanup = common dso_local global i32 0, align 4
@APR_SUCCESS = common dso_local global i32 0, align 4
@APR_INET6 = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@SOCK_CLOEXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @apr_socket_create(%struct.TYPE_5__** %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* @APR_UNSPEC, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* @APR_INET, align 4
  store i32 %21, i32* %12, align 4
  br label %22

22:                                               ; preds = %20, %5
  %23 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = call i32 @alloc_socket(%struct.TYPE_5__** %23, i32* %24)
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %13, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %10, align 4
  %31 = call i8* @socket(i32 %26, i32 %29, i32 %30)
  %32 = ptrtoint i8* %31 to i32
  %33 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  %36 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %22
  %42 = load i32, i32* @errno, align 4
  store i32 %42, i32* %6, align 4
  br label %109

43:                                               ; preds = %22
  %44 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @set_socket_vars(%struct.TYPE_5__* %45, i32 %46, i32 %47, i32 %48)
  %50 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @F_GETFD, align 4
  %55 = call i32 (i32, i32, ...) @fcntl(i32 %53, i32 %54)
  store i32 %55, i32* %14, align 4
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %68

57:                                               ; preds = %43
  %58 = load i32, i32* @errno, align 4
  store i32 %58, i32* %15, align 4
  %59 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @close(i32 %62)
  %64 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  store i32 -1, i32* %66, align 8
  %67 = load i32, i32* %15, align 4
  store i32 %67, i32* %6, align 4
  br label %109

68:                                               ; preds = %43
  %69 = load i32, i32* @FD_CLOEXEC, align 4
  %70 = load i32, i32* %14, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %14, align 4
  %72 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @F_SETFD, align 4
  %77 = load i32, i32* %14, align 4
  %78 = call i32 (i32, i32, ...) @fcntl(i32 %75, i32 %76, i32 %77)
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %91

80:                                               ; preds = %68
  %81 = load i32, i32* @errno, align 4
  store i32 %81, i32* %15, align 4
  %82 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @close(i32 %85)
  %87 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  store i32 -1, i32* %89, align 8
  %90 = load i32, i32* %15, align 4
  store i32 %90, i32* %6, align 4
  br label %109

91:                                               ; preds = %68
  %92 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  store i32 -1, i32* %94, align 4
  %95 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 3
  store i64 0, i64* %97, align 8
  %98 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = bitcast %struct.TYPE_5__* %103 to i8*
  %105 = load i32, i32* @socket_cleanup, align 4
  %106 = load i32, i32* @socket_cleanup, align 4
  %107 = call i32 @apr_pool_cleanup_register(i32 %101, i8* %104, i32 %105, i32 %106)
  %108 = load i32, i32* @APR_SUCCESS, align 4
  store i32 %108, i32* %6, align 4
  br label %109

109:                                              ; preds = %91, %80, %57, %41
  %110 = load i32, i32* %6, align 4
  ret i32 %110
}

declare dso_local i32 @alloc_socket(%struct.TYPE_5__**, i32*) #1

declare dso_local i8* @socket(i32, i32, i32) #1

declare dso_local i32 @set_socket_vars(%struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i32 @fcntl(i32, i32, ...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @apr_pool_cleanup_register(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
