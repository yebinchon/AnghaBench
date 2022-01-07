; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/extr_soc-core.c_snd_soc_register_card.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/extr_soc-core.c_snd_soc_register_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { i32, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@client_mutex = common dso_local global i32 0, align 4
@card_list = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Registered card '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_card*)* @snd_soc_register_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_soc_register_card(%struct.snd_soc_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_card*, align 8
  store %struct.snd_soc_card* %0, %struct.snd_soc_card** %3, align 8
  %4 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %5 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %10 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %8, %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %35

16:                                               ; preds = %8
  %17 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %18 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %17, i32 0, i32 2
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %21 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %20, i32 0, i32 3
  store i64 0, i64* %21, align 8
  %22 = call i32 @mutex_lock(i32* @client_mutex)
  %23 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %24 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %23, i32 0, i32 2
  %25 = call i32 @list_add(i32* %24, i32* @card_list)
  %26 = call i32 (...) @snd_soc_instantiate_cards()
  %27 = call i32 @mutex_unlock(i32* @client_mutex)
  %28 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %29 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.snd_soc_card*, %struct.snd_soc_card** %3, align 8
  %32 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @dev_dbg(i32 %30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %33)
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %16, %13
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @snd_soc_instantiate_cards(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
