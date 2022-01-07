; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/extr_soc-core.c_snd_soc_register_platform.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/extr_soc-core.c_snd_soc_register_platform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_platform = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@client_mutex = common dso_local global i32 0, align 4
@platform_list = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Registered platform '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_soc_register_platform(%struct.snd_soc_platform* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_platform*, align 8
  store %struct.snd_soc_platform* %0, %struct.snd_soc_platform** %3, align 8
  %4 = load %struct.snd_soc_platform*, %struct.snd_soc_platform** %3, align 8
  %5 = getelementptr inbounds %struct.snd_soc_platform, %struct.snd_soc_platform* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %25

11:                                               ; preds = %1
  %12 = load %struct.snd_soc_platform*, %struct.snd_soc_platform** %3, align 8
  %13 = getelementptr inbounds %struct.snd_soc_platform, %struct.snd_soc_platform* %12, i32 0, i32 1
  %14 = call i32 @INIT_LIST_HEAD(i32* %13)
  %15 = call i32 @mutex_lock(i32* @client_mutex)
  %16 = load %struct.snd_soc_platform*, %struct.snd_soc_platform** %3, align 8
  %17 = getelementptr inbounds %struct.snd_soc_platform, %struct.snd_soc_platform* %16, i32 0, i32 1
  %18 = call i32 @list_add(i32* %17, i32* @platform_list)
  %19 = call i32 (...) @snd_soc_instantiate_cards()
  %20 = call i32 @mutex_unlock(i32* @client_mutex)
  %21 = load %struct.snd_soc_platform*, %struct.snd_soc_platform** %3, align 8
  %22 = getelementptr inbounds %struct.snd_soc_platform, %struct.snd_soc_platform* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %23)
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %11, %8
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @snd_soc_instantiate_cards(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
