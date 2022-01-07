; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_parse_ipsecrequest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_parse_ipsecrequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_policy = type { i32, i32, %struct.xfrm_tmpl* }
%struct.xfrm_tmpl = type { i32, i32, i64, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sadb_x_ipsecrequest = type { i64, i64, i64, i32 }
%struct.net = type { i32 }
%struct.sockaddr = type { i32 }

@XFRM_MAX_DEPTH = common dso_local global i64 0, align 8
@ELOOP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IPSEC_LEVEL_USE = common dso_local global i64 0, align 8
@IPSEC_LEVEL_UNIQUE = common dso_local global i64 0, align 8
@IPSEC_MANUAL_REQID_MAX = common dso_local global i64 0, align 8
@ENOBUFS = common dso_local global i32 0, align 4
@XFRM_MODE_TUNNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_policy*, %struct.sadb_x_ipsecrequest*)* @parse_ipsecrequest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_ipsecrequest(%struct.xfrm_policy* %0, %struct.sadb_x_ipsecrequest* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfrm_policy*, align 8
  %5 = alloca %struct.sadb_x_ipsecrequest*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.xfrm_tmpl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.xfrm_policy* %0, %struct.xfrm_policy** %4, align 8
  store %struct.sadb_x_ipsecrequest* %1, %struct.sadb_x_ipsecrequest** %5, align 8
  %12 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %13 = call %struct.net* @xp_net(%struct.xfrm_policy* %12)
  store %struct.net* %13, %struct.net** %6, align 8
  %14 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %15 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %14, i32 0, i32 2
  %16 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %15, align 8
  %17 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %18 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %16, i64 %20
  store %struct.xfrm_tmpl* %21, %struct.xfrm_tmpl** %7, align 8
  %22 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %23 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* @XFRM_MAX_DEPTH, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i32, i32* @ELOOP, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %156

31:                                               ; preds = %2
  %32 = load %struct.sadb_x_ipsecrequest*, %struct.sadb_x_ipsecrequest** %5, align 8
  %33 = getelementptr inbounds %struct.sadb_x_ipsecrequest, %struct.sadb_x_ipsecrequest* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %156

39:                                               ; preds = %31
  %40 = load %struct.sadb_x_ipsecrequest*, %struct.sadb_x_ipsecrequest** %5, align 8
  %41 = getelementptr inbounds %struct.sadb_x_ipsecrequest, %struct.sadb_x_ipsecrequest* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %7, align 8
  %44 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 4
  %46 = load %struct.sadb_x_ipsecrequest*, %struct.sadb_x_ipsecrequest** %5, align 8
  %47 = getelementptr inbounds %struct.sadb_x_ipsecrequest, %struct.sadb_x_ipsecrequest* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @pfkey_mode_to_xfrm(i64 %48)
  store i32 %49, i32* %8, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %39
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %156

54:                                               ; preds = %39
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %7, align 8
  %57 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.sadb_x_ipsecrequest*, %struct.sadb_x_ipsecrequest** %5, align 8
  %59 = getelementptr inbounds %struct.sadb_x_ipsecrequest, %struct.sadb_x_ipsecrequest* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @IPSEC_LEVEL_USE, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %54
  %64 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %7, align 8
  %65 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %64, i32 0, i32 1
  store i32 1, i32* %65, align 4
  br label %102

66:                                               ; preds = %54
  %67 = load %struct.sadb_x_ipsecrequest*, %struct.sadb_x_ipsecrequest** %5, align 8
  %68 = getelementptr inbounds %struct.sadb_x_ipsecrequest, %struct.sadb_x_ipsecrequest* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @IPSEC_LEVEL_UNIQUE, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %101

72:                                               ; preds = %66
  %73 = load %struct.sadb_x_ipsecrequest*, %struct.sadb_x_ipsecrequest** %5, align 8
  %74 = getelementptr inbounds %struct.sadb_x_ipsecrequest, %struct.sadb_x_ipsecrequest* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %7, align 8
  %77 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %76, i32 0, i32 2
  store i64 %75, i64* %77, align 8
  %78 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %7, align 8
  %79 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @IPSEC_MANUAL_REQID_MAX, align 8
  %82 = icmp sgt i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %72
  %84 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %7, align 8
  %85 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %84, i32 0, i32 2
  store i64 0, i64* %85, align 8
  br label %86

86:                                               ; preds = %83, %72
  %87 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %7, align 8
  %88 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %100, label %91

91:                                               ; preds = %86
  %92 = load %struct.net*, %struct.net** %6, align 8
  %93 = call i64 @gen_reqid(%struct.net* %92)
  %94 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %7, align 8
  %95 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %94, i32 0, i32 2
  store i64 %93, i64* %95, align 8
  %96 = icmp ne i64 %93, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %91
  %98 = load i32, i32* @ENOBUFS, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %156

100:                                              ; preds = %91, %86
  br label %101

101:                                              ; preds = %100, %66
  br label %102

102:                                              ; preds = %101, %63
  %103 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %7, align 8
  %104 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @XFRM_MODE_TUNNEL, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %143

108:                                              ; preds = %102
  %109 = load %struct.sadb_x_ipsecrequest*, %struct.sadb_x_ipsecrequest** %5, align 8
  %110 = getelementptr inbounds %struct.sadb_x_ipsecrequest, %struct.sadb_x_ipsecrequest* %109, i64 1
  %111 = bitcast %struct.sadb_x_ipsecrequest* %110 to i32*
  store i32* %111, i32** %9, align 8
  %112 = load i32*, i32** %9, align 8
  %113 = bitcast i32* %112 to %struct.sockaddr*
  %114 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %7, align 8
  %115 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %114, i32 0, i32 6
  %116 = call i32 @pfkey_sockaddr_extract(%struct.sockaddr* %113, i32* %115)
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* %10, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %108
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %3, align 4
  br label %156

122:                                              ; preds = %108
  %123 = load i32, i32* %10, align 4
  %124 = call i32 @pfkey_sockaddr_len(i32 %123)
  store i32 %124, i32* %11, align 4
  %125 = load i32*, i32** %9, align 8
  %126 = load i32, i32* %11, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = bitcast i32* %128 to %struct.sockaddr*
  %130 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %7, align 8
  %131 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %130, i32 0, i32 5
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = call i32 @pfkey_sockaddr_extract(%struct.sockaddr* %129, i32* %132)
  %134 = load i32, i32* %10, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %122
  %137 = load i32, i32* @EINVAL, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %3, align 4
  br label %156

139:                                              ; preds = %122
  %140 = load i32, i32* %10, align 4
  %141 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %7, align 8
  %142 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %141, i32 0, i32 3
  store i32 %140, i32* %142, align 8
  br label %149

143:                                              ; preds = %102
  %144 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %145 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %7, align 8
  %148 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %147, i32 0, i32 3
  store i32 %146, i32* %148, align 8
  br label %149

149:                                              ; preds = %143, %139
  %150 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %7, align 8
  %151 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %150, i32 0, i32 4
  store i32 1, i32* %151, align 4
  %152 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %153 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %153, align 8
  store i32 0, i32* %3, align 4
  br label %156

156:                                              ; preds = %149, %136, %119, %97, %51, %36, %28
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local %struct.net* @xp_net(%struct.xfrm_policy*) #1

declare dso_local i32 @pfkey_mode_to_xfrm(i64) #1

declare dso_local i64 @gen_reqid(%struct.net*) #1

declare dso_local i32 @pfkey_sockaddr_extract(%struct.sockaddr*, i32*) #1

declare dso_local i32 @pfkey_sockaddr_len(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
