; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/telephony/extr_ixj.c_ixj_write_vmwi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/telephony/extr_ixj.c_ixj_write_vmwi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, i64, i64, i64, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32 }

@PORT_POTS = common dso_local global i64 0, align 8
@PLD_SLIC_STATE_OHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32)* @ixj_write_vmwi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixj_write_vmwi(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 32
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 7
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13, %2
  br label %100

20:                                               ; preds = %13
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 3
  store i32 0, i32* %22, align 4
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 2
  store i32 0, i32* %24, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  store i32 0, i32* %26, align 4
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 5
  store i64 0, i64* %30, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 6
  store i64 0, i64* %32, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %34 = call i32 @ixj_fsk_alloc(%struct.TYPE_12__* %33)
  store i8 3, i8* %5, align 1
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @PORT_POTS, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %20
  %41 = load i32, i32* @PLD_SLIC_STATE_OHT, align 4
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %43 = call i32 @SLIC_SetState(i32 %41, %struct.TYPE_12__* %42)
  br label %44

44:                                               ; preds = %40, %20
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %46 = call i32 @ixj_write_cid_seize(%struct.TYPE_12__* %45)
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %48 = call i32 @ixj_write_cid_byte(%struct.TYPE_12__* %47, i8 signext -126)
  store i32 130, i32* %7, align 4
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %50 = load i8, i8* %5, align 1
  %51 = call i32 @ixj_write_cid_byte(%struct.TYPE_12__* %49, i8 signext %50)
  %52 = load i32, i32* %7, align 4
  %53 = load i8, i8* %5, align 1
  %54 = sext i8 %53 to i32
  %55 = add nsw i32 %52, %54
  store i32 %55, i32* %7, align 4
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %57 = call i32 @ixj_write_cid_byte(%struct.TYPE_12__* %56, i8 signext 11)
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 11
  store i32 %59, i32* %7, align 4
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %61 = call i32 @ixj_write_cid_byte(%struct.TYPE_12__* %60, i8 signext 1)
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %44
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %68 = call i32 @ixj_write_cid_byte(%struct.TYPE_12__* %67, i8 signext -1)
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 255
  store i32 %70, i32* %7, align 4
  br label %76

71:                                               ; preds = %44
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %73 = call i32 @ixj_write_cid_byte(%struct.TYPE_12__* %72, i8 signext 0)
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 0
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %71, %66
  %77 = load i32, i32* %7, align 4
  %78 = srem i32 %77, 256
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = xor i32 %79, 255
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %7, align 4
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %84 = load i32, i32* %7, align 4
  %85 = trunc i32 %84 to i8
  %86 = call i32 @ixj_write_cid_byte(%struct.TYPE_12__* %83, i8 signext %85)
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = srem i32 %89, 240
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %76
  %94 = load i32, i32* %6, align 4
  %95 = sub nsw i32 240, %94
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %93, %76
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @ixj_pad_fsk(%struct.TYPE_12__* %97, i32 %98)
  br label %100

100:                                              ; preds = %96, %19
  ret void
}

declare dso_local i32 @ixj_fsk_alloc(%struct.TYPE_12__*) #1

declare dso_local i32 @SLIC_SetState(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @ixj_write_cid_seize(%struct.TYPE_12__*) #1

declare dso_local i32 @ixj_write_cid_byte(%struct.TYPE_12__*, i8 signext) #1

declare dso_local i32 @ixj_pad_fsk(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
