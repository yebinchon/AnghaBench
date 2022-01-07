; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_init_buffer_space.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_init_buffer_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SOCK_RCVBUF_LOCK = common dso_local global i32 0, align 4
@SOCK_SNDBUF_LOCK = common dso_local global i32 0, align 4
@sysctl_tcp_app_win = common dso_local global i32 0, align 4
@tcp_time_stamp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @tcp_init_buffer_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_init_buffer_space(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.tcp_sock*, align 8
  %4 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %2, align 8
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %5)
  store %struct.tcp_sock* %6, %struct.tcp_sock** %3, align 8
  %7 = load %struct.sock*, %struct.sock** %2, align 8
  %8 = getelementptr inbounds %struct.sock, %struct.sock* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @SOCK_RCVBUF_LOCK, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load %struct.sock*, %struct.sock** %2, align 8
  %15 = call i32 @tcp_fixup_rcvbuf(%struct.sock* %14)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.sock*, %struct.sock** %2, align 8
  %18 = getelementptr inbounds %struct.sock, %struct.sock* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @SOCK_SNDBUF_LOCK, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = load %struct.sock*, %struct.sock** %2, align 8
  %25 = call i32 @tcp_fixup_sndbuf(%struct.sock* %24)
  br label %26

26:                                               ; preds = %23, %16
  %27 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %28 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %31 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  %33 = load %struct.sock*, %struct.sock** %2, align 8
  %34 = call i32 @tcp_full_space(%struct.sock* %33)
  store i32 %34, i32* %4, align 4
  %35 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %36 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp sge i32 %37, %38
  br i1 %39, label %40, label %68

40:                                               ; preds = %26
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %43 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @sysctl_tcp_app_win, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %67

46:                                               ; preds = %40
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %49 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 4, %50
  %52 = icmp sgt i32 %47, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %46
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @sysctl_tcp_app_win, align 4
  %57 = ashr i32 %55, %56
  %58 = sub nsw i32 %54, %57
  %59 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %60 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 4, %61
  %63 = call i8* @max(i32 %58, i32 %62)
  %64 = ptrtoint i8* %63 to i32
  %65 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %66 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %53, %46, %40
  br label %68

68:                                               ; preds = %67, %26
  %69 = load i32, i32* @sysctl_tcp_app_win, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %104

71:                                               ; preds = %68
  %72 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %73 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %76 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = mul nsw i32 2, %77
  %79 = icmp sgt i32 %74, %78
  br i1 %79, label %80, label %104

80:                                               ; preds = %71
  %81 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %82 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %85 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %83, %86
  %88 = load i32, i32* %4, align 4
  %89 = icmp sgt i32 %87, %88
  br i1 %89, label %90, label %104

90:                                               ; preds = %80
  %91 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %92 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = mul nsw i32 2, %93
  %95 = load i32, i32* %4, align 4
  %96 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %97 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %95, %98
  %100 = call i8* @max(i32 %94, i32 %99)
  %101 = ptrtoint i8* %100 to i32
  %102 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %103 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 4
  br label %104

104:                                              ; preds = %90, %80, %71, %68
  %105 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %106 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %109 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @min(i32 %107, i32 %110)
  %112 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %113 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* @tcp_time_stamp, align 4
  %115 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %116 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 4
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @tcp_fixup_rcvbuf(%struct.sock*) #1

declare dso_local i32 @tcp_fixup_sndbuf(%struct.sock*) #1

declare dso_local i32 @tcp_full_space(%struct.sock*) #1

declare dso_local i8* @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
