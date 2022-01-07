; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/slicoss/extr_slicoss.c_slic_cmdq_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/slicoss/extr_slicoss.c_slic_cmdq_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_12__, %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__, %struct.slic_hostcmd*, i32* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.slic_hostcmd = type { %struct.slic_hostcmd*, %struct.slic_hostcmd*, %struct.sk_buff*, i64 }
%struct.sk_buff = type { i32 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__, i32*, i32* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, %struct.slic_hostcmd* }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"free_count %d != all count %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @slic_cmdq_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slic_cmdq_reset(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.slic_hostcmd*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %6 = load %struct.adapter*, %struct.adapter** %2, align 8
  %7 = getelementptr inbounds %struct.adapter, %struct.adapter* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %10 = load %struct.adapter*, %struct.adapter** %2, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %9, i32 %14)
  %16 = load %struct.adapter*, %struct.adapter** %2, align 8
  %17 = getelementptr inbounds %struct.adapter, %struct.adapter* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = load %struct.adapter*, %struct.adapter** %2, align 8
  %21 = getelementptr inbounds %struct.adapter, %struct.adapter* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %19, i32 %24)
  %26 = load %struct.adapter*, %struct.adapter** %2, align 8
  %27 = getelementptr inbounds %struct.adapter, %struct.adapter* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.adapter*, %struct.adapter** %2, align 8
  %31 = getelementptr inbounds %struct.adapter, %struct.adapter* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %29, %33
  store i64 %34, i64* %5, align 8
  %35 = load %struct.adapter*, %struct.adapter** %2, align 8
  %36 = getelementptr inbounds %struct.adapter, %struct.adapter* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %5, align 8
  %40 = sub nsw i64 %39, %38
  store i64 %40, i64* %5, align 8
  %41 = load %struct.adapter*, %struct.adapter** %2, align 8
  %42 = getelementptr inbounds %struct.adapter, %struct.adapter* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load %struct.slic_hostcmd*, %struct.slic_hostcmd** %43, align 8
  store %struct.slic_hostcmd* %44, %struct.slic_hostcmd** %3, align 8
  br label %45

45:                                               ; preds = %65, %1
  %46 = load %struct.slic_hostcmd*, %struct.slic_hostcmd** %3, align 8
  %47 = icmp ne %struct.slic_hostcmd* %46, null
  br i1 %47, label %48, label %69

48:                                               ; preds = %45
  %49 = load %struct.slic_hostcmd*, %struct.slic_hostcmd** %3, align 8
  %50 = getelementptr inbounds %struct.slic_hostcmd, %struct.slic_hostcmd* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %48
  %54 = load %struct.slic_hostcmd*, %struct.slic_hostcmd** %3, align 8
  %55 = getelementptr inbounds %struct.slic_hostcmd, %struct.slic_hostcmd* %54, i32 0, i32 2
  %56 = load %struct.sk_buff*, %struct.sk_buff** %55, align 8
  store %struct.sk_buff* %56, %struct.sk_buff** %4, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = call i32 @ASSERT(%struct.sk_buff* %57)
  %59 = load %struct.slic_hostcmd*, %struct.slic_hostcmd** %3, align 8
  %60 = getelementptr inbounds %struct.slic_hostcmd, %struct.slic_hostcmd* %59, i32 0, i32 3
  store i64 0, i64* %60, align 8
  %61 = load %struct.slic_hostcmd*, %struct.slic_hostcmd** %3, align 8
  %62 = getelementptr inbounds %struct.slic_hostcmd, %struct.slic_hostcmd* %61, i32 0, i32 2
  store %struct.sk_buff* null, %struct.sk_buff** %62, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %63)
  br label %65

65:                                               ; preds = %53, %48
  %66 = load %struct.slic_hostcmd*, %struct.slic_hostcmd** %3, align 8
  %67 = getelementptr inbounds %struct.slic_hostcmd, %struct.slic_hostcmd* %66, i32 0, i32 0
  %68 = load %struct.slic_hostcmd*, %struct.slic_hostcmd** %67, align 8
  store %struct.slic_hostcmd* %68, %struct.slic_hostcmd** %3, align 8
  br label %45

