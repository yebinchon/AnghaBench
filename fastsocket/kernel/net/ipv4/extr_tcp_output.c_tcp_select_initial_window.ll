; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_output.c_tcp_select_initial_window.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_output.c_tcp_select_initial_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sysctl_tcp_workaround_signed_windows = common dso_local global i64 0, align 8
@MAX_TCP_WINDOW = common dso_local global i32 0, align 4
@u32 = common dso_local global i32 0, align 4
@sysctl_tcp_rmem = common dso_local global i32* null, align 8
@sysctl_rmem_max = common dso_local global i32 0, align 4
@TCP_DEFAULT_INIT_RCVWND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_select_initial_window(i32 %0, i32 %1, i32* %2, i32* %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %7
  br label %22

20:                                               ; preds = %7
  %21 = load i32, i32* %8, align 4
  br label %22

22:                                               ; preds = %20, %19
  %23 = phi i32 [ 0, %19 ], [ %21, %20 ]
  store i32 %23, i32* %15, align 4
  %24 = load i32*, i32** %11, align 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32*, i32** %11, align 8
  store i32 1073725440, i32* %28, align 4
  br label %29

29:                                               ; preds = %27, %22
  %30 = load i32*, i32** %11, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %15, align 4
  %33 = call i32 @min(i32 %31, i32 %32)
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ugt i32 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %29
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* %9, align 4
  %40 = udiv i32 %38, %39
  %41 = load i32, i32* %9, align 4
  %42 = mul i32 %40, %41
  store i32 %42, i32* %15, align 4
  br label %43

43:                                               ; preds = %37, %29
  %44 = load i64, i64* @sysctl_tcp_workaround_signed_windows, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* @MAX_TCP_WINDOW, align 4
  %49 = call i32 @min(i32 %47, i32 %48)
  %50 = load i32*, i32** %10, align 8
  store i32 %49, i32* %50, align 4
  br label %54

51:                                               ; preds = %43
  %52 = load i32, i32* %15, align 4
  %53 = load i32*, i32** %10, align 8
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %51, %46
  %55 = load i32*, i32** %13, align 8
  store i32 0, i32* %55, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %87

58:                                               ; preds = %54
  %59 = load i32, i32* @u32, align 4
  %60 = load i32*, i32** @sysctl_tcp_rmem, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @sysctl_rmem_max, align 4
  %64 = call i8* @max_t(i32 %59, i32 %62, i32 %63)
  %65 = ptrtoint i8* %64 to i32
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* @u32, align 4
  %67 = load i32, i32* %15, align 4
  %68 = load i32*, i32** %11, align 8
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @min_t(i32 %66, i32 %67, i32 %69)
  store i32 %70, i32* %15, align 4
  br label %71

71:                                               ; preds = %80, %58
  %72 = load i32, i32* %15, align 4
  %73 = icmp ugt i32 %72, 65535
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i32*, i32** %13, align 8
  %76 = load i32, i32* %75, align 4
  %77 = icmp slt i32 %76, 14
  br label %78

78:                                               ; preds = %74, %71
  %79 = phi i1 [ false, %71 ], [ %77, %74 ]
  br i1 %79, label %80, label %86

80:                                               ; preds = %78
  %81 = load i32, i32* %15, align 4
  %82 = lshr i32 %81, 1
  store i32 %82, i32* %15, align 4
  %83 = load i32*, i32** %13, align 8
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  br label %71

86:                                               ; preds = %78
  br label %87

87:                                               ; preds = %86, %54
  %88 = load i32, i32* %9, align 4
  %89 = load i32*, i32** %13, align 8
  %90 = load i32, i32* %89, align 4
  %91 = shl i32 1, %90
  %92 = icmp ugt i32 %88, %91
  br i1 %92, label %93, label %125

93:                                               ; preds = %87
  %94 = load i32, i32* @TCP_DEFAULT_INIT_RCVWND, align 4
  store i32 %94, i32* %16, align 4
  %95 = load i32, i32* %9, align 4
  %96 = icmp ugt i32 %95, 1460
  br i1 %96, label %97, label %105

97:                                               ; preds = %93
  %98 = load i32, i32* @u32, align 4
  %99 = load i32, i32* @TCP_DEFAULT_INIT_RCVWND, align 4
  %100 = mul nsw i32 1460, %99
  %101 = load i32, i32* %9, align 4
  %102 = udiv i32 %100, %101
  %103 = call i8* @max_t(i32 %98, i32 %102, i32 2)
  %104 = ptrtoint i8* %103 to i32
  store i32 %104, i32* %16, align 4
  br label %105

105:                                              ; preds = %97, %93
  %106 = load i32, i32* %14, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %105
  %109 = load i32*, i32** %10, align 8
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* %9, align 4
  %113 = mul i32 %111, %112
  %114 = call i32 @min(i32 %110, i32 %113)
  %115 = load i32*, i32** %10, align 8
  store i32 %114, i32* %115, align 4
  br label %124

116:                                              ; preds = %105
  %117 = load i32*, i32** %10, align 8
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %16, align 4
  %120 = load i32, i32* %9, align 4
  %121 = mul i32 %119, %120
  %122 = call i32 @min(i32 %118, i32 %121)
  %123 = load i32*, i32** %10, align 8
  store i32 %122, i32* %123, align 4
  br label %124

124:                                              ; preds = %116, %108
  br label %125

125:                                              ; preds = %124, %87
  %126 = load i32*, i32** %13, align 8
  %127 = load i32, i32* %126, align 4
  %128 = shl i32 65535, %127
  %129 = load i32*, i32** %11, align 8
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @min(i32 %128, i32 %130)
  %132 = load i32*, i32** %11, align 8
  store i32 %131, i32* %132, align 4
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i8* @max_t(i32, i32, i32) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
