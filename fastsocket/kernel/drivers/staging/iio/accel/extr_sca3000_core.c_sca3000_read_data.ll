; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_sca3000_core.c_sca3000_read_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_sca3000_core.c_sca3000_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sca3000_state = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.spi_message = type { i32 }
%struct.spi_transfer = type { i32, i32, i32, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"problem reading register\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sca3000_read_data(%struct.sca3000_state* %0, i32 %1, i32** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sca3000_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.spi_message, align 4
  %12 = alloca %struct.spi_transfer, align 8
  store %struct.sca3000_state* %0, %struct.sca3000_state** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32** %2, i32*** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 0
  store i32 8, i32* %13, align 8
  %14 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 1
  %15 = load i32, i32* %9, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  %17 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 2
  store i32 1, i32* %17, align 8
  %18 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 3
  store i32* null, i32** %18, align 8
  %19 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 4
  %20 = load %struct.sca3000_state*, %struct.sca3000_state** %6, align 8
  %21 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %19, align 8
  %23 = load i32, i32* %9, align 4
  %24 = add nsw i32 %23, 1
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i32* @kmalloc(i32 %24, i32 %25)
  %27 = load i32**, i32*** %8, align 8
  store i32* %26, i32** %27, align 8
  %28 = load i32**, i32*** %8, align 8
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %10, align 4
  br label %64

34:                                               ; preds = %4
  %35 = load i32**, i32*** %8, align 8
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 3
  store i32* %36, i32** %37, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @SCA3000_READ_REG(i32 %38)
  %40 = load %struct.sca3000_state*, %struct.sca3000_state** %6, align 8
  %41 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 %39, i32* %43, align 4
  %44 = call i32 @spi_message_init(%struct.spi_message* %11)
  %45 = call i32 @spi_message_add_tail(%struct.spi_transfer* %12, %struct.spi_message* %11)
  %46 = load %struct.sca3000_state*, %struct.sca3000_state** %6, align 8
  %47 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = call i32 @spi_sync(%struct.TYPE_2__* %48, %struct.spi_message* %11)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %34
  %53 = load %struct.sca3000_state*, %struct.sca3000_state** %6, align 8
  %54 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = call i32 @get_device(i32* %56)
  %58 = call i32 @dev_err(i32 %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %60

59:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %66

60:                                               ; preds = %52
  %61 = load i32**, i32*** %8, align 8
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @kfree(i32* %62)
  br label %64

64:                                               ; preds = %60, %31
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %64, %59
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @SCA3000_READ_REG(i32) #1

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @spi_sync(%struct.TYPE_2__*, %struct.spi_message*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @get_device(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
