; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_command_engine.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_command_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ftdi = type { i32, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.urb = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"could not get a urb to write %d commands totaling %d bytes to the Uxxx\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [75 x i8] c"could not get a buffer to write %d commands totaling %d bytes to the Uxxx\0A\00", align 1
@ftdi_elan_write_bulk_callback = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c" %02X\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" ..\00", align 1
@.str.4 = private unnamed_addr constant [79 x i8] c"failed %d to submit urb %p to write %d commands totaling %d bytes to the Uxxx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ftdi*)* @ftdi_elan_command_engine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftdi_elan_command_engine(%struct.usb_ftdi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_ftdi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.urb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [124 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.usb_ftdi* %0, %struct.usb_ftdi** %3, align 8
  %15 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %16 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %19 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %17, %20
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %172

25:                                               ; preds = %1
  %26 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @ftdi_elan_total_command_size(%struct.usb_ftdi* %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %29)
  store %struct.urb* %30, %struct.urb** %8, align 8
  %31 = load %struct.urb*, %struct.urb** %8, align 8
  %32 = icmp ne %struct.urb* %31, null
  br i1 %32, label %43, label %33

33:                                               ; preds = %25
  %34 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %35 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %34, i32 0, i32 2
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %37, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %172

43:                                               ; preds = %25
  %44 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %45 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %44, i32 0, i32 2
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = load %struct.urb*, %struct.urb** %8, align 8
  %50 = getelementptr inbounds %struct.urb, %struct.urb* %49, i32 0, i32 0
  %51 = call i8* @usb_buffer_alloc(%struct.TYPE_5__* %46, i32 %47, i32 %48, i32* %50)
  store i8* %51, i8** %5, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %66, label %54

54:                                               ; preds = %43
  %55 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %56 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %55, i32 0, i32 2
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %58, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %60)
  %62 = load %struct.urb*, %struct.urb** %8, align 8
  %63 = call i32 @usb_free_urb(%struct.urb* %62)
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %172

66:                                               ; preds = %43
  %67 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @fill_buffer_with_all_queued_commands(%struct.usb_ftdi* %67, i8* %68, i32 %69, i32 %70)
  store i32 %71, i32* %6, align 4
  %72 = load %struct.urb*, %struct.urb** %8, align 8
  %73 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %74 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %73, i32 0, i32 2
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %77 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %76, i32 0, i32 2
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %80 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @usb_sndbulkpipe(%struct.TYPE_5__* %78, i32 %81)
  %83 = load i8*, i8** %5, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @ftdi_elan_write_bulk_callback, align 4
  %86 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %87 = call i32 @usb_fill_bulk_urb(%struct.urb* %72, %struct.TYPE_5__* %75, i32 %82, i8* %83, i32 %84, i32 %85, %struct.usb_ftdi* %86)
  %88 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %89 = load %struct.urb*, %struct.urb** %8, align 8
  %90 = getelementptr inbounds %struct.urb, %struct.urb* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %134

95:                                               ; preds = %66
  %96 = getelementptr inbounds [124 x i8], [124 x i8]* %10, i64 0, i64 0
  store i8* %96, i8** %11, align 8
  %97 = load i32, i32* %7, align 4
  store i32 %97, i32* %12, align 4
  %98 = load i8*, i8** %5, align 8
  store i8* %98, i8** %13, align 8
  store i32 41, i32* %14, align 4
  %99 = getelementptr inbounds [124 x i8], [124 x i8]* %10, i64 0, i64 0
  store i8 0, i8* %99, align 16
  br label %100

100:                                              ; preds = %132, %95
  %101 = load i32, i32* %14, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %14, align 4
  %103 = icmp sgt i32 %101, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %12, align 4
  %107 = icmp sgt i32 %105, 0
  br label %108

108:                                              ; preds = %104, %100
  %109 = phi i1 [ false, %100 ], [ %107, %104 ]
  br i1 %109, label %110, label %133

110:                                              ; preds = %108
  %111 = load i32, i32* %14, align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %110
  %114 = load i32, i32* %12, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %113, %110
  %117 = load i8*, i8** %11, align 8
  %118 = load i8*, i8** %13, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %13, align 8
  %120 = load i8, i8* %118, align 1
  %121 = sext i8 %120 to i32
  %122 = call i32 (i8*, i8*, ...) @sprintf(i8* %117, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %121)
  %123 = load i8*, i8** %11, align 8
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds i8, i8* %123, i64 %124
  store i8* %125, i8** %11, align 8
  br label %132

126:                                              ; preds = %113
  %127 = load i8*, i8** %11, align 8
  %128 = call i32 (i8*, i8*, ...) @sprintf(i8* %127, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %129 = load i8*, i8** %11, align 8
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds i8, i8* %129, i64 %130
  store i8* %131, i8** %11, align 8
  br label %132

132:                                              ; preds = %126, %116
  br label %100

133:                                              ; preds = %108
  br label %134

134:                                              ; preds = %133, %66
  %135 = load %struct.urb*, %struct.urb** %8, align 8
  %136 = load i32, i32* @GFP_KERNEL, align 4
  %137 = call i32 @usb_submit_urb(%struct.urb* %135, i32 %136)
  store i32 %137, i32* %4, align 4
  %138 = load i32, i32* %4, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %162

140:                                              ; preds = %134
  %141 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %142 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %141, i32 0, i32 2
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = load i32, i32* %4, align 4
  %146 = load %struct.urb*, %struct.urb** %8, align 8
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* %7, align 4
  %149 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %144, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.4, i64 0, i64 0), i32 %145, %struct.urb* %146, i32 %147, i32 %148)
  %150 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %151 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %150, i32 0, i32 2
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %151, align 8
  %153 = load i32, i32* %7, align 4
  %154 = load i8*, i8** %5, align 8
  %155 = load %struct.urb*, %struct.urb** %8, align 8
  %156 = getelementptr inbounds %struct.urb, %struct.urb* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @usb_buffer_free(%struct.TYPE_5__* %152, i32 %153, i8* %154, i32 %157)
  %159 = load %struct.urb*, %struct.urb** %8, align 8
  %160 = call i32 @usb_free_urb(%struct.urb* %159)
  %161 = load i32, i32* %4, align 4
  store i32 %161, i32* %2, align 4
  br label %172

162:                                              ; preds = %134
  %163 = load %struct.urb*, %struct.urb** %8, align 8
  %164 = call i32 @usb_free_urb(%struct.urb* %163)
  %165 = load i32, i32* %9, align 4
  %166 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %167 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %168, %165
  store i32 %169, i32* %167, align 4
  %170 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %171 = call i32 @ftdi_elan_kick_respond_queue(%struct.usb_ftdi* %170)
  store i32 0, i32* %2, align 4
  br label %172

172:                                              ; preds = %162, %140, %54, %33, %24
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local i32 @ftdi_elan_total_command_size(%struct.usb_ftdi*, i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i8* @usb_buffer_alloc(%struct.TYPE_5__*, i32, i32, i32*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @fill_buffer_with_all_queued_commands(%struct.usb_ftdi*, i8*, i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, %struct.TYPE_5__*, i32, i8*, i32, i32, %struct.usb_ftdi*) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @usb_buffer_free(%struct.TYPE_5__*, i32, i8*, i32) #1

declare dso_local i32 @ftdi_elan_kick_respond_queue(%struct.usb_ftdi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
