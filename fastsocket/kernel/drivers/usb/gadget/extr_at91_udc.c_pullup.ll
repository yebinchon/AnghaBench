; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_at91_udc.c_pullup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_at91_udc.c_pullup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at91_udc = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"%sactive\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@AT91_UDP_ICR = common dso_local global i32 0, align 4
@AT91_UDP_RXRSM = common dso_local global i32 0, align 4
@AT91_UDP_TXVC = common dso_local global i32 0, align 4
@AT91_UDP_TXVC_PUON = common dso_local global i32 0, align 4
@AT91_MATRIX_USBPUCR = common dso_local global i32 0, align 4
@AT91_MATRIX_USBPUCR_PUON = common dso_local global i32 0, align 4
@AT91_UDP_IDR = common dso_local global i32 0, align 4
@AT91_UDP_TXVC_TXVDIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.at91_udc*, i32)* @pullup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pullup(%struct.at91_udc* %0, i32 %1) #0 {
  %3 = alloca %struct.at91_udc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.at91_udc* %0, %struct.at91_udc** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.at91_udc*, %struct.at91_udc** %3, align 8
  %11 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %5, align 4
  %17 = load %struct.at91_udc*, %struct.at91_udc** %3, align 8
  %18 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.at91_udc*, %struct.at91_udc** %3, align 8
  %23 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21, %2
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %26, %21
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %32 = call i32 @DBG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %31)
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %89

35:                                               ; preds = %27
  %36 = load %struct.at91_udc*, %struct.at91_udc** %3, align 8
  %37 = call i32 @clk_on(%struct.at91_udc* %36)
  %38 = load %struct.at91_udc*, %struct.at91_udc** %3, align 8
  %39 = load i32, i32* @AT91_UDP_ICR, align 4
  %40 = load i32, i32* @AT91_UDP_RXRSM, align 4
  %41 = call i32 @at91_udp_write(%struct.at91_udc* %38, i32 %39, i32 %40)
  %42 = load %struct.at91_udc*, %struct.at91_udc** %3, align 8
  %43 = load i32, i32* @AT91_UDP_TXVC, align 4
  %44 = call i32 @at91_udp_write(%struct.at91_udc* %42, i32 %43, i32 0)
  %45 = call i64 (...) @cpu_is_at91rm9200()
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %35
  %48 = load %struct.at91_udc*, %struct.at91_udc** %3, align 8
  %49 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @gpio_set_value(i32 %51, i32 %52)
  br label %88

