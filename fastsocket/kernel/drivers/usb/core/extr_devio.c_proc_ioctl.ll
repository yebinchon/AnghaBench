; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_devio.c_proc_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_devio.c_proc_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dev_state = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.usbdevfs_ioctl = type { i32, i32, i32 }
%struct.usb_interface = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.usb_driver = type { i32 (%struct.usb_interface*, i32, i8*)* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@_IOC_WRITE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@USB_STATE_CONFIGURED = common dso_local global i64 0, align 8
@EHOSTUNREACH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"disconnect by usbfs\0A\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@_IOC_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dev_state*, %struct.usbdevfs_ioctl*)* @proc_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_ioctl(%struct.dev_state* %0, %struct.usbdevfs_ioctl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dev_state*, align 8
  %5 = alloca %struct.usbdevfs_ioctl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_interface*, align 8
  %10 = alloca %struct.usb_driver*, align 8
  store %struct.dev_state* %0, %struct.dev_state** %4, align 8
  store %struct.usbdevfs_ioctl* %1, %struct.usbdevfs_ioctl** %5, align 8
  store i8* null, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store %struct.usb_interface* null, %struct.usb_interface** %9, align 8
  store %struct.usb_driver* null, %struct.usb_driver** %10, align 8
  %11 = load %struct.usbdevfs_ioctl*, %struct.usbdevfs_ioctl** %5, align 8
  %12 = getelementptr inbounds %struct.usbdevfs_ioctl, %struct.usbdevfs_ioctl* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @_IOC_SIZE(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %51

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i8* @kmalloc(i32 %17, i32 %18)
  store i8* %19, i8** %7, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %196

24:                                               ; preds = %16
  %25 = load %struct.usbdevfs_ioctl*, %struct.usbdevfs_ioctl** %5, align 8
  %26 = getelementptr inbounds %struct.usbdevfs_ioctl, %struct.usbdevfs_ioctl* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @_IOC_DIR(i32 %27)
  %29 = load i32, i32* @_IOC_WRITE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %24
  %33 = load i8*, i8** %7, align 8
  %34 = load %struct.usbdevfs_ioctl*, %struct.usbdevfs_ioctl** %5, align 8
  %35 = getelementptr inbounds %struct.usbdevfs_ioctl, %struct.usbdevfs_ioctl* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i64 @copy_from_user(i8* %33, i32 %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %32
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @kfree(i8* %41)
  %43 = load i32, i32* @EFAULT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %196

45:                                               ; preds = %32
  br label %50

46:                                               ; preds = %24
  %47 = load i8*, i8** %7, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @memset(i8* %47, i32 0, i32 %48)
  br label %50

50:                                               ; preds = %46, %45
  br label %51

51:                                               ; preds = %50, %2
  %52 = load %struct.dev_state*, %struct.dev_state** %4, align 8
  %53 = call i32 @connected(%struct.dev_state* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %51
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @kfree(i8* %56)
  %58 = load i32, i32* @ENODEV, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %196

60:                                               ; preds = %51
  %61 = load %struct.dev_state*, %struct.dev_state** %4, align 8
  %62 = getelementptr inbounds %struct.dev_state, %struct.dev_state* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @USB_STATE_CONFIGURED, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = load i32, i32* @EHOSTUNREACH, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %8, align 4
  br label %167

71:                                               ; preds = %60
  %72 = load %struct.dev_state*, %struct.dev_state** %4, align 8
  %73 = getelementptr inbounds %struct.dev_state, %struct.dev_state* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = load %struct.usbdevfs_ioctl*, %struct.usbdevfs_ioctl** %5, align 8
  %76 = getelementptr inbounds %struct.usbdevfs_ioctl, %struct.usbdevfs_ioctl* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call %struct.usb_interface* @usb_ifnum_to_if(%struct.TYPE_4__* %74, i32 %77)
  store %struct.usb_interface* %78, %struct.usb_interface** %9, align 8
  %79 = icmp ne %struct.usb_interface* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %71
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %8, align 4
  br label %166

83:                                               ; preds = %71
  %84 = load %struct.usbdevfs_ioctl*, %struct.usbdevfs_ioctl** %5, align 8
  %85 = getelementptr inbounds %struct.usbdevfs_ioctl, %struct.usbdevfs_ioctl* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  switch i32 %86, label %123 [
    i32 128, label %87
    i32 129, label %109
  ]

87:                                               ; preds = %83
  %88 = load %struct.usb_interface*, %struct.usb_interface** %9, align 8
  %89 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %87
  %94 = load %struct.usb_interface*, %struct.usb_interface** %9, align 8
  %95 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call %struct.usb_driver* @to_usb_driver(i32 %97)
  store %struct.usb_driver* %98, %struct.usb_driver** %10, align 8
  %99 = load %struct.usb_interface*, %struct.usb_interface** %9, align 8
  %100 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %99, i32 0, i32 0
  %101 = call i32 @dev_dbg(%struct.TYPE_5__* %100, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %102 = load %struct.usb_driver*, %struct.usb_driver** %10, align 8
  %103 = load %struct.usb_interface*, %struct.usb_interface** %9, align 8
  %104 = call i32 @usb_driver_release_interface(%struct.usb_driver* %102, %struct.usb_interface* %103)
  br label %108

105:                                              ; preds = %87
  %106 = load i32, i32* @ENODATA, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %8, align 4
  br label %108

108:                                              ; preds = %105, %93
  br label %165

109:                                              ; preds = %83
  %110 = load %struct.usb_interface*, %struct.usb_interface** %9, align 8
  %111 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %109
  %116 = load %struct.usb_interface*, %struct.usb_interface** %9, align 8
  %117 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %116, i32 0, i32 0
  %118 = call i32 @device_attach(%struct.TYPE_5__* %117)
  store i32 %118, i32* %8, align 4
  br label %122

119:                                              ; preds = %109
  %120 = load i32, i32* @EBUSY, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %8, align 4
  br label %122

122:                                              ; preds = %119, %115
  br label %165

123:                                              ; preds = %83
  %124 = load %struct.usb_interface*, %struct.usb_interface** %9, align 8
  %125 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %123
  %130 = load %struct.usb_interface*, %struct.usb_interface** %9, align 8
  %131 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call %struct.usb_driver* @to_usb_driver(i32 %133)
  store %struct.usb_driver* %134, %struct.usb_driver** %10, align 8
  br label %135

135:                                              ; preds = %129, %123
  %136 = load %struct.usb_driver*, %struct.usb_driver** %10, align 8
  %137 = icmp eq %struct.usb_driver* %136, null
  br i1 %137, label %143, label %138

138:                                              ; preds = %135
  %139 = load %struct.usb_driver*, %struct.usb_driver** %10, align 8
  %140 = getelementptr inbounds %struct.usb_driver, %struct.usb_driver* %139, i32 0, i32 0
  %141 = load i32 (%struct.usb_interface*, i32, i8*)*, i32 (%struct.usb_interface*, i32, i8*)** %140, align 8
  %142 = icmp eq i32 (%struct.usb_interface*, i32, i8*)* %141, null
  br i1 %142, label %143, label %146

143:                                              ; preds = %138, %135
  %144 = load i32, i32* @ENOTTY, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %8, align 4
  br label %164

146:                                              ; preds = %138
  %147 = load %struct.usb_driver*, %struct.usb_driver** %10, align 8
  %148 = getelementptr inbounds %struct.usb_driver, %struct.usb_driver* %147, i32 0, i32 0
  %149 = load i32 (%struct.usb_interface*, i32, i8*)*, i32 (%struct.usb_interface*, i32, i8*)** %148, align 8
  %150 = load %struct.usb_interface*, %struct.usb_interface** %9, align 8
  %151 = load %struct.usbdevfs_ioctl*, %struct.usbdevfs_ioctl** %5, align 8
  %152 = getelementptr inbounds %struct.usbdevfs_ioctl, %struct.usbdevfs_ioctl* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i8*, i8** %7, align 8
  %155 = call i32 %149(%struct.usb_interface* %150, i32 %153, i8* %154)
  store i32 %155, i32* %8, align 4
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* @ENOIOCTLCMD, align 4
  %158 = sub nsw i32 0, %157
  %159 = icmp eq i32 %156, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %146
  %161 = load i32, i32* @ENOTTY, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %8, align 4
  br label %163

163:                                              ; preds = %160, %146
  br label %164

164:                                              ; preds = %163, %143
  br label %165

165:                                              ; preds = %164, %122, %108
  br label %166

166:                                              ; preds = %165, %80
  br label %167

167:                                              ; preds = %166, %68
  %168 = load i32, i32* %8, align 4
  %169 = icmp sge i32 %168, 0
  br i1 %169, label %170, label %192

170:                                              ; preds = %167
  %171 = load %struct.usbdevfs_ioctl*, %struct.usbdevfs_ioctl** %5, align 8
  %172 = getelementptr inbounds %struct.usbdevfs_ioctl, %struct.usbdevfs_ioctl* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @_IOC_DIR(i32 %173)
  %175 = load i32, i32* @_IOC_READ, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %192

178:                                              ; preds = %170
  %179 = load i32, i32* %6, align 4
  %180 = icmp sgt i32 %179, 0
  br i1 %180, label %181, label %192

181:                                              ; preds = %178
  %182 = load %struct.usbdevfs_ioctl*, %struct.usbdevfs_ioctl** %5, align 8
  %183 = getelementptr inbounds %struct.usbdevfs_ioctl, %struct.usbdevfs_ioctl* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load i8*, i8** %7, align 8
  %186 = load i32, i32* %6, align 4
  %187 = call i64 @copy_to_user(i32 %184, i8* %185, i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %181
  %190 = load i32, i32* @EFAULT, align 4
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* %8, align 4
  br label %192

192:                                              ; preds = %189, %181, %178, %170, %167
  %193 = load i8*, i8** %7, align 8
  %194 = call i32 @kfree(i8* %193)
  %195 = load i32, i32* %8, align 4
  store i32 %195, i32* %3, align 4
  br label %196

196:                                              ; preds = %192, %55, %40, %21
  %197 = load i32, i32* %3, align 4
  ret i32 %197
}

declare dso_local i32 @_IOC_SIZE(i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @_IOC_DIR(i32) #1

declare dso_local i64 @copy_from_user(i8*, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @connected(%struct.dev_state*) #1

declare dso_local %struct.usb_interface* @usb_ifnum_to_if(%struct.TYPE_4__*, i32) #1

declare dso_local %struct.usb_driver* @to_usb_driver(i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @usb_driver_release_interface(%struct.usb_driver*, %struct.usb_interface*) #1

declare dso_local i32 @device_attach(%struct.TYPE_5__*) #1

declare dso_local i64 @copy_to_user(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
