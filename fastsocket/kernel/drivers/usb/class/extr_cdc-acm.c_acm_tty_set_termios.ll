; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_cdc-acm.c_acm_tty_set_termios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_cdc-acm.c_acm_tty_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.ktermios*, %struct.acm* }
%struct.acm = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.ktermios = type { i32 }
%struct.usb_cdc_line_coding = type { i32, i32, i32, i64 }

@CSTOPB = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@CMSPAR = common dso_local global i32 0, align 4
@acm_tty_size = common dso_local global i32* null, align 8
@CSIZE = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@ACM_CTRL_DTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"set line: %d %d %d %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.ktermios*)* @acm_tty_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acm_tty_set_termios(%struct.tty_struct* %0, %struct.ktermios* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.ktermios*, align 8
  %5 = alloca %struct.acm*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca %struct.usb_cdc_line_coding, align 8
  %8 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.ktermios* %1, %struct.ktermios** %4, align 8
  %9 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 1
  %11 = load %struct.acm*, %struct.acm** %10, align 8
  store %struct.acm* %11, %struct.acm** %5, align 8
  %12 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %13 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %12, i32 0, i32 0
  %14 = load %struct.ktermios*, %struct.ktermios** %13, align 8
  store %struct.ktermios* %14, %struct.ktermios** %6, align 8
  %15 = load %struct.acm*, %struct.acm** %5, align 8
  %16 = getelementptr inbounds %struct.acm, %struct.acm* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = load %struct.acm*, %struct.acm** %5, align 8
  %19 = call i32 @ACM_READY(%struct.acm* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %136

22:                                               ; preds = %2
  %23 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %24 = call i32 @tty_get_baud_rate(%struct.tty_struct* %23)
  %25 = call i64 @cpu_to_le32(i32 %24)
  %26 = getelementptr inbounds %struct.usb_cdc_line_coding, %struct.usb_cdc_line_coding* %7, i32 0, i32 3
  store i64 %25, i64* %26, align 8
  %27 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %28 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @CSTOPB, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 2, i32 0
  %35 = getelementptr inbounds %struct.usb_cdc_line_coding, %struct.usb_cdc_line_coding* %7, i32 0, i32 0
  store i32 %34, i32* %35, align 8
  %36 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %37 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @PARENB, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %22
  %43 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %44 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @PARODD, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 1, i32 2
  %51 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %52 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @CMSPAR, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 2, i32 0
  %59 = add nsw i32 %50, %58
  br label %61

60:                                               ; preds = %22
  br label %61

61:                                               ; preds = %60, %42
  %62 = phi i32 [ %59, %42 ], [ 0, %60 ]
  %63 = getelementptr inbounds %struct.usb_cdc_line_coding, %struct.usb_cdc_line_coding* %7, i32 0, i32 1
  store i32 %62, i32* %63, align 4
  %64 = load i32*, i32** @acm_tty_size, align 8
  %65 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %66 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @CSIZE, align 4
  %69 = and i32 %67, %68
  %70 = ashr i32 %69, 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %64, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.usb_cdc_line_coding, %struct.usb_cdc_line_coding* %7, i32 0, i32 2
  store i32 %73, i32* %74, align 8
  %75 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %76 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @CLOCAL, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  %81 = zext i1 %80 to i32
  %82 = load %struct.acm*, %struct.acm** %5, align 8
  %83 = getelementptr inbounds %struct.acm, %struct.acm* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = getelementptr inbounds %struct.usb_cdc_line_coding, %struct.usb_cdc_line_coding* %7, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %97, label %87

87:                                               ; preds = %61
  %88 = load %struct.acm*, %struct.acm** %5, align 8
  %89 = getelementptr inbounds %struct.acm, %struct.acm* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.usb_cdc_line_coding, %struct.usb_cdc_line_coding* %7, i32 0, i32 3
  store i64 %91, i64* %92, align 8
  %93 = load i32, i32* @ACM_CTRL_DTR, align 4
  %94 = xor i32 %93, -1
  %95 = load i32, i32* %8, align 4
  %96 = and i32 %95, %94
  store i32 %96, i32* %8, align 4
  br label %101

97:                                               ; preds = %61
  %98 = load i32, i32* @ACM_CTRL_DTR, align 4
  %99 = load i32, i32* %8, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %8, align 4
  br label %101

101:                                              ; preds = %97, %87
  %102 = load i32, i32* %8, align 4
  %103 = load %struct.acm*, %struct.acm** %5, align 8
  %104 = getelementptr inbounds %struct.acm, %struct.acm* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %102, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %101
  %108 = load %struct.acm*, %struct.acm** %5, align 8
  %109 = load i32, i32* %8, align 4
  %110 = load %struct.acm*, %struct.acm** %5, align 8
  %111 = getelementptr inbounds %struct.acm, %struct.acm* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  %112 = call i32 @acm_set_control(%struct.acm* %108, i32 %109)
  br label %113

113:                                              ; preds = %107, %101
  %114 = load %struct.acm*, %struct.acm** %5, align 8
  %115 = getelementptr inbounds %struct.acm, %struct.acm* %114, i32 0, i32 2
  %116 = call i64 @memcmp(%struct.TYPE_4__* %115, %struct.usb_cdc_line_coding* %7, i32 24)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %136

118:                                              ; preds = %113
  %119 = load %struct.acm*, %struct.acm** %5, align 8
  %120 = getelementptr inbounds %struct.acm, %struct.acm* %119, i32 0, i32 2
  %121 = call i32 @memcpy(%struct.TYPE_4__* %120, %struct.usb_cdc_line_coding* %7, i32 24)
  %122 = getelementptr inbounds %struct.usb_cdc_line_coding, %struct.usb_cdc_line_coding* %7, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @le32_to_cpu(i64 %123)
  %125 = getelementptr inbounds %struct.usb_cdc_line_coding, %struct.usb_cdc_line_coding* %7, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = getelementptr inbounds %struct.usb_cdc_line_coding, %struct.usb_cdc_line_coding* %7, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = getelementptr inbounds %struct.usb_cdc_line_coding, %struct.usb_cdc_line_coding* %7, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %124, i32 %126, i32 %128, i32 %130)
  %132 = load %struct.acm*, %struct.acm** %5, align 8
  %133 = load %struct.acm*, %struct.acm** %5, align 8
  %134 = getelementptr inbounds %struct.acm, %struct.acm* %133, i32 0, i32 2
  %135 = call i32 @acm_set_line(%struct.acm* %132, %struct.TYPE_4__* %134)
  br label %136

136:                                              ; preds = %21, %118, %113
  ret void
}

declare dso_local i32 @ACM_READY(%struct.acm*) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @tty_get_baud_rate(%struct.tty_struct*) #1

declare dso_local i32 @acm_set_control(%struct.acm*, i32) #1

declare dso_local i64 @memcmp(%struct.TYPE_4__*, %struct.usb_cdc_line_coding*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_4__*, %struct.usb_cdc_line_coding*, i32) #1

declare dso_local i32 @dbg(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @acm_set_line(%struct.acm*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
