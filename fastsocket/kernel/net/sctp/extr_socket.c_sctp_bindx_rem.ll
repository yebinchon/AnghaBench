; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_socket.c_sctp_bindx_rem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_socket.c_sctp_bindx_rem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sctp_sock = type { %struct.sctp_endpoint* }
%struct.sctp_endpoint = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.sctp_bind_addr }
%struct.sctp_bind_addr = type { i32, i32 }
%union.sctp_addr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.sctp_af = type { i32, i32 (%union.sctp_addr*, %struct.sctp_sock*, i32*)* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"sctp_bindx_rem (sk: %p, addrs: %p, addrcnt: %d)\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sockaddr*, i32)* @sctp_bindx_rem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_bindx_rem(%struct.sock* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sctp_sock*, align 8
  %9 = alloca %struct.sctp_endpoint*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sctp_bind_addr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %union.sctp_addr*, align 8
  %15 = alloca %struct.sctp_af*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.sock*, %struct.sock** %5, align 8
  %17 = call %struct.sctp_sock* @sctp_sk(%struct.sock* %16)
  store %struct.sctp_sock* %17, %struct.sctp_sock** %8, align 8
  %18 = load %struct.sctp_sock*, %struct.sctp_sock** %8, align 8
  %19 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %18, i32 0, i32 0
  %20 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %19, align 8
  store %struct.sctp_endpoint* %20, %struct.sctp_endpoint** %9, align 8
  %21 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %9, align 8
  %22 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store %struct.sctp_bind_addr* %23, %struct.sctp_bind_addr** %11, align 8
  store i32 0, i32* %12, align 4
  %24 = load %struct.sock*, %struct.sock** %5, align 8
  %25 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @SCTP_DEBUG_PRINTK(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), %struct.sock* %24, %struct.sockaddr* %25, i32 %26)
  %28 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %29 = bitcast %struct.sockaddr* %28 to i8*
  store i8* %29, i8** %13, align 8
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %128, %3
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %131

