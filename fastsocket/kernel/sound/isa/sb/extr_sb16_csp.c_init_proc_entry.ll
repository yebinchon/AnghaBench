; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_sb16_csp.c_init_proc_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/sb/extr_sb16_csp.c_init_proc_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sb_csp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_info_entry = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"cspD%d\00", align 1
@info_read = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_sb_csp*, i32)* @init_proc_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_proc_entry(%struct.snd_sb_csp* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_sb_csp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [16 x i8], align 16
  %6 = alloca %struct.snd_info_entry*, align 8
  store %struct.snd_sb_csp* %0, %struct.snd_sb_csp** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @sprintf(i8* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %3, align 8
  %11 = getelementptr inbounds %struct.snd_sb_csp, %struct.snd_sb_csp* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %16 = call i32 @snd_card_proc_new(i32 %14, i8* %15, %struct.snd_info_entry** %6)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = load %struct.snd_info_entry*, %struct.snd_info_entry** %6, align 8
  %20 = load %struct.snd_sb_csp*, %struct.snd_sb_csp** %3, align 8
  %21 = load i32, i32* @info_read, align 4
  %22 = call i32 @snd_info_set_text_ops(%struct.snd_info_entry* %19, %struct.snd_sb_csp* %20, i32 %21)
  br label %23

23:                                               ; preds = %18, %2
  ret i32 0
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @snd_card_proc_new(i32, i8*, %struct.snd_info_entry**) #1

declare dso_local i32 @snd_info_set_text_ops(%struct.snd_info_entry*, %struct.snd_sb_csp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
