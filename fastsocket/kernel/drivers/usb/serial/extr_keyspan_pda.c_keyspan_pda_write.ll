; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_keyspan_pda.c_keyspan_pda_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_keyspan_pda.c_keyspan_pda_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.usb_serial_port = type { i32, i32, %struct.TYPE_2__*, %struct.usb_serial*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.usb_serial = type { i32 }
%struct.keyspan_pda_private = type { i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"keyspan_pda_write(%d)\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c" write request of 0 bytes\00", align 1
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c" roomquery failed\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c" roomquery returned 0 bytes\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c" roomquery says %d\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c" usb_submit_urb(write bulk) failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.usb_serial_port*, i8*, i32)* @keyspan_pda_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keyspan_pda_write(%struct.tty_struct* %0, %struct.usb_serial_port* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tty_struct*, align 8
  %7 = alloca %struct.usb_serial_port*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.usb_serial*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.keyspan_pda_private*, align 8
  %14 = alloca i8, align 1
  store %struct.tty_struct* %0, %struct.tty_struct** %6, align 8
  store %struct.usb_serial_port* %1, %struct.usb_serial_port** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %16 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %15, i32 0, i32 3
  %17 = load %struct.usb_serial*, %struct.usb_serial** %16, align 8
  store %struct.usb_serial* %17, %struct.usb_serial** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %18 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %19 = call %struct.keyspan_pda_private* @usb_get_serial_port_data(%struct.usb_serial_port* %18)
  store %struct.keyspan_pda_private* %19, %struct.keyspan_pda_private** %13, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %9, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %174

26:                                               ; preds = %4
  %27 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %28 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %27, i32 0, i32 4
  %29 = call i32 @spin_lock_bh(i32* %28)
  %30 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %31 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %26
  %35 = load %struct.keyspan_pda_private*, %struct.keyspan_pda_private** %13, align 8
  %36 = getelementptr inbounds %struct.keyspan_pda_private, %struct.keyspan_pda_private* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34, %26
  %40 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %41 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %40, i32 0, i32 4
  %42 = call i32 @spin_unlock_bh(i32* %41)
  store i32 0, i32* %5, align 4
  br label %174

43:                                               ; preds = %34
  %44 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %45 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %47 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %46, i32 0, i32 4
  %48 = call i32 @spin_unlock_bh(i32* %47)
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %51 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp sgt i32 %49, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %43
  %55 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %56 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  br label %60

58:                                               ; preds = %43
  %59 = load i32, i32* %9, align 4
  br label %60

60:                                               ; preds = %58, %54
  %61 = phi i32 [ %57, %54 ], [ %59, %58 ]
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.keyspan_pda_private*, %struct.keyspan_pda_private** %13, align 8
  %64 = getelementptr inbounds %struct.keyspan_pda_private, %struct.keyspan_pda_private* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp sgt i32 %62, %65
  br i1 %66, label %67, label %103

67:                                               ; preds = %60
  %68 = call i32 (...) @in_interrupt()
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %103, label %70

70:                                               ; preds = %67
  %71 = load %struct.usb_serial*, %struct.usb_serial** %10, align 8
  %72 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.usb_serial*, %struct.usb_serial** %10, align 8
  %75 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @usb_rcvctrlpipe(i32 %76, i32 0)
  %78 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %79 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @USB_DIR_IN, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @usb_control_msg(i32 %73, i32 %77, i32 6, i32 %82, i32 0, i32 0, i8* %14, i32 1, i32 2000)
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %70
  %87 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %166

88:                                               ; preds = %70
  %89 = load i32, i32* %12, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %93 = load i32, i32* @EIO, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %12, align 4
  br label %166

95:                                               ; preds = %88
  %96 = load i8, i8* %14, align 1
  %97 = zext i8 %96 to i32
  %98 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %97)
  %99 = load i8, i8* %14, align 1
  %100 = zext i8 %99 to i32
  %101 = load %struct.keyspan_pda_private*, %struct.keyspan_pda_private** %13, align 8
  %102 = getelementptr inbounds %struct.keyspan_pda_private, %struct.keyspan_pda_private* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  br label %103

103:                                              ; preds = %95, %67, %60
  %104 = load i32, i32* %9, align 4
  %105 = load %struct.keyspan_pda_private*, %struct.keyspan_pda_private** %13, align 8
  %106 = getelementptr inbounds %struct.keyspan_pda_private, %struct.keyspan_pda_private* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp sgt i32 %104, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %103
  %110 = load %struct.keyspan_pda_private*, %struct.keyspan_pda_private** %13, align 8
  %111 = getelementptr inbounds %struct.keyspan_pda_private, %struct.keyspan_pda_private* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %9, align 4
  store i32 1, i32* %11, align 4
  br label %113

113:                                              ; preds = %109, %103
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %154

116:                                              ; preds = %113
  %117 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %118 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %117, i32 0, i32 2
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load i8*, i8** %8, align 8
  %123 = load i32, i32* %9, align 4
  %124 = call i32 @memcpy(i32 %121, i8* %122, i32 %123)
  %125 = load i32, i32* %9, align 4
  %126 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %127 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %126, i32 0, i32 2
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  store i32 %125, i32* %129, align 4
  %130 = load i32, i32* %9, align 4
  %131 = load %struct.keyspan_pda_private*, %struct.keyspan_pda_private** %13, align 8
  %132 = getelementptr inbounds %struct.keyspan_pda_private, %struct.keyspan_pda_private* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = sub nsw i32 %133, %130
  store i32 %134, i32* %132, align 4
  %135 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %136 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %135, i32 0, i32 3
  %137 = load %struct.usb_serial*, %struct.usb_serial** %136, align 8
  %138 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %141 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %140, i32 0, i32 2
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 1
  store i32 %139, i32* %143, align 4
  %144 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %145 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %144, i32 0, i32 2
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = load i32, i32* @GFP_ATOMIC, align 4
  %148 = call i32 @usb_submit_urb(%struct.TYPE_2__* %146, i32 %147)
  store i32 %148, i32* %12, align 4
  %149 = load i32, i32* %12, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %116
  %152 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  br label %166

153:                                              ; preds = %116
  br label %155

154:                                              ; preds = %113
  store i32 1, i32* %11, align 4
  br label %155

155:                                              ; preds = %154, %153
  %156 = load i32, i32* %11, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %155
  %159 = load %struct.keyspan_pda_private*, %struct.keyspan_pda_private** %13, align 8
  %160 = getelementptr inbounds %struct.keyspan_pda_private, %struct.keyspan_pda_private* %159, i32 0, i32 0
  store i32 1, i32* %160, align 4
  %161 = load %struct.keyspan_pda_private*, %struct.keyspan_pda_private** %13, align 8
  %162 = getelementptr inbounds %struct.keyspan_pda_private, %struct.keyspan_pda_private* %161, i32 0, i32 2
  %163 = call i32 @schedule_work(i32* %162)
  br label %164

164:                                              ; preds = %158, %155
  %165 = load i32, i32* %9, align 4
  store i32 %165, i32* %12, align 4
  br label %166

166:                                              ; preds = %164, %151, %91, %86
  %167 = load i32, i32* %12, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %166
  %170 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %171 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %170, i32 0, i32 0
  store i32 0, i32* %171, align 8
  br label %172

172:                                              ; preds = %169, %166
  %173 = load i32, i32* %12, align 4
  store i32 %173, i32* %5, align 4
  br label %174

174:                                              ; preds = %172, %39, %24
  %175 = load i32, i32* %5, align 4
  ret i32 %175
}

declare dso_local %struct.keyspan_pda_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @dbg(i8*, ...) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
