; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_parse_conf_rsp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_parse_conf_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.l2cap_pinfo = type { i64, i64, i32, i32, i32, i8*, i32, i32, i32, i32 }
%struct.l2cap_conf_req = type { i8*, i8*, i8* }
%struct.l2cap_conf_rfc = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"sk %p, rsp %p, len %d, req %p\00", align 1
@L2CAP_CONF_OPT_SIZE = common dso_local global i32 0, align 4
@L2CAP_DEFAULT_MIN_MTU = common dso_local global i64 0, align 8
@L2CAP_CONF_UNACCEPT = common dso_local global i64 0, align 8
@L2CAP_CONF_STATE2_DEVICE = common dso_local global i32 0, align 4
@ECONNREFUSED = common dso_local global i32 0, align 4
@L2CAP_CONF_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i8*, i32, i8*, i64*)* @l2cap_parse_conf_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_parse_conf_rsp(%struct.sock* %0, i8* %1, i32 %2, i8* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.l2cap_pinfo*, align 8
  %13 = alloca %struct.l2cap_conf_req*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct.l2cap_conf_rfc, align 4
  store %struct.sock* %0, %struct.sock** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64* %4, i64** %11, align 8
  %19 = load %struct.sock*, %struct.sock** %7, align 8
  %20 = call %struct.l2cap_pinfo* @l2cap_pi(%struct.sock* %19)
  store %struct.l2cap_pinfo* %20, %struct.l2cap_pinfo** %12, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = bitcast i8* %21 to %struct.l2cap_conf_req*
  store %struct.l2cap_conf_req* %22, %struct.l2cap_conf_req** %13, align 8
  %23 = load %struct.l2cap_conf_req*, %struct.l2cap_conf_req** %13, align 8
  %24 = getelementptr inbounds %struct.l2cap_conf_req, %struct.l2cap_conf_req* %23, i32 0, i32 2
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %14, align 8
  %26 = load %struct.sock*, %struct.sock** %7, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i8*, i8** %10, align 8
  %30 = call i32 @BT_DBG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.sock* %26, i8* %27, i32 %28, i8* %29)
  br label %31

31:                                               ; preds = %104, %5
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @L2CAP_CONF_OPT_SIZE, align 4
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %35, label %105

35:                                               ; preds = %31
  %36 = call i64 @l2cap_get_conf_opt(i8** %8, i32* %15, i32* %16, i64* %17)
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = sub nsw i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %15, align 4
  switch i32 %41, label %104 [
    i32 131, label %42
    i32 132, label %61
    i32 130, label %69
  ]

42:                                               ; preds = %35
  %43 = load i64, i64* %17, align 8
  %44 = load i64, i64* @L2CAP_DEFAULT_MIN_MTU, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load i64, i64* @L2CAP_CONF_UNACCEPT, align 8
  %48 = load i64*, i64** %11, align 8
  store i64 %47, i64* %48, align 8
  %49 = load i64, i64* @L2CAP_DEFAULT_MIN_MTU, align 8
  %50 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %12, align 8
  %51 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  br label %56

52:                                               ; preds = %42
  %53 = load i64, i64* %17, align 8
  %54 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %12, align 8
  %55 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %52, %46
  %57 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %12, align 8
  %58 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @l2cap_add_conf_opt(i8** %14, i32 131, i32 2, i64 %59)
  br label %104

61:                                               ; preds = %35
  %62 = load i64, i64* %17, align 8
  %63 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %12, align 8
  %64 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  %65 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %12, align 8
  %66 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @l2cap_add_conf_opt(i8** %14, i32 132, i32 2, i64 %67)
  br label %104

69:                                               ; preds = %35
  %70 = load i32, i32* %16, align 4
  %71 = sext i32 %70 to i64
  %72 = icmp eq i64 %71, 20
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load i64, i64* %17, align 8
  %75 = inttoptr i64 %74 to i8*
  %76 = load i32, i32* %16, align 4
  %77 = call i32 @memcpy(%struct.l2cap_conf_rfc* %18, i8* %75, i32 %76)
  br label %78

