; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_policy.c_xfrm_state_ok.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_policy.c_xfrm_state_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_tmpl = type { i16, i64, i64, i32, %struct.TYPE_5__, i64, i64 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.xfrm_state = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i64, i32 }
%struct.TYPE_4__ = type { i64, i64 }

@IPSEC_PROTO_ANY = common dso_local global i32 0, align 4
@XFRM_MODE_TRANSPORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_tmpl*, %struct.xfrm_state*, i16)* @xfrm_state_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_state_ok(%struct.xfrm_tmpl* %0, %struct.xfrm_state* %1, i16 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfrm_tmpl*, align 8
  %6 = alloca %struct.xfrm_state*, align 8
  %7 = alloca i16, align 2
  store %struct.xfrm_tmpl* %0, %struct.xfrm_tmpl** %5, align 8
  store %struct.xfrm_state* %1, %struct.xfrm_state** %6, align 8
  store i16 %2, i16* %7, align 2
  %8 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %9 = call i64 @xfrm_state_kern(%struct.xfrm_state* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %3
  %12 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %5, align 8
  %13 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %12, i32 0, i32 6
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %11
  %17 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %5, align 8
  %18 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %19 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %5, align 8
  %20 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %19, i32 0, i32 0
  %21 = load i16, i16* %20, align 8
  %22 = call i64 @xfrm_state_addr_cmp(%struct.xfrm_tmpl* %17, %struct.xfrm_state* %18, i16 zeroext %21)
  %23 = icmp ne i64 %22, 0
  %24 = xor i1 %23, true
  br label %25

25:                                               ; preds = %16, %11
  %26 = phi i1 [ false, %11 ], [ %24, %16 ]
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %4, align 4
  br label %120

28:                                               ; preds = %3
  %29 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %30 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %5, align 8
  %34 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %32, %36
  br i1 %37, label %38, label %117

38:                                               ; preds = %28
  %39 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %40 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %5, align 8
  %44 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %42, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %38
  %49 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %5, align 8
  %50 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %117, label %54

54:                                               ; preds = %48, %38
  %55 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %56 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %5, align 8
  %60 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %58, %61
  br i1 %62, label %68, label %63

63:                                               ; preds = %54
  %64 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %5, align 8
  %65 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %117, label %68

68:                                               ; preds = %63, %54
  %69 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %70 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %5, align 8
  %74 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %72, %75
  br i1 %76, label %77, label %117

77:                                               ; preds = %68
  %78 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %5, align 8
  %79 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %78, i32 0, i32 5
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %101, label %82

82:                                               ; preds = %77
  %83 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %5, align 8
  %84 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %87 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = shl i32 1, %89
  %91 = and i32 %85, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %101, label %93

93:                                               ; preds = %82
  %94 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %5, align 8
  %95 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* @IPSEC_PROTO_ANY, align 4
  %99 = call i32 @xfrm_id_proto_match(i64 %97, i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %117, label %101

101:                                              ; preds = %93, %82, %77
  %102 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %103 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @XFRM_MODE_TRANSPORT, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %101
  %109 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %5, align 8
  %110 = load %struct.xfrm_state*, %struct.xfrm_state** %6, align 8
  %111 = load i16, i16* %7, align 2
  %112 = call i64 @xfrm_state_addr_cmp(%struct.xfrm_tmpl* %109, %struct.xfrm_state* %110, i16 zeroext %111)
  %113 = icmp ne i64 %112, 0
  br label %114

114:                                              ; preds = %108, %101
  %115 = phi i1 [ false, %101 ], [ %113, %108 ]
  %116 = xor i1 %115, true
  br label %117

117:                                              ; preds = %114, %93, %68, %63, %48, %28
  %118 = phi i1 [ false, %93 ], [ false, %68 ], [ false, %63 ], [ false, %48 ], [ false, %28 ], [ %116, %114 ]
  %119 = zext i1 %118 to i32
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %117, %25
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i64 @xfrm_state_kern(%struct.xfrm_state*) #1

declare dso_local i64 @xfrm_state_addr_cmp(%struct.xfrm_tmpl*, %struct.xfrm_state*, i16 zeroext) #1

declare dso_local i32 @xfrm_id_proto_match(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
