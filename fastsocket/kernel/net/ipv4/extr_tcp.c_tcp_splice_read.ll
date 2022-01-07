; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp.c_tcp_splice_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp.c_tcp_splice_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.TYPE_2__*, %struct.sock* }
%struct.TYPE_2__ = type { i32 }
%struct.sock = type { i32, i64, i64 }
%struct.pipe_inode_info = type { i32 }
%struct.tcp_splice_state = type { i64, i32, %struct.pipe_inode_info* }

@ESPIPE = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@SOCK_DONE = common dso_local global i32 0, align 4
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_splice_read(%struct.socket* %0, i32* %1, %struct.pipe_inode_info* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.pipe_inode_info*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sock*, align 8
  %13 = alloca %struct.tcp_splice_state, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.pipe_inode_info* %2, %struct.pipe_inode_info** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.socket*, %struct.socket** %7, align 8
  %18 = getelementptr inbounds %struct.socket, %struct.socket* %17, i32 0, i32 1
  %19 = load %struct.sock*, %struct.sock** %18, align 8
  store %struct.sock* %19, %struct.sock** %12, align 8
  %20 = getelementptr inbounds %struct.tcp_splice_state, %struct.tcp_splice_state* %13, i32 0, i32 0
  %21 = load i64, i64* %10, align 8
  store i64 %21, i64* %20, align 8
  %22 = getelementptr inbounds %struct.tcp_splice_state, %struct.tcp_splice_state* %13, i32 0, i32 1
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %22, align 8
  %24 = getelementptr inbounds %struct.tcp_splice_state, %struct.tcp_splice_state* %13, i32 0, i32 2
  %25 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %9, align 8
  store %struct.pipe_inode_info* %25, %struct.pipe_inode_info** %24, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %5
  %31 = load i32, i32* @ESPIPE, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %165

33:                                               ; preds = %5
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %34 = load %struct.sock*, %struct.sock** %12, align 8
  %35 = call i32 @lock_sock(%struct.sock* %34)
  %36 = load %struct.sock*, %struct.sock** %12, align 8
  %37 = load %struct.socket*, %struct.socket** %7, align 8
  %38 = getelementptr inbounds %struct.socket, %struct.socket* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @O_NONBLOCK, align 4
  %43 = and i32 %41, %42
  %44 = call i64 @sock_rcvtimeo(%struct.sock* %36, i32 %43)
  store i64 %44, i64* %14, align 8
  br label %45

45:                                               ; preds = %155, %114, %33
  %46 = getelementptr inbounds %struct.tcp_splice_state, %struct.tcp_splice_state* %13, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %156

49:                                               ; preds = %45
  %50 = load %struct.sock*, %struct.sock** %12, align 8
  %51 = call i32 @__tcp_splice_read(%struct.sock* %50, %struct.tcp_splice_state* %13)
  store i32 %51, i32* %16, align 4
  %52 = load i32, i32* %16, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %156

55:                                               ; preds = %49
  %56 = load i32, i32* %16, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %115, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %15, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  br label %156

62:                                               ; preds = %58
  %63 = load %struct.sock*, %struct.sock** %12, align 8
  %64 = load i32, i32* @SOCK_DONE, align 4
  %65 = call i64 @sock_flag(%struct.sock* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %156

68:                                               ; preds = %62
  %69 = load %struct.sock*, %struct.sock** %12, align 8
  %70 = getelementptr inbounds %struct.sock, %struct.sock* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load %struct.sock*, %struct.sock** %12, align 8
  %75 = call i32 @sock_error(%struct.sock* %74)
  store i32 %75, i32* %16, align 4
  br label %156

76:                                               ; preds = %68
  %77 = load %struct.sock*, %struct.sock** %12, align 8
  %78 = getelementptr inbounds %struct.sock, %struct.sock* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @RCV_SHUTDOWN, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  br label %156

84:                                               ; preds = %76
  %85 = load %struct.sock*, %struct.sock** %12, align 8
  %86 = getelementptr inbounds %struct.sock, %struct.sock* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @TCP_CLOSE, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %99

90:                                               ; preds = %84
  %91 = load %struct.sock*, %struct.sock** %12, align 8
  %92 = load i32, i32* @SOCK_DONE, align 4
  %93 = call i64 @sock_flag(%struct.sock* %91, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %90
  %96 = load i32, i32* @ENOTCONN, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %16, align 4
  br label %98

98:                                               ; preds = %95, %90
  br label %156

99:                                               ; preds = %84
  %100 = load i64, i64* %14, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = load i32, i32* @EAGAIN, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %16, align 4
  br label %156

105:                                              ; preds = %99
  %106 = load %struct.sock*, %struct.sock** %12, align 8
  %107 = call i32 @sk_wait_data(%struct.sock* %106, i64* %14)
  %108 = load i32, i32* @current, align 4
  %109 = call i64 @signal_pending(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %105
  %112 = load i64, i64* %14, align 8
  %113 = call i32 @sock_intr_errno(i64 %112)
  store i32 %113, i32* %16, align 4
  br label %156

114:                                              ; preds = %105
  br label %45

115:                                              ; preds = %55
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %16, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.tcp_splice_state, %struct.tcp_splice_state* %13, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = sub i64 %120, %118
  store i64 %121, i64* %119, align 8
  %122 = load i32, i32* %16, align 4
  %123 = load i32, i32* %15, align 4
  %124 = add nsw i32 %123, %122
  store i32 %124, i32* %15, align 4
  %125 = load i64, i64* %14, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %116
  br label %156

128:                                              ; preds = %116
  %129 = load %struct.sock*, %struct.sock** %12, align 8
  %130 = call i32 @release_sock(%struct.sock* %129)
  %131 = load %struct.sock*, %struct.sock** %12, align 8
  %132 = call i32 @lock_sock(%struct.sock* %131)
  %133 = load %struct.sock*, %struct.sock** %12, align 8
  %134 = getelementptr inbounds %struct.sock, %struct.sock* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %154, label %137

137:                                              ; preds = %128
  %138 = load %struct.sock*, %struct.sock** %12, align 8
  %139 = getelementptr inbounds %struct.sock, %struct.sock* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @TCP_CLOSE, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %154, label %143

143:                                              ; preds = %137
  %144 = load %struct.sock*, %struct.sock** %12, align 8
  %145 = getelementptr inbounds %struct.sock, %struct.sock* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @RCV_SHUTDOWN, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %154, label %150

150:                                              ; preds = %143
  %151 = load i32, i32* @current, align 4
  %152 = call i64 @signal_pending(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %150, %143, %137, %128
  br label %156

155:                                              ; preds = %150
  br label %45

156:                                              ; preds = %154, %127, %111, %102, %98, %83, %73, %67, %61, %54, %45
  %157 = load %struct.sock*, %struct.sock** %12, align 8
  %158 = call i32 @release_sock(%struct.sock* %157)
  %159 = load i32, i32* %15, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %156
  %162 = load i32, i32* %15, align 4
  store i32 %162, i32* %6, align 4
  br label %165

163:                                              ; preds = %156
  %164 = load i32, i32* %16, align 4
  store i32 %164, i32* %6, align 4
  br label %165

165:                                              ; preds = %163, %161, %30
  %166 = load i32, i32* %6, align 4
  ret i32 %166
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i64 @sock_rcvtimeo(%struct.sock*, i32) #1

declare dso_local i32 @__tcp_splice_read(%struct.sock*, %struct.tcp_splice_state*) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @sock_error(%struct.sock*) #1

declare dso_local i32 @sk_wait_data(%struct.sock*, i64*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @sock_intr_errno(i64) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
