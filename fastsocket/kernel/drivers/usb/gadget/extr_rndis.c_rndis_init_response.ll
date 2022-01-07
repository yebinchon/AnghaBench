; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_rndis.c_rndis_init_response.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_rndis.c_rndis_init_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rndis_params = type { i32, i32 (i32)*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8* }
%struct.TYPE_8__ = type { i64 }

@rndis_per_dev_params = common dso_local global %struct.rndis_params* null, align 8
@ENOTSUPP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@REMOTE_NDIS_INITIALIZE_CMPLT = common dso_local global i32 0, align 4
@RNDIS_STATUS_SUCCESS = common dso_local global i32 0, align 4
@RNDIS_MAJOR_VERSION = common dso_local global i32 0, align 4
@RNDIS_MINOR_VERSION = common dso_local global i32 0, align 4
@RNDIS_DF_CONNECTIONLESS = common dso_local global i32 0, align 4
@RNDIS_MEDIUM_802_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_9__*)* @rndis_init_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rndis_init_response(i32 %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.rndis_params*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %9 = load %struct.rndis_params*, %struct.rndis_params** @rndis_per_dev_params, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.rndis_params, %struct.rndis_params* %9, i64 %11
  store %struct.rndis_params* %12, %struct.rndis_params** %8, align 8
  %13 = load %struct.rndis_params*, %struct.rndis_params** %8, align 8
  %14 = getelementptr inbounds %struct.rndis_params, %struct.rndis_params* %13, i32 0, i32 2
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = icmp ne %struct.TYPE_7__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %97

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = call %struct.TYPE_8__* @rndis_add_response(i32 %21, i32 104)
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %7, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %24 = icmp ne %struct.TYPE_8__* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %97

28:                                               ; preds = %20
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %32, %struct.TYPE_10__** %6, align 8
  %33 = load i32, i32* @REMOTE_NDIS_INITIALIZE_CMPLT, align 4
  %34 = call i8* @cpu_to_le32(i32 %33)
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 12
  store i8* %34, i8** %36, align 8
  %37 = call i8* @cpu_to_le32(i32 52)
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 11
  store i8* %37, i8** %39, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 10
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @RNDIS_STATUS_SUCCESS, align 4
  %46 = call i8* @cpu_to_le32(i32 %45)
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 9
  store i8* %46, i8** %48, align 8
  %49 = load i32, i32* @RNDIS_MAJOR_VERSION, align 4
  %50 = call i8* @cpu_to_le32(i32 %49)
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 8
  store i8* %50, i8** %52, align 8
  %53 = load i32, i32* @RNDIS_MINOR_VERSION, align 4
  %54 = call i8* @cpu_to_le32(i32 %53)
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 7
  store i8* %54, i8** %56, align 8
  %57 = load i32, i32* @RNDIS_DF_CONNECTIONLESS, align 4
  %58 = call i8* @cpu_to_le32(i32 %57)
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 6
  store i8* %58, i8** %60, align 8
  %61 = load i32, i32* @RNDIS_MEDIUM_802_3, align 4
  %62 = call i8* @cpu_to_le32(i32 %61)
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 5
  store i8* %62, i8** %64, align 8
  %65 = call i8* @cpu_to_le32(i32 1)
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 4
  store i8* %65, i8** %67, align 8
  %68 = load %struct.rndis_params*, %struct.rndis_params** %8, align 8
  %69 = getelementptr inbounds %struct.rndis_params, %struct.rndis_params* %68, i32 0, i32 2
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = add i64 %73, 4
  %75 = add i64 %74, 4
  %76 = add i64 %75, 22
  %77 = trunc i64 %76 to i32
  %78 = call i8* @cpu_to_le32(i32 %77)
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 3
  store i8* %78, i8** %80, align 8
  %81 = call i8* @cpu_to_le32(i32 0)
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 2
  store i8* %81, i8** %83, align 8
  %84 = call i8* @cpu_to_le32(i32 0)
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  store i8* %84, i8** %86, align 8
  %87 = call i8* @cpu_to_le32(i32 0)
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  store i8* %87, i8** %89, align 8
  %90 = load %struct.rndis_params*, %struct.rndis_params** %8, align 8
  %91 = getelementptr inbounds %struct.rndis_params, %struct.rndis_params* %90, i32 0, i32 1
  %92 = load i32 (i32)*, i32 (i32)** %91, align 8
  %93 = load %struct.rndis_params*, %struct.rndis_params** %8, align 8
  %94 = getelementptr inbounds %struct.rndis_params, %struct.rndis_params* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 %92(i32 %95)
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %28, %25, %17
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local %struct.TYPE_8__* @rndis_add_response(i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
