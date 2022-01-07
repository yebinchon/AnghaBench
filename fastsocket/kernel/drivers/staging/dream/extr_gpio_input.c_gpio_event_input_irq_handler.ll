; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/extr_gpio_input.c_gpio_event_input_irq_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/extr_gpio_input.c_gpio_event_input_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_key_state = type { i32, %struct.gpio_input_state* }
%struct.gpio_input_state = type { %struct.TYPE_3__*, i32, i32, i32, i32, i32, i32, %struct.gpio_key_state* }
%struct.TYPE_3__ = type { i32, i32, %struct.TYPE_4__, %struct.gpio_event_direct_entry* }
%struct.TYPE_4__ = type { i64 }
%struct.gpio_event_direct_entry = type { i32, i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@DEBOUNCE_WAIT_IRQ = common dso_local global i32 0, align 4
@DEBOUNCE_UNKNOWN = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@GPIOEDF_PRINT_KEY_DEBOUNCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"gpio_event_input_irq_handler: key %x-%x, %d (%d) start debounce\0A\00", align 1
@DEBOUNCE_UNSTABLE = common dso_local global i32 0, align 4
@GPIOEDF_ACTIVE_HIGH = common dso_local global i32 0, align 4
@GPIOEDF_PRINT_KEYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"gpio_event_input_irq_handler: key %x-%x, %d (%d) changed to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @gpio_event_input_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_event_input_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.gpio_key_state*, align 8
  %7 = alloca %struct.gpio_input_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.gpio_event_direct_entry*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.gpio_key_state*
  store %struct.gpio_key_state* %13, %struct.gpio_key_state** %6, align 8
  %14 = load %struct.gpio_key_state*, %struct.gpio_key_state** %6, align 8
  %15 = getelementptr inbounds %struct.gpio_key_state, %struct.gpio_key_state* %14, i32 0, i32 1
  %16 = load %struct.gpio_input_state*, %struct.gpio_input_state** %15, align 8
  store %struct.gpio_input_state* %16, %struct.gpio_input_state** %7, align 8
  %17 = load %struct.gpio_key_state*, %struct.gpio_key_state** %6, align 8
  %18 = load %struct.gpio_input_state*, %struct.gpio_input_state** %7, align 8
  %19 = getelementptr inbounds %struct.gpio_input_state, %struct.gpio_input_state* %18, i32 0, i32 7
  %20 = load %struct.gpio_key_state*, %struct.gpio_key_state** %19, align 8
  %21 = ptrtoint %struct.gpio_key_state* %17 to i64
  %22 = ptrtoint %struct.gpio_key_state* %20 to i64
  %23 = sub i64 %21, %22
  %24 = sdiv exact i64 %23, 16
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %8, align 4
  %26 = load %struct.gpio_input_state*, %struct.gpio_input_state** %7, align 8
  %27 = getelementptr inbounds %struct.gpio_input_state, %struct.gpio_input_state* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %31, i32* %3, align 4
  br label %172

32:                                               ; preds = %2
  %33 = load %struct.gpio_input_state*, %struct.gpio_input_state** %7, align 8
  %34 = getelementptr inbounds %struct.gpio_input_state, %struct.gpio_input_state* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 3
  %37 = load %struct.gpio_event_direct_entry*, %struct.gpio_event_direct_entry** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.gpio_event_direct_entry, %struct.gpio_event_direct_entry* %37, i64 %39
  store %struct.gpio_event_direct_entry* %40, %struct.gpio_event_direct_entry** %9, align 8
  %41 = load %struct.gpio_input_state*, %struct.gpio_input_state** %7, align 8
  %42 = getelementptr inbounds %struct.gpio_input_state, %struct.gpio_input_state* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %117

48:                                               ; preds = %32
  %49 = load %struct.gpio_input_state*, %struct.gpio_input_state** %7, align 8
  %50 = getelementptr inbounds %struct.gpio_input_state, %struct.gpio_input_state* %49, i32 0, i32 2
  %51 = load i64, i64* %10, align 8
  %52 = call i32 @spin_lock_irqsave(i32* %50, i64 %51)
  %53 = load %struct.gpio_key_state*, %struct.gpio_key_state** %6, align 8
  %54 = getelementptr inbounds %struct.gpio_key_state, %struct.gpio_key_state* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @DEBOUNCE_WAIT_IRQ, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %106

59:                                               ; preds = %48
  %60 = load i32, i32* @DEBOUNCE_UNKNOWN, align 4
  %61 = load %struct.gpio_key_state*, %struct.gpio_key_state** %6, align 8
  %62 = getelementptr inbounds %struct.gpio_key_state, %struct.gpio_key_state* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.gpio_input_state*, %struct.gpio_input_state** %7, align 8
  %64 = getelementptr inbounds %struct.gpio_input_state, %struct.gpio_input_state* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 8
  %67 = icmp eq i32 %65, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %59
  %69 = load %struct.gpio_input_state*, %struct.gpio_input_state** %7, align 8
  %70 = getelementptr inbounds %struct.gpio_input_state, %struct.gpio_input_state* %69, i32 0, i32 4
  %71 = call i32 @wake_lock(i32* %70)
  %72 = load %struct.gpio_input_state*, %struct.gpio_input_state** %7, align 8
  %73 = getelementptr inbounds %struct.gpio_input_state, %struct.gpio_input_state* %72, i32 0, i32 3
  %74 = load %struct.gpio_input_state*, %struct.gpio_input_state** %7, align 8
  %75 = getelementptr inbounds %struct.gpio_input_state, %struct.gpio_input_state* %74, i32 0, i32 0
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  %78 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @hrtimer_start(i32* %73, i64 %80, i32 %78)
  br label %82

82:                                               ; preds = %68, %59
  %83 = load %struct.gpio_input_state*, %struct.gpio_input_state** %7, align 8
  %84 = getelementptr inbounds %struct.gpio_input_state, %struct.gpio_input_state* %83, i32 0, i32 0
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @GPIOEDF_PRINT_KEY_DEBOUNCE, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %105

91:                                               ; preds = %82
  %92 = load %struct.gpio_input_state*, %struct.gpio_input_state** %7, align 8
  %93 = getelementptr inbounds %struct.gpio_input_state, %struct.gpio_input_state* %92, i32 0, i32 0
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.gpio_event_direct_entry*, %struct.gpio_event_direct_entry** %9, align 8
  %98 = getelementptr inbounds %struct.gpio_event_direct_entry, %struct.gpio_event_direct_entry* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load %struct.gpio_event_direct_entry*, %struct.gpio_event_direct_entry** %9, align 8
  %102 = getelementptr inbounds %struct.gpio_event_direct_entry, %struct.gpio_event_direct_entry* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i8*, i32, i32, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %96, i32 %99, i32 %100, i32 %103)
  br label %105

