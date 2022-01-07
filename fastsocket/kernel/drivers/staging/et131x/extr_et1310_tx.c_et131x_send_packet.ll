; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et1310_tx.c_et131x_send_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et1310_tx.c_et131x_send_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32, i32* }
%struct.et131x_adapter = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, %struct.TYPE_5__*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, %struct.TYPE_5__*, i32, %struct.sk_buff* }

@ETH_HLEN = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@fMP_DEST_BROAD = common dso_local global i32 0, align 4
@fMP_DEST_MULTI = common dso_local global i32 0, align 4
@NUM_TCB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.et131x_adapter*)* @et131x_send_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @et131x_send_packet(%struct.sk_buff* %0, %struct.et131x_adapter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.et131x_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.et131x_adapter* %1, %struct.et131x_adapter** %5, align 8
  store i32 0, i32* %6, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %7, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ETH_HLEN, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %170

18:                                               ; preds = %2
  %19 = load %struct.et131x_adapter*, %struct.et131x_adapter** %5, align 8
  %20 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %19, i32 0, i32 1
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.et131x_adapter*, %struct.et131x_adapter** %5, align 8
  %24 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %7, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %28 = icmp eq %struct.TYPE_5__* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %18
  %30 = load %struct.et131x_adapter*, %struct.et131x_adapter** %5, align 8
  %31 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %30, i32 0, i32 1
  %32 = load i64, i64* %9, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %170

36:                                               ; preds = %18
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = load %struct.et131x_adapter*, %struct.et131x_adapter** %5, align 8
  %41 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  store %struct.TYPE_5__* %39, %struct.TYPE_5__** %42, align 8
  %43 = load %struct.et131x_adapter*, %struct.et131x_adapter** %5, align 8
  %44 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = icmp eq %struct.TYPE_5__* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %36
  %49 = load %struct.et131x_adapter*, %struct.et131x_adapter** %5, align 8
  %50 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %51, align 8
  br label %52

52:                                               ; preds = %48, %36
  %53 = load %struct.et131x_adapter*, %struct.et131x_adapter** %5, align 8
  %54 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %53, i32 0, i32 1
  %55 = load i64, i64* %9, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 3
  store %struct.sk_buff* %62, %struct.sk_buff** %64, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %117

69:                                               ; preds = %52
  %70 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %74 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = sub nsw i64 %72, %76
  %78 = icmp sge i64 %77, 6
  br i1 %78, label %79, label %117

79:                                               ; preds = %69
  %80 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  store i32* %82, i32** %8, align 8
  %83 = load i32*, i32** %8, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 65535
  br i1 %86, label %87, label %103

87:                                               ; preds = %79
  %88 = load i32*, i32** %8, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 65535
  br i1 %91, label %92, label %103

92:                                               ; preds = %87
  %93 = load i32*, i32** %8, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 2
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 65535
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = load i32, i32* @fMP_DEST_BROAD, align 4
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 8
  br label %116

103:                                              ; preds = %92, %87, %79
  %104 = load i32*, i32** %8, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, 3
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %109, label %115

109:                                              ; preds = %103
  %110 = load i32, i32* @fMP_DEST_MULTI, align 4
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 8
  br label %115

115:                                              ; preds = %109, %103
  br label %116

116:                                              ; preds = %115, %97
  br label %117

117:                                              ; preds = %116, %69, %52
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %119, align 8
  %120 = load i32, i32* %6, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = load %struct.et131x_adapter*, %struct.et131x_adapter** %5, align 8
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %125 = call i32 @nic_send_packet(%struct.et131x_adapter* %123, %struct.TYPE_5__* %124)
  store i32 %125, i32* %6, align 4
  br label %126

126:                                              ; preds = %122, %117
  %127 = load i32, i32* %6, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %161

129:                                              ; preds = %126
  %130 = load %struct.et131x_adapter*, %struct.et131x_adapter** %5, align 8
  %131 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %130, i32 0, i32 1
  %132 = load i64, i64* %9, align 8
  %133 = call i32 @spin_lock_irqsave(i32* %131, i64 %132)
  %134 = load %struct.et131x_adapter*, %struct.et131x_adapter** %5, align 8
  %135 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %136, align 8
  %138 = icmp ne %struct.TYPE_5__* %137, null
  br i1 %138, label %139, label %146

139:                                              ; preds = %129
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %141 = load %struct.et131x_adapter*, %struct.et131x_adapter** %5, align 8
  %142 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 1
  store %struct.TYPE_5__* %140, %struct.TYPE_5__** %145, align 8
  br label %151

146:                                              ; preds = %129
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %148 = load %struct.et131x_adapter*, %struct.et131x_adapter** %5, align 8
  %149 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 2
  store %struct.TYPE_5__* %147, %struct.TYPE_5__** %150, align 8
  br label %151

151:                                              ; preds = %146, %139
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %153 = load %struct.et131x_adapter*, %struct.et131x_adapter** %5, align 8
  %154 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 1
  store %struct.TYPE_5__* %152, %struct.TYPE_5__** %155, align 8
  %156 = load %struct.et131x_adapter*, %struct.et131x_adapter** %5, align 8
  %157 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %156, i32 0, i32 1
  %158 = load i64, i64* %9, align 8
  %159 = call i32 @spin_unlock_irqrestore(i32* %157, i64 %158)
  %160 = load i32, i32* %6, align 4
  store i32 %160, i32* %3, align 4
  br label %170

161:                                              ; preds = %126
  %162 = load %struct.et131x_adapter*, %struct.et131x_adapter** %5, align 8
  %163 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @NUM_TCB, align 8
  %167 = icmp sgt i64 %165, %166
  %168 = zext i1 %167 to i32
  %169 = call i32 @WARN_ON(i32 %168)
  store i32 0, i32* %3, align 4
  br label %170

170:                                              ; preds = %161, %151, %29, %15
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @nic_send_packet(%struct.et131x_adapter*, %struct.TYPE_5__*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
