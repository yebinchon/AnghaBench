; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-driver.c_go7007_load_encoder.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-driver.c_go7007_load_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.go7007 = type { i32 }
%struct.firmware = type { i32, i64 }

@__const.go7007_load_encoder.fw_name = private unnamed_addr constant [13 x i8] c"go7007fw.bin\00", align 1
@.str = private unnamed_addr constant [40 x i8] c"unable to load firmware from file \22%s\22\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"WISGO7007FW\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"file \22%s\22 does not appear to be go7007 firmware\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"unable to allocate %d bytes for firmware transfer\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"error transferring firmware\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.go7007*)* @go7007_load_encoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @go7007_load_encoder(%struct.go7007* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.go7007*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca [13 x i8], align 1
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.go7007* %0, %struct.go7007** %3, align 8
  %11 = bitcast [13 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 getelementptr inbounds ([13 x i8], [13 x i8]* @__const.go7007_load_encoder.fw_name, i32 0, i32 0), i64 13, i1 false)
  store i32 0, i32* %8, align 4
  %12 = getelementptr inbounds [13 x i8], [13 x i8]* %5, i64 0, i64 0
  %13 = load %struct.go7007*, %struct.go7007** %3, align 8
  %14 = getelementptr inbounds %struct.go7007, %struct.go7007* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @request_firmware(%struct.firmware** %4, i8* %12, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.go7007*, %struct.go7007** %3, align 8
  %20 = getelementptr inbounds [13 x i8], [13 x i8]* %5, i64 0, i64 0
  %21 = call i32 (%struct.go7007*, i8*, ...) @v4l2_err(%struct.go7007* %19, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %20)
  store i32 -1, i32* %2, align 4
  br label %89

22:                                               ; preds = %1
  %23 = load %struct.firmware*, %struct.firmware** %4, align 8
  %24 = getelementptr inbounds %struct.firmware, %struct.firmware* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %25, 16
  br i1 %26, label %33, label %27

27:                                               ; preds = %22
  %28 = load %struct.firmware*, %struct.firmware** %4, align 8
  %29 = getelementptr inbounds %struct.firmware, %struct.firmware* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @memcmp(i64 %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 11)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %27, %22
  %34 = load %struct.go7007*, %struct.go7007** %3, align 8
  %35 = getelementptr inbounds [13 x i8], [13 x i8]* %5, i64 0, i64 0
  %36 = call i32 (%struct.go7007*, i8*, ...) @v4l2_err(%struct.go7007* %34, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i8* %35)
  %37 = load %struct.firmware*, %struct.firmware** %4, align 8
  %38 = call i32 @release_firmware(%struct.firmware* %37)
  store i32 -1, i32* %2, align 4
  br label %89

39:                                               ; preds = %27
  %40 = load %struct.firmware*, %struct.firmware** %4, align 8
  %41 = getelementptr inbounds %struct.firmware, %struct.firmware* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sub nsw i32 %42, 16
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call i8* @kmalloc(i32 %44, i32 %45)
  store i8* %46, i8** %6, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %39
  %50 = load %struct.go7007*, %struct.go7007** %3, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 (%struct.go7007*, i8*, ...) @v4l2_err(%struct.go7007* %50, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  %53 = load %struct.firmware*, %struct.firmware** %4, align 8
  %54 = call i32 @release_firmware(%struct.firmware* %53)
  store i32 -1, i32* %2, align 4
  br label %89

55:                                               ; preds = %39
  %56 = load i8*, i8** %6, align 8
  %57 = load %struct.firmware*, %struct.firmware** %4, align 8
  %58 = getelementptr inbounds %struct.firmware, %struct.firmware* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, 16
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @memcpy(i8* %56, i64 %60, i32 %61)
  %63 = load %struct.firmware*, %struct.firmware** %4, align 8
  %64 = call i32 @release_firmware(%struct.firmware* %63)
  %65 = load %struct.go7007*, %struct.go7007** %3, align 8
  %66 = call i64 @go7007_interface_reset(%struct.go7007* %65)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %82, label %68

68:                                               ; preds = %55
  %69 = load %struct.go7007*, %struct.go7007** %3, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i64 @go7007_send_firmware(%struct.go7007* %69, i8* %70, i32 %71)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %68
  %75 = load %struct.go7007*, %struct.go7007** %3, align 8
  %76 = call i64 @go7007_read_interrupt(%struct.go7007* %75, i32* %9, i32* %10)
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* %9, align 4
  %80 = and i32 %79, -2
  %81 = icmp ne i32 %80, 23130
  br i1 %81, label %82, label %85

82:                                               ; preds = %78, %74, %68, %55
  %83 = load %struct.go7007*, %struct.go7007** %3, align 8
  %84 = call i32 (%struct.go7007*, i8*, ...) @v4l2_err(%struct.go7007* %83, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %85

85:                                               ; preds = %82, %78
  %86 = load i8*, i8** %6, align 8
  %87 = call i32 @kfree(i8* %86)
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %85, %49, %33, %18
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @request_firmware(%struct.firmware**, i8*, i32) #2

declare dso_local i32 @v4l2_err(%struct.go7007*, i8*, ...) #2

declare dso_local i64 @memcmp(i64, i8*, i32) #2

declare dso_local i32 @release_firmware(%struct.firmware*) #2

declare dso_local i8* @kmalloc(i32, i32) #2

declare dso_local i32 @memcpy(i8*, i64, i32) #2

declare dso_local i64 @go7007_interface_reset(%struct.go7007*) #2

declare dso_local i64 @go7007_send_firmware(%struct.go7007*, i8*, i32) #2

declare dso_local i64 @go7007_read_interrupt(%struct.go7007*, i32*, i32*) #2

declare dso_local i32 @kfree(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
