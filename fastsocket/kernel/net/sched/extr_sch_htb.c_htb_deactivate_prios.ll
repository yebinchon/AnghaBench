; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_htb.c_htb_deactivate_prios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_htb.c_htb_deactivate_prios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htb_sched = type { i32 }
%struct.htb_class = type { i64, i64, %struct.htb_class*, %struct.TYPE_7__, i32*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_8__*, i32**, i32* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@HTB_MAY_BORROW = common dso_local global i64 0, align 8
@HTB_CAN_SEND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.htb_sched*, %struct.htb_class*)* @htb_deactivate_prios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @htb_deactivate_prios(%struct.htb_sched* %0, %struct.htb_class* %1) #0 {
  %3 = alloca %struct.htb_sched*, align 8
  %4 = alloca %struct.htb_class*, align 8
  %5 = alloca %struct.htb_class*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.htb_sched* %0, %struct.htb_sched** %3, align 8
  store %struct.htb_class* %1, %struct.htb_class** %4, align 8
  %9 = load %struct.htb_class*, %struct.htb_class** %4, align 8
  %10 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %9, i32 0, i32 2
  %11 = load %struct.htb_class*, %struct.htb_class** %10, align 8
  store %struct.htb_class* %11, %struct.htb_class** %5, align 8
  %12 = load %struct.htb_class*, %struct.htb_class** %4, align 8
  %13 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %7, align 8
  br label %15

15:                                               ; preds = %115, %2
  %16 = load %struct.htb_class*, %struct.htb_class** %4, align 8
  %17 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @HTB_MAY_BORROW, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = load %struct.htb_class*, %struct.htb_class** %5, align 8
  %23 = icmp ne %struct.htb_class* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i64, i64* %7, align 8
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %24, %21, %15
  %28 = phi i1 [ false, %21 ], [ false, %15 ], [ %26, %24 ]
  br i1 %28, label %29, label %126

29:                                               ; preds = %27
  %30 = load i64, i64* %7, align 8
  store i64 %30, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %31

31:                                               ; preds = %114, %29
  %32 = load i64, i64* %6, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %115

34:                                               ; preds = %31
  %35 = load i64, i64* %6, align 8
  %36 = xor i64 %35, -1
  %37 = call i32 @ffz(i64 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = shl i32 1, %38
  %40 = xor i32 %39, -1
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* %6, align 8
  %43 = and i64 %42, %41
  store i64 %43, i64* %6, align 8
  %44 = load %struct.htb_class*, %struct.htb_class** %5, align 8
  %45 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32**, i32*** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32*, i32** %48, i64 %50
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.htb_class*, %struct.htb_class** %4, align 8
  %54 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %53, i32 0, i32 4
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = icmp eq i32* %52, %58
  br i1 %59, label %60, label %81

60:                                               ; preds = %34
  %61 = load %struct.htb_class*, %struct.htb_class** %4, align 8
  %62 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %61, i32 0, i32 5
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.htb_class*, %struct.htb_class** %5, align 8
  %66 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 %64, i32* %72, align 4
  %73 = load %struct.htb_class*, %struct.htb_class** %5, align 8
  %74 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i32**, i32*** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32*, i32** %77, i64 %79
  store i32* null, i32** %80, align 8
  br label %81

81:                                               ; preds = %60, %34
  %82 = load %struct.htb_class*, %struct.htb_class** %4, align 8
  %83 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %82, i32 0, i32 4
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load %struct.htb_class*, %struct.htb_class** %5, align 8
  %89 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i64 %94
  %96 = call i32 @htb_safe_rb_erase(i32* %87, %struct.TYPE_8__* %95)
  %97 = load %struct.htb_class*, %struct.htb_class** %5, align 8
  %98 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %81
  %109 = load i32, i32* %8, align 4
  %110 = shl i32 1, %109
  %111 = sext i32 %110 to i64
  %112 = load i64, i64* %7, align 8
  %113 = or i64 %112, %111
  store i64 %113, i64* %7, align 8
  br label %114

114:                                              ; preds = %108, %81
  br label %31

115:                                              ; preds = %31
  %116 = load i64, i64* %7, align 8
  %117 = xor i64 %116, -1
  %118 = load %struct.htb_class*, %struct.htb_class** %5, align 8
  %119 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = and i64 %120, %117
  store i64 %121, i64* %119, align 8
  %122 = load %struct.htb_class*, %struct.htb_class** %5, align 8
  store %struct.htb_class* %122, %struct.htb_class** %4, align 8
  %123 = load %struct.htb_class*, %struct.htb_class** %4, align 8
  %124 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %123, i32 0, i32 2
  %125 = load %struct.htb_class*, %struct.htb_class** %124, align 8
  store %struct.htb_class* %125, %struct.htb_class** %5, align 8
  br label %15

126:                                              ; preds = %27
  %127 = load %struct.htb_class*, %struct.htb_class** %4, align 8
  %128 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @HTB_CAN_SEND, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %140

132:                                              ; preds = %126
  %133 = load i64, i64* %7, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %132
  %136 = load %struct.htb_sched*, %struct.htb_sched** %3, align 8
  %137 = load %struct.htb_class*, %struct.htb_class** %4, align 8
  %138 = load i64, i64* %7, align 8
  %139 = call i32 @htb_remove_class_from_row(%struct.htb_sched* %136, %struct.htb_class* %137, i64 %138)
  br label %140

140:                                              ; preds = %135, %132, %126
  ret void
}

declare dso_local i32 @ffz(i64) #1

declare dso_local i32 @htb_safe_rb_erase(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @htb_remove_class_from_row(%struct.htb_sched*, %struct.htb_class*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
