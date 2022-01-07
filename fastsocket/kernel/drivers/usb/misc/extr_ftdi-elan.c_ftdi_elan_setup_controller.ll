; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_setup_controller.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_setup_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ftdi = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ftdi*, i32)* @ftdi_elan_setup_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftdi_elan_setup_controller(%struct.usb_ftdi* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_ftdi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.usb_ftdi* %0, %struct.usb_ftdi** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* %5, align 4
  %12 = shl i32 %11, 8
  store i32 %12, i32* %10, align 4
  %13 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %14 = call i32 @ftdi_elan_write_reg(%struct.usb_ftdi* %13, i32 10847)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %131

19:                                               ; preds = %2
  store i32 16, i32* %9, align 4
  %20 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %9, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @ftdi_elan_write_config(%struct.usb_ftdi* %20, i32 %23, i32 0, i32 -1)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %131

29:                                               ; preds = %19
  %30 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %9, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @ftdi_elan_read_config(%struct.usb_ftdi* %30, i32 %33, i32 0, i32* %8)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %131

39:                                               ; preds = %29
  %40 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %9, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @ftdi_elan_write_config(%struct.usb_ftdi* %40, i32 %43, i32 0, i32 -268435456)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %3, align 4
  br label %131

49:                                               ; preds = %39
  %50 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %9, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @ftdi_elan_read_config(%struct.usb_ftdi* %50, i32 %53, i32 0, i32* %8)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %3, align 4
  br label %131

59:                                               ; preds = %49
  store i32 12, i32* %9, align 4
  %60 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %9, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @ftdi_elan_read_config(%struct.usb_ftdi* %60, i32 %63, i32 0, i32* %6)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %3, align 4
  br label %131

69:                                               ; preds = %59
  %70 = load i32, i32* %6, align 4
  %71 = and i32 %70, -65281
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = or i32 %72, 5632
  store i32 %73, i32* %6, align 4
  %74 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %9, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @ftdi_elan_write_config(%struct.usb_ftdi* %74, i32 %77, i32 0, i32 %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %69
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %3, align 4
  br label %131

84:                                               ; preds = %69
  %85 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %9, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @ftdi_elan_read_config(%struct.usb_ftdi* %85, i32 %88, i32 0, i32* %8)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %84
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %3, align 4
  br label %131

94:                                               ; preds = %84
  store i32 4, i32* %9, align 4
  %95 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %9, align 4
  %98 = or i32 %96, %97
  %99 = call i32 @ftdi_elan_write_config(%struct.usb_ftdi* %95, i32 %98, i32 0, i32 6)
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %94
  %103 = load i32, i32* %7, align 4
  store i32 %103, i32* %3, align 4
  br label %131

104:                                              ; preds = %94
  %105 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %9, align 4
  %108 = or i32 %106, %107
  %109 = call i32 @ftdi_elan_read_config(%struct.usb_ftdi* %105, i32 %108, i32 0, i32* %8)
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %7, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %104
  %113 = load i32, i32* %7, align 4
  store i32 %113, i32* %3, align 4
  br label %131

114:                                              ; preds = %104
  store i32 0, i32* %9, align 4
  br label %115

115:                                              ; preds = %127, %114
  %116 = load i32, i32* %9, align 4
  %117 = icmp sle i32 %116, 84
  br i1 %117, label %118, label %130

118:                                              ; preds = %115
  %119 = load %struct.usb_ftdi*, %struct.usb_ftdi** %4, align 8
  %120 = load i32, i32* %9, align 4
  %121 = call i32 @ftdi_elan_read_pcimem(%struct.usb_ftdi* %119, i32 %120, i32 0, i32* %8)
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %7, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %118
  %125 = load i32, i32* %7, align 4
  store i32 %125, i32* %3, align 4
  br label %131

126:                                              ; preds = %118
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %9, align 4
  %129 = add nsw i32 %128, 4
  store i32 %129, i32* %9, align 4
  br label %115

130:                                              ; preds = %115
  store i32 0, i32* %3, align 4
  br label %131

131:                                              ; preds = %130, %124, %112, %102, %92, %82, %67, %57, %47, %37, %27, %17
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @ftdi_elan_write_reg(%struct.usb_ftdi*, i32) #1

declare dso_local i32 @ftdi_elan_write_config(%struct.usb_ftdi*, i32, i32, i32) #1

declare dso_local i32 @ftdi_elan_read_config(%struct.usb_ftdi*, i32, i32, i32*) #1

declare dso_local i32 @ftdi_elan_read_pcimem(%struct.usb_ftdi*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
