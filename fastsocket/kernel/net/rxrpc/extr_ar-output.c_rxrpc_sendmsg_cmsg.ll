; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-output.c_rxrpc_sendmsg_cmsg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rxrpc/extr_ar-output.c_rxrpc_sendmsg_cmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_sock = type { i32 }
%struct.msghdr = type { i64, i32 }
%struct.cmsghdr = type { i32, i64, i32 }

@RXRPC_CMD_SEND_DATA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"CMSG %d, %d, %d\00", align 1
@SOL_RXRPC = common dso_local global i64 0, align 8
@MSG_CMSG_COMPAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"User Call ID %lx\00", align 1
@RXRPC_CMD_SEND_ABORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"Abort %x\00", align 1
@RXRPC_CMD_ACCEPT = common dso_local global i32 0, align 4
@EISCONN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c" = 0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxrpc_sock*, %struct.msghdr*, i64*, i32*, i64*, i32)* @rxrpc_sendmsg_cmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxrpc_sendmsg_cmsg(%struct.rxrpc_sock* %0, %struct.msghdr* %1, i64* %2, i32* %3, i64* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.rxrpc_sock*, align 8
  %9 = alloca %struct.msghdr*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.cmsghdr*, align 8
  %15 = alloca i32, align 4
  store %struct.rxrpc_sock* %0, %struct.rxrpc_sock** %8, align 8
  store %struct.msghdr* %1, %struct.msghdr** %9, align 8
  store i64* %2, i64** %10, align 8
  store i32* %3, i32** %11, align 8
  store i64* %4, i64** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* @RXRPC_CMD_SEND_DATA, align 4
  %17 = load i32*, i32** %11, align 8
  store i32 %16, i32* %17, align 4
  %18 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %19 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %6
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %167

25:                                               ; preds = %6
  %26 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %27 = call %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr* %26)
  store %struct.cmsghdr* %27, %struct.cmsghdr** %14, align 8
  br label %28

28:                                               ; preds = %161, %25
  %29 = load %struct.cmsghdr*, %struct.cmsghdr** %14, align 8
  %30 = icmp ne %struct.cmsghdr* %29, null
  br i1 %30, label %31, label %165

31:                                               ; preds = %28
  %32 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %33 = load %struct.cmsghdr*, %struct.cmsghdr** %14, align 8
  %34 = call i32 @CMSG_OK(%struct.msghdr* %32, %struct.cmsghdr* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %7, align 4
  br label %167

39:                                               ; preds = %31
  %40 = load %struct.cmsghdr*, %struct.cmsghdr** %14, align 8
  %41 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @CMSG_ALIGN(i32 24)
  %44 = sub nsw i32 %42, %43
  store i32 %44, i32* %15, align 4
  %45 = load %struct.cmsghdr*, %struct.cmsghdr** %14, align 8
  %46 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.cmsghdr*, %struct.cmsghdr** %14, align 8
  %49 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %15, align 4
  %52 = call i32 (i8*, i64, ...) @_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %47, i32 %50, i32 %51)
  %53 = load %struct.cmsghdr*, %struct.cmsghdr** %14, align 8
  %54 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @SOL_RXRPC, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %39
  br label %161

59:                                               ; preds = %39
  %60 = load %struct.cmsghdr*, %struct.cmsghdr** %14, align 8
  %61 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  switch i32 %62, label %157 [
    i32 128, label %63
    i32 130, label %100
    i32 129, label %134
  ]

63:                                               ; preds = %59
  %64 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %65 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @MSG_CMSG_COMPAT, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %63
  %71 = load i32, i32* %15, align 4
  %72 = sext i32 %71 to i64
  %73 = icmp ne i64 %72, 8
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %7, align 4
  br label %167

77:                                               ; preds = %70
  %78 = load %struct.cmsghdr*, %struct.cmsghdr** %14, align 8
  %79 = call i64 @CMSG_DATA(%struct.cmsghdr* %78)
  %80 = inttoptr i64 %79 to i64*
  %81 = load i64, i64* %80, align 8
  %82 = load i64*, i64** %10, align 8
  store i64 %81, i64* %82, align 8
  br label %96

83:                                               ; preds = %63
  %84 = load i32, i32* %15, align 4
  %85 = sext i32 %84 to i64
  %86 = icmp ne i64 %85, 8
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %7, align 4
  br label %167

