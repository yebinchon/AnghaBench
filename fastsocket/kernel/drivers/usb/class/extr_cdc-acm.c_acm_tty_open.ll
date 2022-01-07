; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_cdc-acm.c_acm_tty_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_cdc-acm.c_acm_tty_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acm = type { i32, i32, i32, %struct.TYPE_13__, i32, %struct.TYPE_12__*, %struct.TYPE_11__*, i32, i64, i32, %struct.TYPE_10__*, i32, %struct.TYPE_9__*, i32, i64 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.tty_struct = type { i64, %struct.acm*, i32 }
%struct.file = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Entering acm_tty_open.\00", align 1
@open_mutex = common dso_local global i32 0, align 4
@acm_table = common dso_local global %struct.acm** null, align 8
@TTY_NO_WRITE_SPLIT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"usb_submit_urb(ctrl irq) failed\00", align 1
@ACM_CTRL_DTR = common dso_local global i32 0, align 4
@ACM_CTRL_RTS = common dso_local global i32 0, align 4
@USB_CDC_CAP_LINE = common dso_local global i32 0, align 4
@ASYNCB_INITIALIZED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*)* @acm_tty_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acm_tty_open(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.acm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load i32, i32* @ENODEV, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %7, align 4
  %11 = call i32 @dbg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @mutex_lock(i32* @open_mutex)
  %13 = load %struct.acm**, %struct.acm*** @acm_table, align 8
  %14 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %15 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.acm*, %struct.acm** %13, i64 %16
  %18 = load %struct.acm*, %struct.acm** %17, align 8
  store %struct.acm* %18, %struct.acm** %6, align 8
  %19 = load %struct.acm*, %struct.acm** %6, align 8
  %20 = icmp ne %struct.acm* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.acm*, %struct.acm** %6, align 8
  %23 = getelementptr inbounds %struct.acm, %struct.acm* %22, i32 0, i32 14
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21, %2
  br label %174

27:                                               ; preds = %21
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* @TTY_NO_WRITE_SPLIT, align 4
  %30 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %31 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %30, i32 0, i32 2
  %32 = call i32 @set_bit(i32 %29, i32* %31)
  %33 = load %struct.acm*, %struct.acm** %6, align 8
  %34 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %35 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %34, i32 0, i32 1
  store %struct.acm* %33, %struct.acm** %35, align 8
  %36 = load %struct.acm*, %struct.acm** %6, align 8
  %37 = getelementptr inbounds %struct.acm, %struct.acm* %36, i32 0, i32 3
  %38 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %39 = call i32 @tty_port_tty_set(%struct.TYPE_13__* %37, %struct.tty_struct* %38)
  %40 = load %struct.acm*, %struct.acm** %6, align 8
  %41 = getelementptr inbounds %struct.acm, %struct.acm* %40, i32 0, i32 5
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %41, align 8
  %43 = call i64 @usb_autopm_get_interface(%struct.TYPE_12__* %42)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %28
  br label %195

46:                                               ; preds = %28
  %47 = load %struct.acm*, %struct.acm** %6, align 8
  %48 = getelementptr inbounds %struct.acm, %struct.acm* %47, i32 0, i32 5
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  store i32 1, i32* %50, align 4
  br label %51

51:                                               ; preds = %46
  %52 = load %struct.acm*, %struct.acm** %6, align 8
  %53 = getelementptr inbounds %struct.acm, %struct.acm* %52, i32 0, i32 4
  %54 = call i32 @mutex_lock(i32* %53)
  %55 = load %struct.acm*, %struct.acm** %6, align 8
  %56 = getelementptr inbounds %struct.acm, %struct.acm* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  %60 = icmp ne i32 %58, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %51
  %62 = load %struct.acm*, %struct.acm** %6, align 8
  %63 = getelementptr inbounds %struct.acm, %struct.acm* %62, i32 0, i32 5
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %63, align 8
  %65 = call i32 @usb_autopm_put_interface(%struct.TYPE_12__* %64)
  br label %170

66:                                               ; preds = %51
  %67 = load %struct.acm*, %struct.acm** %6, align 8
  %68 = getelementptr inbounds %struct.acm, %struct.acm* %67, i32 0, i32 14
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.acm*, %struct.acm** %6, align 8
  %71 = getelementptr inbounds %struct.acm, %struct.acm* %70, i32 0, i32 6
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  store i64 %69, i64* %73, align 8
  %74 = load %struct.acm*, %struct.acm** %6, align 8
  %75 = getelementptr inbounds %struct.acm, %struct.acm* %74, i32 0, i32 6
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = load i32, i32* @GFP_KERNEL, align 4
  %78 = call i64 @usb_submit_urb(%struct.TYPE_11__* %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %66
  %81 = call i32 @dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %182

82:                                               ; preds = %66
  %83 = load %struct.acm*, %struct.acm** %6, align 8
  %84 = load i32, i32* @ACM_CTRL_DTR, align 4
  %85 = load i32, i32* @ACM_CTRL_RTS, align 4
  %86 = or i32 %84, %85
  %87 = load %struct.acm*, %struct.acm** %6, align 8
  %88 = getelementptr inbounds %struct.acm, %struct.acm* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = call i64 @acm_set_control(%struct.acm* %83, i32 %86)
  %90 = icmp sgt i64 0, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %82
  %92 = load %struct.acm*, %struct.acm** %6, align 8
  %93 = getelementptr inbounds %struct.acm, %struct.acm* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @USB_CDC_CAP_LINE, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  br label %177

99:                                               ; preds = %91, %82
  %100 = load %struct.acm*, %struct.acm** %6, align 8
  %101 = getelementptr inbounds %struct.acm, %struct.acm* %100, i32 0, i32 5
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %101, align 8
  %103 = call i32 @usb_autopm_put_interface(%struct.TYPE_12__* %102)
  %104 = load %struct.acm*, %struct.acm** %6, align 8
  %105 = getelementptr inbounds %struct.acm, %struct.acm* %104, i32 0, i32 11
  %106 = call i32 @INIT_LIST_HEAD(i32* %105)
  %107 = load %struct.acm*, %struct.acm** %6, align 8
  %108 = getelementptr inbounds %struct.acm, %struct.acm* %107, i32 0, i32 9
  %109 = call i32 @INIT_LIST_HEAD(i32* %108)
  %110 = load %struct.acm*, %struct.acm** %6, align 8
  %111 = getelementptr inbounds %struct.acm, %struct.acm* %110, i32 0, i32 13
  %112 = call i32 @INIT_LIST_HEAD(i32* %111)
  store i32 0, i32* %8, align 4
  br label %113

113:                                              ; preds = %130, %99
  %114 = load i32, i32* %8, align 4
  %115 = load %struct.acm*, %struct.acm** %6, align 8
  %116 = getelementptr inbounds %struct.acm, %struct.acm* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = icmp slt i32 %114, %117
  br i1 %118, label %119, label %133

119:                                              ; preds = %113
  %120 = load %struct.acm*, %struct.acm** %6, align 8
  %121 = getelementptr inbounds %struct.acm, %struct.acm* %120, i32 0, i32 12
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %121, align 8
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = load %struct.acm*, %struct.acm** %6, align 8
  %128 = getelementptr inbounds %struct.acm, %struct.acm* %127, i32 0, i32 11
  %129 = call i32 @list_add(i32* %126, i32* %128)
  br label %130

130:                                              ; preds = %119
  %131 = load i32, i32* %8, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %8, align 4
  br label %113

133:                                              ; preds = %113
  store i32 0, i32* %8, align 4
  br label %134

134:                                              ; preds = %151, %133
  %135 = load i32, i32* %8, align 4
  %136 = load %struct.acm*, %struct.acm** %6, align 8
  %137 = getelementptr inbounds %struct.acm, %struct.acm* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = icmp slt i32 %135, %138
  br i1 %139, label %140, label %154

140:                                              ; preds = %134
  %141 = load %struct.acm*, %struct.acm** %6, align 8
  %142 = getelementptr inbounds %struct.acm, %struct.acm* %141, i32 0, i32 10
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %142, align 8
  %144 = load i32, i32* %8, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = load %struct.acm*, %struct.acm** %6, align 8
  %149 = getelementptr inbounds %struct.acm, %struct.acm* %148, i32 0, i32 9
  %150 = call i32 @list_add(i32* %147, i32* %149)
  br label %151

151:                                              ; preds = %140
  %152 = load i32, i32* %8, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %8, align 4
  br label %134

154:                                              ; preds = %134
  %155 = load %struct.acm*, %struct.acm** %6, align 8
  %156 = getelementptr inbounds %struct.acm, %struct.acm* %155, i32 0, i32 8
  store i64 0, i64* %156, align 8
  %157 = load i32, i32* @ASYNCB_INITIALIZED, align 4
  %158 = load %struct.acm*, %struct.acm** %6, align 8
  %159 = getelementptr inbounds %struct.acm, %struct.acm* %158, i32 0, i32 3
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 1
  %161 = call i32 @set_bit(i32 %157, i32* %160)
  %162 = load %struct.acm*, %struct.acm** %6, align 8
  %163 = getelementptr inbounds %struct.acm, %struct.acm* %162, i32 0, i32 3
  %164 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %165 = load %struct.file*, %struct.file** %5, align 8
  %166 = call i32 @tty_port_block_til_ready(%struct.TYPE_13__* %163, %struct.tty_struct* %164, %struct.file* %165)
  store i32 %166, i32* %7, align 4
  %167 = load %struct.acm*, %struct.acm** %6, align 8
  %168 = getelementptr inbounds %struct.acm, %struct.acm* %167, i32 0, i32 7
  %169 = call i32 @tasklet_schedule(i32* %168)
  br label %170

170:                                              ; preds = %154, %61
  %171 = load %struct.acm*, %struct.acm** %6, align 8
  %172 = getelementptr inbounds %struct.acm, %struct.acm* %171, i32 0, i32 4
  %173 = call i32 @mutex_unlock(i32* %172)
  br label %174

174:                                              ; preds = %170, %26
  %175 = call i32 @mutex_unlock(i32* @open_mutex)
  %176 = load i32, i32* %7, align 4
  store i32 %176, i32* %3, align 4
  br label %202

177:                                              ; preds = %98
  %178 = load %struct.acm*, %struct.acm** %6, align 8
  %179 = getelementptr inbounds %struct.acm, %struct.acm* %178, i32 0, i32 6
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %179, align 8
  %181 = call i32 @usb_kill_urb(%struct.TYPE_11__* %180)
  br label %182

182:                                              ; preds = %177, %80
  %183 = load %struct.acm*, %struct.acm** %6, align 8
  %184 = getelementptr inbounds %struct.acm, %struct.acm* %183, i32 0, i32 5
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %184, align 8
  %186 = call i32 @usb_autopm_put_interface(%struct.TYPE_12__* %185)
  %187 = load %struct.acm*, %struct.acm** %6, align 8
  %188 = getelementptr inbounds %struct.acm, %struct.acm* %187, i32 0, i32 3
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = add nsw i32 %190, -1
  store i32 %191, i32* %189, align 4
  %192 = load %struct.acm*, %struct.acm** %6, align 8
  %193 = getelementptr inbounds %struct.acm, %struct.acm* %192, i32 0, i32 4
  %194 = call i32 @mutex_unlock(i32* %193)
  br label %195

195:                                              ; preds = %182, %45
  %196 = call i32 @mutex_unlock(i32* @open_mutex)
  %197 = load %struct.acm*, %struct.acm** %6, align 8
  %198 = getelementptr inbounds %struct.acm, %struct.acm* %197, i32 0, i32 3
  %199 = call i32 @tty_port_tty_set(%struct.TYPE_13__* %198, %struct.tty_struct* null)
  %200 = load i32, i32* @EIO, align 4
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* %3, align 4
  br label %202

202:                                              ; preds = %195, %174
  %203 = load i32, i32* %3, align 4
  ret i32 %203
}

declare dso_local i32 @dbg(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @tty_port_tty_set(%struct.TYPE_13__*, %struct.tty_struct*) #1

declare dso_local i64 @usb_autopm_get_interface(%struct.TYPE_12__*) #1

declare dso_local i32 @usb_autopm_put_interface(%struct.TYPE_12__*) #1

declare dso_local i64 @usb_submit_urb(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @acm_set_control(%struct.acm*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @tty_port_block_til_ready(%struct.TYPE_13__*, %struct.tty_struct*, %struct.file*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @usb_kill_urb(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
