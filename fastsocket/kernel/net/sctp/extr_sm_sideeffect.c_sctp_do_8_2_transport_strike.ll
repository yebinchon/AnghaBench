; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_sideeffect.c_sctp_do_8_2_transport_strike.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_sideeffect.c_sctp_do_8_2_transport_strike.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i64, i32 }
%struct.sctp_transport = type { i64, i64, i64, i32, %struct.TYPE_5__*, i64, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@SCTP_INACTIVE = common dso_local global i64 0, align 8
@SCTP_UNCONFIRMED = common dso_local global i64 0, align 8
@SCTP_PF = common dso_local global i64 0, align 8
@SCTP_TRANSPORT_PF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"transport_strike:association %p\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c" transport IP: port:%d failed.\0A\00", align 1
@SCTP_TRANSPORT_DOWN = common dso_local global i32 0, align 4
@SCTP_FAILED_THRESHOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.sctp_association*, %struct.sctp_transport*, i32)* @sctp_do_8_2_transport_strike to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_do_8_2_transport_strike(i32* %0, %struct.sctp_association* %1, %struct.sctp_transport* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sctp_association*, align 8
  %7 = alloca %struct.sctp_transport*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %6, align 8
  store %struct.sctp_transport* %2, %struct.sctp_transport** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %27, label %11

11:                                               ; preds = %4
  %12 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %13 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 8
  %16 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %17 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SCTP_INACTIVE, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %11
  %22 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %23 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %23, align 8
  br label %26

26:                                               ; preds = %21, %11
  br label %56

27:                                               ; preds = %4
  %28 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %29 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %55

32:                                               ; preds = %27
  %33 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %34 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SCTP_UNCONFIRMED, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %40 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 8
  br label %43

43:                                               ; preds = %38, %32
  %44 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %45 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @SCTP_INACTIVE, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %51 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %51, align 8
  br label %54

54:                                               ; preds = %49, %43
  br label %55

55:                                               ; preds = %54, %27
  br label %56

56:                                               ; preds = %55, %26
  %57 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %58 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @SCTP_PF, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %86

62:                                               ; preds = %56
  %63 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %64 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %67 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp slt i64 %65, %68
  br i1 %69, label %70, label %86

70:                                               ; preds = %62
  %71 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %72 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %75 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp sgt i64 %73, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %70
  %79 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %80 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %81 = load i32, i32* @SCTP_TRANSPORT_PF, align 4
  %82 = call i32 @sctp_assoc_control_transport(%struct.sctp_association* %79, %struct.sctp_transport* %80, i32 %81, i32 0)
  %83 = load i32*, i32** %5, align 8
  %84 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %85 = call i32 @sctp_cmd_hb_timer_update(i32* %83, %struct.sctp_transport* %84)
  br label %86

86:                                               ; preds = %78, %70, %62, %56
  %87 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %88 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @SCTP_INACTIVE, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %116

92:                                               ; preds = %86
  %93 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %94 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %97 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp sgt i64 %95, %98
  br i1 %99, label %100, label %116

100:                                              ; preds = %92
  %101 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %102 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %103 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %102, i32 0, i32 6
  %104 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %105 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %104, i32 0, i32 6
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @ntohs(i32 %108)
  %110 = call i32 @SCTP_DEBUG_PRINTK_IPADDR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), %struct.sctp_association* %101, %struct.TYPE_6__* %103, i32 %109)
  %111 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %112 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %113 = load i32, i32* @SCTP_TRANSPORT_DOWN, align 4
  %114 = load i32, i32* @SCTP_FAILED_THRESHOLD, align 4
  %115 = call i32 @sctp_assoc_control_transport(%struct.sctp_association* %111, %struct.sctp_transport* %112, i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %100, %92, %86
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %116
  %120 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %121 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %120, i32 0, i32 5
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %140

124:                                              ; preds = %119, %116
  %125 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %126 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = mul nsw i32 %127, 2
  %129 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %130 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %129, i32 0, i32 4
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @min(i32 %128, i32 %133)
  %135 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %136 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %135, i32 0, i32 3
  store i32 %134, i32* %136, align 8
  %137 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %138 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %139 = call i32 @sctp_max_rto(%struct.sctp_association* %137, %struct.sctp_transport* %138)
  br label %140

140:                                              ; preds = %124, %119
  ret void
}

declare dso_local i32 @sctp_assoc_control_transport(%struct.sctp_association*, %struct.sctp_transport*, i32, i32) #1

declare dso_local i32 @sctp_cmd_hb_timer_update(i32*, %struct.sctp_transport*) #1

declare dso_local i32 @SCTP_DEBUG_PRINTK_IPADDR(i8*, i8*, %struct.sctp_association*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @sctp_max_rto(%struct.sctp_association*, %struct.sctp_transport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
