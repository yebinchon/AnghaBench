; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_qfq.c_qfq_deactivate_class.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_qfq.c_qfq_deactivate_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qfq_sched = type { i64*, i32 }
%struct.qfq_class = type { i32, i32, %struct.qfq_group* }
%struct.qfq_group = type { i64, i64, i64, i64, i64, i32*, i32 }

@IR = common dso_local global i64 0, align 8
@EB = common dso_local global i64 0, align 8
@IB = common dso_local global i64 0, align 8
@ER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qfq_sched*, %struct.qfq_class*)* @qfq_deactivate_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qfq_deactivate_class(%struct.qfq_sched* %0, %struct.qfq_class* %1) #0 {
  %3 = alloca %struct.qfq_sched*, align 8
  %4 = alloca %struct.qfq_class*, align 8
  %5 = alloca %struct.qfq_group*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.qfq_sched* %0, %struct.qfq_sched** %3, align 8
  store %struct.qfq_class* %1, %struct.qfq_class** %4, align 8
  %9 = load %struct.qfq_class*, %struct.qfq_class** %4, align 8
  %10 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %9, i32 0, i32 2
  %11 = load %struct.qfq_group*, %struct.qfq_group** %10, align 8
  store %struct.qfq_group* %11, %struct.qfq_group** %5, align 8
  %12 = load %struct.qfq_class*, %struct.qfq_class** %4, align 8
  %13 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.qfq_class*, %struct.qfq_class** %4, align 8
  %16 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %18 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %19 = load %struct.qfq_class*, %struct.qfq_class** %4, align 8
  %20 = call i32 @qfq_slot_remove(%struct.qfq_sched* %17, %struct.qfq_group* %18, %struct.qfq_class* %19)
  %21 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %22 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %121, label %25

