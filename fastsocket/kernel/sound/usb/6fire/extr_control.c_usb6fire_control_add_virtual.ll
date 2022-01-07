; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/6fire/extr_control.c_usb6fire_control_add_virtual.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/6fire/extr_control.c_usb6fire_control_add_virtual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.control_runtime = type { i32 }
%struct.snd_card = type { i32 }
%struct.snd_kcontrol_new = type { i64 }
%struct.snd_kcontrol = type { i32 }

@tlv_output = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.control_runtime*, %struct.snd_card*, i8*, %struct.snd_kcontrol_new*)* @usb6fire_control_add_virtual to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb6fire_control_add_virtual(%struct.control_runtime* %0, %struct.snd_card* %1, i8* %2, %struct.snd_kcontrol_new* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.control_runtime*, align 8
  %7 = alloca %struct.snd_card*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.snd_kcontrol_new*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_kcontrol*, align 8
  %13 = alloca %struct.snd_kcontrol*, align 8
  store %struct.control_runtime* %0, %struct.control_runtime** %6, align 8
  store %struct.snd_card* %1, %struct.snd_card** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.snd_kcontrol_new* %3, %struct.snd_kcontrol_new** %9, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load i32, i32* @tlv_output, align 4
  %16 = call %struct.snd_kcontrol* @snd_ctl_make_virtual_master(i8* %14, i32 %15)
  store %struct.snd_kcontrol* %16, %struct.snd_kcontrol** %12, align 8
  %17 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %12, align 8
  %18 = icmp ne %struct.snd_kcontrol* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %71

22:                                               ; preds = %4
  %23 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %24 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %12, align 8
  %25 = call i32 @snd_ctl_add(%struct.snd_card* %23, %struct.snd_kcontrol* %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %5, align 4
  br label %71

30:                                               ; preds = %22
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %67, %30
  %32 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %9, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %32, i64 %34
  %36 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %70

39:                                               ; preds = %31
  %40 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %9, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %40, i64 %42
  %44 = load %struct.control_runtime*, %struct.control_runtime** %6, align 8
  %45 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new* %43, %struct.control_runtime* %44)
  store %struct.snd_kcontrol* %45, %struct.snd_kcontrol** %13, align 8
  %46 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %13, align 8
  %47 = icmp ne %struct.snd_kcontrol* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %39
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %71

51:                                               ; preds = %39
  %52 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %53 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %13, align 8
  %54 = call i32 @snd_ctl_add(%struct.snd_card* %52, %struct.snd_kcontrol* %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %5, align 4
  br label %71

59:                                               ; preds = %51
  %60 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %12, align 8
  %61 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %13, align 8
  %62 = call i32 @snd_ctl_add_slave(%struct.snd_kcontrol* %60, %struct.snd_kcontrol* %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %5, align 4
  br label %71

67:                                               ; preds = %59
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %11, align 4
  br label %31

70:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %70, %65, %57, %48, %28, %19
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local %struct.snd_kcontrol* @snd_ctl_make_virtual_master(i8*, i32) #1

declare dso_local i32 @snd_ctl_add(%struct.snd_card*, %struct.snd_kcontrol*) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new*, %struct.control_runtime*) #1

declare dso_local i32 @snd_ctl_add_slave(%struct.snd_kcontrol*, %struct.snd_kcontrol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
