; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_stuck_waiting.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_stuck_waiting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ftdi = type { i8*, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c" %02X\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" ..\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"only one byte flushed from FTDI = %02X\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"STATUS ERROR retry limit reached\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"TIMED OUT retry limit reached\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"empty packet retry limit reached\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"error = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ftdi*)* @ftdi_elan_stuck_waiting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftdi_elan_stuck_waiting(%struct.usb_ftdi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_ftdi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [94 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  store %struct.usb_ftdi* %0, %struct.usb_ftdi** %3, align 8
  store i32 10, i32* %4, align 4
  store i32 5, i32* %5, align 4
  store i32 50, i32* %6, align 4
  br label %18

18:                                               ; preds = %165, %149, %130, %106, %79, %1
  store i32 0, i32* %7, align 4
  %19 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %20 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %23 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %26 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @usb_rcvbulkpipe(%struct.TYPE_3__* %24, i32 %27)
  %29 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %30 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %33 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @usb_bulk_msg(%struct.TYPE_3__* %21, i32 %28, i8* %31, i32 %34, i32* %7, i32 1000)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp sgt i32 %36, 2
  br i1 %37, label %38, label %80

38:                                               ; preds = %18
  %39 = getelementptr inbounds [94 x i8], [94 x i8]* %9, i64 0, i64 0
  store i8* %39, i8** %10, align 8
  store i32 31, i32* %11, align 4
  %40 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %41 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %12, align 8
  store i32 0, i32* %13, align 4
  %43 = getelementptr inbounds [94 x i8], [94 x i8]* %9, i64 0, i64 0
  store i8 0, i8* %43, align 16
  br label %44

44:                                               ; preds = %76, %38
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %7, align 4
  %47 = icmp sgt i32 %45, 0
  br i1 %47, label %48, label %79

48:                                               ; preds = %44
  %49 = load i8*, i8** %12, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %12, align 8
  %51 = load i8, i8* %49, align 1
  store i8 %51, i8* %14, align 1
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %48
  %56 = load i8*, i8** %10, align 8
  %57 = load i8, i8* %14, align 1
  %58 = sext i8 %57 to i32
  %59 = and i32 255, %58
  %60 = call i32 (i8*, i8*, ...) @sprintf(i8* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load i8*, i8** %10, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8* %63, i8** %10, align 8
  br label %76

64:                                               ; preds = %48
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %75

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8
  %71 = call i32 (i8*, i8*, ...) @sprintf(i8* %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i8*, i8** %10, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8* %74, i8** %10, align 8
  br label %75

75:                                               ; preds = %69, %68
  br label %76

76:                                               ; preds = %75, %55
  %77 = load i32, i32* %13, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %13, align 4
  br label %44

79:                                               ; preds = %44
  br label %18

80:                                               ; preds = %18
  %81 = load i32, i32* %7, align 4
  %82 = icmp sgt i32 %81, 1
  br i1 %82, label %83, label %111

83:                                               ; preds = %80
  %84 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %85 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 0
  %88 = load i8, i8* %87, align 1
  store i8 %88, i8* %15, align 1
  %89 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %90 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 1
  %93 = load i8, i8* %92, align 1
  store i8 %93, i8* %16, align 1
  %94 = load i8, i8* %15, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 49
  br i1 %96, label %97, label %102

97:                                               ; preds = %83
  %98 = load i8, i8* %16, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 96
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  store i32 0, i32* %2, align 4
  br label %183

102:                                              ; preds = %97, %83
  %103 = load i32, i32* %6, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %6, align 4
  %105 = icmp sgt i32 %103, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = call i32 @msleep(i32 5)
  br label %18

108:                                              ; preds = %102
  %109 = load i32, i32* @EFAULT, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %2, align 4
  br label %183

111:                                              ; preds = %80
  %112 = load i32, i32* %7, align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %140

114:                                              ; preds = %111
  %115 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %116 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 0
  %119 = load i8, i8* %118, align 1
  store i8 %119, i8* %17, align 1
  %120 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %121 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %120, i32 0, i32 1
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = load i8, i8* %17, align 1
  %125 = sext i8 %124 to i32
  %126 = call i32 (i32*, i8*, ...) @dev_err(i32* %123, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* %6, align 4
  %128 = add nsw i32 %127, -1
  store i32 %128, i32* %6, align 4
  %129 = icmp sgt i32 %127, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %114
  %131 = call i32 @msleep(i32 5)
  br label %18

132:                                              ; preds = %114
  %133 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %134 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %133, i32 0, i32 1
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = call i32 (i32*, i8*, ...) @dev_err(i32* %136, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %138 = load i32, i32* @EFAULT, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %2, align 4
  br label %183

140:                                              ; preds = %111
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* @ETIMEDOUT, align 4
  %143 = sub nsw i32 0, %142
  %144 = icmp eq i32 %141, %143
  br i1 %144, label %145, label %158

145:                                              ; preds = %140
  %146 = load i32, i32* %5, align 4
  %147 = add nsw i32 %146, -1
  store i32 %147, i32* %5, align 4
  %148 = icmp sgt i32 %146, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %145
  br label %18

150:                                              ; preds = %145
  %151 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %152 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %151, i32 0, i32 1
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 0
  %155 = call i32 (i32*, i8*, ...) @dev_err(i32* %154, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %156 = load i32, i32* @ENOMEM, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %2, align 4
  br label %183

158:                                              ; preds = %140
  %159 = load i32, i32* %8, align 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %174

161:                                              ; preds = %158
  %162 = load i32, i32* %4, align 4
  %163 = add nsw i32 %162, -1
  store i32 %163, i32* %4, align 4
  %164 = icmp sgt i32 %162, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %161
  br label %18

166:                                              ; preds = %161
  %167 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %168 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %167, i32 0, i32 1
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 0
  %171 = call i32 (i32*, i8*, ...) @dev_err(i32* %170, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %172 = load i32, i32* @ENOMEM, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %2, align 4
  br label %183

174:                                              ; preds = %158
  %175 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %176 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %175, i32 0, i32 1
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 0
  %179 = load i32, i32* %8, align 4
  %180 = call i32 (i32*, i8*, ...) @dev_err(i32* %178, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %179)
  %181 = load i32, i32* @ENOMEM, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %2, align 4
  br label %183

183:                                              ; preds = %174, %166, %150, %132, %108, %101
  %184 = load i32, i32* %2, align 4
  ret i32 %184
}

declare dso_local i32 @usb_bulk_msg(%struct.TYPE_3__*, i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