69:                                               ; preds = %45
  %70 = load %struct.adapter*, %struct.adapter** %2, align 8
  %71 = getelementptr inbounds %struct.adapter, %struct.adapter* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  store i64 0, i64* %72, align 8
  %73 = load %struct.adapter*, %struct.adapter** %2, align 8
  %74 = getelementptr inbounds %struct.adapter, %struct.adapter* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 2
  store %struct.slic_hostcmd* null, %struct.slic_hostcmd** %75, align 8
  %76 = load %struct.adapter*, %struct.adapter** %2, align 8
  %77 = getelementptr inbounds %struct.adapter, %struct.adapter* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 3
  store i32* null, i32** %78, align 8
  %79 = load %struct.adapter*, %struct.adapter** %2, align 8
  %80 = getelementptr inbounds %struct.adapter, %struct.adapter* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  store i64 0, i64* %81, align 8
  %82 = load %struct.adapter*, %struct.adapter** %2, align 8
  %83 = getelementptr inbounds %struct.adapter, %struct.adapter* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 3
  store i32* null, i32** %84, align 8
  %85 = load %struct.adapter*, %struct.adapter** %2, align 8
  %86 = getelementptr inbounds %struct.adapter, %struct.adapter* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 2
  store i32* null, i32** %87, align 8
  %88 = load %struct.adapter*, %struct.adapter** %2, align 8
  %89 = getelementptr inbounds %struct.adapter, %struct.adapter* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load %struct.slic_hostcmd*, %struct.slic_hostcmd** %90, align 8
  %92 = load %struct.adapter*, %struct.adapter** %2, align 8
  %93 = getelementptr inbounds %struct.adapter, %struct.adapter* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 2
  store %struct.slic_hostcmd* %91, %struct.slic_hostcmd** %94, align 8
  %95 = load %struct.adapter*, %struct.adapter** %2, align 8
  %96 = getelementptr inbounds %struct.adapter, %struct.adapter* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = load %struct.slic_hostcmd*, %struct.slic_hostcmd** %97, align 8
  store %struct.slic_hostcmd* %98, %struct.slic_hostcmd** %3, align 8
  br label %99

99:                                               ; preds = %102, %69
  %100 = load %struct.slic_hostcmd*, %struct.slic_hostcmd** %3, align 8
  %101 = icmp ne %struct.slic_hostcmd* %100, null
  br i1 %101, label %102, label %116

102:                                              ; preds = %99
  %103 = load %struct.adapter*, %struct.adapter** %2, align 8
  %104 = getelementptr inbounds %struct.adapter, %struct.adapter* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %106, 1
  store i64 %107, i64* %105, align 8
  %108 = load %struct.slic_hostcmd*, %struct.slic_hostcmd** %3, align 8
  %109 = getelementptr inbounds %struct.slic_hostcmd, %struct.slic_hostcmd* %108, i32 0, i32 0
  %110 = load %struct.slic_hostcmd*, %struct.slic_hostcmd** %109, align 8
  %111 = load %struct.slic_hostcmd*, %struct.slic_hostcmd** %3, align 8
  %112 = getelementptr inbounds %struct.slic_hostcmd, %struct.slic_hostcmd* %111, i32 0, i32 1
  store %struct.slic_hostcmd* %110, %struct.slic_hostcmd** %112, align 8
  %113 = load %struct.slic_hostcmd*, %struct.slic_hostcmd** %3, align 8
  %114 = getelementptr inbounds %struct.slic_hostcmd, %struct.slic_hostcmd* %113, i32 0, i32 0
  %115 = load %struct.slic_hostcmd*, %struct.slic_hostcmd** %114, align 8
  store %struct.slic_hostcmd* %115, %struct.slic_hostcmd** %3, align 8
  br label %99

116:                                              ; preds = %99
  %117 = load %struct.adapter*, %struct.adapter** %2, align 8
  %118 = getelementptr inbounds %struct.adapter, %struct.adapter* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.adapter*, %struct.adapter** %2, align 8
  %122 = getelementptr inbounds %struct.adapter, %struct.adapter* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %120, %124
  br i1 %125, label %126, label %140

126:                                              ; preds = %116
  %127 = load %struct.adapter*, %struct.adapter** %2, align 8
  %128 = getelementptr inbounds %struct.adapter, %struct.adapter* %127, i32 0, i32 3
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load %struct.adapter*, %struct.adapter** %2, align 8
  %132 = getelementptr inbounds %struct.adapter, %struct.adapter* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.adapter*, %struct.adapter** %2, align 8
  %136 = getelementptr inbounds %struct.adapter, %struct.adapter* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @dev_err(i32* %130, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %134, i64 %138)
  br label %140

140:                                              ; preds = %126, %116
  %141 = load %struct.adapter*, %struct.adapter** %2, align 8
  %142 = getelementptr inbounds %struct.adapter, %struct.adapter* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 1
  %145 = load %struct.adapter*, %struct.adapter** %2, align 8
  %146 = getelementptr inbounds %struct.adapter, %struct.adapter* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @spin_unlock_irqrestore(i32* %144, i32 %149)
  %151 = load %struct.adapter*, %struct.adapter** %2, align 8
  %152 = getelementptr inbounds %struct.adapter, %struct.adapter* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 1
  %155 = load %struct.adapter*, %struct.adapter** %2, align 8
  %156 = getelementptr inbounds %struct.adapter, %struct.adapter* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @spin_unlock_irqrestore(i32* %154, i32 %159)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @ASSERT(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
