; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ax25/extr_ax25_out.c_ax25_send_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ax25/extr_ax25_out.c_ax25_send_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_17__*, i32*, i8*, i8* }
%struct.TYPE_17__ = type { i32* }
%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.TYPE_19__ = type { i32*, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }

@AX25_VALUES_PACLEN = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@AX25_VALUES_PROTOCOL = common dso_local global i64 0, align 8
@AX25_STATE_1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_20__* @ax25_send_frame(%struct.sk_buff* %0, i32 %1, i8** %2, i8** %3, i32* %4, %struct.net_device* %5) #0 {
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.net_device*, align 8
  %14 = alloca %struct.TYPE_19__*, align 8
  %15 = alloca %struct.TYPE_20__*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8** %2, i8*** %10, align 8
  store i8** %3, i8*** %11, align 8
  store i32* %4, i32** %12, align 8
  store %struct.net_device* %5, %struct.net_device** %13, align 8
  %16 = load i32, i32* %9, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %6
  %19 = load %struct.net_device*, %struct.net_device** %13, align 8
  %20 = call %struct.TYPE_19__* @ax25_dev_ax25dev(%struct.net_device* %19)
  store %struct.TYPE_19__* %20, %struct.TYPE_19__** %14, align 8
  %21 = icmp eq %struct.TYPE_19__* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %7, align 8
  br label %105

23:                                               ; preds = %18
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @AX25_VALUES_PACLEN, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %23, %6
  %31 = load i8**, i8*** %10, align 8
  %32 = load i8**, i8*** %11, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = load %struct.net_device*, %struct.net_device** %13, align 8
  %35 = call %struct.TYPE_20__* @ax25_find_cb(i8** %31, i8** %32, i32* %33, %struct.net_device* %34)
  store %struct.TYPE_20__* %35, %struct.TYPE_20__** %15, align 8
  %36 = icmp ne %struct.TYPE_20__* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %41 = call i32 @ax25_output(%struct.TYPE_20__* %38, i32 %39, %struct.sk_buff* %40)
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  store %struct.TYPE_20__* %42, %struct.TYPE_20__** %7, align 8
  br label %105

43:                                               ; preds = %30
  %44 = load %struct.net_device*, %struct.net_device** %13, align 8
  %45 = call %struct.TYPE_19__* @ax25_dev_ax25dev(%struct.net_device* %44)
  store %struct.TYPE_19__* %45, %struct.TYPE_19__** %14, align 8
  %46 = icmp eq %struct.TYPE_19__* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %7, align 8
  br label %105

48:                                               ; preds = %43
  %49 = call %struct.TYPE_20__* (...) @ax25_create_cb()
  store %struct.TYPE_20__* %49, %struct.TYPE_20__** %15, align 8
  %50 = icmp eq %struct.TYPE_20__* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %7, align 8
  br label %105

52:                                               ; preds = %48
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %55 = call i32 @ax25_fillin_cb(%struct.TYPE_20__* %53, %struct.TYPE_19__* %54)
  %56 = load i8**, i8*** %10, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 4
  store i8* %57, i8** %59, align 8
  %60 = load i8**, i8*** %11, align 8
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 3
  store i8* %61, i8** %63, align 8
  %64 = load i32*, i32** %12, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %80

66:                                               ; preds = %52
  %67 = load i32*, i32** %12, align 8
  %68 = load i32, i32* @GFP_ATOMIC, align 4
  %69 = call i32* @kmemdup(i32* %67, i32 4, i32 %68)
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 2
  store i32* %69, i32** %71, align 8
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %66
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %78 = call i32 @ax25_cb_put(%struct.TYPE_20__* %77)
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %7, align 8
  br label %105

79:                                               ; preds = %66
  br label %80

80:                                               ; preds = %79, %52
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* @AX25_VALUES_PROTOCOL, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  switch i32 %88, label %92 [
    i32 128, label %89
    i32 129, label %89
  ]

89:                                               ; preds = %80, %80
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %91 = call i32 @ax25_std_establish_data_link(%struct.TYPE_20__* %90)
  br label %92

92:                                               ; preds = %80, %89
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %94 = call i32 @ax25_cb_add(%struct.TYPE_20__* %93)
  %95 = load i32, i32* @AX25_STATE_1, align 4
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %99 = call i32 @ax25_start_heartbeat(%struct.TYPE_20__* %98)
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %101 = load i32, i32* %9, align 4
  %102 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %103 = call i32 @ax25_output(%struct.TYPE_20__* %100, i32 %101, %struct.sk_buff* %102)
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  store %struct.TYPE_20__* %104, %struct.TYPE_20__** %7, align 8
  br label %105

105:                                              ; preds = %92, %76, %51, %47, %37, %22
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  ret %struct.TYPE_20__* %106
}

declare dso_local %struct.TYPE_19__* @ax25_dev_ax25dev(%struct.net_device*) #1

declare dso_local %struct.TYPE_20__* @ax25_find_cb(i8**, i8**, i32*, %struct.net_device*) #1

declare dso_local i32 @ax25_output(%struct.TYPE_20__*, i32, %struct.sk_buff*) #1

declare dso_local %struct.TYPE_20__* @ax25_create_cb(...) #1

declare dso_local i32 @ax25_fillin_cb(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local i32* @kmemdup(i32*, i32, i32) #1

declare dso_local i32 @ax25_cb_put(%struct.TYPE_20__*) #1

declare dso_local i32 @ax25_std_establish_data_link(%struct.TYPE_20__*) #1

declare dso_local i32 @ax25_cb_add(%struct.TYPE_20__*) #1

declare dso_local i32 @ax25_start_heartbeat(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