25:                                               ; preds = %2
  %26 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %27 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %30 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* @IR, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = call i32 @__clear_bit(i64 %28, i64* %33)
  %35 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %36 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %39 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load i64, i64* @EB, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = call i32 @__clear_bit(i64 %37, i64* %42)
  %44 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %45 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %48 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = load i64, i64* @IB, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = call i32 @__clear_bit(i64 %46, i64* %51)
  %53 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %54 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %57 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = load i64, i64* @ER, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  %61 = call i64 @test_bit(i64 %55, i64* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %111

63:                                               ; preds = %25
  %64 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %65 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = load i64, i64* @ER, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %71 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = shl i64 1, %72
  %74 = sub i64 %73, 1
  %75 = xor i64 %74, -1
  %76 = and i64 %69, %75
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %111, label %78

78:                                               ; preds = %63
  %79 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %80 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %79, i32 0, i32 0
  %81 = load i64*, i64** %80, align 8
  %82 = load i64, i64* @ER, align 8
  %83 = getelementptr inbounds i64, i64* %81, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %86 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = shl i64 1, %87
  %89 = sub i64 %88, 1
  %90 = and i64 %84, %89
  store i64 %90, i64* %6, align 8
  %91 = load i64, i64* %6, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %78
  %94 = load i64, i64* %6, align 8
  %95 = call i64 @__fls(i64 %94)
  %96 = shl i64 1, %95
  %97 = sub i64 %96, 1
  %98 = xor i64 %97, -1
  store i64 %98, i64* %6, align 8
  br label %100

99:                                               ; preds = %78
  store i64 -1, i64* %6, align 8
  br label %100

100:                                              ; preds = %99, %93
  %101 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %102 = load i64, i64* %6, align 8
  %103 = load i64, i64* @EB, align 8
  %104 = load i64, i64* @ER, align 8
  %105 = call i32 @qfq_move_groups(%struct.qfq_sched* %101, i64 %102, i64 %103, i64 %104)
  %106 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %107 = load i64, i64* %6, align 8
  %108 = load i64, i64* @IB, align 8
  %109 = load i64, i64* @IR, align 8
  %110 = call i32 @qfq_move_groups(%struct.qfq_sched* %106, i64 %107, i64 %108, i64 %109)
  br label %111

111:                                              ; preds = %100, %63, %25
  %112 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %113 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %116 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %115, i32 0, i32 0
  %117 = load i64*, i64** %116, align 8
  %118 = load i64, i64* @ER, align 8
  %119 = getelementptr inbounds i64, i64* %117, i64 %118
  %120 = call i32 @__clear_bit(i64 %114, i64* %119)
  br label %209

121:                                              ; preds = %2
  %122 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %123 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %122, i32 0, i32 5
  %124 = load i32*, i32** %123, align 8
  %125 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %126 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds i32, i32* %124, i64 %127
  %129 = call i64 @hlist_empty(i32* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %208

131:                                              ; preds = %121
  %132 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %133 = call %struct.qfq_class* @qfq_slot_scan(%struct.qfq_group* %132)
  store %struct.qfq_class* %133, %struct.qfq_class** %4, align 8
  %134 = load %struct.qfq_class*, %struct.qfq_class** %4, align 8
  %135 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %138 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = call i64 @qfq_round_down(i32 %136, i64 %139)
  store i64 %140, i64* %7, align 8
  %141 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %142 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* %7, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %207

146:                                              ; preds = %131
  %147 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %148 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %151 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %150, i32 0, i32 0
  %152 = load i64*, i64** %151, align 8
  %153 = load i64, i64* @ER, align 8
  %154 = getelementptr inbounds i64, i64* %152, i64 %153
  %155 = call i32 @__clear_bit(i64 %149, i64* %154)
  %156 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %157 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %160 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %159, i32 0, i32 0
  %161 = load i64*, i64** %160, align 8
  %162 = load i64, i64* @IR, align 8
  %163 = getelementptr inbounds i64, i64* %161, i64 %162
  %164 = call i32 @__clear_bit(i64 %158, i64* %163)
  %165 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %166 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %169 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %168, i32 0, i32 0
  %170 = load i64*, i64** %169, align 8
  %171 = load i64, i64* @EB, align 8
  %172 = getelementptr inbounds i64, i64* %170, i64 %171
  %173 = call i32 @__clear_bit(i64 %167, i64* %172)
  %174 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %175 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %178 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %177, i32 0, i32 0
  %179 = load i64*, i64** %178, align 8
  %180 = load i64, i64* @IB, align 8
  %181 = getelementptr inbounds i64, i64* %179, i64 %180
  %182 = call i32 @__clear_bit(i64 %176, i64* %181)
  %183 = load i64, i64* %7, align 8
  %184 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %185 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %184, i32 0, i32 3
  store i64 %183, i64* %185, align 8
  %186 = load i64, i64* %7, align 8
  %187 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %188 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = shl i64 2, %189
  %191 = add i64 %186, %190
  %192 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %193 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %192, i32 0, i32 4
  store i64 %191, i64* %193, align 8
  %194 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %195 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %196 = call i32 @qfq_calc_state(%struct.qfq_sched* %194, %struct.qfq_group* %195)
  store i32 %196, i32* %8, align 4
  %197 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %198 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %201 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %200, i32 0, i32 0
  %202 = load i64*, i64** %201, align 8
  %203 = load i32, i32* %8, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i64, i64* %202, i64 %204
  %206 = call i32 @__set_bit(i64 %199, i64* %205)
  br label %207

207:                                              ; preds = %146, %131
  br label %208

208:                                              ; preds = %207, %121
  br label %209

209:                                              ; preds = %208, %111
  %210 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %211 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %212 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @qfq_update_eligible(%struct.qfq_sched* %210, i32 %213)
  ret void
}

declare dso_local i32 @qfq_slot_remove(%struct.qfq_sched*, %struct.qfq_group*, %struct.qfq_class*) #1

declare dso_local i32 @__clear_bit(i64, i64*) #1

declare dso_local i64 @test_bit(i64, i64*) #1

declare dso_local i64 @__fls(i64) #1

declare dso_local i32 @qfq_move_groups(%struct.qfq_sched*, i64, i64, i64) #1

declare dso_local i64 @hlist_empty(i32*) #1

declare dso_local %struct.qfq_class* @qfq_slot_scan(%struct.qfq_group*) #1

declare dso_local i64 @qfq_round_down(i32, i64) #1

declare dso_local i32 @qfq_calc_state(%struct.qfq_sched*, %struct.qfq_group*) #1

declare dso_local i32 @__set_bit(i64, i64*) #1

declare dso_local i32 @qfq_update_eligible(%struct.qfq_sched*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
