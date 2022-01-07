; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenbus/extr_xenbus_client.c_xenbus_va_dev_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenbus/extr_xenbus_client.c_xenbus_va_dev_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%i \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"failed to write error node for %s (%s)\0A\00", align 1
@XBT_NIL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@PRINTF_BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xenbus_device*, i32, i8*, i32)* @xenbus_va_dev_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xenbus_va_dev_error(%struct.xenbus_device* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.xenbus_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.xenbus_device* %0, %struct.xenbus_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8* @kmalloc(i32 4096, i32 %13)
  store i8* %14, i8** %11, align 8
  %15 = load i8*, i8** %11, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %73

18:                                               ; preds = %4
  %19 = load i8*, i8** %11, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sub nsw i32 0, %20
  %22 = call i32 @sprintf(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i8*, i8** %11, align 8
  %24 = load i32, i32* %10, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i32, i32* %10, align 4
  %28 = sub i32 4096, %27
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @vsnprintf(i8* %26, i32 %28, i8* %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %9, align 4
  %34 = add i32 %32, %33
  %35 = icmp ugt i32 %34, 4095
  %36 = zext i1 %35 to i32
  %37 = call i32 @BUG_ON(i32 %36)
  %38 = load %struct.xenbus_device*, %struct.xenbus_device** %5, align 8
  %39 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %38, i32 0, i32 1
  %40 = load i8*, i8** %11, align 8
  %41 = call i32 (i32*, i8*, i8*, ...) @dev_err(i32* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  %42 = load %struct.xenbus_device*, %struct.xenbus_device** %5, align 8
  %43 = call i8* @error_path(%struct.xenbus_device* %42)
  store i8* %43, i8** %12, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %56

46:                                               ; preds = %18
  %47 = load %struct.xenbus_device*, %struct.xenbus_device** %5, align 8
  %48 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %47, i32 0, i32 1
  %49 = load %struct.xenbus_device*, %struct.xenbus_device** %5, align 8
  %50 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = inttoptr i64 %52 to i8*
  %54 = load i8*, i8** %11, align 8
  %55 = call i32 (i32*, i8*, i8*, ...) @dev_err(i32* %48, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %53, i8* %54)
  br label %73

56:                                               ; preds = %18
  %57 = load i32, i32* @XBT_NIL, align 4
  %58 = load i8*, i8** %12, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = call i64 @xenbus_write(i32 %57, i8* %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %56
  %63 = load %struct.xenbus_device*, %struct.xenbus_device** %5, align 8
  %64 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %63, i32 0, i32 1
  %65 = load %struct.xenbus_device*, %struct.xenbus_device** %5, align 8
  %66 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to i8*
  %70 = load i8*, i8** %11, align 8
  %71 = call i32 (i32*, i8*, i8*, ...) @dev_err(i32* %64, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %69, i8* %70)
  br label %73

72:                                               ; preds = %56
  br label %73

73:                                               ; preds = %72, %62, %46, %17
  %74 = load i8*, i8** %11, align 8
  %75 = call i32 @kfree(i8* %74)
  %76 = load i8*, i8** %12, align 8
  %77 = call i32 @kfree(i8* %76)
  ret void
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @vsnprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*, ...) #1

declare dso_local i8* @error_path(%struct.xenbus_device*) #1

declare dso_local i64 @xenbus_write(i32, i8*, i8*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