54:                                               ; preds = %35
  %55 = call i64 (...) @cpu_is_at91sam9260()
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %54
  %58 = call i64 (...) @cpu_is_at91sam9263()
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = call i64 (...) @cpu_is_at91sam9g20()
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %60, %57, %54
  %64 = load %struct.at91_udc*, %struct.at91_udc** %3, align 8
  %65 = load i32, i32* @AT91_UDP_TXVC, align 4
  %66 = call i32 @at91_udp_read(%struct.at91_udc* %64, i32 %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* @AT91_UDP_TXVC_PUON, align 4
  %68 = load i32, i32* %6, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %6, align 4
  %70 = load %struct.at91_udc*, %struct.at91_udc** %3, align 8
  %71 = load i32, i32* @AT91_UDP_TXVC, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @at91_udp_write(%struct.at91_udc* %70, i32 %71, i32 %72)
  br label %87

74:                                               ; preds = %60
  %75 = call i64 (...) @cpu_is_at91sam9261()
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %74
  %78 = load i32, i32* @AT91_MATRIX_USBPUCR, align 4
  %79 = call i32 @at91_sys_read(i32 %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* @AT91_MATRIX_USBPUCR_PUON, align 4
  %81 = load i32, i32* %7, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* @AT91_MATRIX_USBPUCR, align 4
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @at91_sys_write(i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %77, %74
  br label %87

87:                                               ; preds = %86, %63
  br label %88

88:                                               ; preds = %87, %47
  br label %151

89:                                               ; preds = %27
  %90 = load %struct.at91_udc*, %struct.at91_udc** %3, align 8
  %91 = call i32 @stop_activity(%struct.at91_udc* %90)
  %92 = load %struct.at91_udc*, %struct.at91_udc** %3, align 8
  %93 = load i32, i32* @AT91_UDP_IDR, align 4
  %94 = load i32, i32* @AT91_UDP_RXRSM, align 4
  %95 = call i32 @at91_udp_write(%struct.at91_udc* %92, i32 %93, i32 %94)
  %96 = load %struct.at91_udc*, %struct.at91_udc** %3, align 8
  %97 = load i32, i32* @AT91_UDP_TXVC, align 4
  %98 = load i32, i32* @AT91_UDP_TXVC_TXVDIS, align 4
  %99 = call i32 @at91_udp_write(%struct.at91_udc* %96, i32 %97, i32 %98)
  %100 = call i64 (...) @cpu_is_at91rm9200()
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %89
  %103 = load %struct.at91_udc*, %struct.at91_udc** %3, align 8
  %104 = getelementptr inbounds %struct.at91_udc, %struct.at91_udc* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %5, align 4
  %108 = icmp ne i32 %107, 0
  %109 = xor i1 %108, true
  %110 = zext i1 %109 to i32
  %111 = call i32 @gpio_set_value(i32 %106, i32 %110)
  br label %148

112:                                              ; preds = %89
  %113 = call i64 (...) @cpu_is_at91sam9260()
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %121, label %115

115:                                              ; preds = %112
  %116 = call i64 (...) @cpu_is_at91sam9263()
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %115
  %119 = call i64 (...) @cpu_is_at91sam9g20()
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %133

121:                                              ; preds = %118, %115, %112
  %122 = load %struct.at91_udc*, %struct.at91_udc** %3, align 8
  %123 = load i32, i32* @AT91_UDP_TXVC, align 4
  %124 = call i32 @at91_udp_read(%struct.at91_udc* %122, i32 %123)
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* @AT91_UDP_TXVC_PUON, align 4
  %126 = xor i32 %125, -1
  %127 = load i32, i32* %8, align 4
  %128 = and i32 %127, %126
  store i32 %128, i32* %8, align 4
  %129 = load %struct.at91_udc*, %struct.at91_udc** %3, align 8
  %130 = load i32, i32* @AT91_UDP_TXVC, align 4
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @at91_udp_write(%struct.at91_udc* %129, i32 %130, i32 %131)
  br label %147

133:                                              ; preds = %118
  %134 = call i64 (...) @cpu_is_at91sam9261()
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %133
  %137 = load i32, i32* @AT91_MATRIX_USBPUCR, align 4
  %138 = call i32 @at91_sys_read(i32 %137)
  store i32 %138, i32* %9, align 4
  %139 = load i32, i32* @AT91_MATRIX_USBPUCR_PUON, align 4
  %140 = xor i32 %139, -1
  %141 = load i32, i32* %9, align 4
  %142 = and i32 %141, %140
  store i32 %142, i32* %9, align 4
  %143 = load i32, i32* @AT91_MATRIX_USBPUCR, align 4
  %144 = load i32, i32* %9, align 4
  %145 = call i32 @at91_sys_write(i32 %143, i32 %144)
  br label %146

146:                                              ; preds = %136, %133
  br label %147

147:                                              ; preds = %146, %121
  br label %148

148:                                              ; preds = %147, %102
  %149 = load %struct.at91_udc*, %struct.at91_udc** %3, align 8
  %150 = call i32 @clk_off(%struct.at91_udc* %149)
  br label %151

151:                                              ; preds = %148, %88
  ret void
}

declare dso_local i32 @DBG(i8*, i8*) #1

declare dso_local i32 @clk_on(%struct.at91_udc*) #1

declare dso_local i32 @at91_udp_write(%struct.at91_udc*, i32, i32) #1

declare dso_local i64 @cpu_is_at91rm9200(...) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i64 @cpu_is_at91sam9260(...) #1

declare dso_local i64 @cpu_is_at91sam9263(...) #1

declare dso_local i64 @cpu_is_at91sam9g20(...) #1

declare dso_local i32 @at91_udp_read(%struct.at91_udc*, i32) #1

declare dso_local i64 @cpu_is_at91sam9261(...) #1

declare dso_local i32 @at91_sys_read(i32) #1

declare dso_local i32 @at91_sys_write(i32, i32) #1

declare dso_local i32 @stop_activity(%struct.at91_udc*) #1

declare dso_local i32 @clk_off(%struct.at91_udc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
