; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ax25/extr_ax25_std_in.c_ax25_std_state1_machine.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ax25/extr_ax25_std_in.c_ax25_std_state1_machine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i8*, %struct.TYPE_14__*, i32, %struct.TYPE_16__*, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_16__ = type { i32 (%struct.TYPE_16__*)*, i32 }
%struct.sk_buff = type { i32 }

@AX25_MODULUS = common dso_local global i8* null, align 8
@AX25_VALUES_WINDOW = common dso_local global i64 0, align 8
@AX25_RESPONSE = common dso_local global i32 0, align 4
@AX25_EMODULUS = common dso_local global i8* null, align 8
@AX25_VALUES_EWINDOW = common dso_local global i64 0, align 8
@AX25_STATE_3 = common dso_local global i32 0, align 4
@TCP_ESTABLISHED = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@ECONNREFUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.sk_buff*, i32, i32, i32)* @ax25_std_state1_machine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ax25_std_state1_machine(%struct.TYPE_15__* %0, %struct.sk_buff* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %8, align 4
  switch i32 %11, label %142 [
    i32 130, label %12
    i32 129, label %30
    i32 132, label %48
    i32 128, label %53
    i32 131, label %113
  ]

12:                                               ; preds = %5
  %13 = load i8*, i8** @AX25_MODULUS, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  store i8* %13, i8** %15, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @AX25_VALUES_WINDOW, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @AX25_RESPONSE, align 4
  %29 = call i32 @ax25_send_control(%struct.TYPE_15__* %26, i32 128, i32 %27, i32 %28)
  br label %143

30:                                               ; preds = %5
  %31 = load i8*, i8** @AX25_EMODULUS, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @AX25_VALUES_EWINDOW, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @AX25_RESPONSE, align 4
  %47 = call i32 @ax25_send_control(%struct.TYPE_15__* %44, i32 128, i32 %45, i32 %46)
  br label %143

48:                                               ; preds = %5
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @AX25_RESPONSE, align 4
  %52 = call i32 @ax25_send_control(%struct.TYPE_15__* %49, i32 131, i32 %50, i32 %51)
  br label %143

53:                                               ; preds = %5
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %112

56:                                               ; preds = %53
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %58 = call i32 @ax25_calculate_rtt(%struct.TYPE_15__* %57)
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %60 = call i32 @ax25_stop_t1timer(%struct.TYPE_15__* %59)
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %62 = call i32 @ax25_start_t3timer(%struct.TYPE_15__* %61)
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %64 = call i32 @ax25_start_idletimer(%struct.TYPE_15__* %63)
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 8
  store i32 0, i32* %66, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 7
  store i32 0, i32* %68, align 4
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 6
  store i32 0, i32* %70, align 8
  %71 = load i32, i32* @AX25_STATE_3, align 4
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 5
  store i32 %71, i32* %73, align 4
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 4
  store i32 0, i32* %75, align 8
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 3
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %77, align 8
  %79 = icmp ne %struct.TYPE_16__* %78, null
  br i1 %79, label %80, label %111

80:                                               ; preds = %56
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 3
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %82, align 8
  %84 = call i32 @bh_lock_sock(%struct.TYPE_16__* %83)
  %85 = load i32, i32* @TCP_ESTABLISHED, align 4
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 3
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 1
  store i32 %85, i32* %89, align 8
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 3
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %91, align 8
  %93 = load i32, i32* @SOCK_DEAD, align 4
  %94 = call i32 @sock_flag(%struct.TYPE_16__* %92, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %106, label %96

96:                                               ; preds = %80
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 3
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  %101 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %100, align 8
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 3
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %103, align 8
  %105 = call i32 %101(%struct.TYPE_16__* %104)
  br label %106

106:                                              ; preds = %96, %80
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 3
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %108, align 8
  %110 = call i32 @bh_unlock_sock(%struct.TYPE_16__* %109)
  br label %111

111:                                              ; preds = %106, %56
  br label %112

112:                                              ; preds = %111, %53
  br label %143

113:                                              ; preds = %5
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %141

116:                                              ; preds = %113
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = load i8*, i8** @AX25_MODULUS, align 8
  %121 = icmp eq i8* %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %116
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %124 = load i32, i32* @ECONNREFUSED, align 4
  %125 = call i32 @ax25_disconnect(%struct.TYPE_15__* %123, i32 %124)
  br label %140

126:                                              ; preds = %116
  %127 = load i8*, i8** @AX25_MODULUS, align 8
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 0
  store i8* %127, i8** %129, align 8
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load i64, i64* @AX25_VALUES_WINDOW, align 8
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 8
  br label %140

140:                                              ; preds = %126, %122
  br label %141

141:                                              ; preds = %140, %113
  br label %143

142:                                              ; preds = %5
  br label %143

143:                                              ; preds = %142, %141, %112, %48, %30, %12
  ret i32 0
}

declare dso_local i32 @ax25_send_control(%struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local i32 @ax25_calculate_rtt(%struct.TYPE_15__*) #1

declare dso_local i32 @ax25_stop_t1timer(%struct.TYPE_15__*) #1

declare dso_local i32 @ax25_start_t3timer(%struct.TYPE_15__*) #1

declare dso_local i32 @ax25_start_idletimer(%struct.TYPE_15__*) #1

declare dso_local i32 @bh_lock_sock(%struct.TYPE_16__*) #1

declare dso_local i32 @sock_flag(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @bh_unlock_sock(%struct.TYPE_16__*) #1

declare dso_local i32 @ax25_disconnect(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
