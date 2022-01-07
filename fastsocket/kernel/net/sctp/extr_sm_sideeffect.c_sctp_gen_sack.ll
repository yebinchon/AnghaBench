; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_sideeffect.c_sctp_gen_sack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_sideeffect.c_sctp_gen_sack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i32, i32, %struct.TYPE_2__, i32, i32, i32, i32* }
%struct.TYPE_2__ = type { i32, i32, i32, %struct.sctp_transport* }
%struct.sctp_transport = type { i32, i32, i32 }
%struct.sctp_chunk = type { i32 }

@SPP_SACKDELAY_DISABLE = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_SACK = common dso_local global i64 0, align 8
@SCTP_CMD_TIMER_RESTART = common dso_local global i32 0, align 4
@SCTP_CMD_REPLY = common dso_local global i32 0, align 4
@SCTP_CMD_TIMER_STOP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_association*, i32, i32*)* @sctp_gen_sack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_gen_sack(%struct.sctp_association* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sctp_association*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sctp_chunk*, align 8
  %11 = alloca %struct.sctp_transport*, align 8
  %12 = alloca i32, align 4
  store %struct.sctp_association* %0, %struct.sctp_association** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %14 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 3
  %16 = load %struct.sctp_transport*, %struct.sctp_transport** %15, align 8
  store %struct.sctp_transport* %16, %struct.sctp_transport** %11, align 8
  store i32 0, i32* %12, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %39, label %19

19:                                               ; preds = %3
  %20 = load %struct.sctp_transport*, %struct.sctp_transport** %11, align 8
  %21 = icmp ne %struct.sctp_transport* %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %19
  %23 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %24 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @SPP_SACKDELAY_DISABLE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %22, %19
  %30 = load %struct.sctp_transport*, %struct.sctp_transport** %11, align 8
  %31 = icmp ne %struct.sctp_transport* %30, null
  br i1 %31, label %32, label %43

32:                                               ; preds = %29
  %33 = load %struct.sctp_transport*, %struct.sctp_transport** %11, align 8
  %34 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @SPP_SACKDELAY_DISABLE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32, %22, %3
  %40 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %41 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  br label %43

43:                                               ; preds = %39, %32, %29
  %44 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %45 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = call i64 @sctp_tsnmap_get_ctsn(i32* %46)
  store i64 %47, i64* %8, align 8
  %48 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %49 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = call i64 @sctp_tsnmap_get_max_tsn_seen(i32* %50)
  store i64 %51, i64* %9, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* %8, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %43
  %56 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %57 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  br label %59

59:                                               ; preds = %55, %43
  %60 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %61 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %125, label %65

65:                                               ; preds = %59
  %66 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %67 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  %71 = load %struct.sctp_transport*, %struct.sctp_transport** %11, align 8
  %72 = icmp ne %struct.sctp_transport* %71, null
  br i1 %72, label %73, label %96

73:                                               ; preds = %65
  %74 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %75 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.sctp_transport*, %struct.sctp_transport** %11, align 8
  %79 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 %80, 1
  %82 = icmp sge i32 %77, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %73
  %84 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %85 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  store i32 1, i32* %86, align 8
  br label %87

87:                                               ; preds = %83, %73
  %88 = load %struct.sctp_transport*, %struct.sctp_transport** %11, align 8
  %89 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %92 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %91, i32 0, i32 6
  %93 = load i32*, i32** %92, align 8
  %94 = load i64, i64* @SCTP_EVENT_TIMEOUT_SACK, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  store i32 %90, i32* %95, align 4
  br label %119

96:                                               ; preds = %65
  %97 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %98 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %102 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = sub nsw i32 %103, 1
  %105 = icmp sge i32 %100, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %96
  %107 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %108 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  store i32 1, i32* %109, align 8
  br label %110

110:                                              ; preds = %106, %96
  %111 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %112 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %115 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %114, i32 0, i32 6
  %116 = load i32*, i32** %115, align 8
  %117 = load i64, i64* @SCTP_EVENT_TIMEOUT_SACK, align 8
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  store i32 %113, i32* %118, align 4
  br label %119

119:                                              ; preds = %110, %87
  %120 = load i32*, i32** %7, align 8
  %121 = load i32, i32* @SCTP_CMD_TIMER_RESTART, align 4
  %122 = load i64, i64* @SCTP_EVENT_TIMEOUT_SACK, align 8
  %123 = call i32 @SCTP_TO(i64 %122)
  %124 = call i32 @sctp_add_cmd_sf(i32* %120, i32 %121, i32 %123)
  br label %153

125:                                              ; preds = %59
  %126 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %127 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %130 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %129, i32 0, i32 4
  store i32 %128, i32* %130, align 4
  %131 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %132 = call %struct.sctp_chunk* @sctp_make_sack(%struct.sctp_association* %131)
  store %struct.sctp_chunk* %132, %struct.sctp_chunk** %10, align 8
  %133 = load %struct.sctp_chunk*, %struct.sctp_chunk** %10, align 8
  %134 = icmp ne %struct.sctp_chunk* %133, null
  br i1 %134, label %136, label %135

135:                                              ; preds = %125
  br label %155

136:                                              ; preds = %125
  %137 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %138 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  store i32 0, i32* %139, align 8
  %140 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %141 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 1
  store i32 0, i32* %142, align 4
  %143 = load i32*, i32** %7, align 8
  %144 = load i32, i32* @SCTP_CMD_REPLY, align 4
  %145 = load %struct.sctp_chunk*, %struct.sctp_chunk** %10, align 8
  %146 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %145)
  %147 = call i32 @sctp_add_cmd_sf(i32* %143, i32 %144, i32 %146)
  %148 = load i32*, i32** %7, align 8
  %149 = load i32, i32* @SCTP_CMD_TIMER_STOP, align 4
  %150 = load i64, i64* @SCTP_EVENT_TIMEOUT_SACK, align 8
  %151 = call i32 @SCTP_TO(i64 %150)
  %152 = call i32 @sctp_add_cmd_sf(i32* %148, i32 %149, i32 %151)
  br label %153

153:                                              ; preds = %136, %119
  %154 = load i32, i32* %12, align 4
  store i32 %154, i32* %4, align 4
  br label %159

155:                                              ; preds = %135
  %156 = load i32, i32* @ENOMEM, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %12, align 4
  %158 = load i32, i32* %12, align 4
  store i32 %158, i32* %4, align 4
  br label %159

159:                                              ; preds = %155, %153
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local i64 @sctp_tsnmap_get_ctsn(i32*) #1

declare dso_local i64 @sctp_tsnmap_get_max_tsn_seen(i32*) #1

declare dso_local i32 @sctp_add_cmd_sf(i32*, i32, i32) #1

declare dso_local i32 @SCTP_TO(i64) #1

declare dso_local %struct.sctp_chunk* @sctp_make_sack(%struct.sctp_association*) #1

declare dso_local i32 @SCTP_CHUNK(%struct.sctp_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