34:                                               ; preds = %30
  %35 = load %struct.sctp_bind_addr*, %struct.sctp_bind_addr** %11, align 8
  %36 = getelementptr inbounds %struct.sctp_bind_addr, %struct.sctp_bind_addr* %35, i32 0, i32 1
  %37 = call i64 @list_empty(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load %struct.sctp_bind_addr*, %struct.sctp_bind_addr** %11, align 8
  %41 = getelementptr inbounds %struct.sctp_bind_addr, %struct.sctp_bind_addr* %40, i32 0, i32 1
  %42 = call i64 @sctp_list_single_entry(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39, %34
  %45 = load i32, i32* @EBUSY, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %12, align 4
  br label %114

47:                                               ; preds = %39
  %48 = load i8*, i8** %13, align 8
  %49 = bitcast i8* %48 to %union.sctp_addr*
  store %union.sctp_addr* %49, %union.sctp_addr** %14, align 8
  %50 = load %union.sctp_addr*, %union.sctp_addr** %14, align 8
  %51 = bitcast %union.sctp_addr* %50 to %struct.TYPE_5__*
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call %struct.sctp_af* @sctp_get_af_specific(i32 %53)
  store %struct.sctp_af* %54, %struct.sctp_af** %15, align 8
  %55 = load %struct.sctp_af*, %struct.sctp_af** %15, align 8
  %56 = icmp ne %struct.sctp_af* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %47
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %12, align 4
  br label %114

60:                                               ; preds = %47
  %61 = load %struct.sctp_af*, %struct.sctp_af** %15, align 8
  %62 = getelementptr inbounds %struct.sctp_af, %struct.sctp_af* %61, i32 0, i32 1
  %63 = load i32 (%union.sctp_addr*, %struct.sctp_sock*, i32*)*, i32 (%union.sctp_addr*, %struct.sctp_sock*, i32*)** %62, align 8
  %64 = load %union.sctp_addr*, %union.sctp_addr** %14, align 8
  %65 = load %struct.sctp_sock*, %struct.sctp_sock** %8, align 8
  %66 = call i32 %63(%union.sctp_addr* %64, %struct.sctp_sock* %65, i32* null)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %60
  %69 = load i32, i32* @EADDRNOTAVAIL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %12, align 4
  br label %114

71:                                               ; preds = %60
  %72 = load %union.sctp_addr*, %union.sctp_addr** %14, align 8
  %73 = bitcast %union.sctp_addr* %72 to %struct.TYPE_6__*
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %71
  %78 = load %union.sctp_addr*, %union.sctp_addr** %14, align 8
  %79 = bitcast %union.sctp_addr* %78 to %struct.TYPE_6__*
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.sctp_bind_addr*, %struct.sctp_bind_addr** %11, align 8
  %83 = getelementptr inbounds %struct.sctp_bind_addr, %struct.sctp_bind_addr* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @htons(i32 %84)
  %86 = icmp ne i64 %81, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %77
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %12, align 4
  br label %114

90:                                               ; preds = %77, %71
  %91 = load %union.sctp_addr*, %union.sctp_addr** %14, align 8
  %92 = bitcast %union.sctp_addr* %91 to %struct.TYPE_6__*
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %104, label %96

96:                                               ; preds = %90
  %97 = load %struct.sctp_bind_addr*, %struct.sctp_bind_addr** %11, align 8
  %98 = getelementptr inbounds %struct.sctp_bind_addr, %struct.sctp_bind_addr* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @htons(i32 %99)
  %101 = load %union.sctp_addr*, %union.sctp_addr** %14, align 8
  %102 = bitcast %union.sctp_addr* %101 to %struct.TYPE_6__*
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  store i64 %100, i64* %103, align 8
  br label %104

104:                                              ; preds = %96, %90
  %105 = load %struct.sctp_bind_addr*, %struct.sctp_bind_addr** %11, align 8
  %106 = load %union.sctp_addr*, %union.sctp_addr** %14, align 8
  %107 = call i32 @sctp_del_bind_addr(%struct.sctp_bind_addr* %105, %union.sctp_addr* %106)
  store i32 %107, i32* %12, align 4
  %108 = load %struct.sctp_af*, %struct.sctp_af** %15, align 8
  %109 = getelementptr inbounds %struct.sctp_af, %struct.sctp_af* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i8*, i8** %13, align 8
  %112 = sext i32 %110 to i64
  %113 = getelementptr i8, i8* %111, i64 %112
  store i8* %113, i8** %13, align 8
  br label %114

114:                                              ; preds = %104, %87, %68, %57, %44
  %115 = load i32, i32* %12, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %114
  %118 = load i32, i32* %10, align 4
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %117
  %121 = load %struct.sock*, %struct.sock** %5, align 8
  %122 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %123 = load i32, i32* %10, align 4
  %124 = call i32 @sctp_bindx_add(%struct.sock* %121, %struct.sockaddr* %122, i32 %123)
  br label %125

125:                                              ; preds = %120, %117
  %126 = load i32, i32* %12, align 4
  store i32 %126, i32* %4, align 4
  br label %133

127:                                              ; preds = %114
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %10, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %10, align 4
  br label %30

131:                                              ; preds = %30
  %132 = load i32, i32* %12, align 4
  store i32 %132, i32* %4, align 4
  br label %133

133:                                              ; preds = %131, %125
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local %struct.sctp_sock* @sctp_sk(%struct.sock*) #1

declare dso_local i32 @SCTP_DEBUG_PRINTK(i8*, %struct.sock*, %struct.sockaddr*, i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i64 @sctp_list_single_entry(i32*) #1

declare dso_local %struct.sctp_af* @sctp_get_af_specific(i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @sctp_del_bind_addr(%struct.sctp_bind_addr*, %union.sctp_addr*) #1

declare dso_local i32 @sctp_bindx_add(%struct.sock*, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
