; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_ports.c_match_subs_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/seq/extr_seq_ports.c_match_subs_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_port_subscribe = type { i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_seq_port_subscribe*, %struct.snd_seq_port_subscribe*)* @match_subs_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_subs_info(%struct.snd_seq_port_subscribe* %0, %struct.snd_seq_port_subscribe* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_seq_port_subscribe*, align 8
  %5 = alloca %struct.snd_seq_port_subscribe*, align 8
  store %struct.snd_seq_port_subscribe* %0, %struct.snd_seq_port_subscribe** %4, align 8
  store %struct.snd_seq_port_subscribe* %1, %struct.snd_seq_port_subscribe** %5, align 8
  %6 = load %struct.snd_seq_port_subscribe*, %struct.snd_seq_port_subscribe** %4, align 8
  %7 = getelementptr inbounds %struct.snd_seq_port_subscribe, %struct.snd_seq_port_subscribe* %6, i32 0, i32 3
  %8 = load %struct.snd_seq_port_subscribe*, %struct.snd_seq_port_subscribe** %5, align 8
  %9 = getelementptr inbounds %struct.snd_seq_port_subscribe, %struct.snd_seq_port_subscribe* %8, i32 0, i32 3
  %10 = call i64 @addr_match(i32* %7, i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %49

12:                                               ; preds = %2
  %13 = load %struct.snd_seq_port_subscribe*, %struct.snd_seq_port_subscribe** %4, align 8
  %14 = getelementptr inbounds %struct.snd_seq_port_subscribe, %struct.snd_seq_port_subscribe* %13, i32 0, i32 2
  %15 = load %struct.snd_seq_port_subscribe*, %struct.snd_seq_port_subscribe** %5, align 8
  %16 = getelementptr inbounds %struct.snd_seq_port_subscribe, %struct.snd_seq_port_subscribe* %15, i32 0, i32 2
  %17 = call i64 @addr_match(i32* %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %49

19:                                               ; preds = %12
  %20 = load %struct.snd_seq_port_subscribe*, %struct.snd_seq_port_subscribe** %4, align 8
  %21 = getelementptr inbounds %struct.snd_seq_port_subscribe, %struct.snd_seq_port_subscribe* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %19
  %25 = load %struct.snd_seq_port_subscribe*, %struct.snd_seq_port_subscribe** %4, align 8
  %26 = getelementptr inbounds %struct.snd_seq_port_subscribe, %struct.snd_seq_port_subscribe* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.snd_seq_port_subscribe*, %struct.snd_seq_port_subscribe** %5, align 8
  %29 = getelementptr inbounds %struct.snd_seq_port_subscribe, %struct.snd_seq_port_subscribe* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %24
  %33 = load %struct.snd_seq_port_subscribe*, %struct.snd_seq_port_subscribe** %4, align 8
  %34 = getelementptr inbounds %struct.snd_seq_port_subscribe, %struct.snd_seq_port_subscribe* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.snd_seq_port_subscribe*, %struct.snd_seq_port_subscribe** %5, align 8
  %37 = getelementptr inbounds %struct.snd_seq_port_subscribe, %struct.snd_seq_port_subscribe* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %35, %38
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %3, align 4
  br label %50

41:                                               ; preds = %24, %19
  %42 = load %struct.snd_seq_port_subscribe*, %struct.snd_seq_port_subscribe** %4, align 8
  %43 = getelementptr inbounds %struct.snd_seq_port_subscribe, %struct.snd_seq_port_subscribe* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  store i32 1, i32* %3, align 4
  br label %50

47:                                               ; preds = %41
  br label %48

48:                                               ; preds = %47
  br label %49

49:                                               ; preds = %48, %12, %2
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %46, %32
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @addr_match(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
