; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_usb.c_carlusb_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_usb.c_carlusb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carlu = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@carlusb_event_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"echo test failed...\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"firmware is active and running.\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"usb device rendezvous failed (%d).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.carlu* @carlusb_probe() #0 {
  %1 = alloca %struct.carlu*, align 8
  %2 = alloca %struct.carlu*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @ENOMEM, align 4
  %5 = sub nsw i32 0, %4
  store i32 %5, i32* %3, align 4
  %6 = call %struct.carlu* (...) @carlusb_open()
  store %struct.carlu* %6, %struct.carlu** %2, align 8
  %7 = load %struct.carlu*, %struct.carlu** %2, align 8
  %8 = call i64 @IS_ERR_OR_NULL(%struct.carlu* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %0
  %11 = load %struct.carlu*, %struct.carlu** %2, align 8
  %12 = call i64 @IS_ERR(%struct.carlu* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load %struct.carlu*, %struct.carlu** %2, align 8
  %16 = call i32 @PTR_ERR(%struct.carlu* %15)
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %14, %10
  br label %78

18:                                               ; preds = %0
  %19 = load %struct.carlu*, %struct.carlu** %2, align 8
  %20 = call i32 @carlusb_show_devinfo(%struct.carlu* %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %78

24:                                               ; preds = %18
  %25 = load %struct.carlu*, %struct.carlu** %2, align 8
  %26 = call i32 @carlusb_load_firmware(%struct.carlu* %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %78

30:                                               ; preds = %24
  %31 = load %struct.carlu*, %struct.carlu** %2, align 8
  %32 = getelementptr inbounds %struct.carlu, %struct.carlu* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @pipe(i32 %33)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %78

38:                                               ; preds = %30
  %39 = load %struct.carlu*, %struct.carlu** %2, align 8
  %40 = getelementptr inbounds %struct.carlu, %struct.carlu* %39, i32 0, i32 0
  store i32 0, i32* %40, align 4
  %41 = load i32, i32* @carlusb_event_thread, align 4
  %42 = load %struct.carlu*, %struct.carlu** %2, align 8
  %43 = call i32 @SDL_CreateThread(i32 %41, %struct.carlu* %42)
  %44 = load %struct.carlu*, %struct.carlu** %2, align 8
  %45 = getelementptr inbounds %struct.carlu, %struct.carlu* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.carlu*, %struct.carlu** %2, align 8
  %47 = call i32 @carlusb_upload_firmware(%struct.carlu* %46, i32 1)
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %38
  br label %75

51:                                               ; preds = %38
  %52 = load %struct.carlu*, %struct.carlu** %2, align 8
  %53 = call i32 @carlusb_initialize_rxirq(%struct.carlu* %52)
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* %3, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %75

57:                                               ; preds = %51
  %58 = load %struct.carlu*, %struct.carlu** %2, align 8
  %59 = call i32 @carlusb_initialize_rxrings(%struct.carlu* %58)
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* %3, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %75

63:                                               ; preds = %57
  %64 = load %struct.carlu*, %struct.carlu** %2, align 8
  %65 = call i32 @carlu_cmd_echo(%struct.carlu* %64, i32 1141968366)
  store i32 %65, i32* %3, align 4
  %66 = load i32, i32* %3, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %75

70:                                               ; preds = %63
  %71 = call i32 @info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %72 = load %struct.carlu*, %struct.carlu** %2, align 8
  %73 = call i32 @carlu_fw_info(%struct.carlu* %72)
  %74 = load %struct.carlu*, %struct.carlu** %2, align 8
  store %struct.carlu* %74, %struct.carlu** %1, align 8
  br label %85

75:                                               ; preds = %68, %62, %56, %50
  %76 = load %struct.carlu*, %struct.carlu** %2, align 8
  %77 = call i32 @carlusb_destroy(%struct.carlu* %76)
  br label %78

78:                                               ; preds = %75, %37, %29, %23, %17
  %79 = load %struct.carlu*, %struct.carlu** %2, align 8
  %80 = call i32 @carlusb_free_driver(%struct.carlu* %79)
  %81 = load i32, i32* %3, align 4
  %82 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %3, align 4
  %84 = call %struct.carlu* @ERR_PTR(i32 %83)
  store %struct.carlu* %84, %struct.carlu** %1, align 8
  br label %85

85:                                               ; preds = %78, %70
  %86 = load %struct.carlu*, %struct.carlu** %1, align 8
  ret %struct.carlu* %86
}

declare dso_local %struct.carlu* @carlusb_open(...) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.carlu*) #1

declare dso_local i64 @IS_ERR(%struct.carlu*) #1

declare dso_local i32 @PTR_ERR(%struct.carlu*) #1

declare dso_local i32 @carlusb_show_devinfo(%struct.carlu*) #1

declare dso_local i32 @carlusb_load_firmware(%struct.carlu*) #1

declare dso_local i32 @pipe(i32) #1

declare dso_local i32 @SDL_CreateThread(i32, %struct.carlu*) #1

declare dso_local i32 @carlusb_upload_firmware(%struct.carlu*, i32) #1

declare dso_local i32 @carlusb_initialize_rxirq(%struct.carlu*) #1

declare dso_local i32 @carlusb_initialize_rxrings(%struct.carlu*) #1

declare dso_local i32 @carlu_cmd_echo(%struct.carlu*, i32) #1

declare dso_local i32 @err(i8*, ...) #1

declare dso_local i32 @info(i8*) #1

declare dso_local i32 @carlu_fw_info(%struct.carlu*) #1

declare dso_local i32 @carlusb_destroy(%struct.carlu*) #1

declare dso_local i32 @carlusb_free_driver(%struct.carlu*) #1

declare dso_local %struct.carlu* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
