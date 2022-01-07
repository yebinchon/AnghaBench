; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/pnx4008/extr_sdum.c_pnx4008_put_dum_channel_uf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/pnx4008/extr_sdum.c_pnx4008_put_dum_channel_uf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.dumchannel_uf = type { i32, i32, i32, i32, i32, i32, i32 }

@MAX_DUM_CHANNELS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@dum_data = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@EFBNOTOWNER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pnx4008_put_dum_channel_uf(%struct.dumchannel_uf* byval(%struct.dumchannel_uf) align 8 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %1, i32* %4, align 4
  %7 = getelementptr inbounds %struct.dumchannel_uf, %struct.dumchannel_uf* %0, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @MAX_DUM_CHANNELS, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %11, %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %94

18:                                               ; preds = %11
  %19 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dum_data, i32 0, i32 0), align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load i32, i32* @EFBNOTOWNER, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %94

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct.dumchannel_uf, %struct.dumchannel_uf* %0, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.dumchannel_uf, %struct.dumchannel_uf* %0, i32 0, i32 6
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds %struct.dumchannel_uf, %struct.dumchannel_uf* %0, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.dumchannel_uf, %struct.dumchannel_uf* %0, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.dumchannel_uf, %struct.dumchannel_uf* %0, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.dumchannel_uf, %struct.dumchannel_uf* %0, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.dumchannel_uf, %struct.dumchannel_uf* %0, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @display_open(i32 %31, i32 0, i32 %33, i32 %35, i32 %37, i32 %39, i32 %41, i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %29
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %94

48:                                               ; preds = %29
  %49 = getelementptr inbounds %struct.dumchannel_uf, %struct.dumchannel_uf* %0, i32 0, i32 6
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dum_data, i32 0, i32 1), align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 5
  store i32 %50, i32* %55, align 4
  %56 = getelementptr inbounds %struct.dumchannel_uf, %struct.dumchannel_uf* %0, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dum_data, i32 0, i32 1), align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 4
  store i32 %57, i32* %62, align 4
  %63 = getelementptr inbounds %struct.dumchannel_uf, %struct.dumchannel_uf* %0, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dum_data, i32 0, i32 1), align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 3
  store i32 %64, i32* %69, align 4
  %70 = getelementptr inbounds %struct.dumchannel_uf, %struct.dumchannel_uf* %0, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dum_data, i32 0, i32 1), align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 2
  store i32 %71, i32* %76, align 4
  %77 = getelementptr inbounds %struct.dumchannel_uf, %struct.dumchannel_uf* %0, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dum_data, i32 0, i32 1), align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  store i32 %78, i32* %83, align 4
  %84 = getelementptr inbounds %struct.dumchannel_uf, %struct.dumchannel_uf* %0, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dum_data, i32 0, i32 1), align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  store i32 %85, i32* %90, align 4
  br label %91

91:                                               ; preds = %48
  br label %92

92:                                               ; preds = %91
  br label %93

93:                                               ; preds = %92
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %46, %26, %15
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @display_open(i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
