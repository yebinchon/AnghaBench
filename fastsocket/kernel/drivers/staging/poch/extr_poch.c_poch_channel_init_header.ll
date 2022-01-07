; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/poch/extr_poch.c_poch_channel_init_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/poch/extr_poch.c_poch_channel_init_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel_info = type { i32, i64, %struct.poch_group_info*, %struct.TYPE_2__*, i32, i32 }
%struct.poch_group_info = type { i32 }
%struct.TYPE_2__ = type { i32, i32*, i32 }

@CHANNEL_DIR_RX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.channel_info*)* @poch_channel_init_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @poch_channel_init_header(%struct.channel_info* %0) #0 {
  %2 = alloca %struct.channel_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.poch_group_info*, align 8
  %5 = alloca i32*, align 8
  store %struct.channel_info* %0, %struct.channel_info** %2, align 8
  %6 = load %struct.channel_info*, %struct.channel_info** %2, align 8
  %7 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.channel_info*, %struct.channel_info** %2, align 8
  %10 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %9, i32 0, i32 3
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  store i32 %8, i32* %12, align 8
  %13 = load %struct.channel_info*, %struct.channel_info** %2, align 8
  %14 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.channel_info*, %struct.channel_info** %2, align 8
  %17 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %16, i32 0, i32 3
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %15, i32* %19, align 8
  %20 = load %struct.channel_info*, %struct.channel_info** %2, align 8
  %21 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %20, i32 0, i32 4
  %22 = call i32 @spin_lock_init(i32* %21)
  %23 = load %struct.channel_info*, %struct.channel_info** %2, align 8
  %24 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %23, i32 0, i32 3
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %5, align 8
  %28 = load %struct.channel_info*, %struct.channel_info** %2, align 8
  %29 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %28, i32 0, i32 2
  %30 = load %struct.poch_group_info*, %struct.poch_group_info** %29, align 8
  store %struct.poch_group_info* %30, %struct.poch_group_info** %4, align 8
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %60, %1
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.channel_info*, %struct.channel_info** %2, align 8
  %34 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %63

37:                                               ; preds = %31
  %38 = load %struct.channel_info*, %struct.channel_info** %2, align 8
  %39 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @CHANNEL_DIR_RX, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 -1, i32* %47, align 4
  br label %59

48:                                               ; preds = %37
  %49 = load %struct.poch_group_info*, %struct.poch_group_info** %4, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.poch_group_info, %struct.poch_group_info* %49, i64 %51
  %53 = getelementptr inbounds %struct.poch_group_info, %struct.poch_group_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %54, i32* %58, align 4
  br label %59

59:                                               ; preds = %48, %43
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %3, align 4
  br label %31

63:                                               ; preds = %31
  ret void
}

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