105:                                              ; preds = %91, %82
  br label %112

106:                                              ; preds = %48
  %107 = load i32, i32* %4, align 4
  %108 = call i32 @disable_irq(i32 %107)
  %109 = load i32, i32* @DEBOUNCE_UNSTABLE, align 4
  %110 = load %struct.gpio_key_state*, %struct.gpio_key_state** %6, align 8
  %111 = getelementptr inbounds %struct.gpio_key_state, %struct.gpio_key_state* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  br label %112

112:                                              ; preds = %106, %105
  %113 = load %struct.gpio_input_state*, %struct.gpio_input_state** %7, align 8
  %114 = getelementptr inbounds %struct.gpio_input_state, %struct.gpio_input_state* %113, i32 0, i32 2
  %115 = load i64, i64* %10, align 8
  %116 = call i32 @spin_unlock_irqrestore(i32* %114, i64 %115)
  br label %170

117:                                              ; preds = %32
  %118 = load %struct.gpio_event_direct_entry*, %struct.gpio_event_direct_entry** %9, align 8
  %119 = getelementptr inbounds %struct.gpio_event_direct_entry, %struct.gpio_event_direct_entry* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @gpio_get_value(i32 %120)
  %122 = load %struct.gpio_input_state*, %struct.gpio_input_state** %7, align 8
  %123 = getelementptr inbounds %struct.gpio_input_state, %struct.gpio_input_state* %122, i32 0, i32 0
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @GPIOEDF_ACTIVE_HIGH, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  %130 = xor i1 %129, true
  %131 = zext i1 %130 to i32
  %132 = xor i32 %121, %131
  store i32 %132, i32* %11, align 4
  %133 = load %struct.gpio_input_state*, %struct.gpio_input_state** %7, align 8
  %134 = getelementptr inbounds %struct.gpio_input_state, %struct.gpio_input_state* %133, i32 0, i32 0
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @GPIOEDF_PRINT_KEYS, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %156

141:                                              ; preds = %117
  %142 = load %struct.gpio_input_state*, %struct.gpio_input_state** %7, align 8
  %143 = getelementptr inbounds %struct.gpio_input_state, %struct.gpio_input_state* %142, i32 0, i32 0
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.gpio_event_direct_entry*, %struct.gpio_event_direct_entry** %9, align 8
  %148 = getelementptr inbounds %struct.gpio_event_direct_entry, %struct.gpio_event_direct_entry* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %8, align 4
  %151 = load %struct.gpio_event_direct_entry*, %struct.gpio_event_direct_entry** %9, align 8
  %152 = getelementptr inbounds %struct.gpio_event_direct_entry, %struct.gpio_event_direct_entry* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %11, align 4
  %155 = call i32 (i8*, i32, i32, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %146, i32 %149, i32 %150, i32 %153, i32 %154)
  br label %156

156:                                              ; preds = %141, %117
  %157 = load %struct.gpio_input_state*, %struct.gpio_input_state** %7, align 8
  %158 = getelementptr inbounds %struct.gpio_input_state, %struct.gpio_input_state* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.gpio_input_state*, %struct.gpio_input_state** %7, align 8
  %161 = getelementptr inbounds %struct.gpio_input_state, %struct.gpio_input_state* %160, i32 0, i32 0
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.gpio_event_direct_entry*, %struct.gpio_event_direct_entry** %9, align 8
  %166 = getelementptr inbounds %struct.gpio_event_direct_entry, %struct.gpio_event_direct_entry* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %11, align 4
  %169 = call i32 @input_event(i32 %159, i32 %164, i32 %167, i32 %168)
  br label %170

170:                                              ; preds = %156, %112
  %171 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %171, i32* %3, align 4
  br label %172

172:                                              ; preds = %170, %30
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @wake_lock(i32*) #1

declare dso_local i32 @hrtimer_start(i32*, i64, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i32, i32, ...) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @gpio_get_value(i32) #1

declare dso_local i32 @input_event(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
