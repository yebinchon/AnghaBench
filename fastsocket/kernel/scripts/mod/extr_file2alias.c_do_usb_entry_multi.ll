; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_file2alias.c_do_usb_entry_multi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_file2alias.c_do_usb_entry_multi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device_id = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.module = type { i32 }

@USB_DEVICE_ID_MATCH_DEV_LO = common dso_local global i32 0, align 4
@USB_DEVICE_ID_MATCH_DEV_HI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_device_id*, %struct.module*)* @do_usb_entry_multi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_usb_entry_multi(%struct.usb_device_id* %0, %struct.module* %1) #0 {
  %3 = alloca %struct.usb_device_id*, align 8
  %4 = alloca %struct.module*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  store %struct.usb_device_id* %0, %struct.usb_device_id** %3, align 8
  store %struct.module* %1, %struct.module** %4, align 8
  %10 = load %struct.usb_device_id*, %struct.usb_device_id** %3, align 8
  %11 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @TO_NATIVE(i32 %12)
  %14 = load %struct.usb_device_id*, %struct.usb_device_id** %3, align 8
  %15 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.usb_device_id*, %struct.usb_device_id** %3, align 8
  %17 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @TO_NATIVE(i32 %18)
  %20 = load %struct.usb_device_id*, %struct.usb_device_id** %3, align 8
  %21 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.usb_device_id*, %struct.usb_device_id** %3, align 8
  %23 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @TO_NATIVE(i32 %24)
  %26 = load %struct.usb_device_id*, %struct.usb_device_id** %3, align 8
  %27 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.usb_device_id*, %struct.usb_device_id** %3, align 8
  %29 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @USB_DEVICE_ID_MATCH_DEV_LO, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %2
  %35 = load %struct.usb_device_id*, %struct.usb_device_id** %3, align 8
  %36 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @TO_NATIVE(i32 %37)
  br label %40

39:                                               ; preds = %2
  br label %40

40:                                               ; preds = %39, %34
  %41 = phi i32 [ %38, %34 ], [ 0, %39 ]
  store i32 %41, i32* %5, align 4
  %42 = load %struct.usb_device_id*, %struct.usb_device_id** %3, align 8
  %43 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @USB_DEVICE_ID_MATCH_DEV_HI, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %40
  %49 = load %struct.usb_device_id*, %struct.usb_device_id** %3, align 8
  %50 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @TO_NATIVE(i32 %51)
  br label %54

53:                                               ; preds = %40
  br label %54

54:                                               ; preds = %53, %48
  %55 = phi i32 [ %52, %48 ], [ -1, %53 ]
  store i32 %55, i32* %6, align 4
  %56 = load %struct.usb_device_id*, %struct.usb_device_id** %3, align 8
  %57 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.usb_device_id*, %struct.usb_device_id** %3, align 8
  %60 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %58, %61
  %63 = load %struct.usb_device_id*, %struct.usb_device_id** %3, align 8
  %64 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %62, %65
  %67 = load %struct.usb_device_id*, %struct.usb_device_id** %3, align 8
  %68 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %66, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %54
  br label %136

73:                                               ; preds = %54
  store i32 7, i32* %9, align 4
  br label %74

74:                                               ; preds = %133, %73
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp ule i32 %75, %76
  br i1 %77, label %78, label %136

78:                                               ; preds = %74
  %79 = load i32, i32* %5, align 4
  %80 = and i32 %79, 15
  %81 = trunc i32 %80 to i8
  store i8 %81, i8* %8, align 1
  %82 = load i32, i32* %6, align 4
  %83 = and i32 %82, 15
  %84 = trunc i32 %83 to i8
  store i8 %84, i8* %7, align 1
  %85 = load i8, i8* %7, align 1
  %86 = zext i8 %85 to i32
  %87 = icmp sgt i32 %86, 9
  br i1 %87, label %88, label %89

88:                                               ; preds = %78
  store i8 9, i8* %7, align 1
  br label %89

89:                                               ; preds = %88, %78
  %90 = load i32, i32* %5, align 4
  %91 = lshr i32 %90, 4
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %6, align 4
  %93 = lshr i32 %92, 4
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %100, label %97

97:                                               ; preds = %89
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %108, label %100

100:                                              ; preds = %97, %89
  %101 = load %struct.usb_device_id*, %struct.usb_device_id** %3, align 8
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* %9, align 4
  %104 = load i8, i8* %8, align 1
  %105 = load i8, i8* %7, align 1
  %106 = load %struct.module*, %struct.module** %4, align 8
  %107 = call i32 @do_usb_entry(%struct.usb_device_id* %101, i32 %102, i32 %103, i8 zeroext %104, i8 zeroext %105, %struct.module* %106)
  br label %136

108:                                              ; preds = %97
  %109 = load i8, i8* %8, align 1
  %110 = zext i8 %109 to i32
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %108
  %113 = load %struct.usb_device_id*, %struct.usb_device_id** %3, align 8
  %114 = load i32, i32* %5, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* %9, align 4
  %117 = load i8, i8* %8, align 1
  %118 = load %struct.module*, %struct.module** %4, align 8
  %119 = call i32 @do_usb_entry(%struct.usb_device_id* %113, i32 %114, i32 %116, i8 zeroext %117, i8 zeroext 9, %struct.module* %118)
  br label %120

120:                                              ; preds = %112, %108
  %121 = load i8, i8* %7, align 1
  %122 = zext i8 %121 to i32
  %123 = icmp slt i32 %122, 9
  br i1 %123, label %124, label %132

124:                                              ; preds = %120
  %125 = load %struct.usb_device_id*, %struct.usb_device_id** %3, align 8
  %126 = load i32, i32* %6, align 4
  %127 = add i32 %126, -1
  store i32 %127, i32* %6, align 4
  %128 = load i32, i32* %9, align 4
  %129 = load i8, i8* %7, align 1
  %130 = load %struct.module*, %struct.module** %4, align 8
  %131 = call i32 @do_usb_entry(%struct.usb_device_id* %125, i32 %126, i32 %128, i8 zeroext 0, i8 zeroext %129, %struct.module* %130)
  br label %132

132:                                              ; preds = %124, %120
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %9, align 4
  %135 = add nsw i32 %134, -1
  store i32 %135, i32* %9, align 4
  br label %74

136:                                              ; preds = %72, %100, %74
  ret void
}

declare dso_local i32 @TO_NATIVE(i32) #1

declare dso_local i32 @do_usb_entry(%struct.usb_device_id*, i32, i32, i8 zeroext, i8 zeroext, %struct.module*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