90:                                               ; preds = %83
  %91 = load %struct.cmsghdr*, %struct.cmsghdr** %14, align 8
  %92 = call i64 @CMSG_DATA(%struct.cmsghdr* %91)
  %93 = inttoptr i64 %92 to i64*
  %94 = load i64, i64* %93, align 8
  %95 = load i64*, i64** %10, align 8
  store i64 %94, i64* %95, align 8
  br label %96

96:                                               ; preds = %90, %77
  %97 = load i64*, i64** %10, align 8
  %98 = load i64, i64* %97, align 8
  %99 = call i32 (i8*, i64, ...) @_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %98)
  br label %160

100:                                              ; preds = %59
  %101 = load i32*, i32** %11, align 8
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @RXRPC_CMD_SEND_DATA, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %7, align 4
  br label %167

108:                                              ; preds = %100
  %109 = load i32, i32* @RXRPC_CMD_SEND_ABORT, align 4
  %110 = load i32*, i32** %11, align 8
  store i32 %109, i32* %110, align 4
  %111 = load i32, i32* %15, align 4
  %112 = sext i32 %111 to i64
  %113 = icmp ne i64 %112, 8
  br i1 %113, label %114, label %117

114:                                              ; preds = %108
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %7, align 4
  br label %167

117:                                              ; preds = %108
  %118 = load %struct.cmsghdr*, %struct.cmsghdr** %14, align 8
  %119 = call i64 @CMSG_DATA(%struct.cmsghdr* %118)
  %120 = inttoptr i64 %119 to i32*
  %121 = load i32, i32* %120, align 4
  %122 = zext i32 %121 to i64
  %123 = load i64*, i64** %12, align 8
  store i64 %122, i64* %123, align 8
  %124 = load i64*, i64** %12, align 8
  %125 = load i64, i64* %124, align 8
  %126 = call i32 (i8*, i64, ...) @_debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i64 %125)
  %127 = load i64*, i64** %12, align 8
  %128 = load i64, i64* %127, align 8
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %117
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %7, align 4
  br label %167

133:                                              ; preds = %117
  br label %160

134:                                              ; preds = %59
  %135 = load i32*, i32** %11, align 8
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @RXRPC_CMD_SEND_DATA, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %134
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %7, align 4
  br label %167

142:                                              ; preds = %134
  %143 = load i32, i32* @RXRPC_CMD_ACCEPT, align 4
  %144 = load i32*, i32** %11, align 8
  store i32 %143, i32* %144, align 4
  %145 = load i32, i32* %15, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %142
  %148 = load i32, i32* @EINVAL, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %7, align 4
  br label %167

150:                                              ; preds = %142
  %151 = load i32, i32* %13, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %150
  %154 = load i32, i32* @EISCONN, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %7, align 4
  br label %167

156:                                              ; preds = %150
  br label %160

157:                                              ; preds = %59
  %158 = load i32, i32* @EINVAL, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %7, align 4
  br label %167

160:                                              ; preds = %156, %133, %96
  br label %161

161:                                              ; preds = %160, %58
  %162 = load %struct.msghdr*, %struct.msghdr** %9, align 8
  %163 = load %struct.cmsghdr*, %struct.cmsghdr** %14, align 8
  %164 = call %struct.cmsghdr* @CMSG_NXTHDR(%struct.msghdr* %162, %struct.cmsghdr* %163)
  store %struct.cmsghdr* %164, %struct.cmsghdr** %14, align 8
  br label %28

165:                                              ; preds = %28
  %166 = call i32 @_leave(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %167

167:                                              ; preds = %165, %157, %153, %147, %139, %130, %114, %105, %87, %74, %36, %22
  %168 = load i32, i32* %7, align 4
  ret i32 %168
}

declare dso_local %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr*) #1

declare dso_local i32 @CMSG_OK(%struct.msghdr*, %struct.cmsghdr*) #1

declare dso_local i32 @CMSG_ALIGN(i32) #1

declare dso_local i32 @_debug(i8*, i64, ...) #1

declare dso_local i64 @CMSG_DATA(%struct.cmsghdr*) #1

declare dso_local %struct.cmsghdr* @CMSG_NXTHDR(%struct.msghdr*, %struct.cmsghdr*) #1

declare dso_local i32 @_leave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
