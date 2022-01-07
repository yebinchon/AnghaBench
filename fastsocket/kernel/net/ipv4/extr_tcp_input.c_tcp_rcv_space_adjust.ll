; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_rcv_space_adjust.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_rcv_space_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32 }
%struct.tcp_sock = type { i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8*, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@tcp_time_stamp = common dso_local global i8* null, align 8
@sysctl_tcp_moderate_rcvbuf = common dso_local global i64 0, align 8
@SOCK_RCVBUF_LOCK = common dso_local global i32 0, align 4
@MAX_TCP_HEADER = common dso_local global i32 0, align 4
@sysctl_tcp_rmem = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_rcv_space_adjust(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.tcp_sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %2, align 8
  %8 = load %struct.sock*, %struct.sock** %2, align 8
  %9 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %8)
  store %struct.tcp_sock* %9, %struct.tcp_sock** %3, align 8
  %10 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %11 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %130

16:                                               ; preds = %1
  %17 = load i8*, i8** @tcp_time_stamp, align 8
  %18 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %19 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = ptrtoint i8* %17 to i64
  %23 = ptrtoint i8* %21 to i64
  %24 = sub i64 %22, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %28 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = ashr i32 %30, 3
  %32 = icmp slt i32 %26, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %16
  %34 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %35 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33, %16
  br label %141

40:                                               ; preds = %33
  %41 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %42 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %45 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %43, %47
  %49 = mul nsw i32 2, %48
  store i32 %49, i32* %5, align 4
  %50 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %51 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @max(i32 %53, i32 %54)
  store i32 %55, i32* %5, align 4
  %56 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %57 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %129

62:                                               ; preds = %40
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %65 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  store i32 %63, i32* %66, align 4
  %67 = load i64, i64* @sysctl_tcp_moderate_rcvbuf, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %128

69:                                               ; preds = %62
  %70 = load %struct.sock*, %struct.sock** %2, align 8
  %71 = getelementptr inbounds %struct.sock, %struct.sock* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @SOCK_RCVBUF_LOCK, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %128, label %76

76:                                               ; preds = %69
  %77 = load i32, i32* %5, align 4
  store i32 %77, i32* %7, align 4
  %78 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %79 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %5, align 4
  %82 = sdiv i32 %81, %80
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %76
  store i32 1, i32* %5, align 4
  br label %86

86:                                               ; preds = %85, %76
  %87 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %88 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @MAX_TCP_HEADER, align 4
  %91 = add nsw i32 %89, %90
  %92 = add nsw i32 %91, 16
  %93 = sext i32 %92 to i64
  %94 = add i64 %93, 4
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %103, %86
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @tcp_win_from_space(i32 %97)
  %99 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %100 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp slt i32 %98, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %96
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 128
  store i32 %105, i32* %6, align 4
  br label %96

106:                                              ; preds = %96
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* %5, align 4
  %109 = mul nsw i32 %108, %107
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* %5, align 4
  %111 = load i32*, i32** @sysctl_tcp_rmem, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 2
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @min(i32 %110, i32 %113)
  store i32 %114, i32* %5, align 4
  %115 = load i32, i32* %5, align 4
  %116 = load %struct.sock*, %struct.sock** %2, align 8
  %117 = getelementptr inbounds %struct.sock, %struct.sock* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp sgt i32 %115, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %106
  %121 = load i32, i32* %5, align 4
  %122 = load %struct.sock*, %struct.sock** %2, align 8
  %123 = getelementptr inbounds %struct.sock, %struct.sock* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  %124 = load i32, i32* %7, align 4
  %125 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %126 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 8
  br label %127

127:                                              ; preds = %120, %106
  br label %128

128:                                              ; preds = %127, %69, %62
  br label %129

129:                                              ; preds = %128, %40
  br label %130

130:                                              ; preds = %129, %15
  %131 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %132 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %135 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 1
  store i32 %133, i32* %136, align 8
  %137 = load i8*, i8** @tcp_time_stamp, align 8
  %138 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %139 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  store i8* %137, i8** %140, align 8
  br label %141

141:                                              ; preds = %130, %39
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @tcp_win_from_space(i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
