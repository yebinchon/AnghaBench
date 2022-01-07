; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_stp_bpdu.c_br_send_config_bpdu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_stp_bpdu.c_br_send_config_bpdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.br_config_bpdu = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i64, i64 }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.TYPE_5__ = type { i8*, i8* }

@BR_KERNEL_STP = common dso_local global i64 0, align 8
@BPDU_TYPE_CONFIG = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_send_config_bpdu(%struct.net_bridge_port* %0, %struct.br_config_bpdu* %1) #0 {
  %3 = alloca %struct.net_bridge_port*, align 8
  %4 = alloca %struct.br_config_bpdu*, align 8
  %5 = alloca [35 x i8], align 16
  store %struct.net_bridge_port* %0, %struct.net_bridge_port** %3, align 8
  store %struct.br_config_bpdu* %1, %struct.br_config_bpdu** %4, align 8
  %6 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %7 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @BR_KERNEL_STP, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %214

14:                                               ; preds = %2
  %15 = getelementptr inbounds [35 x i8], [35 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %15, align 16
  %16 = getelementptr inbounds [35 x i8], [35 x i8]* %5, i64 0, i64 1
  store i8 0, i8* %16, align 1
  %17 = getelementptr inbounds [35 x i8], [35 x i8]* %5, i64 0, i64 2
  store i8 0, i8* %17, align 2
  %18 = load i8, i8* @BPDU_TYPE_CONFIG, align 1
  %19 = getelementptr inbounds [35 x i8], [35 x i8]* %5, i64 0, i64 3
  store i8 %18, i8* %19, align 1
  %20 = load %struct.br_config_bpdu*, %struct.br_config_bpdu** %4, align 8
  %21 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %20, i32 0, i32 9
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 1, i32 0
  %26 = load %struct.br_config_bpdu*, %struct.br_config_bpdu** %4, align 8
  %27 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %26, i32 0, i32 8
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 128, i32 0
  %32 = or i32 %25, %31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds [35 x i8], [35 x i8]* %5, i64 0, i64 4
  store i8 %33, i8* %34, align 4
  %35 = load %struct.br_config_bpdu*, %struct.br_config_bpdu** %4, align 8
  %36 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %35, i32 0, i32 7
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = getelementptr inbounds [35 x i8], [35 x i8]* %5, i64 0, i64 5
  store i8 %40, i8* %41, align 1
  %42 = load %struct.br_config_bpdu*, %struct.br_config_bpdu** %4, align 8
  %43 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %42, i32 0, i32 7
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = load i8, i8* %46, align 1
  %48 = getelementptr inbounds [35 x i8], [35 x i8]* %5, i64 0, i64 6
  store i8 %47, i8* %48, align 2
  %49 = load %struct.br_config_bpdu*, %struct.br_config_bpdu** %4, align 8
  %50 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %49, i32 0, i32 7
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = getelementptr inbounds [35 x i8], [35 x i8]* %5, i64 0, i64 7
  store i8 %54, i8* %55, align 1
  %56 = load %struct.br_config_bpdu*, %struct.br_config_bpdu** %4, align 8
  %57 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %56, i32 0, i32 7
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  %61 = load i8, i8* %60, align 1
  %62 = getelementptr inbounds [35 x i8], [35 x i8]* %5, i64 0, i64 8
  store i8 %61, i8* %62, align 8
  %63 = load %struct.br_config_bpdu*, %struct.br_config_bpdu** %4, align 8
  %64 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %63, i32 0, i32 7
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 2
  %68 = load i8, i8* %67, align 1
  %69 = getelementptr inbounds [35 x i8], [35 x i8]* %5, i64 0, i64 9
  store i8 %68, i8* %69, align 1
  %70 = load %struct.br_config_bpdu*, %struct.br_config_bpdu** %4, align 8
  %71 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %70, i32 0, i32 7
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 3
  %75 = load i8, i8* %74, align 1
  %76 = getelementptr inbounds [35 x i8], [35 x i8]* %5, i64 0, i64 10
  store i8 %75, i8* %76, align 2
  %77 = load %struct.br_config_bpdu*, %struct.br_config_bpdu** %4, align 8
  %78 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %77, i32 0, i32 7
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 4
  %82 = load i8, i8* %81, align 1
  %83 = getelementptr inbounds [35 x i8], [35 x i8]* %5, i64 0, i64 11
  store i8 %82, i8* %83, align 1
  %84 = load %struct.br_config_bpdu*, %struct.br_config_bpdu** %4, align 8
  %85 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %84, i32 0, i32 7
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 5
  %89 = load i8, i8* %88, align 1
  %90 = getelementptr inbounds [35 x i8], [35 x i8]* %5, i64 0, i64 12
  store i8 %89, i8* %90, align 4
  %91 = load %struct.br_config_bpdu*, %struct.br_config_bpdu** %4, align 8
  %92 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = ashr i32 %93, 24
  %95 = and i32 %94, 255
  %96 = trunc i32 %95 to i8
  %97 = getelementptr inbounds [35 x i8], [35 x i8]* %5, i64 0, i64 13
  store i8 %96, i8* %97, align 1
  %98 = load %struct.br_config_bpdu*, %struct.br_config_bpdu** %4, align 8
  %99 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = ashr i32 %100, 16
  %102 = and i32 %101, 255
  %103 = trunc i32 %102 to i8
  %104 = getelementptr inbounds [35 x i8], [35 x i8]* %5, i64 0, i64 14
  store i8 %103, i8* %104, align 2
  %105 = load %struct.br_config_bpdu*, %struct.br_config_bpdu** %4, align 8
  %106 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = ashr i32 %107, 8
  %109 = and i32 %108, 255
  %110 = trunc i32 %109 to i8
  %111 = getelementptr inbounds [35 x i8], [35 x i8]* %5, i64 0, i64 15
  store i8 %110, i8* %111, align 1
  %112 = load %struct.br_config_bpdu*, %struct.br_config_bpdu** %4, align 8
  %113 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = and i32 %114, 255
  %116 = trunc i32 %115 to i8
  %117 = getelementptr inbounds [35 x i8], [35 x i8]* %5, i64 0, i64 16
  store i8 %116, i8* %117, align 16
  %118 = load %struct.br_config_bpdu*, %struct.br_config_bpdu** %4, align 8
  %119 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %118, i32 0, i32 6
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 0
  %123 = load i8, i8* %122, align 1
  %124 = getelementptr inbounds [35 x i8], [35 x i8]* %5, i64 0, i64 17
  store i8 %123, i8* %124, align 1
  %125 = load %struct.br_config_bpdu*, %struct.br_config_bpdu** %4, align 8
  %126 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %125, i32 0, i32 6
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 1
  %130 = load i8, i8* %129, align 1
  %131 = getelementptr inbounds [35 x i8], [35 x i8]* %5, i64 0, i64 18
  store i8 %130, i8* %131, align 2
  %132 = load %struct.br_config_bpdu*, %struct.br_config_bpdu** %4, align 8
  %133 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %132, i32 0, i32 6
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 1
  %135 = load i8*, i8** %134, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 0
  %137 = load i8, i8* %136, align 1
  %138 = getelementptr inbounds [35 x i8], [35 x i8]* %5, i64 0, i64 19
  store i8 %137, i8* %138, align 1
  %139 = load %struct.br_config_bpdu*, %struct.br_config_bpdu** %4, align 8
  %140 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %139, i32 0, i32 6
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 1
  %142 = load i8*, i8** %141, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 1
  %144 = load i8, i8* %143, align 1
  %145 = getelementptr inbounds [35 x i8], [35 x i8]* %5, i64 0, i64 20
  store i8 %144, i8* %145, align 4
  %146 = load %struct.br_config_bpdu*, %struct.br_config_bpdu** %4, align 8
  %147 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %146, i32 0, i32 6
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 1
  %149 = load i8*, i8** %148, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 2
  %151 = load i8, i8* %150, align 1
  %152 = getelementptr inbounds [35 x i8], [35 x i8]* %5, i64 0, i64 21
  store i8 %151, i8* %152, align 1
  %153 = load %struct.br_config_bpdu*, %struct.br_config_bpdu** %4, align 8
  %154 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %153, i32 0, i32 6
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 1
  %156 = load i8*, i8** %155, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 3
  %158 = load i8, i8* %157, align 1
  %159 = getelementptr inbounds [35 x i8], [35 x i8]* %5, i64 0, i64 22
  store i8 %158, i8* %159, align 2
  %160 = load %struct.br_config_bpdu*, %struct.br_config_bpdu** %4, align 8
  %161 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %160, i32 0, i32 6
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 1
  %163 = load i8*, i8** %162, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 4
  %165 = load i8, i8* %164, align 1
  %166 = getelementptr inbounds [35 x i8], [35 x i8]* %5, i64 0, i64 23
  store i8 %165, i8* %166, align 1
  %167 = load %struct.br_config_bpdu*, %struct.br_config_bpdu** %4, align 8
  %168 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %167, i32 0, i32 6
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 1
  %170 = load i8*, i8** %169, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 5
  %172 = load i8, i8* %171, align 1
  %173 = getelementptr inbounds [35 x i8], [35 x i8]* %5, i64 0, i64 24
  store i8 %172, i8* %173, align 8
  %174 = load %struct.br_config_bpdu*, %struct.br_config_bpdu** %4, align 8
  %175 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = ashr i32 %176, 8
  %178 = and i32 %177, 255
  %179 = trunc i32 %178 to i8
  %180 = getelementptr inbounds [35 x i8], [35 x i8]* %5, i64 0, i64 25
  store i8 %179, i8* %180, align 1
  %181 = load %struct.br_config_bpdu*, %struct.br_config_bpdu** %4, align 8
  %182 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = and i32 %183, 255
  %185 = trunc i32 %184 to i8
  %186 = getelementptr inbounds [35 x i8], [35 x i8]* %5, i64 0, i64 26
  store i8 %185, i8* %186, align 2
  %187 = getelementptr inbounds [35 x i8], [35 x i8]* %5, i64 0, i64 0
  %188 = getelementptr inbounds i8, i8* %187, i64 27
  %189 = load %struct.br_config_bpdu*, %struct.br_config_bpdu** %4, align 8
  %190 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %189, i32 0, i32 5
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @br_set_ticks(i8* %188, i32 %191)
  %193 = getelementptr inbounds [35 x i8], [35 x i8]* %5, i64 0, i64 0
  %194 = getelementptr inbounds i8, i8* %193, i64 29
  %195 = load %struct.br_config_bpdu*, %struct.br_config_bpdu** %4, align 8
  %196 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @br_set_ticks(i8* %194, i32 %197)
  %199 = getelementptr inbounds [35 x i8], [35 x i8]* %5, i64 0, i64 0
  %200 = getelementptr inbounds i8, i8* %199, i64 31
  %201 = load %struct.br_config_bpdu*, %struct.br_config_bpdu** %4, align 8
  %202 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @br_set_ticks(i8* %200, i32 %203)
  %205 = getelementptr inbounds [35 x i8], [35 x i8]* %5, i64 0, i64 0
  %206 = getelementptr inbounds i8, i8* %205, i64 33
  %207 = load %struct.br_config_bpdu*, %struct.br_config_bpdu** %4, align 8
  %208 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @br_set_ticks(i8* %206, i32 %209)
  %211 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %212 = getelementptr inbounds [35 x i8], [35 x i8]* %5, i64 0, i64 0
  %213 = call i32 @br_send_bpdu(%struct.net_bridge_port* %211, i8* %212, i32 35)
  br label %214

214:                                              ; preds = %14, %13
  ret void
}

declare dso_local i32 @br_set_ticks(i8*, i32) #1

declare dso_local i32 @br_send_bpdu(%struct.net_bridge_port*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
