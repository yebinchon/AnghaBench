; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_transport.c_transport_set_vpd_proto_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_transport.c_transport_set_vpd_proto_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t10_vpd = type { i8, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @transport_set_vpd_proto_id(%struct.t10_vpd* %0, i8* %1) #0 {
  %3 = alloca %struct.t10_vpd*, align 8
  %4 = alloca i8*, align 8
  store %struct.t10_vpd* %0, %struct.t10_vpd** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 1
  %7 = load i8, i8* %6, align 1
  %8 = zext i8 %7 to i32
  %9 = and i32 %8, 128
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = and i32 %15, 240
  %17 = trunc i32 %16 to i8
  %18 = load %struct.t10_vpd*, %struct.t10_vpd** %3, align 8
  %19 = getelementptr inbounds %struct.t10_vpd, %struct.t10_vpd* %18, i32 0, i32 0
  store i8 %17, i8* %19, align 4
  %20 = load %struct.t10_vpd*, %struct.t10_vpd** %3, align 8
  %21 = getelementptr inbounds %struct.t10_vpd, %struct.t10_vpd* %20, i32 0, i32 1
  store i32 1, i32* %21, align 4
  %22 = load %struct.t10_vpd*, %struct.t10_vpd** %3, align 8
  %23 = call i32 @transport_dump_vpd_proto_id(%struct.t10_vpd* %22, i32* null, i32 0)
  br label %24

24:                                               ; preds = %11, %2
  ret void
}

declare dso_local i32 @transport_dump_vpd_proto_id(%struct.t10_vpd*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