78:                                               ; preds = %73, %69
  %79 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %12, align 8
  %80 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @L2CAP_CONF_STATE2_DEVICE, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.l2cap_conf_rfc, %struct.l2cap_conf_rfc* %18, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %12, align 8
  %89 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %87, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = load i32, i32* @ECONNREFUSED, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %6, align 4
  br label %154

95:                                               ; preds = %85, %78
  %96 = getelementptr inbounds %struct.l2cap_conf_rfc, %struct.l2cap_conf_rfc* %18, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %12, align 8
  %99 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 4
  %100 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %12, align 8
  %101 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %100, i32 0, i32 9
  store i32 0, i32* %101, align 4
  %102 = ptrtoint %struct.l2cap_conf_rfc* %18 to i64
  %103 = call i32 @l2cap_add_conf_opt(i8** %14, i32 130, i32 20, i64 %102)
  br label %104

104:                                              ; preds = %35, %95, %61, %56
  br label %31

105:                                              ; preds = %31
  %106 = load i64*, i64** %11, align 8
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @L2CAP_CONF_SUCCESS, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %138

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.l2cap_conf_rfc, %struct.l2cap_conf_rfc* %18, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  switch i32 %112, label %137 [
    i32 129, label %113
    i32 128, label %131
  ]

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.l2cap_conf_rfc, %struct.l2cap_conf_rfc* %18, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %12, align 8
  %117 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %116, i32 0, i32 8
  store i32 %115, i32* %117, align 8
  %118 = getelementptr inbounds %struct.l2cap_conf_rfc, %struct.l2cap_conf_rfc* %18, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %12, align 8
  %121 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %120, i32 0, i32 7
  store i32 %119, i32* %121, align 4
  %122 = getelementptr inbounds %struct.l2cap_conf_rfc, %struct.l2cap_conf_rfc* %18, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %12, align 8
  %125 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %124, i32 0, i32 6
  store i32 %123, i32* %125, align 8
  %126 = getelementptr inbounds %struct.l2cap_conf_rfc, %struct.l2cap_conf_rfc* %18, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i8* @le16_to_cpu(i32 %127)
  %129 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %12, align 8
  %130 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %129, i32 0, i32 5
  store i8* %128, i8** %130, align 8
  br label %137

131:                                              ; preds = %110
  %132 = getelementptr inbounds %struct.l2cap_conf_rfc, %struct.l2cap_conf_rfc* %18, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i8* @le16_to_cpu(i32 %133)
  %135 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %12, align 8
  %136 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %135, i32 0, i32 5
  store i8* %134, i8** %136, align 8
  br label %137

137:                                              ; preds = %110, %131, %113
  br label %138

138:                                              ; preds = %137, %105
  %139 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %12, align 8
  %140 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = call i8* @cpu_to_le16(i32 %141)
  %143 = load %struct.l2cap_conf_req*, %struct.l2cap_conf_req** %13, align 8
  %144 = getelementptr inbounds %struct.l2cap_conf_req, %struct.l2cap_conf_req* %143, i32 0, i32 1
  store i8* %142, i8** %144, align 8
  %145 = call i8* @cpu_to_le16(i32 0)
  %146 = load %struct.l2cap_conf_req*, %struct.l2cap_conf_req** %13, align 8
  %147 = getelementptr inbounds %struct.l2cap_conf_req, %struct.l2cap_conf_req* %146, i32 0, i32 0
  store i8* %145, i8** %147, align 8
  %148 = load i8*, i8** %14, align 8
  %149 = load i8*, i8** %10, align 8
  %150 = ptrtoint i8* %148 to i64
  %151 = ptrtoint i8* %149 to i64
  %152 = sub i64 %150, %151
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %6, align 4
  br label %154

154:                                              ; preds = %138, %92
  %155 = load i32, i32* %6, align 4
  ret i32 %155
}

declare dso_local %struct.l2cap_pinfo* @l2cap_pi(%struct.sock*) #1

declare dso_local i32 @BT_DBG(i8*, %struct.sock*, i8*, i32, i8*) #1

declare dso_local i64 @l2cap_get_conf_opt(i8**, i32*, i32*, i64*) #1

declare dso_local i32 @l2cap_add_conf_opt(i8**, i32, i32, i64) #1

declare dso_local i32 @memcpy(%struct.l2cap_conf_rfc*, i8*, i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
