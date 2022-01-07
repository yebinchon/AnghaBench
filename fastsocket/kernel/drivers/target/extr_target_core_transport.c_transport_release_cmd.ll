; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_transport.c_transport_release_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_transport.c_transport_release_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, i64, i64, i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.se_cmd*)* }

@SCF_SCSI_TMR_CDB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.se_cmd*)* @transport_release_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transport_release_cmd(%struct.se_cmd* %0) #0 {
  %2 = alloca %struct.se_cmd*, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %2, align 8
  %3 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %4 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %3, i32 0, i32 4
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = icmp ne %struct.TYPE_2__* %5, null
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %11 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @SCF_SCSI_TMR_CDB, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %18 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @core_tmr_release_req(i32 %19)
  br label %21

21:                                               ; preds = %16, %1
  %22 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %23 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %26 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %21
  %30 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %31 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @kfree(i64 %32)
  br label %34

34:                                               ; preds = %29, %21
  %35 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %36 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %41 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %44 = call i32 @target_put_sess_cmd(i32 %42, %struct.se_cmd* %43)
  br label %53

45:                                               ; preds = %34
  %46 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %47 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %46, i32 0, i32 4
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32 (%struct.se_cmd*)*, i32 (%struct.se_cmd*)** %49, align 8
  %51 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %52 = call i32 %50(%struct.se_cmd* %51)
  br label %53

53:                                               ; preds = %45, %39
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @core_tmr_release_req(i32) #1

declare dso_local i32 @kfree(i64) #1

declare dso_local i32 @target_put_sess_cmd(i32, %struct.se_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
