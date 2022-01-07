; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/omap/extr_ams-delta.c_cx81801_receive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/omap/extr_ams-delta.c_cx81801_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.tty_struct*, i8*, i8*, i32)* }
%struct.tty_struct = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@cx81801_timer = common dso_local global i32 0, align 4
@cx81801_timeout = common dso_local global i32 0, align 4
@v253_ops = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@ams_delta_hook_switch = common dso_local global i32 0, align 4
@ams_delta_hook_switch_pins = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"Failed to link hook switch to DAPM pins, will continue with hook switch unlinked.\0A\00", align 1
@ams_delta_lock = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@ams_delta_muted = common dso_local global i32 0, align 4
@cx81801_cmd_pending = common dso_local global i32 0, align 4
@AMS_DELTA_LATCH2_MODEM_CODEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, i8*, i8*, i32)* @cx81801_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx81801_receive(%struct.tty_struct* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_soc_codec*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 0
  %15 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %14, align 8
  store %struct.snd_soc_codec* %15, %struct.snd_soc_codec** %9, align 8
  %16 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %9, align 8
  %17 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %45, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @cx81801_timeout, align 4
  %22 = call i32 @setup_timer(i32* @cx81801_timer, i32 %21, i32 0)
  %23 = load i32 (%struct.tty_struct*, i8*, i8*, i32)*, i32 (%struct.tty_struct*, i8*, i8*, i32)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @v253_ops, i32 0, i32 0), align 8
  %24 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 %23(%struct.tty_struct* %24, i8* %25, i8* %26, i32 %27)
  %29 = load i32, i32* @ams_delta_hook_switch_pins, align 4
  %30 = call i32 @ARRAY_SIZE(i32 %29)
  %31 = load i32, i32* @ams_delta_hook_switch_pins, align 4
  %32 = call i32 @snd_soc_jack_add_pins(i32* @ams_delta_hook_switch, i32 %30, i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %20
  %36 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %9, align 8
  %37 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_warn(i32 %42, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %35, %20
  br label %93

45:                                               ; preds = %4
  %46 = load i32 (%struct.tty_struct*, i8*, i8*, i32)*, i32 (%struct.tty_struct*, i8*, i8*, i32)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @v253_ops, i32 0, i32 0), align 8
  %47 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 %46(%struct.tty_struct* %47, i8* %48, i8* %49, i32 %50)
  %52 = load i8*, i8** %6, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %52, i64 %55
  store i8* %56, i8** %10, align 8
  br label %57

57:                                               ; preds = %90, %45
  %58 = load i8*, i8** %10, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = icmp uge i8* %58, %59
  br i1 %60, label %61, label %93

61:                                               ; preds = %57
  %62 = load i8*, i8** %10, align 8
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp ne i32 %64, 13
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %90

67:                                               ; preds = %61
  %68 = call i32 @spin_lock_bh(i32* @ams_delta_lock)
  %69 = load i64, i64* @jiffies, align 8
  %70 = call i64 @msecs_to_jiffies(i32 150)
  %71 = add nsw i64 %69, %70
  %72 = call i32 @mod_timer(i32* @cx81801_timer, i64 %71)
  %73 = load i32, i32* @ams_delta_muted, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %67
  %76 = load i32, i32* @cx81801_cmd_pending, align 4
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  br label %79

79:                                               ; preds = %75, %67
  %80 = phi i1 [ false, %67 ], [ %78, %75 ]
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %11, align 4
  store i32 1, i32* @cx81801_cmd_pending, align 4
  %82 = call i32 @spin_unlock_bh(i32* @ams_delta_lock)
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load i32, i32* @AMS_DELTA_LATCH2_MODEM_CODEC, align 4
  %87 = load i32, i32* @AMS_DELTA_LATCH2_MODEM_CODEC, align 4
  %88 = call i32 @ams_delta_latch2_write(i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %85, %79
  br label %93

90:                                               ; preds = %66
  %91 = load i8*, i8** %10, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 -1
  store i8* %92, i8** %10, align 8
  br label %57

93:                                               ; preds = %44, %89, %57
  ret void
}

declare dso_local i32 @setup_timer(i32*, i32, i32) #1

declare dso_local i32 @snd_soc_jack_add_pins(i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ams_delta_latch2_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
