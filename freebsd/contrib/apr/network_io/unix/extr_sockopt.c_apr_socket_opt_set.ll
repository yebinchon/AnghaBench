; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr/network_io/unix/extr_sockopt.c_apr_socket_opt_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr/network_io/unix/extr_sockopt.c_apr_socket_opt_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@APR_ENOTIMPL = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_DEBUG = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@APR_SUCCESS = common dso_local global i32 0, align 4
@APR_EINVAL = common dso_local global i32 0, align 4
@APR_MAX_SECS_TO_LINGER = common dso_local global i32 0, align 4
@APR_RESET_NODELAY = common dso_local global i32 0, align 4
@APR_TCP_NOPUSH_FLAG = common dso_local global i32 0, align 4
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@IPPROTO_SCTP = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@IPV6_V6ONLY = common dso_local global i32 0, align 4
@SCTP_NODELAY = common dso_local global i32 0, align 4
@SO_BROADCAST = common dso_local global i32 0, align 4
@SO_KEEPALIVE = common dso_local global i32 0, align 4
@SO_LINGER = common dso_local global i32 0, align 4
@SO_RCVBUF = common dso_local global i32 0, align 4
@SO_SNDBUF = common dso_local global i32 0, align 4
@TCP_DEFER_ACCEPT = common dso_local global i32 0, align 4
@TCP_NODELAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @apr_socket_opt_set(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 1, i32* %8, align 4
  br label %14

13:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %13, %12
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %113 [
    i32 136, label %16
    i32 137, label %18
    i32 138, label %39
    i32 132, label %41
    i32 131, label %62
    i32 133, label %64
    i32 134, label %66
    i32 135, label %99
    i32 130, label %101
    i32 129, label %103
    i32 128, label %105
    i32 140, label %107
    i32 139, label %111
  ]

16:                                               ; preds = %14
  %17 = load i32, i32* @APR_ENOTIMPL, align 4
  store i32 %17, i32* %4, align 4
  br label %117

18:                                               ; preds = %14
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = call i32 @apr_is_option_set(%struct.TYPE_5__* %20, i32 137)
  %22 = icmp ne i32 %19, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %18
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @SOL_SOCKET, align 4
  %28 = load i32, i32* @SO_DEBUG, align 4
  %29 = bitcast i32* %8 to i8*
  %30 = call i32 @setsockopt(i32 %26, i32 %27, i32 %28, i8* %29, i32 4)
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i32, i32* @errno, align 4
  store i32 %33, i32* %4, align 4
  br label %117

34:                                               ; preds = %23
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @apr_set_option(%struct.TYPE_5__* %35, i32 137, i32 %36)
  br label %38

38:                                               ; preds = %34, %18
  br label %115

39:                                               ; preds = %14
  %40 = load i32, i32* @APR_ENOTIMPL, align 4
  store i32 %40, i32* %4, align 4
  br label %117

41:                                               ; preds = %14
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = call i32 @apr_is_option_set(%struct.TYPE_5__* %43, i32 132)
  %45 = icmp ne i32 %42, %44
  br i1 %45, label %46, label %61

46:                                               ; preds = %41
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @SOL_SOCKET, align 4
  %51 = load i32, i32* @SO_REUSEADDR, align 4
  %52 = bitcast i32* %8 to i8*
  %53 = call i32 @setsockopt(i32 %49, i32 %50, i32 %51, i8* %52, i32 4)
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = load i32, i32* @errno, align 4
  store i32 %56, i32* %4, align 4
  br label %117

57:                                               ; preds = %46
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @apr_set_option(%struct.TYPE_5__* %58, i32 132, i32 %59)
  br label %61

61:                                               ; preds = %57, %41
  br label %115

62:                                               ; preds = %14
  %63 = load i32, i32* @APR_ENOTIMPL, align 4
  store i32 %63, i32* %4, align 4
  br label %117

64:                                               ; preds = %14
  %65 = load i32, i32* @APR_ENOTIMPL, align 4
  store i32 %65, i32* %4, align 4
  br label %117

66:                                               ; preds = %14
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %68 = call i32 @apr_is_option_set(%struct.TYPE_5__* %67, i32 134)
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %98

71:                                               ; preds = %66
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %71
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @sononblock(i32 %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* @APR_SUCCESS, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %4, align 4
  br label %117

83:                                               ; preds = %74
  br label %94

84:                                               ; preds = %71
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @soblock(i32 %87)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* @APR_SUCCESS, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %4, align 4
  br label %117

93:                                               ; preds = %84
  br label %94

94:                                               ; preds = %93, %83
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @apr_set_option(%struct.TYPE_5__* %95, i32 134, i32 %96)
  br label %98

98:                                               ; preds = %94, %66
  br label %115

99:                                               ; preds = %14
  %100 = load i32, i32* @APR_ENOTIMPL, align 4
  store i32 %100, i32* %4, align 4
  br label %117

101:                                              ; preds = %14
  %102 = load i32, i32* @APR_ENOTIMPL, align 4
  store i32 %102, i32* %4, align 4
  br label %117

103:                                              ; preds = %14
  %104 = load i32, i32* @APR_ENOTIMPL, align 4
  store i32 %104, i32* %4, align 4
  br label %117

105:                                              ; preds = %14
  %106 = load i32, i32* @APR_ENOTIMPL, align 4
  store i32 %106, i32* %4, align 4
  br label %117

107:                                              ; preds = %14
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @apr_set_option(%struct.TYPE_5__* %108, i32 140, i32 %109)
  br label %115

111:                                              ; preds = %14
  %112 = load i32, i32* @APR_ENOTIMPL, align 4
  store i32 %112, i32* %4, align 4
  br label %117

113:                                              ; preds = %14
  %114 = load i32, i32* @APR_EINVAL, align 4
  store i32 %114, i32* %4, align 4
  br label %117

115:                                              ; preds = %107, %98, %61, %38
  %116 = load i32, i32* @APR_SUCCESS, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %115, %113, %111, %105, %103, %101, %99, %91, %81, %64, %62, %55, %39, %32, %16
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i32 @apr_is_option_set(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @apr_set_option(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @sononblock(i32) #1

declare dso_local i32 @soblock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
