; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_usb.c_get_pipes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_usb.c_get_pipes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i64, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.TYPE_5__ = type { i32 }

@US_PR_CBI = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Endpoint sanity check failed! Rejecting dev.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*)* @get_pipes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_pipes(%struct.us_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.us_data*, align 8
  %4 = alloca %struct.usb_host_interface*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_endpoint_descriptor*, align 8
  %7 = alloca %struct.usb_endpoint_descriptor*, align 8
  %8 = alloca %struct.usb_endpoint_descriptor*, align 8
  %9 = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.us_data* %0, %struct.us_data** %3, align 8
  %10 = load %struct.us_data*, %struct.us_data** %3, align 8
  %11 = getelementptr inbounds %struct.us_data, %struct.us_data* %10, i32 0, i32 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.usb_host_interface*, %struct.usb_host_interface** %13, align 8
  store %struct.usb_host_interface* %14, %struct.usb_host_interface** %4, align 8
  store %struct.usb_endpoint_descriptor* null, %struct.usb_endpoint_descriptor** %7, align 8
  store %struct.usb_endpoint_descriptor* null, %struct.usb_endpoint_descriptor** %8, align 8
  store %struct.usb_endpoint_descriptor* null, %struct.usb_endpoint_descriptor** %9, align 8
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %62, %1
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.usb_host_interface*, %struct.usb_host_interface** %4, align 8
  %18 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %16, %20
  br i1 %21, label %22, label %65

22:                                               ; preds = %15
  %23 = load %struct.usb_host_interface*, %struct.usb_host_interface** %4, align 8
  %24 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %29, %struct.usb_endpoint_descriptor** %6, align 8
  %30 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %31 = call i64 @usb_endpoint_xfer_bulk(%struct.usb_endpoint_descriptor* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %22
  %34 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %35 = call i64 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %39 = icmp ne %struct.usb_endpoint_descriptor* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  store %struct.usb_endpoint_descriptor* %41, %struct.usb_endpoint_descriptor** %7, align 8
  br label %42

42:                                               ; preds = %40, %37
  br label %49

43:                                               ; preds = %33
  %44 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %45 = icmp ne %struct.usb_endpoint_descriptor* %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  store %struct.usb_endpoint_descriptor* %47, %struct.usb_endpoint_descriptor** %8, align 8
  br label %48

48:                                               ; preds = %46, %43
  br label %49

49:                                               ; preds = %48, %42
  br label %61

50:                                               ; preds = %22
  %51 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %52 = call i64 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %56 = icmp ne %struct.usb_endpoint_descriptor* %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  store %struct.usb_endpoint_descriptor* %58, %struct.usb_endpoint_descriptor** %9, align 8
  br label %59

59:                                               ; preds = %57, %54
  br label %60

60:                                               ; preds = %59, %50
  br label %61

61:                                               ; preds = %60, %49
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %15

65:                                               ; preds = %15
  %66 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %67 = icmp ne %struct.usb_endpoint_descriptor* %66, null
  br i1 %67, label %68, label %80

68:                                               ; preds = %65
  %69 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %70 = icmp ne %struct.usb_endpoint_descriptor* %69, null
  br i1 %70, label %71, label %80

71:                                               ; preds = %68
  %72 = load %struct.us_data*, %struct.us_data** %3, align 8
  %73 = getelementptr inbounds %struct.us_data, %struct.us_data* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @US_PR_CBI, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %71
  %78 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %79 = icmp ne %struct.usb_endpoint_descriptor* %78, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %77, %68, %65
  %81 = call i32 @US_DEBUGP(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %82 = load i32, i32* @EIO, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %130

84:                                               ; preds = %77, %71
  %85 = load %struct.us_data*, %struct.us_data** %3, align 8
  %86 = getelementptr inbounds %struct.us_data, %struct.us_data* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @usb_sndctrlpipe(i32 %87, i32 0)
  %89 = load %struct.us_data*, %struct.us_data** %3, align 8
  %90 = getelementptr inbounds %struct.us_data, %struct.us_data* %89, i32 0, i32 7
  store i32 %88, i32* %90, align 8
  %91 = load %struct.us_data*, %struct.us_data** %3, align 8
  %92 = getelementptr inbounds %struct.us_data, %struct.us_data* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @usb_rcvctrlpipe(i32 %93, i32 0)
  %95 = load %struct.us_data*, %struct.us_data** %3, align 8
  %96 = getelementptr inbounds %struct.us_data, %struct.us_data* %95, i32 0, i32 6
  store i32 %94, i32* %96, align 4
  %97 = load %struct.us_data*, %struct.us_data** %3, align 8
  %98 = getelementptr inbounds %struct.us_data, %struct.us_data* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %101 = call i32 @usb_endpoint_num(%struct.usb_endpoint_descriptor* %100)
  %102 = call i32 @usb_sndbulkpipe(i32 %99, i32 %101)
  %103 = load %struct.us_data*, %struct.us_data** %3, align 8
  %104 = getelementptr inbounds %struct.us_data, %struct.us_data* %103, i32 0, i32 5
  store i32 %102, i32* %104, align 8
  %105 = load %struct.us_data*, %struct.us_data** %3, align 8
  %106 = getelementptr inbounds %struct.us_data, %struct.us_data* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %109 = call i32 @usb_endpoint_num(%struct.usb_endpoint_descriptor* %108)
  %110 = call i32 @usb_rcvbulkpipe(i32 %107, i32 %109)
  %111 = load %struct.us_data*, %struct.us_data** %3, align 8
  %112 = getelementptr inbounds %struct.us_data, %struct.us_data* %111, i32 0, i32 4
  store i32 %110, i32* %112, align 4
  %113 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %114 = icmp ne %struct.usb_endpoint_descriptor* %113, null
  br i1 %114, label %115, label %129

115:                                              ; preds = %84
  %116 = load %struct.us_data*, %struct.us_data** %3, align 8
  %117 = getelementptr inbounds %struct.us_data, %struct.us_data* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %120 = call i32 @usb_endpoint_num(%struct.usb_endpoint_descriptor* %119)
  %121 = call i32 @usb_rcvintpipe(i32 %118, i32 %120)
  %122 = load %struct.us_data*, %struct.us_data** %3, align 8
  %123 = getelementptr inbounds %struct.us_data, %struct.us_data* %122, i32 0, i32 3
  store i32 %121, i32* %123, align 8
  %124 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %125 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.us_data*, %struct.us_data** %3, align 8
  %128 = getelementptr inbounds %struct.us_data, %struct.us_data* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 8
  br label %129

129:                                              ; preds = %115, %84
  store i32 0, i32* %2, align 4
  br label %130

130:                                              ; preds = %129, %80
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local i64 @usb_endpoint_xfer_bulk(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_is_int_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @US_DEBUGP(i8*) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @usb_endpoint_num(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @usb_rcvintpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
